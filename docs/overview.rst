Overview
========
..
  Whenever you update overview.rst, also look at README.md and consider whether
  you should make a corresponding update there.

**Defending IaaS with ATT&CK** delivers a custom collection of MITRE ATT&CK®
techniques that is tailored to the attack surface and threat model of a
Linux-based, infrastructure-as-a-service (IaaS) environment. The project
provides a notional architecture for this target environment and a
:doc:`machine-readable collection <collection>` of ATT&CK techniques that can be
used to plan and evaluate security controls.

Every organization is unique, and even within an organization there may be a
variety of technical architectures. The collection delivered by this project
targets a very specific technical architecture, but the :doc:`project
methodology <methodology>` describes the process for organization to create
their own collections of techniques that are tailored to their exact needs and
circumstances.

Background
----------

`MITRE ATT&CK® <https://attack.mitre.org>`__ is a globally accessible knowledge
base of cyber adversary tactics and techniques based on public reporting and
observation. The ATT&CK knowledge base represents adversary goals as tactics and
specific goal-oriented behaviors as techniques and sub-techniques. This project
leverages the knowledge base and its underlying data model to produce a
collection of ATT&CK techniques that is tailored to a Linux IaaS cloud
architecture.

.. figure:: _static/attack_surface.png
  :target: ../_static/attack_surface.png
  :alt: Depicts the Defending IaaS attack surface.
  :figwidth: 40%
  :align: right

  Click to view full size.

Initially, ATT&CK was focused on the Windows enterprise environment. Later
versions integrated macOS and Linux into what is commonly known as "ATT&CK for
Enterprise". With broader adoption and numerous contributions from the
cybersecurity community, ATT&CK eventually added Mobile and ICS technology
domains.

A typical information system spans multiple platforms (e.g. Linux and Microsoft
Azure) and even spans technology domains (e.g. Enterprise and Mobile). These
complex information systems require cyber defenders to track adversary behaviors
that are defined across multiple matrices and platforms in the ATT&CK knowledge
base.

Keeping track of techniques across different matrices can be difficult, and you
will also find some techniques do not apply to your architecture. (For example,
the Defending IaaS collection excludes Windows techniques.)

To that end, the project defines a notional architecture and a corresponding
attack surface, then pulls together techniques from multiple matrices into a
:doc:`single, convenient collection <collection>`. This collection can be
visualized, customized, or extended using ATT&CK Navigator and ATT&CK Workbench.

Use Cases
---------

The Defending IaaS collection and methodology support the following use cases:

* Evaluate Security Controls
    * Visualize detective and preventive controls across the entire attack
      surface.
    * Combine with `Security Stack Mappings
      <https://github.com/center-for-threat-informed-defense/security-stack-mappings>`__
      to identify the pertinent security controls provided by your IaaS vendor.
* Simulate Adversary Behavior
    * Run tabletop exercises.
    * Build adversary emulation plans.
    * Conduct penetration testing / red team engagements.
* Build End-to-End Threat Models
    * Understand the capabilities and impacts of end users vs insiders vs
      external actors.
    * Develop cyber analytics for detecting adversary activity.

Get Started
-----------

There are several ways that you can get involved with this project and help
advance threat-informed defense:

* :newsgroup:`Review the collection.` Go to :doc:`collection` to learn how the
  collection is constituted and how you can use it.
* :newsgroup:`Learn the methodology.` The Defending IaaS collection is usable
  as-is, but in the :doc:`methodology` chapter, you will learn how to create
  your own tailored collections.
* :newsgroup:`Build and share your own collections!` ATT&CK Workbench is
  upgraded with new features to make it easier than ever to build your own
  collections. You can use custom collections privately or publish them to
  benefit the community.
* :newsgroup:`Tell us what you think.` Find us `on LinkedIn
  <https://www.linkedin.com/showcase/center-for-threat-informed-defense/>`__ or
  post on `the GitHub repository
  <https://github.com/center-for-threat-informed-defense/defending-iaas-with-attack/issues>`__.
  Let us know how you're using the project and what ideas you have to improve
  it.
