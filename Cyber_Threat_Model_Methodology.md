# Cyber Threat Model Methodology

- [Background](#background)
- [Scope](#scope)
- [Methodology](#methodology)
  - [Identify the Attack Surface](#1-identify-the-attack-surface)
  - [Compile Source Data](#2-compile-source-data)
  - [Define Selection Criteria](#3-define-selection-criteria)
  - [Review Applicable Techniques](#4-review-applicable-techniques)
  - [Create a Collection](#5-create-a-collection)


This document describes the methodology to build a cyber threat model by identifying activities adversaries may use to conduct a cyber-intrusion. Adversary activities are characterized as behaviors and correspond to techniques in the MITRE ATT&CK® framework. This ATT&CK-focused threat modeling details the process used to define a security boundary, select techniques that share a common theme across multiple platforms, and combine the results into a model – allowing organizations to highlight techniques that are most relevant to their environment. 

At a high level, the cyber threat model captures information about potential cyber-intrusions that could potentially target their information systems – providing cyber defenders a straightforward and tailorable means to identify, build, and share collections of techniques for a comprehensive and unique view of ATT&CK adversary behaviors.

## Background

MITRE ATT&CK® is a globally accessible knowledge base of adversary tactics and techniques based on real-world observations. The ATT&CK knowledge base represents adversary goals as tactics and the specific behaviors to achieve those goals (how) as techniques and sub-techniques. This methodology leverages the information in the knowledge base and its underlying data model to add and modify collections of techniques across technology domains and platforms.

Initially, ATT&CK was primarily focused on the Windows enterprise environment, and later, integrated macOS and Linux into what is commonly known as ATT&CK for Enterprise. With broader adoption and numerous contributions from the cybersecurity community, ATT&CK added Mobile and ICS technology domains, which refer to the environment where an adversary operates. Within each of these domains, a platform defines the system an adversary operates in, for example, Microsoft Windows Cloud, or PRE (formerly the PRE-ATT&CK domain) are included in the Enterprise domain.  

The sum of information systems in use at an organization often spans multiple platforms (e.g., Linux, Microsoft Azure) and even across technology domains (e.g., Enterprise and Mobile). As a result, to maximize usage of ATT&CK as a common language cyber defenders need a repeatable process and tools to help combine sets of information across the structure of the ATT&CK knowledge base. This cyber threat model methodology provides a template for organizations to follow and recommended tools to consolidate and curate the results (i.e., see yourself within ATT&CK). 

The resulting cyber threat model is a collection of techniques determined to be applicable to the organization and can be extended to provide multiple means to detect and mitigate adversarial activity. The collection can be used as a foundation for:
- Adversary detection and analytics
- Cyber Threat Intelligence (CTI) enrichment
- Adversary emulation and red teaming
- Security assessment and engineering

ATT&CK Workbench: An ATT&CK research project developed a tool to explore, create, annotate, and share extensions of organizations’ own version of the ATT&CK knowledge base, drastically reducing the barriers for defenders to ensure that their cyber threat intelligence is aligned with the public ATT&CK knowledge base. The utility of Workbench is at the core of the development of this cyber threat model, through its ability to create new techniques or extend existing techniques with new content. ATT&CK Workbench will be the repository used to compile the techniques across multiple domains and platforms, apply the selection criteria, and export the resulting set of techniques and related data into a collection. ATT&CK Workbench can export a custom collection of techniques and annotations in a STIX formatted bundle, which can be loaded into the ATT&CK Navigator to display the results in a matrix and interactively navigate and define custom views using layers.

<!-- ``(INSERT Figure 1 Modifying Techniques with ATT&CK Workbench)`` -->

## Scope

The scope of this methodology does not include adding or extending other inputs, such as CTI into the ATT&CK knowledge base. The resulting threat model from this process does not provide a risk determination, such as the likelihood that a specific behavior may occur and the resulting damage or loss. The methodology does not provide a scoring rubric to evaluate an organization’s current security controls and their effectiveness – the adversarial behavior modeled in the resulting collection may be used to support these as well as many other use cases.  

## Methodology

The methodology consists of five (5) steps:
1.	**Identify the Attack Surface** – select the domains and platforms to include in the threat model
2.	**Compile Source Data** – Identify and import sets of ATT&CK techniques
3.	**Define Selection Criteria** – Specify the rules used to include or exclude techniques 
4.	**Review Applicable Techniques** – Select applicable techniques according to the criteria 
5.	**Create a Collection** – Publish collection and create visualizations

### 1.	Identify the Attack Surface
Start by defining the attack surface which includes what information technology and systems are under consideration and will help identify the technology platforms and domains within ATT&CK to use as source data. 

### 2.	Compile Source Data
Select the corresponding ATT&CK domains (e.g., Enterprise, Mobile, or ICS) and platforms (e.g., Windows, Linux, Cloud) to add to workbench.

### 3.	Define Selection Criteria
The organization will define the criteria used to select techniques to include in the collection. Criteria can vary from specific to more general, have both inclusive and exclusive rules, and will be driven by the source data compiled in (2). The goal of the selection criteria should offer clear guidance in refining the list of techniques from the compiled domains and platforms, while avoiding being overly burdensome in reviewing every technique in depth. When reviewing the techniques, additional criteria may be added later to improve clarity.

Example selection criteria breaks the technique review process into three areas of focus: **physical**, **operational**, and **environmental**.

1.	**Physical** criteria are used to determine if the collection will include techniques based on physical characteristics of the system. For example: If the collection only uses wired communications, exclude adversary techniques that rely on wireless. If the collection has a focus on hosted systems (i.e., virtual machines, containers), exclude techniques that rely on physical access or that target hardware. 
2.	**Operational** criteria are used to determine if the resulting collection will include techniques based on functional characteristics that are related to how the system is intended to operate. For example: if the system is a server, exclude techniques that rely on end-user interaction, such as a screen capture or email collection – the difference in functionality would remove potential adversary exploitation. 
3.	**Environmental** criteria are used to determine if your collection takes into consideration exceptional aspects or characteristics that are specific to the operating environment. For example: If a server is a part of an enterprise system, but not a member of a domain, eliminate adversary techniques that involve domain membership or access. Similarly, if the system is configured to use a limited network with no external access, techniques that rely on remote services or network connections would be excluded. 

### 4.	Review Applicable Techniques
Using a methodical approach, apply the selection criteria defined in (3) to the combined set of ATT&CK techniques identified in (2). Adding comments to explain the rationale behind each technique will be helpful when modifying the collection through periodic reviews, or as needed when the organization and systems change.  

<!-- ``(INSERT Figure 2 Review Techniques using Physical, Operational, Environmental criteria)`` -->

### 5.	Create a Collection
>“A collection is a set of related ATT&CK objects; collections may be used to represent specific releases of a dataset such as "Enterprise ATT&CK v7.2", or any other set of objects one may want to share with someone else. Collections are meant to be shared. Collections can be shared as STIX bundles…"

The ATT&CK Workbench tool was designed with sharing in mind. The final step is to publish the techniques in a collection. Use ATT&CK Workbench API access, or export the customized collection as a STIX bundle, and import into ATT&CK Navigator to display a matrix and interactively navigate and define custom views using layers.

<!-- ``(INSERT Figure 3 Export collection as STIX bundle)`` -->
