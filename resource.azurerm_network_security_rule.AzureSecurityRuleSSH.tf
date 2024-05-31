resource "azurerm_network_security_rule" "AzureSecurityRuleSSH" {
  name                        = "SSH"
  priority                    = 300
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow SSH"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXDashboardHTTPPort" {
  name                        = "3CXDashboardPortHTTP"
  priority                    = 310
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "5000"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow 3CX Management Port"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXDashboardHTTPSPort" {
  name                        = "3CXDashboardPortHTTPS"
  priority                    = 320
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "5001"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow 3CX Management Port"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXSetupPort" {
  name                        = "3CXSetupPort"
  priority                    = 330
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "5015"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow 3CX Setup port (HTTP)"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXSIP" {
  name                        = "3CXSIP"
  priority                    = 340
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "5060"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow SIP protocol on TCP & UDP"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXTunnel" {
  name                        = "3CXTunnel"
  priority                    = 350
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "5090"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow 3CX Tunnel on TCP & UDP"
}

resource "azurerm_network_security_rule" "AzureSecurityRule3CXRTP" {
  name                        = "3CXRTP"
  priority                    = 360
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "*"
  destination_port_range      = "9000-10999"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow 3CX Media Server (RTP)"
}

resource "azurerm_network_security_rule" "AzureSecurityRuleTCXProxy" {
  name                        = "TCXProxy"
  priority                    = 370
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow Access to TCXProxy"
}

resource "azurerm_network_security_rule" "AzureSecurityRulePortainer" {
  name                        = "Portainer"
  priority                    = 380
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "9000"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow Access to Portainer Dashboard"
}

resource "azurerm_network_security_rule" "AzureSecurityRuleIKE" {
  name                        = "IKE"
  priority                    = 390
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "500"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow IPSec Port for strongSwan (IKE)"
}

resource "azurerm_network_security_rule" "AzureSecurityRuleIPSec" {
  name                        = "IPSec"
  priority                    = 400
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Udp"
  source_port_range           = "*"
  destination_port_range      = "4500"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "Allow IPSec Port for strongSwan (IPSEC NAT-Traversal mode)"
}

resource "azurerm_network_security_rule" "AzureSecurityRuleAllowAllTraffic" {
  name                        = "AllowAllTraffic"
  priority                    = 410
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.AzureResourceGroup.name
  network_security_group_name = azurerm_network_security_group.AzureSecurityGroup.name
  description                 = "This is used for StrongSwan sake"
}