#!/bin/bash

# Set environment variables dynamically based on arguments
export TWINGATE_USERNAME="$1"
export TWINGATE_PASSWORD="$2"
export TWINGATE_VCENTER_URL="$3"

# Run the remaining commands
pwsh -Command "Connect-VIServer -Server vcenter-server -User username -Password password"
pwsh -Command "New-VM -Name MyVM -MemoryGB 4 -NumCpu 2 -GuestID rhel7_64Guest"
pwsh -Command "Remove-VM -VM MyVM -Confirm:$false"
pwsh -Command "Disconnect-VIServer -Server * -Confirm:$false"

