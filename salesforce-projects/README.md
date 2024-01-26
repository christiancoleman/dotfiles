# Getting Started

## Pre-requisites

- `npm install`
  should be the first command you run before doing anything.. It will ensure that Prettier is installed and correctly runs everytime that you save a file.
- You may need to identify your org as a Dev Hub locally in order to properly use Source Tracking. In order to do that you can run the following command:
  `sf org login web --set-default-dev-hub`
  You will log in just like any other org that you authorize, and if you've already added the org previously then whatever alias you enter this time around will replace it. I recommend using the same alias so as to not confuse yourself.

## Source Tracking Enabled

_Source tracking_ is very powerful. All it does is keep track of what's different between the Salesforce org and your local files.

For example:

1. Let's say you've added a new field on the Case object. Weeks pass by and you've made changes to Apex, LWCs, and more. It is time to deploy and therefore create a checklist of everything that needs to be deployed. By using source tracking you can get the differences between your local copy and the Salesforce org in which case it will pull down the field that you created and (assuming you're using Git) display as a change that needs to be commited to the repository.

2. You're working in the same org as some BA type resources. You need to know exactly what has changed in order to create an accurate checklist of what needs to be deployed. You can run a source tracking command and see everything that has been changed even if it hasn't been directly communicated to you. It will catch fields that have been tweaked, flows that are new, API name changes, etc. depending on the command that you run.

## How to use Source Tracking

Once you're org is identified as a Dev Hub and has source tracking enabled. The following command will do all the magic of comparing your local files and the remote Salesforce org:

`sf project retrieve start --metadata LightningComponentBundle ApexClass AuraDefinitionBundle CustomMetadata CustomObject:ACustomMetadtaExample__mdt CustomObject:A_Custom_Object__c "Layout:ACustomMetadtaExample__mdt-Example Layout Name"`

Let's break this down:

`sf project retrieve start`

- is the base command. In the past this command seemed to check literally every piece of metadata rather than forcing you to specify metadata you'd like to check. To combat this I've added the following metadata options in order to help the devs on this project compare and contrast the important metadata that we care about on this specific project (New Uploader):

`--metadata`

- The option that signifies the remaining items are metadata that you're interested in.

`LightningComponentBundle`

- Lightning Web Components

`ApexClass`

- Apex Classes

`AuraDefinitionBundle`

- Aura components

`CustomObject:ACustomMetadtaExample__mdt`

- The object definition of the ACustomMetadtaExample__mdt custom metadata type (CMDT)

`"Layout:ACustomMetadtaExample__mdt-Example Layout Name"`

- A specific layout on the custom metadata named ACustomMetadtaExample__mdt

# Process

If you'd like to use both source tracking and scratch orgs keep the following commands handy:

1. `sf project retrieve start --metadata LightningComponentBundle ApexClass AuraDefinitionBundle CustomMetadata CustomObject:ACustomMetadtaExample__mdt CustomObject:A_Custom_Object__c "Layout:ACustomMetadtaExample__mdt-Example Layout Name"`

This will pull down the changes relative to your org. (Be sure you're pointed at the correct org and not your scratch org)

2. `sf org create scratch --edition developer`

This will create a scratch org for you. It will stay alive for 7 days _after_ the last time it has been accessed.

3. `sf project deploy start`

After creating a scratch org, it should have automatically set this new scratch org as your active org. If not, select it. This command will then deploy what's on your drive locally (what was on the server per step 1) to your scratch org.

# Using source tracking as a truth

You navigate to the appropriate branch, create a scratch org, and deploy the code from your branch.
