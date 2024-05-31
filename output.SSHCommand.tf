output "SSHCommand" {
  value = "ssh -o 'StrictHostKeyChecking no' ${var.AdminUsername}@${cloudflare_record.CFDNSRecord.hostname}"
}

output "PublicIP" {
  value = cloudflare_record.CFDNSRecord.hostname
}
