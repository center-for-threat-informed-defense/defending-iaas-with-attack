Methodology
===========

Cyber Threat Model Methodology
------------------------------

.. figure:: _static/threat_model.png
   :alt: Visually depicts 5 steps of threat model.
   :align: center
   :scale: 30%

The cyber threat model methodology consists of 5 steps:

1.  Identify the Attack Surface– select the domains and platforms to include in
    the threat model

    The Infrastructure as a Service (IaaS) attack surface is defined as
    adversary activities against the cloud management layer, container
    technology, or on hosted infrastructure.

2.  Compile Source Data– Identify and import sets of ATT&CK techniques

    MITRE ATT&CK techniques applicable to IaaS are currently spread across Cloud
    (IaaS), Container, and Linux platforms. The first step to identify an
    applicable subset of techniques is to combine the data sets from these three
    platforms. The Cloud and Container platforms in ATT&CK for Enterprise
    describe adversary techniques at the cloud management and container
    technology layers, but do not include techniques that apply to the system
    being hosted. Similarly, while the Linux platform captures all techniques
    that can be used on Linux systems, not all are applicable to cloud-hosted
    Linux servers or to Linux containers. Some techniques (e.g., Event-Triggered
    Execution: Screensaver - T1546.002) do not apply to headless, hosted Linux
    because the affected service or feature is disabled or hidden. The final
    collection of techniques that encompass attack surface for IaaS is a
    combination of techniques in the Cloud (IaaS) platform, the Container
    platform, and a subset of the techniques in the Linux platform.

3.  Define Selection Criteria–  Specify the rules used to include or exclude
    techniques The selection criteria for the IaaS will focus on techniques that
    are applicable to the cloud and container-based instances of Linux, to also
    include management and orchestration applications and utilities available
    from service providers. For Iaas, the criteria used to select techniques can
    be further defined into three areas of focus: physical, operational, and
    environmental. Physical criteria are used to determine if the collection
    will include techniques based on physical characteristics of the system.
    Techniques in this section would exclude attacks that target the underlying
    physical technology. Examples of these components include physical servers,
    firmware, hypervisor, and some elements of networking.
+   Exclude techniques that rely on physical access or that target hardware
    (physical servers, firmware, hypervisor, and networking hardware)

+   Exclude techniques that target service provider-managed components, such as
    physical security, storage, servers, and virtualization

    Operational criteria are used to determine if the collection will include
    techniques based on functional characteristics such as how the system is
    intended to operate. There are numerous definitions of cloud service models.
    Examples of these technology components include operating system (Linux),
    applications, networking, authentication and access management services.

    +   Exclude techniques specific to workstations, or that are apply to
        end-users, including Virtual Desktop Infrastructure (VDI), or similar
        workspace-as-a-service offerings
    +   Exclude operating system services and components that manage hardware or
        system components
    +   Exclude applications and extensions that are typically associated with
        workstation or end-user systems, such as email clients and web browser
    +   Include 3rd party applications and runtimes, for example SQL server or
        Java, with the condition that the underlying technology are present
    +   Include tools provided by service provider, or 3rd parties, that are
        used to build and orchestrate cloud systems

    Environmental criteria are used to determine if the collection takes into
    consideration exceptional aspects or characteristics that are specific to
    the environment. This section intends to address nuances of adversary
    behavior that may vary, depending on the environment’s technology deployment
    or operations.

    +   Exclude techniques that do not align with common best practices for
        IaaS, for example, automated provisioning, scaling, and data recovery
    +   Exclude techniques that require end-user interaction

4. Review Applicable Techniques
Apply the selection criteria defined in (3) to the combined set of ATT&CK
techniques identified in (2). Adding comments to explain the rationale behind
each technique will be helpful when modifying the collection through periodic
reviews, or as needed when the organization and systems change. +   T1052.001:
Exfiltration over Physical Medium: Exfiltration over USB – this technique is
excluded from the collection as it relies on adversary access to physical media,
which is out of scope for IaaS physical criteria

+   T1059: Command and Scripting Interpreter – this technique is included in the
    collection as IaaS-hosted systems often use command and scripting
    interpreters in their operation and administration

5. Create a Collection
The final step is to publish the techniques in a collection. Use ATT&CK
Workbench API access, or export the customized collection as a STIX bundle, and
import into ATT&CK Navigator to display a matrix and interactively navigate and
define custom views using layers.

.. note::
  “A collection is a set of related ATT&CK objects; collections may be used to represent specific releases of a dataset such as "Enterprise ATT&CK v7.2", or any other set of objects one may want to share with someone else. Collections are meant to be shared. Collections can be shared as STIX bundles…”

Scope
-----
This methodology does not include adding or extending other sources of CTI into
the ATT&CK knowledge base. The resulting threat model from this process does not
provide a risk determination, such as the likelihood that attack my occur and
the resulting impact. The methodology does not provide a scoring rubric to
evaluate an organization’s current security controls and their effectiveness –
the adversarial behavior modeled in the collection may be used to support these
and other use cases.

.. note::
  "CISA's Cloud Security Technical Reference Architecture report referenced above uses the National Institute for Standards and Technology Special Publication 800-145: The NIST Definition of Cloud Computing as:“Consumers have the capability to provision computing resources to deploy and run environments and applications. Cloud providers manage the underlying infrastructure while the consumers have control over the computing resources, including some control of selected networking components…”

