<a href="https://github.com/researchart/patterns/issues"><img  align=left  width=400
src="https://p19cdn4static.sharpschool.com/UserFiles/Servers/Server_269983/Image/Feedback2.jpg"></a>

[about](https://arxiv.org/pdf/2010.03525.pdf) ::
[comment](https://github.com/researchart/patterns/issues) ::
[revise](https://github.com/researchart/patterns/edit/master/artifact.md) 

-----------

Feedback on the following proposed standard is requested, before Feb 15, 2021.

<br clear=all>




# Exploratory Data Science in SE  

<em>Repository Mining, and other data-centric analysis methods. 
The topic includes studies that analyze existing software engineering artifacts via data exploration.</em>

## Application

This standard applies to studies that primarily analyze existing **software engineering artifacts**, defined as ``tangible by-products produced during the development of software'' [6]. That analysis may be automatic (e.g. via data mining)  or manual (e.g. via subject matter expert interview) or some combination of both. The artifacts analyzed may  includes ( but is not limited to): source code, source code changes (commits, pull requests, reviews), requirements documents, design diagrams, communications between stakeholders (e.g., issue reports, emails, chat, app reviews), documentation (e.g. system documentation, internet forums, questions and answer sites, written and video tutorials), software ecosystems (packages, libraries, dependencies, and distributions), system logs (execution, continuous integration), interaction data (software usage data, developer interactions), code vulnerabilities, UML models, etc. The output of such data science are many, including (but not limited to)  results about particular hypothesis; data sets (to be used in subsequent challenge problems or research directions); some insight presented as a position paper (e.g. that proposes future work for groups of researchers); the tools used for the analysis (e.g. some software analytics toolkit).

Note that:

- If the analysis focused on the toolkit, rather that some new conclusions generated by the toolkit, consider the **Artifacts Standard** 
- If the analysis focuses on a single, context-rich setting (e.g., a detailed analysis of a single repository), consider the **Case Study Standard**.
- If the analysis selects a subset of available data, consult the **Sampling Supplement**.
- If the analysis is more qualitative in nature, focusing on a smaller set of artifacts to deeply analyze their contends (e.g., qualitative analysis of code review comments), consider the **Discourse Analysis Standard**.
- If data visualizations are used, consider the **Information Visualization Supplement**. Note that repository data may be numerous, which visualizations should take into account to stay legible.
- If the temporal dimension is analyzed, consider the **Longitudinal Studies Standard**. 
- If the study is an  intervention, consider **Action Research/Experiment**.

## Specific Attributes

Data exploration  in SE is still a rapidly evolving field. Hence, the following criteria are approximate and many exceptions exist to these criteria. Reviewers should reward sound and novel work and, where possible, support a diverse range of studies.


### Essential

- Clearly discusses   motivation:  (e.g. what claims are being investigated, why is it useful/timely to explore this  problem and/or analysis method?).
- Clearly discusses methods; E.g. how and why the data was selected, pre-processed, filtered, and categorized. E.g. what (and why) prior work was selected as for the purposes of baseline comparisons.  E.g. conceptual outline and/or pseudocode description of AI methods introduced. E.g.  the computing infrastructure used for running experiments (hardware and software), including GPU/CPU models; amount of memory; operating system; names and versions of relevant software libraries and frameworks.  


- Clearly discusses data:
   -  Described the source of the data as well as including  statistics in thdata (descriptive or otherwise) on that data. 
	 - Clearly describe how and why the data was selected, pre-processed and filtered.
	    - Clearly justify why that particular pre-process transforms were applied.
	    - Automated or manual heuristics used in this process must be documented.
- Clearly descibes results analysis method.  Clearly describes evaluation metrics used and explains the motivation for choosing these metrics. 	
   Analysis of results goes beyond single-dimensional summaries of performance (e.g., average; median) to include measures of variation, confidence, or other distributional information.
- Clearly describes results (and how the results substantiate the claims).
- Clarly describes related work. 
- Clearly discusses threats to validity identifying limitations or technical assumptions (using an appropriate framework either using common standards [7] or a threat to validity appropriate to this study). 
- Clearly discusses important data issues that may affect the findings, and EITHER motivates how they are mitigated OR evaluates the impact of the issue (e.g., by a subsequent analysis) OR clearly documents the limitations while avoiding overclaiming.
-  Ensures that the paper takes appropriate measures against false discoveries due to multiple hypothesis testing. Formally describes evaluation metrics used and explains the motivation for choosing these metric

### Desirable

 
- Data is processed by multiple learners, of different types, e.g. regression, bayes classifier, decision tree, random forests, SVM (maybe with different kernels); e.g. see [10] for guidance.
- Data is processed multiple times with different randomly selected training/test examples; results of which are compared via significance tests and effect size tests.
- Study carefully selects the hyperparameters that control the data miners (e.g. via are a careful analysis of settings seen in related work; e.g. via some automatic hyperparameter optimizer).
- Compares against baselines; i.e. reproduces and/or replicates  prior work related work (perhaps with some small improvements or even a “negative” report commenting that it was not possible to achieve reproduction or replication).
- For studies not based on proprietary  data:  a replication package is made available that conforms to SIGSOFT standards for a functional artifact. 
  - And if  data cannot be shared (e.g. an  industrial case study), it is desirable to create a sample dataset that can be shared to illustrate the use of the algorithms.
- Data sanity checks: some non-trivial portion of the data was selected and manually inspected. 


### Extraordinary

- Leverages temporal data via longitudinal analyses when appropriate.
- Triangulates with qualitative data analysis of selected samples of the data. 
- Triangulates with other data sources, such as surveys or interviews.
- Reports findings to, or interacts with, authors of SE artifacts to double check with them.

## Examples of Acceptable Deviations

- Using lighter and less precise data processing (e.g. keyword matching or random subsampling) if the scale of data is too large for a precise analysis to be practical.
- Industry-based studies that cannot share their data do not provide a replication package.
- Data not shared since it is impractical to share (too large, too sensitive).
- Not using temporal analysis techniques such as time series when the data is not easily converted to time series (e.g. some aspects of source code evolution may not be easily modelled as time series).
- Not all studies need statistics and hypotheses. Some studies can be purely or principally descriptive.
  - Different exproationations have different requirements [8]:
      - For example, summarizing past data might only need some topic modeling regression on past data since the goal of that study is not to predict on figure cases). 
      - But There are other kinds of studies that need extensive evaluation via “hold out sets” (where the available data is divided into multiple train and test sets) since the goal of those studies is to make predictions on as-yet-unseen data.

## Antipatterns

- Use of statistical tests that assume normal distributions (without first checking for normality).
- If using Bayesian statistics, not motivating the priors used in the study. 
- Claims  causation unless an actual intervention took place; (e.g., installing a bot to monitor a repository), or the methodology is adequate to do so.
- Pre-processing changes training and test data; e.g. while it may be useful to adjust training data class distributions via (say) sub-sampling of majority classes, that adjustment should not applied to the test data (since it is important to assess the learner on the kinds of data that might be seen “in the wild”).
- Unethical data collection or analysis (e.g. harvest personal information unnecessarily).
- Significant tests without effect size tests.
- Reporting a median, without any indication of variance (e.g., a boxplot).
- Multiple trials conducted, but no disclosure or discussion on the variation between trials. 

## Invalid Criticisms 

- Data is not appropriate for the study (e.g., using bug reports comments as code review data).
- Does not have a reproduction package. Currently, only 60% of SE papers from FSE,ASE, EMSE etc come with reproduction packages. Hence we say such packages are desirable, but not essential, since the community does not judge them as essential.
- Findings are not actionable: not all studies may have directly actionable findings in the short term.
- "Needs more data" as a generic criticism without a clear, justified reason.
- Study does not use qualitative data.
- Study does not make causal claims, when it cannot.
- Study does not use the most precise data source, unless the data source is clearly problematic for the study at hand. Some data is impractical to collect at scale.
- Study does not use method XYZ. Apply this criticism with care. Data science is a very broad field and no paper can explore all parts.
- Study does not analyze data ABC. Apply this criticism with care. Data science is a very broad field and no paper can explore all parts.

## Suggested Readings

1. Hemmati, Hadi, et al. "The msr cookbook: Mining a decade of research." 2013 10th Working Conference on Mining Software Repositories (MSR). IEEE, 2013.
2. Robles, Gregorio, and Jesus M. Gonzalez-Barahona. "Developer identification methods for integrated data from various sources." (2005).
3. Dey, Tapajit, et al. "Detecting and Characterizing Bots that Commit Code." arXiv preprint arXiv:2003.03172 (2020).
4. Hora, Andre, et al. "Assessing the threat of untracked changes in software evolution." Proceedings of the 40th International Conference on Software Engineering. 2018.
5. Herzig, Kim, and Andreas Zeller. "The impact of tangled code changes." 2013 10th Working Conference on Mining Software Repositories (MSR). IEEE, 2013.
6. Berti-Équille, L. (2007). Measuring and Modelling Data Quality for Quality-Awareness in Data Mining.. In F. Guillet & H. J. Hamilton (ed.), Quality Measures in Data Mining , Vol. 43 (pp. 101-126) . Springer . ISBN: 978-3-540-44911-9.
7. Wohlin, C., Runeson, P., Höst, M., Ohlsson, M. C.,, Regnell, B. (2012). Experimentation in Software Engineering.. Springer. ISBN: 978-3-642-29043-5Wohlin’ standard thrrs
8.  Raymond P. L. Buse and Thomas Zimmermann. 2012. Information needs for software development analytics. In Proceedings of the 34th International Conference on Software Engineering (ICSE '12). IEEE Press, 987–996.
9.  https://aaai.org/Conferences/AAAI-21/reproducibility-checklist/
10.  Baljinder Ghotra, Shane McIntosh, and Ahmed E. Hassan. 2015. Revisiting the impact of classification techniques on the performance of defect prediction models. In Proceedings of the 37th International Conference on Software Engineering - Volume 1 (ICSE '15). IEEE Press, 789–800.




