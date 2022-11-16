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
targets a very specific technical architecture, but to support the wider
community organizations can use the :doc:`project methodology <methodology>` to
create custom collections of techniques that are tailored to their exact
circumstances and needs.

Background
----------

.. figure:: _static/attack_surface.png
  :target: ../_static/attack_surface.png
  :alt: Visually depicts DIWA's attack surface.
  :figwidth: 40%
  :align: right

  Click to view full size.

`MITRE ATT&CK® <https://attack.mitre.org>`__ is a globally accessible knowledge
base of adversary tactics and techniques based on real-world observation. The
ATT&CK knowledge base represents adversary goals as tactics and specific
behaviors to achieve those goals as techniques and sub-techniques. This project
leverages the knowledge base and its underlying data model to produce a
collection of ATT&CK techniques that is tailored to a Linux IaaS cloud
architecture.

Initially, ATT&CK was focused on the Windows enterprise environment. Later
versions integrated macOS and Linux into what is commonly known as "ATT&CK for
Enterprise". With broader adoption and numerous contributions from the
cybersecurity community, ATT&CK eventually added Mobile and ICS technology
domains. Within each of these domains, a platform defines the system an
adversary operates in, for example Microsoft Azure or PRE.

A typical information system spans multiple platforms (e.g. Linux and Microsoft
Azure) and even across technology domains (e.g. Enterprise and Mobile), which
requires cyber defenders to track advesary behaviors that are defined in
multiple matrices and platforms in the ATT&CK knowledge base.

Keeping track of techniques across different matrices can be difficult, and you
will also find some techniques do not apply to your architecture. (For example,
the Defending IaaS collection excludes Windows techniques.) To that end, the
project defines a notional archictecture and a corresponding attack surface,
then pulls together techniques from multiple matrices into a :doc:`single,
convenient collection <collection>`. This collection can be visualized,
customized, or extended using ATT&CK Navigator and ATT&CK Workbench.

Use Cases
---------

The Defending IaaS collection and methodology support the following use cases:

* Evaluate Security Controls
    * Visualize detective and preventive controls across the entire attack
      surface.
    * Combine with `Security Stack Mappings
      <https://github.com/center-for-threat-informed-defense/security-stack-mappings>`__
      to identify the pertinent security controls provided by your IaaS vendor.
* Build End-to-End Threat Models
    * Understand the capabilities and impacts of end users vs insiders vs
      external actors.
    * Develop cyber analytics for detecting adversary activity.
* Simulate Adversary Behavior
    * Run tabletop exercises.
    * Build adversary emulation plans.
    * Conduct penetration testing / red team engagements.

Get Started
-----------

There are several ways that you can get involved with this project and help
advance threat-informed defense:

* :newsgroup:`Review the collection.` The :doc:`collection <collection>` chapter describes
  how the collection is consistuted and how you can use it.
* :newsgroup:`Learn the methodology.` The Defending IaaS collection is helpful
  in its own right, but the :doc:`methodology <methodology>` is provided for
  organizations to create their own tailored collections.
* :newsgroup:`Build and share your own collections!` ATT&CK Workbench is
  upgraded with new features to make it easier than ever to build your own
  collections. You can use custom collections privately or publish them to
  benefit the community.
* :newsgroup:`Tell us what you think.` Find us `on LinkedIn
  <https://www.linkedin.com/showcase/center-for-threat-informed-defense/>`__ or
  post on `the GitHub repository
  <https://github.com/center-for-threat-informed-defense/defending-iaas-with-attack>`__.
  Let us know how you're using the project and what ideas you have to improve
  it.
