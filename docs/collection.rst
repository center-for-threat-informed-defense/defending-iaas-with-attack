Collection
==========

The Defending IaaS collection drew from 510 total techniques and subtechniques
across five ATT&CK domains. It does not include techniques from any sources
other than ATT&CK. Of these, 373 [sub-]techniques are included in the collection
and the remaining 137 are excluded.

.. figure:: _static/sankey.png
  :alt: A sankey diagram showing how techniques were canvassed from multiple ATT&CK matrices.
  :align: center

  The Defending IaaS collection pulls together multiple ATT&CK matrices and
  then selects those techniques that are applicable to our architecture.

.. note::

  Due to the overlap in ATT&CK techniques across different domains, the final
  count of unique [sub-]techniques in the collection is 277.

The threat model that results from this process does not provide a risk
determination, i.e. the likelihood of successful attack or the resulting
impact. The methodology does not provide a scoring rubric to evaluate an
organization’s current security controls and their effectiveness. The
adversarial behavior modeled in the collection may be used to support these
and other use cases.

Architecture
------------

.. figure:: _static/reference_architecture.png
  :target: ../_static/reference_architecture.png
  :alt: The components of the reference architecture.
  :align: right
  :figwidth: 40%

  Click to enlarge.

This project adopts the definition of cloud computing as formalized in the
National Institute for Standards and Technology (NIST) SP 800-145:

    Consumers have the capability to provision computing resources to deploy and
    run environments and applications. Cloud providers manage the underlying
    infrastructure while the consumers have control over the computing
    resources, including some control of selected networking components…

This separation of responsibilities is a focal point for the Defending IaaS
collection. The collection includes ATT&CK techniques that pertain to the
"Customer Managed" components seen in the architecture diagram to the right.

This architecture and division of responsibility are tailored to the Defending
IaaS project and its chosen attack surface, but in general the methodology can
be applied to any architecture or IaaS vendor.

Building the Collection
-----------------------

You can extend the Defending IaaS collection or build your own using `ATT&CK
Workbench
<https://github.com/center-for-threat-informed-defense/attack-workbench-frontend>`__.
As part of this project, we updated Workbench to make the creation and sharing
of collections easier than ever.

.. figure:: _static/workbench.png
  :alt: Screenshot of editing a collection in ATT&CK Workbench.
  :align: center
  :width: 75%

  Editing a collection in ATT&CK Workbench is easier than ever. (Click to enlarge)

For more information on building collections in Workbench, refer to the
`Workbench documentation
<https://github.com/center-for-threat-informed-defense/attack-workbench-frontend/blob/master/docs/collections.md>`__.

Visualize the Collection
------------------------

.. raw:: html

    <p>
        <a class="btn btn-primary" target="_blank" href="https://mitre-attack.github.io/attack-navigator/#bundleURL=https%3A%2F%2Fraw.githubusercontent.com%2Fcenter-for-threat-informed-defense%2Fdefending-iaas-with-attack%2Fmain%2Fdata%2Fdefending-iaas-1.0.json&version=11&domain=defending-iaas">
        <i class="fa fa-map-signs"></i> Open "Defending IAAS" in ATT&CK Navigator</a>
    </p>

There are several ways to access the Defending IaaS collection. The easiest way is to
load it as a base layer in ATT&CK Navigator by clicking the button above. This will
intialize a new ATT&CK Navigator layer containing all of the techniques from the
Defending IaaS collection.

.. figure:: _static/navigator.png
  :alt: Screenshot of newly created ATT&CK Navigator layer.
  :align: center
  :width: 75%

  Visualizing the Defending IaaS collection as a Navigator layer. (Click to
  enlarge)

ATT&CK Navigator is a powerful tool for visualizing and annotating an ATT&CK
matrix or collection. You can use it to visualize security control coverage,
red/blue team planning, or risk assessments. Navigator supports color coding of
techniques and assigning numeric scores. It offers a variety of ways to
visualize and export content in support of the Defending IaaS use cases.

Download the Collection
-----------------------

.. raw:: html

    <p>
        <a class="btn btn-primary" download href="https://raw.githubusercontent.com/center-for-threat-informed-defense/defending-iaas-with-attack/main/data/defending-iaas-1.0.xlsx">
        <i class="fa fa-file-excel-o"></i> Download Mappings – Excel</a>
        <a class="btn btn-primary" download href="https://raw.githubusercontent.com/center-for-threat-informed-defense/defending-iaas-with-attack/main/data/defending-iaas-1.0.json">
        <i class="fa fa-file-code-o"></i> Download Mappings – STIX</a>
    </p>

You can also download the collection as an Excel spreadsheet or a STIX bundle for use in
other tools, or if you want to write custom software to process the collection.
