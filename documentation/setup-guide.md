# Setup Guide

## Step 1: Install WSUS on the Server
1. Run the `configure-wsus.ps1` script to install WSUS.
2. Configure WSUS to sync updates from Microsoft.

## Step 2: Configure Group Policies
1. Use the `configure-group-policy.xml` file to configure Group Policies for automatic updates.
2. Apply the policies to all computers in the store.

## Step 3: Run Automation Scripts
1. Use the `inventory-script.ps1` to generate an inventory and check update status.
2. Set up a scheduled task using `scheduled-task.ps1` to check updates daily.
