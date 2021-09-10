---
title: |
  | Defining a Micro-Geodemographic *Natural Area*
  | with Street-Network Topology
subtitle: "A Proposed Solution to the Problem of Modifiable Areal Neighbourhood Units"
author: Peter Prescott
abstract: "Abstract..."

---

# Introduction

We are still only in the early days of a digital revolution that has
already begun to transform every aspect of human life, and will
continue to do so in ways that can hardly be imagined, let alone
quantifiably predicted [@MBatty2021].  Paradoxically, one of the most
powerful drivers of this general trend of unpredictable change is the
increasing power of sophisticated algorithmic technologies to extract
specific predictive insights concerning some sufficiently well-defined
question [@SRussellNorvig2016; SOpenshawOpenshaw1977]. In a powerful
feedback loop, the more complex our contemporary social context becomes,
the more necessary become those tools which enable informed
decision-making amid an unprecedented deluge of (potentially) relevant
data [@RKitchin2014]. As the global population approaches ten
billion -- ten times what it was in the time of @TMalthus1798 --
one thing that can therefore be said with reasonable certainty is that
the significance of software will continue to increase
[@MAndreessen2011].

Yet while human culture is forced to accelerate at the pace of
an agile software development sprint [@JShoreWarden2007], human
biology remains essentially the same as it has been since prehistoric
times. On the one hand, the Internet has made it possible for the larger
part of the global population to form a single virtual networked
community [@HYangEtAl2021] of which the value arguably scales like
$O(n^2)$, as suggestedy by Metcalfe's Law [@XZhangEtAl2015;
@TPeterson2018]. On the other hand, we remain physical creatures
constrained by geographical location; and instead of an eschatological
'end of geography', technology has instead amplified the significance of
geospatially situated place [@SGraham1998].

And of all the significant types of place which we might want to
understand, the *neighbourhood* one of the most important. If we define
a neighbourhood as a place where a set of people live, then we can say,
as a trivial logical corollary, that everyone lives in a neighbourhood.
The ubiquitous relevance of such a term thus provides strong motivation
for pursuing its study. The application of machine learning to the field
of neighbourhood research is known as *geodemographics*
[@RHarrisEtAl2005; @RWebberBurrows2018]. 

However, although it has been seen widespread adoption as a
technique, there remain unresolved questions concerning its primary
object, the neighbourhood unit [@APetrovicEtAl2020]. Rather than
reflecting a meaningful theoretically-grounded understanding of
neighbourhood ontology, the units of geodemographic analysis are too
often defined merely by data availability; or at a deeper level, by the
administrative pragmatism and historical contigency responsible for
defining the boundaries of data collection units. As well as this
ontological critique, geodemographic analysis has also been the subject
of ethical critique, in which it has been portrayed as a prime example
[JGoss1995; @CDaltonThatcher2015] of what has since been described as
*surveillance capitalism* [@SZuboff2015; -@SZuboff2019].

The aim of this paper is therefore to establish a more robust foundation
for geodemographic analysis, by attempting to identify a theoretically
rigorous unit of neighbourhood analysis (thus addressing the ontological
critique), and to do so using open data and open-source software (thus
addressing the ethical critique).

# Literature Review

The word 'geodemographics' was coined by Jonathan @JRobbin1980 to
describe the marketing tool his company had developed
[@RWebberBurrows2018, p.94]. By classifying American residential zip
codes into groups with similar demographic characteristics, and then
giving each group a memorable label and summary description, he had
created a product designed to simplify the process of targeting
prospective customers and selecting promising retail locations
[@JDeReuRobbin1981]. Robbin's tool combined the latest in marketing
theory with cutting-edge methods in quantitative geographic sociology. 

*Market segmentation* [@WSmith1956] solved the problem of a complex
market of heterogenous customers by dividing it into several sub-markets
of homogenous customers. *Demographics* -- that is, population
attributes such as age, sex, income, and ethnicity -- offer
a straightforward way of applying this strategy. The idea of
*psychographics* [@WWells1975] is then to understand the psychology of
a typical customer from a given market segment, so as to anticipate
their needs, desires, and trigger points. Robbin added these techniques
to the *social area analysis* [@EShevkyBell1955] he had been applying as
a doctoral candidate at New York University [@Ricercar2021], assisting
Edgar Borgatta in researching ways of classifying the social
characteristics of American cities [@JHaddenBorgatta1965].

@EShevkyBell1955 offered a method of classifying a census tract by
reducing the attributes of its census data into a simplied expression of
just three factors, which they suggested both retained the important
details of the data, and corresponded to the essential nature of
contemporary society. Each datapoint could then be visualized by a small
circle in a two-dimensional scatter-plot, with the attributes along the
x and y axes corresponding to the two more significant factors, and the
circle's colour the third. The datapoints can then be divided up
according to their position, and since their positional proximity is
a function of their statistical similarity, census tracts with
datapoints in the same segment can be considered as being of the same
*type*.

@RTryon1968 achieved a more sophisticated way of grouping census tract
datapoints, showing how *cluster analysis* [@RTryon1939] could identify
'clusters' of similar datapoints, avoiding the arbitrariness of simply
segmenting the attribute space by intervals. Instead these could be
detected by an iterative computational algorithm, made available in
reproducible FORTRAN code [@RTryonBailey1966].

While clustering census tracts provides a way of segmenting them into
similar groups, the *ecological fallacy* [@WRobinson1950] means it does
not follow that individuals within tracts with similar population
demographics are necessarily similar at the individual level. The
argument for the likely homogeneity of census tract units is made by
reference to the account of the *neighbourhood* as a *natural area*
given by @RPark1925, who argued that the twin forces of homophily and
social influence will tend to segregate an urban population into
a "mosaic of social worlds" [@LWirth1938]. Park was the central figure
of the *Chicago School* [@AAbbott2017], whose distinctive *human
ecology* combined the empirical investigation exemplified by @CBooth1904
with the more theoretical sociology of @GSimmel1908, with whom he had
studied in Germany.

This account of geodemographic historiography is expressed in detail in
the collaborative monographs of @RHarrisEtAl2005 and
@RWebberBurrows2018. Booth's urban poverty maps offer "the first example
of applied geodemographics" [@RHarrisEtAl2005, p.30], the Chicago
School's theory of urban *natural areas* (@Fig:BurgessDiagrams) provides
the necessary "conceptual definition...[for] neighbourhood analysis"
[p.39], the increasing availability of census data then stimulates the
development of quantitative social area analysis and subsequent
factorial ecology [pp.39-40], paving the way for the emergence of
geodemographic products [p.55].

While Robbin coined the term 'geodemographics' and successfully turned
it into a profitable commercial product, his impact on the academic
understanding of neighbourhoods was quite limited. He dropped out of his
PhD without completing it, after his supervisor left to take up a post
at another university [@Ricercar2021], and it has subsequently been the
case in North America that, as a method for studying neighbourhood
dynamics and effects, "many academic social scientists ignore
geodemographics" [@MReibel2011, p.310].

In Britain however, the situation is quite different, largely because of
the different circumstances of its separate development by Richard
Webber. Independently from Robbin, Webber was also applying cluster
analysis to census data; first, for the purpose of helping the Liverpool
City Council identify priority areas for social service provision
[-@RWebber1975], and then on a national scale [-@RWebber1977,
-@RWebber1978]. Although Webber did go on to work in the marketing
industry, the initial context of his research for a public authority
meant that his work was published openly, rather than being
a proprietary secret. There has then been a continued tradition of free,
national, *open* [@ASingletonEtAl2016] geodemographic typologies of
Britain, produced using the data from the 1981 [@MCharltonEtAl1985],
1991 [@MBlakeOpenshaw1994], 2001 [@DVickersRees2007], and 2011
[@CGale2014; @CGaleEtAl2016] censuses. 

This has allowed robust academic debate about the validity and utility
of geodemographic typologies. @SOpenshawGillard1978 showed the
instability of clustered classifications by demonstrating their
sensitivity to subjective decisions at multiple points in their
construction, including "the selection of variables, the choice of
algorithms and methods, and various data management operations" (p.101),
and concluded that such classifications in general, and Webber's 1975
study in particular, "should not be used until they can be replicated at
the individual level" (p.118). @SOpenshawEtAl1980 repeated the warning
"for all users to be aware of the practical limitations of [Webber's
subsequent national] Classifications... [as] they are unsuitable or many
of the applications that have been suggested" (p.438).


```{.table caption="Levels of Relational Availability, [after @RGrannis2009] {#tbl:relational}"
source="../csv/neighbouring.csv"}
```

# Methods

```{.table caption="GeoJSON Geometry Objects {#tbl:geojson}"
source="../csv/geojson.csv"}
```

```{.table caption="Some Coordinate Reference Systems {#tbl:crs}"
source="../csv/crs.csv"}
```



# Results



# Discussion

# Conclusion

# References
