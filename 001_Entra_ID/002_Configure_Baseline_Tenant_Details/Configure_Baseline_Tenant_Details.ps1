# Generated with Microsoft365DSC version 1.25.402.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
)

Configuration AADTenantDetails-20250405-021328
{

    $ConfigData = Import-PowerShellDataFile -Path ".\ConfigurationData.psd1"
    $Parameters = Import-PowerShellDataFile -Path $ConfigData.NonNodeData.ParameterFilePath

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.25.402.1'

    Node localhost
    {
        AADTenantDetails "AADTenantDetails"
        {
            ApplicationId                        = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint                = $ConfigurationData.NonNodeData.CertificateThumbprint;
            IsSingleInstance                     = "Yes";
            MarketingNotificationEmails          = @("d@bogglesthemind.org");
            SecurityComplianceNotificationMails  = @("d@bogglesthemind.org");
            SecurityComplianceNotificationPhones = @("0415994796");
            TechnicalNotificationMails           = @("d@bogglesthemind.org");
            TenantId                             = $OrganizationName;
        }
    }
}

AADTenantDetails-20250405-021328 -ConfigurationData .\ConfigurationData.psd1
