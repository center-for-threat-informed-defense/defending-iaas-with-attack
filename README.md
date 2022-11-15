[![MITRE ATT&CK® v11](https://img.shields.io/badge/MITRE%20ATT%26CK®-v11-red)](https://attack.mitre.org/versions/v11/)
[![build status](https://github.com/center-for-threat-informed-defense/defending-iaas-with-attack/actions/workflows/publish.yml/badge.svg)](https://github.com/center-for-threat-informed-defense/defending-iaas-with-attack/actions/workflows/publish.yml)

# Defending IaaS with ATT&CK

Organizations using Infrastructure-as-a-Service (IaaS) need to identify the
MITRE ATT&CK® techniques that are relevant, whether they occur at the **cloud
management layer**, the **container technology**, or on **hosted
infrastructure**. The Defending IaaS with ATT&CK Project presents a methodology
to identify techniques across multiple platforms that align to the IaaS attack
surface, and a collection of techniques in an ATT&CK matrix for visualization
and assessment. Organizations can use the IaaS collection straight away, or
they can use the methodology to generate their own tailored collections of
techniques.

**Table Of Contents:**

- [Overview](#overview)
- [Getting Started](#getting-started)
- [Getting Involved](#getting-involved)
- [Background](#background)
- [Scope](#scope)
- [Methodology](#methodology)
  - [1.	Identify the Attack Surface](#1identify-the-attack-surface)
  - [2.	Compile Source Data](#2compile-source-data)
  - [3.	Define Selection Criteria](#3define-selection-criteria)
  - [4.	Review Applicable Techniques](#4review-applicable-techniques)
  - [5.	Create a Collection](#5create-a-collection)
- [Questions and Feedback](#questions-and-feedback)
- [Notice](#notice)

## Overview

Organizations seeking a holistic view of adversary activities against IaaS need
to consider a wide variety of techniques across Linux, Cloud (IaaS), and
Containers, weighing each technique for relevancy to their environment. Adapting
the process outlined in the Cyber Threat Model Methodology<!-- ``(LINK TO CYBER
THREAT METHODOLOGY HERE)`` -->, the Defending IaaS with ATT&CK Project developed
a methodology to identify an attack surface, develop threat models, and then
select relevant techniques across multiple platforms. The methodology provides
the community a straightforward and tailorable approach to identify, build, and
share collections of techniques that provide a comprehensive view of adversary
behavior.

The Defending IaaS with ATT&CK methodology does the following:

1. Defines an attack surface for IaaS.
2. Specifies platforms to include from the ATT&CK knowledge base.
3. Defines selection criteria to determine applicable techniques.
4. Reviews and builds the combined set of techniques into a collection.
5. Visualizes the collection as a matrix to interactively navigate techniques and
   create custom views using layers.

The resulting collection of techniques can be extended to detect and mitigate
adversarial activity. The collection can be used as a foundation for:

- Adversary detection and analytics
- Cyber Threat Intelligence (CTI) enrichment
- Adversary emulation and red teaming
- Security assessment and engineering

## Getting Started

The best place to start is with the documentation: this will familiarize you
with the project, the methodology, and resulting collection of techniques. Next,
view the collection in ATT&CK Navigator. For a deeper dive, upgrade to the
latest version of ATT&CK Workbench and use its new features to create your own
collections.

| Resource | Description |
| -------- | ----------- |
| [Documentation](https://center-for-threat-informed-defense.github.io/defending-iaas-with-attack/) | Documentation for Defending IaaS with ATT&CK, including methodology and technical deep dive. |
| [ATT&CK Navigator](https://center-for-threat-informed-defense.github.io/attack-navigator/) | A customized ATT&CK Navigator that embeds the Defending IaaS collection under the "Create New Layer" option. |
| [ATT&CK Workbench](https://github.com/center-for-threat-informed-defense/attack-workbench-frontend) | Upgrades to ATT&CK Workbench facilitate creating new collections for projects such as this one. |
| [Defending IaaS Collection](/data/defending-iaas-0.1.json/) | The collection of techniques represented as a machine-readable STIX bundle. |

## Getting Involved

There are several ways that you can get involved with this project and help
advance threat-informed defense:

- **Review the collection using ATT&CK Navigator or ATT&CK Workbench.**
  Navigator is the easiest way to get started, using the resource link above. If
  you are already a Workbench user, you will find that the latest version
  includes new capabilities that are helpful for creating custom collections.
- **Read the methodology.** The Defending IaaS collection is helpful in its own
  right, but the methodology is provided so that organizations can create
  tailored collections to meet their own needs.
- **Build and share your own collections!** This project provides the
  methodology and tools needed to build collections tailored to any need. You
  can build proprietary collections to use within your organization, or you can
  publish collections to benefit the community.

## Background

[ATT&CK®](https://attack.mitre.org) is a globally accessible knowledge base of
adversary tactics and techniques based on real-world observations. The ATT&CK
knowledge base represents adversary goals as tactics and the specific behaviors
to achieve those goals (how) as techniques and sub-techniques. This methodology
leverages the information in the knowledge base and its underlying data model to
add and modify collections of techniques across technology domains and
platforms.

[ATT&CK
Workbench](https://github.com/center-for-threat-informed-defense/attack-workbench-frontend/blob/master/docs/collections.md)
is a tool to explore, create, annotate, and share extensions of a local version
of ATT&CK – drastically reducing the barriers for defenders to ensure that their
threat intelligence is aligned with the public ATT&CK knowledge base. The
utility of Workbench to create collections of techniques comprised of new
objects or existing objects with new content is at the core of this methodology.

[ATT&CK
Navigator](https://github.com/mitre-attack/attack-navigator/blob/master/USAGE.md)
is designed to provide basic navigation and annotation of ATT&CK matrices. It
can be used to visualize defensive coverage, red/blue team planning, and assist
in security assessment and engineering. Navigator can be used on the Enterprise,
Mobile, or ICS ATT&CK technology domain knowledge bases, and in this cae,
combinations of those elements. Navigator allows color coding, numerical values,
and other cell formatting in the matrix. With filters and a creation of new
views, there are variety of ways to display tactics and techniques and their
importance. The utility of Navigator is key to visualizing and accomplishing
related use cases for the collection of IaaS techniques.

## Scope

The scope of this methodology does not include adding or extending other sources
of CTI into the ATT&CK knowledge base. The resulting threat model from this
process does not provide a risk determination, such as the likelihood that
attack my occur and the resulting impact. The methodology does not provide a
scoring rubric to evaluate an organization’s current security controls and their
effectiveness – the adversarial behavior modeled in the collection may be used
to support these and other use cases.

## Methodology

The methodology consists of five (5) steps:
1.	**Identify the Attack Surface** – select the domains and platforms to include in the threat model
2.	**Compile Source Data** – Identify and import sets of ATT&CK techniques
3.	**Define Selection Criteria** – Specify the rules used to include or exclude techniques
4.	**Review Applicable Techniques** – Select applicable techniques according to the criteria
5.	**Create a Collection** – Publish collection and create visualizations

<!-- ``(INSERT LINK FOR Figure 4 Defending IaaS Methodology)`` -->

### 1.	Identify the Attack Surface
The Infrastructure as a Service (IaaS) attack surface is defined as adversary
activities against the cloud management layer, container technology, or on
hosted infrastructure.

### 2.	Compile Source Data
MITRE ATT&CK techniques applicable to IaaS are currently spread across Cloud
(IaaS), Container, and Linux platforms. The first step to identify an applicable
subset of techniques is to combine the data sets from these three platforms. The
Cloud and Container platforms in ATT&CK for Enterprise describe adversary
techniques at the cloud management and container technology layers, but do not
include techniques that apply to the system being hosted. Similarly, while the
Linux platform captures all techniques that can be used on Linux systems, not
all are applicable to cloud-hosted Linux servers or to Linux containers.

Some techniques (e.g., Event-Triggered Execution: Screensaver - T1546.002) do
not apply to headless, hosted Linux because the affected service or feature is
disabled or hidden. The final collection of techniques that encompass attack
surface for IaaS is a combination of techniques in the Cloud (IaaS) platform,
the Container platform, and a subset of the techniques in the Linux platform.

### 3.	Define Selection Criteria
The selection criteria for the IaaS will focus on techniques that are applicable
to the cloud and container-based instances of Linux, to also include management
and orchestration applications and utilities available from service providers.

According to the Cybersecurity and Infrastructure Security Agency (CISA) Cloud
Security Technical Reference Architecture report, IaaS shared service model has
physical security, storage, servers, and virtualization under responsibilities
of the service provider; applications, runtime, middleware, and operating
systems as responsible by the organization (consumer); with identity, data, and
elements of networking shared between. The shared service model helps define
selection criteria for the techniques to include in the IaaS collection and
offers categories to define techniques that would be excluded.

<!-- ``(INSERT LINK FOR Figure 5: Responsibilities for Different Service Models[5])`` -->

The criteria used to select techniques can be further defined into three areas
of focus: **physical**, **operational**, and **environmental**.

**Physical** criteria are used to determine if the collection will include
techniques based on physical characteristics of the system. Techniques in this
section would exclude attacks that target the underlying physical technology.
Examples of these components include physical servers, firmware, hypervisor, and
some elements of networking.
- Exclude techniques that rely on physical access or that target hardware
  (physical servers, firmware, hypervisor, and networking hardware)
- Exclude techniques that target service provider-managed components, such as
  physical security, storage, servers, and virtualization

**Operational** criteria are used to determine if the collection will include
techniques based on functional characteristics such as how the system is
intended to operate. There are numerous definitions of cloud service models, the
CISA Cloud Security Technical Reference Architecture report referenced above
uses the National Institute for Standards and Technology Special Publication
800-145: The NIST Definition of Cloud Computing as:
>“Consumers have the capability to provision computing resources to deploy and
>run environments and applications. Cloud providers manage the underlying
>infrastructure while the consumers have control over the computing resources,
>including some control of selected networking components…”

Examples of these technology components include operating system (Linux),
applications, networking, authentication and access management services.
- Exclude techniques specific to workstations, or that are apply to end-users,
  including Virtual Desktop Infrastructure (VDI), or similar
  workspace-as-a-service offerings
- Exclude operating system services and components that manage hardware or
  system components
- Exclude applications and extensions that are typically associated with
  workstation or end-user systems, such as email clients and web browser
- Include 3rd party applications and runtimes, for example SQL server or Java,
  with the condition that the underlying technology are present
- Include tools provided by service provider, or 3rd parties, that are used to
  build and orchestrate cloud systems

**Environmental** criteria are used to determine if the collection takes into
consideration exceptional aspects or characteristics that are specific to the
environment. This section intends to address nuances of adversary behavior that
may vary, depending on the environment’s technology deployment or operations.
- Exclude techniques that do not align with common best practices for IaaS, for
  example, automated provisioning, scaling, and data recovery
- Exclude techniques that require end-user interaction

### 4.	Review Applicable Techniques
Apply the selection criteria defined in (3) to the combined set of ATT&CK
techniques identified in (2). Adding comments to explain the rationale behind
each technique will be helpful when modifying the collection through periodic
reviews, or as needed when the organization and systems change.
- **T1052.001: Exfiltration over Physical Medium: Exfiltration over USB** – this
  technique is excluded from the collection as it relies on adversary access to
  physical media, which is out of scope for IaaS physical criteria
- **T1059: Command and Scripting Interpreter** – this technique is included in
  the collection as IaaS-hosted systems often use command and scripting
  interpreters in their operation and administration

<!-- ``(insert Figure 6 Modifying Techniques with ATT&CK Workbench)`` -->

### 5.	Create a Collection
>“A collection is a set of related ATT&CK objects; collections may be used to
>represent specific releases of a dataset such as "Enterprise ATT&CK v7.2", or
>any other set of objects one may want to share with someone else. Collections
>are meant to be shared. Collections can be shared as STIX bundles…”

The final step is to publish the techniques in a collection. Use ATT&CK
Workbench API access, or export the customized collection as a STIX bundle, and
import into ATT&CK Navigator to display a matrix and interactively navigate and
define custom views using layers.

<!--
``(insert Figure 7 Export collection as STIX bundle)``

``(insert Figure 8 Notional Defending IaaS Matrix)``
-->

## Questions and Feedback
Please submit issues for any technical questions/concerns or contact
ctid@mitre-engenuity.org directly for more general inquiries.

Also see the guidance for contributors if are you interested in contributing or
simply reporting issues.



## Notice
Copyright 2022 MITRE Engenuity. Approved for public release. Document number
CT0059.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License. You may obtain a copy of the
License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.

This project makes use of ATT&CK®

[ATT&CK Terms of Use](https://attack.mitre.org/resources/terms-of-use/)
