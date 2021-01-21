[about](https://arxiv.org/pdf/2010.03525.pdf) ::
[comment](https://github.com/researchart/patterns/issues) ::
[revision](https://github.com/researchart/patterns/edit/master/artifact.md) ::
[authors](#authors) 

# Artifact Evaluation

<em>A review of artifacts associated with a publishable research paper with
the goal of encouraging more reuse of the tools and techniques generated
by that paper.</em>


To comment on this draft, please raise [an issue]. Tp re

## Application

This standard applies to review of artifacts associated with paper
submissions, e.g., via a formal artifact evaluation track, examples of
which can be found at ICSE 2020, FSE 2020, PLDI 2020. Other venues
include journal artifact and open science efforts. Artifact review
typically means assigning a badge from
[https://www.acm.org/publications/policies/artifact-review-and-badging-current](https://www.acm.org/publications/policies/artifact-review-and-badging-current).
***Bold-italic*** terms refer to the ACM definitions for badging
purposes.

## Specific Attributes

Essential:

-   Artifacts are ***available***; i.e.
     -   Archived in a public repository (Zenodo, FigShare, institutional repositories     like DSpace) with a long-term retention  policy.
     -   A DOI is provided.
-   Artifacts are **related** to a publication (in  arxiv, in some paper databases); i.e.
    -   they provide essential and/or additional material to the paper, its related  experiments, and the topic presented.

Desirable

-   Artifacts are ***functional***; i.e.
    -   **documented**: they can be installed and  used with the provided documentation, a
           license should indicate the rights of    the authors and of the users of the   artifact,
    -   **exercisable:** included procedures can
     be repeated in parts or in completion
     (e.g. executable, repeatable experiments
     as software, data processing scripts,
     documentation for manual processes),
     -   **verifiable**: appropriate evidence of
     verification and validation for claims
     made in the paper (e.g. test cases that
     can reproduce the RQs of a paper).
     -   **self-contained:** they can be used with
     minimal (or standard) software(e.g. a
     Python pip package) and hardware
     requirements (e.g. VMWare, Docker).;

Extraordinary

-   Artifact is **reused**: Results, data,
 experiments, and/or tools have been reused
 by a different team for a purpose distinct
 from the original paper's question. Papers
 reusing the artifact should have a clear
 explicit reference to the artifact.
-   Artifact is ***reproduced***: Results of this
 paper have been reproduced by a different
 team using the original artifact.
-   Artifact is ***replicated***: Results of this
 paper have been replicated by a different
 team without the original artifact.
  -   Look beyond the current venue (e.g.,
     conference series) to find potential
     replications.

## General Quality Criteria

Evaluation of artifacts should include elements such as: setting up
documents,  licensing, artifact stored in some long term archive.
Conformance to such criteria leads to accepting artifacts that are
available by default.

## Examples of Acceptable Deviations

-   A reason for not providing an artifact (e.g. industrial case studies
    under NDA). However, no badge or other recognition can be awarded
    in that case.

## Antipatterns

-   Artifact review is not code review. Taking longer than a few hours
    to install and run an artifact is rarely a good use of time. Thus,
    artifacts that are not immediately usable should be returned for
    improvement.
-   Artifacts that claim to be replicated need to be more than a proof
    of concept. The replication should be a peer-reviewed scientific
    publication and should cite/refer to the artifact that is being
    used.
-   Not giving your reviewers the time required to interact with
    authors. Such interaction is useful when (e.g.) finding and fixing
    one letter typos in Makefiles. For this purpose, (a) artifact
    evaluation committees should be large (e.g. such that each
    reviewer has only one to three artifacts to evaluate; (b) the use
     of tools like HotCRP or Github is recommended; (c) the use of some
    version control tool is recommended so reviewers can always access
    the latest version of the artifact. For example, the Zenodo system
    can extract a new zip file of a Github repository, every time the
    author makes a new release in Github automatically. During the
    review process, authors can make multiple releases as they work
    through reviewer comments).
-   Only evaluating for ***functional***, ***available*** and
    ***reusable***. The goal of artifacts is research reuse so it is
    important that artifact evaluation also strives to include R+R
    (replicated and reproduced artifacts). One challenge with "R+R" is
    that it is unlikely that a new artifact from a new conference
    paper can achieve reproduced or replicated status (since the
    broader research community is not yet aware of this new product).
    Hence, to encourage replicated and reproduced badges, it is
    recommended that artifact evaluation committees review artifacts
    from their current conferences as well as an other recent
    publication venues. Another practice that supports replicated and
    reproduced badges is to divide an artifact evaluation into two
    parts a badging process plus a public workshop that showcases
    replicated and reproduced results (such as the ROSE Festivals).
-   Acting as "Judge" and imposing strict standards on the artifacts.
    Judges tend to reject more submissions. A "Shepherd", on the other
    hand are more lenient and work with authors to (e.g.) fix one
    letter typos that stop installation scripts running.
-   Ethical/privacy considerations are ignored. E.g. data from individuals
    used in studies is pubished without due dilengance (e.g. anpnympousization)

## Invalid Criticisms

-   Lack of an artifact should not be grounds for rejection of the
    scientific paper. There may be valid reasons, such as industrial
    non-disclosure agreements.
-   Reviewers should look beyond simple code errors and library issues.
    These bugs can usually be easily fixed by the submitters.
-   "The code should be in a Docker container". Software sharing
    technologies are many and various and range for "download this zip
    file" to "here is a package in PyPi" to "here is a Docker
    container". All these approaches have their positive and negative
    aspects so authors should be free to use whatever sharing
    technologies they feel is appropriate.

## Notes

-   The list of "artifact types" is quite broad. An initial list is
    defined at:
    [https://github.com/researchart/all/blob/master/ListOfArtifacts.md](https://github.com/researchart/all/blob/master/ListOfArtifacts.md).
    Defining what kinds of artifacts should be reviewed at different
    venues is a venue-specific question. Reviewers should ensure that
    the artifact they examine aligns with the review guidelines. Being
    open-minded about definitions is important as the goal is to
    increase reproducibility.
-   Ethical and privacy considerations are important. While violations
    of ethical standards are ultimately the responsibility of the
    submitter, review is often seen as an endorsement from the venue.
    Artifact review should consider issues such as licencing
    (restrictive? permissive?), institutional review of human subjects
    research (the IRB certificate should form part of the submission),
    data provenance (is the dataset biased?), and privacy protection
    (can individual information be obtained? At archive sites such as
    Zenodo, it may not be possible to remove individual data such as
    emails).
-   Artifact evaluation committees find that some badges are easier to
    evaluate than others. An available badge can be instantly assigned
    when (a) an artifact is available on some archival service; and
    (b) a DOI (digital object identifier) is available for that
    artifact. For this reason, some artifact tracks have made it
    mandatory for artifact authors to \`\`submit\'\' their artifacts
    by registering them with sites like Zenodo (which takes a copy of
    the repository and automatically assigns a DOI). Note that this
    practice both (a) simplifies the artifact reviewing process and
    (b) ensures that all artifacts are at the every least available.
-   Further to the last point, while it is possible to distinguish
    functional vs reusable artifacts, this distinction can be tricky
    to accurately define. Looking over the frequency of existing
    artifact types in ACM Portal, it should be noted functional
    artifacts are listed far more often than reusable artifacts (in
    software engineering). Hence, a case can be made for using the
    more common term (functional) and, perhaps, not even evaluating
    for reusable.
-   Committees should take a position on what types of artifacts they
    accept. "Quantitative" tracks only certify artifacts comprising
    code products. "Qualitative" tracks typically also certify
    artifacts not related to execution, such as interview scripts and
    survey templates.
-   Current indexing methods for artifacts are not efficient. While ACM
    provides a search engine for artifacts, many other digital
    libraries such as IEEEXplore or SpringerLink do not. Furthermore,
    ACM DL is even difficult to query for such artifacts and does not
    distinguish classification of papers based only on badges.

## Suggested Readings

1.  A list of "artifact types" :
    [https://github.com/researchart/all/blob/master/ListOfArtifacts.m](https://github.com/researchart/all/blob/master/ListOfArtifacts.md)d
    . Note that most artifact tracks work on items at the end of that
    list\-\--but that need not stop venues exploring other kinds of
    artifacts.
2.  Ben Hermann, Stefan Winter, and Janet Siegmund. 2020. Community
    expectations for research artifacts and evaluation processes.
    Proceedings of the 28th ACM Joint Meeting on European Software
    Engineering Conference and Symposium on the Foundations of
    Software Engineering. Association for Computing Machinery, New
    York, NY, USA, 469--480.
    DOI:[https://doi.org/10.1145/3368089.3409767](https://doi.org/10.1145/3368089.3409767)
3.  Good enough practices in scientific computing, Greg Wilson, Jennifer
    Bryan , Karen Cranston, Justin Kitzes , Lex Nederbragt , Tracy K.
    Teal , Published: June 22, 2017,
    <https://doi.org/10.1371/journal.pcbi.1005510>,
    [https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510)
4.  Christopher S. Timperley, Lauren Herckis, Claire Le Goues, and
    Michael Hilton. 2020. Understanding and Improving Artifact Sharing
    in Software Engineering Research. arXiv:cs.SE/2008.01046
    [https://arxiv.org/abs/2008.01046](https://arxiv.org/abs/2008.01046)
5.  Chat Wacharamanotham, Lukas Eisenring, Steve Haroz, and Florian
    Echtler. 2020. Transparency of CHI Research Artifacts: Results of
    a Self-Reported Survey. Proceedings of the 2020 CHI Conference on
    Human Factors in Computing Systems. Association for Computing
    Machinery, New York, NY, USA, 1--14.
    DOI:[https://doi.org/10.1145/3313831.3376448](https://doi.org/10.1145/3313831.3376448)
6.  Maria Teresa Baldassarre, Neil Ernst, Ben Hermann, Tim Menzies . On
    the Sociology of Reuse: Social and Technical Practices for Better
    Artifact Evaluation .
7.  Pinto, Gustavo, 2021. "How To Licence Research Artifacts",
    [https://gustavopinto.medium.com/how-to-license-research-artifacts-2ebec048fc87](https://gustavopinto.medium.com/how-to-license-research-artifacts-2ebec048fc87)
8.  Padhye, Rohan, 2019. "Artifact Evaluation: Tips for Authors",
    [https://blog.padhye.org/Artifact-Evaluation-Tips-for-Authors/](https://blog.padhye.org/Artifact-Evaluation-Tips-for-Authors/)

## Exemplars

1.  Zhongjun Jin, Michael R. Anderson, Michael Cafarella, and H. V.
    Jagadish. 2017. Foofah: Transforming Data By Example. In
    Proceedings of the 2017 ACM International Conference on Management
    of Data (SIGMOD \'17). Association for Computing Machinery, New
    York, NY, USA, 683--698. DOI: 10.1145/3035918.3064034
2.  Suraj Yatish, Jirayus Jiarpakdee, Patanamon Thongtanunam, and
    Chakkrit Tantithamthavorn. 2019. Mining software defects: should
    we consider affected releases? In Proceedings of the 41st
    International Conference on Software Engineering (ICSE \'19). IEEE
    Press, 654--665. DOI:<https://doi.org/10.1109/ICSE.2019.00075>
3.  Not from software engineering, but this is an example of research
    artifact that has become very widely used:
    https://github.com/marcotcr/lime


## Authors

Original authors: Maria-Teresa Baldassarre, Neil Enrst, Ben Hermann, Tim Menzies
