<!-- Keep a Changelog guide -> https://keepachangelog.com -->

# ECOS Changelog

## [4.6.0] - 2023-08-25

### Added
- Expand the capabilities of search queries by implementing table joining support
- Ecos BPMN component - Errors Events
- Ecos BPMN component - Terminate Event
- Ecos BPMN component - Conditional Event
- Ecos BPMN component - Service Task
- Add functions support for ecos-data queries
- Change modifier, creator and type columns type to ASSOC
- Develop doclib backend in ecos-model
- Matrix Permission - support custom permissions
- Dynamic roles based on DMN
- Add notification template locale selection based on user and system properties
- Add ability to group and sort by fields from joined tables in ecos-data
- Type localization in the legal-entity-type
- Offers: add the ability to reject and close an request
- Add dashboard for license
- Module "Correspondence. Income documents" added

### Fixed
- Action "Print" change url for version without alfresco
- Active tasks journal. The link does not open the counterparty card
- Active tasks/Completed tasks journal. The content preview does not work
- The “Upload to XML” action does not work
- Association search does not work in the main log search
- Offers: kanban board should display only candidates on the request
- The grouping in the journal does not work
- Orgstructure: alfresco user base does not open
- Tasks statistics: no data are displayed in the widget
- DMN/BPMN: no localization when uploading the model
- Error while loading document
- No localization of Save/Submit buttons
- Missing BP names
- Data types without a name
- Unable to delete versioned file from Documents widget
- The task is not assigned to an performer
- Txn changed records doesn't rolled back after error
- Finance: error in the execution of the bp
- Finance: Error when starting the process in a Sales Request
- Transformation. Unexpected response code while generating document from template
- Missing history for tasks without form
- The patches are applied too slowly when deploying the system from scratch
- Group action download as Zip does not work
- Fields are not protected
- BPMN: incorrect pattern in a data model
- “Error: App unavailable: alfresco” while saving nested docs
- Issue with displaying properties of data types