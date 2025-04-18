@{
    AllNodes = @(
        @{
            NodeName                    = "localhost"
            PSDscAllowPlainTextPassword = $true;
            PSDscAllowDomainUser        = $true;
            #region Parameters
            # Default Value Used to Ensure a Configuration Data File is Generated
            ServerNumber = "0"
			# Tenant's default verified domain name
			OrganizationName = "personsunknown.onmicrosoft.com"
			# Azure AD Application Id for Authentication
			ApplicationId = "51a77fa6-ee2b-46c5-99ee-0ea68cdc1481"
			# The Id or Name of the tenant to authenticate against
			TenantId = "personsunknown.onmicrosoft.com"
			# Thumbprint of the certificate to use for authentication
			CertificateThumbprint = "505758703B79C960759E95CA369BC6CB0228AEFC"
			

        }
    )
    NonNodeData = @(
        @{
            ParameterFilePath = ".\DSCParameters.psd1"

        }
    )
}
