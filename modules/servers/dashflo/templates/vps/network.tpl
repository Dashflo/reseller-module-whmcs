<!-- Back -->
<a href="clientarea.php?action=productdetails&id={$serviceid}" class="btn btn-primary mb-3"><i class="fas fa-arrow-left mr-2"></i> {$LANG.back}</a>

<!-- Network details -->
<div class="panel panel-default card">
    <div class="panel-heading card-header">
        <h3 class="panel-title card-title mb-0" style="margin-top: 2.5px;">{$LANG.domainregisternsip}</h3>
    </div>
    <div class="text-left table-responsive">
        {if $dashflo.network.ip|count === 0}
            <div class="panel-body card-body">
                <h5 class="mb-0">{$LANG.norecordsfound}<h5>
            </div>
        {else}
            <table class="table table-striped mb-0">
                <thead>
                    <tr>
                        <th>IP</th>
                        <th>{$LANG.invoicestransgateway}</th>
                        <th>Subnet Mask</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$dashflo.network.ip key=i item=ip}
                        <tr>
                            <td>{$ip.ip}</td>
                            <td>{$ip.gateway}</td>
                            <td>{$ip.subnet_mask}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        {/if}
    </div>
</div>

<!-- Styles -->
<style>
    .mb-3, .my-3 {
        margin-bottom: 1rem;
    }
</style>