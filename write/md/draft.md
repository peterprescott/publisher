---
title: |
  | Defining a Micro-Geodemographic *Natural Area*
  | with Street-Network Topology
author: Peter Prescott
abstract: "Abstract..."

---

# Introduction

We are still only in the early days of a digital revolution that has
already begun to transform every aspect of human life, and will
continue to do so in ways that can hardly yet be imagined, let alone
quantifiably predicted [@MBatty2021].  Paradoxically, one of the most
powerful drivers of this general trend of unpredictable change is the
increasing power of sophisticated algorithmic technologies to extract
specific predictive insights concerning some sufficiently well-defined
question [@SRussellNorvig2016; @SOpenshawOpenshaw1977]. In a powerful
feedback loop, the more complex our contemporary social context becomes,
the more necessary become those tools which enable informed
decision-making amid an unprecedented deluge of (potentially) relevant
data [@RKitchin2014]. One such tool is *geodemographics*
[@RHarrisEtAl2005; @RWebberBurrows2018].

Geodemographic analysis applies unsupervised machine learning to the
demographic data associated with geographic areas, thus enabling the
reduction of the complex multidimensional reality of human society to a
more manageable number of statistical types. Having been identified
algorithmically, these *clusters* can then be described
qualitatively (@Tbl:oac_tbl) and presented visually (@Fig:oac_fig),
creating products that have been used with great success in fields
ranging from direct marketing [@MEvans1998], retail location selection
[@OGonzalez-BenitoGonzalez-Benito2005], political campaigning
[@RWebber2006; @JRobbin1980], and military recruitment
[@JDeReuRobbin1981], to social service resource allocation
[@PLongley2005]: whether that service be in the field of health
[@MFarrEtAl2008], education [@ASingletonLongley2009c], or policing
[@DAshbyLongley2005].

![An Example of Geodemographic Visualization:\newline Choropleth Map showing
2011 Open Area Classification, after @CDRC2021](../fig/CDRC_OAC2011.png){#fig:oac_fig}

However, although it has been seen widespread adoption as a technique,
there remain unresolved questions concerning its primary object, the
neighbourhood unit [@APetrovicEtAl2020]. Rather than reflecting a
meaningful theoretically-grounded understanding of neighbourhood
ontology, the units of geodemographic analysis are too often defined
merely by data availability; or at a deeper level, by the administrative
pragmatism and historical contigency responsible for defining the
boundaries of data collection units. 

To give credit where it is due, work such as that of @DMartinEtAl2001,
which used a microsimulation approach to design census output zones
maximizing social homogeneity, demonstrates that administrative data
collection units do sometimes reflect a high level of sophistication.
But perhaps here the problem is in fact presented even more starkly, for
from a *statistical* point of view, it makes sense to design
neighbourhood zones in such a way as to maximize social homogeneity.
From a *social* point of view however, enforcing homogeneity is essentially
*segregation*, and while as scholars we may be content merely to
understand its causes [e.g. @TSchelling1969] rather than to resist it
more directly [e.g. @MKing1968], it becomes impossible to say much about
whether and why neighbourhoods are (not) diverse, if our only way
of defining them is in such terms.

```{.table caption="An Example of Geodemographic Cluster Description:\newline Groups and Subgroups from the 2011 OAC, created by @CGaleEtAl2016 {#tbl:oac_tbl}"
source="../csv/oac2011_.csv"}
```

As well as this ontological critique, geodemographic analysis has also
been the subject of ethical critique, in which it has been portrayed as
a prime example [@JGoss1995; @CDaltonThatcher2015] of what has since
been described as *surveillance capitalism* [@SZuboff2015;
-@SZuboff2019]. But while this may apply to proprietary systems, the
criticism cannot be reasonably applied to open-source geodemographic
analysis -- indeed, to whatever degree one might be worried about the
possibility of encroaching corporate *geosurveillance*, developing free
and open alternatives to proprietary products is arguably a necessary
strategy of resistance [@DSwanlundSchuurman2019].

The aim of this paper is therefore to establish a more robust foundation
for geodemographic analysis, by attempting to identify a theoretically
rigorous unit of neighbourhood analysis, thus addressing the ontological
critique; and to do so using open data and open-source software, thus
resisting the ethical critique.

# Literature Review

## 'Geodemographics': Development and Debate

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
datapoints, showing how his *cluster analysis* [@RTryon1939] could
identify 'clusters' of similar datapoints, avoiding the arbitrariness of
simply segmenting the attribute space by intervals. Instead these could
be detected by an iterative computational algorithm, made available in
reproducible FORTRAN code [@RTryonBailey1966]. From a contemporary
perspective, cluster analysis is a primary example of unsupervised
machine learning [@AGeron2019], thus making geodemographic analysis one
of the first, and arguably even the original, example of its
application.

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

![The Chicago Concentric Zone Diagram, after @EBurgess1925](../fig/EBurgess1925.png){#fig:BurgessDiagrams}

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
of the applications that have been suggested" (p.438). Webber apparently
was apparently unaware of the first critique, but the second quickly 
provoked a thorough rebuttal, in which @RWebber1980 concluded that his 
critics were not "in touch with either public policy or the commercial
world" (p.449). Presumably, the point was well taken, as @SOpenshaw1985
then applied census-data cluster classification to rural areas,
complaining of the resistance of government departments to such methods,
and of their "preference for old fashioned pre-computer age techniques"
(p.286). 

@SOpenshaw1997 then found himself in another notable controversy
concerning geodemographics, this time offering a defense, when he
offered a widely-ranging response to the various criticisms of
Geographic Information Systems gathered by @JPickles1995. The point
which stands out as having the most continued validity in his discussion
is his suggestion that "data protection legislation" can mitigate some
of the dangers of unfettered technological surveillance, foreseeing the
need for the sort of data protection legislation now established by
statutes such as @GDPR2016.  

In our contemporary context, @SGilbert2021 offers another helpful
response to the suggestion that gathering and profiting from people's
data is a sort of exploitative 'data colonialism' [@JThatcherEtAl2016],
in which an intrinsically valuable resource is being unfairly extracted.
Rather than being 'the new oil' [e.g. @MSzczepanski2020], Gilbert, whose
describes himself as a 'data optimist', suggests that a better metaphor
for big data would in fact be 'the new manure': "a mundane by-product of
life" [p.36], which, like manure that is processed into fertiliser, only
has economic value because there are businesses that have invested in
processing it into something useful.  

We cannot in this paper attempt a comprehensive evaluation of Gilbert's
attempt to defend big data analytics and develop a positive account of
*digital legitimacy* [@AGreeneGilbert2020]. For our present purposes it
will suffice to note that on the one hand, a positive argument can be
made for it, while on the other hand, to whatever extent the negative
assessment is considered valid, the development of free and open
alternatives would seem to be a necessary strategy of resistance
[@DSwanlundSchuurman2019].  But regarding the ontological question of
how to define a neighbourhood, more must be said.

## Defining Neighbourhoods: Problems and Possibilities

One possible response to the question would be to suggest that in fact
the problem of neighbourhood definition is nothing more than a
particular instance of the the more general *Modifiable Areal Unit
Problem* (MAUP), described with typical clarity by @SOpenshaw1983, but
in fact identified fifty years previously by @CGehlkeBiehl1934. The
problem is a profound one for quantitative analysis involving spatial
data, for it observes that the same basic dataset can yield quite
different statistical results depending on the specific ways that its
data has been aggregated. The effect is found not only when data
is gathered at different scales, but even when it is aggregated at the
same scale with differing boundaries. A contemporary example is shown in
@Fig:covid_maup, in which @ASingletonCheshire2021 demonstrate how,
depending on the size of the population of the areal unit used for
analysis, COVID-19 rates can appear "as low as 295 per 100,000 people or
as high as 736 per 100,000". 

![Demonstrating the Modifiable Areal Unit Problem with COVID-19 Rates,
after @ASingletonCheshire2021](../fig/covid_maup.png){#fig:covid_maup}

A slightly different challenge to quantitative spatial analysis is the
*Uncertain Geographic Context Problem* (UGCoP) described by @MKwan2012a.
The MAUP is a problem of how to aggregate individual datapoints into
collective units. It observes that different ways of aggregating
spatially located datapoints into broader areal units may lead to
different statistical conclusions, and therefore warns against treating
any particular areal unit as authoritative. The UGCoP, however, points
out that even when only considering a single social datapoint, that
point is associated with a human individual who will have experienced
exposure to relevant contextual influences in a variety of geographical
contexts not limited to the point at which they live, or perhaps were
interviewed, the details of which will in general be unknown to the 
researcher. But rather than merely confounding the issue further, Kwan
frames the problem in such a way as to suggest that there is in fact
some "true causally relevant geographic context" (p.959).

For Kwan, this suggests a turn "from location to movement, from place to
mobility, and from space to space-time" (p.966), and she suggests "using
GPS data to delineate activity spaces" (p.965). This is all very well,
but in heeding her suggestion we might perhaps stray too far from our
own topic of geodemographic ontology.  But nevertheless, the suggestion
that for every spatial effect, there must be *some* true causally
relevant geographic context, rekindles the hope that even in considering
a general typology of residential neighbourhoods, such a context might
be found.

What then are the causally relevant contextual elements that make a
neighbourhood a neighbourhood? We find ourselves returning to the
observation made by @RPark1925 [p.1], that "there are forces at work...
within the limits of any natural area of human habitation... which tend
to bring about an orderly and typical grouping of its population and
institutions". Does Park's claim still hold? And if so, with which
"forces" should we be primarily concerned? Is it "the economic
organization of the city... based on the division of labour" (p.2)? Or
rather "racial, cultural and vocational interests" (p.11)? Or "the
breaking down of local attachments and the weakening of the restraints
and inhibitions of the primary [family] group, under the influence of
the urban environment" (p.25)? Or it is the economic expansion of the
city, and the accompanying "tendency of each inner zone to extend its
area by the invasion of the next outer zone" [@EBurgess1925 p.51;
@Fig:BurgessDiagrams]? 

An impressive case is made by @GGalster2019 that "to understand the
causes and effects of neighborhoods one must embed them in a framework
in which four spatial levels--metropolitan, local jurisdiction,
neighbourhood, and individual--are interconnected in mutually causal
ways" (@Fig:model). At the individual level, we have the mobility and
investment behaviours of individual households, dwelling owners and
developers.  These both influence and are influenced by the demographic,
social, economic and physical characteristics of the household's
surrounding neighbourhood. Simultaneously, these neighbourhood
characteristics are engaged in circular interaction with public and
private service providers operating at a broader geographic scale. And
all of this occurs within the context of the regional housing market.

![Holistic, multilevel, circular causation model of neighbourhoods,
after
@GGalster2019](../fig/GGalster2019_NeighborhoodCausationModel.png){#fig:model}

Galster credits his multilevel model to the inspiration of
@GSuttles1972, whose "groundbreaking observation that people are
cognitive of four distinct spatial levels of neighbourhood" (p.39). At
Suttles' time of writing, the 'natural area' concept of Park, Burgess,
and the interwar Chicago School, had fallen thoroughly out of fashion.
@MAlihan1938 had concluded that although "the ecological school [was]
one of the most definite and influential schools in American sociology"
(p.xi), "the concept 'natural area', so fundamental to human ecology,
has not as yet been consistently defined and logically classified...
[and] no amount of empirical investigation can rectify the
inconsistencies inherent in the theoretical statements pertaining to it"
(p.240). Refusing to accept Alihan's damning verdict, @GSuttles1972
[p.21] attempted "to resurrect the concept... and show that it may still
be usefully applied to urban areas", noting the need to consider both
the "physical structure of the city", and "the cognitive map which
residents have".

Drawing on the suggestion that there are analogies between human social
behaviour and the ideas of animal *territoriality* developed by
zoologists such as @MLipitz1969 and @DMorris1967a, @GSuttles1972
suggests that neighbourhood community "is best conceived of as a pyramid
of progressively more inclusive groupings" (p.45), and identifies four
relevant levels of analysis: the 'face-block', the 'defended
neighbourhood', the 'community of limited liability', and the 'expanded
community of limited liability'. At the smallest level, the *face-block*
"is the smallest discrete areal unit other than the household which
[residents] can point to" (p.56). Suttles takes for granted that his
readers will understand what a 'face-block' is, but confuses matters
somewhat by introducing the concept together with the loose local
network of acquaintances selected "because they are known from shared
conditions of residence" (p.55). In an otherwise excellent review of the
literature, @RChaskin1997 incorrectly identifies Suttles' definitions of
'local network' and 'face-block', and suggests that a face-block has no
precise residential identification. But in fact Suttles notes that
unlike the loose network which is "unlikely to have any sharp
boundaries" (p.55), the face-block is notable specifically for having an
areal basis so clear that parents are able to use it for instructing
their children (p.56). For an explicitly articulated definition, we must
turn to @RGrannis2009 (p.31), who explains (consistently with Suttles'
usage) that "the face block includes all of the dwellings that front on
the same street and are situated between the first cross streets, of any
type, encountered in both directions away from the respondent's house".

The face-block is of particular interest, because it offers a unit
of analysis that is primary from both perspectives necessary to a
robust neighbourhood ontology, both those of physical structure and of
cognitive mapping. In the last decade the explosion of ubiquitous urban
data [@DArribas-Bel2014] has catalyzed significant advances in the
morphological analysis of urban physical structure, with the studies of
@MBarthelemy2017, @RLoufBarthelemy2014, @PSchirmerAxhausen2016,
@GBoeing2019 -@GBoeing2020a, and @MFleischmannEtAl2020b of particular
note. But with regard to the latter point of cognitive social maps,
although the essential ideas have been well-established since the
studies of @PGouldWhite1974 and @KLynch1960, there remains more work to
be done in integrating these concepts into large-scale analyses that
take advantage of the detailed data now available. The attempt of
@JLaiEtAl2020 to profile urban places based on geotagged Twitter data
for London suggests one possible direction of enquiry. But if we can
show more generally that there are strong theoretical reasons for the
significance of the face-block, then we can use the analytic tools
already developed for morphological analysis and claim them for more
social investigation as well.

At a larger level, it is well-established that the structural features
of major roads, railway lines and rivers -- @JJacobs1961 refers to them
as *border vacuums* -- are also perceived as social boundaries.
@EBurgess1925 acknowledges that his simplified theory of urban economic
expansion is complicated "by the lake front, the Chicago River, railroad
lines, [and] historical factors in the location of industry" (p.52), and
these complications are shown on Chart II of his well-known Concentric
Zone Diagram (@Fig:BurgessDiagrams). But @RGrannis2009 demonstrates that
not only are neighbourhoods defined by the way that urban areas are
*divided* by major roads (and railways, rivers, etc.), but that for the
households within the same set of boundaries to be accessible to each
other, they also need to be *connected* by safe, walkable pedestrian streets 
-- that is, by contiguous residential face-blocks.

Grannis roots his argument in a simple account of how neighbouring
relationships necessarily develop along a natural scale of relational
availability (@Tbl:relational). At the lowest level (0), we have the
situation where there is simply no availability at all -- and thus there
is no neighbourly relationship. The most basic level (1) in actually being
neighbours is geographical availability, for "proximity is essential to
the very definition of neighbouring" (p.19). The next level (2) is achieved
when passive contact takes place, as neighbours "unintentionally
encounter each other on a regular basis". The relationship can then
develop to involve intentional contact (level 3) and mutual trust (level
4).

```{.table caption="Levels of Relational Availability, [after @RGrannis2009] {#tbl:relational}"
source="../csv/neighbouring.csv"}
```

He then suggests that these individual neighbourly relations concatenate
to form networks corresponding to the relevant relational stages
(pp.37-47). In particular, what becomes apparent is that to "transcend
the network of geographic availability ... is logically impossible"
(p.40). He thus concludes that "the maximal concatenation of contiguous
face blocks... represents the maximal consolidation of individual
residents' potential contact with each other" (p.42).

We can supplement Grannis' theory of how contiguous walkable face-block 
networks necessarily bound neighbourhood networks, with some of the
insights of @JJacobs1961 about how a city's streets need to serve the
vital social purposes of creating a natural place for public contact
(pp.72-96), and of providing the "eyes upon the streets" (p.45) necessary
to induce the social restraint which makes for public safety (pp.37-71).

# Methodology

## Basic Idea: Defining Neighbourhood Units with Street Network Geometry

The essential idea of this paper is to define neighbourhood units for
the whole of Britain based on the street network, rather than the
administrative boundaries generally used by geodemographic typologies. 
Initially I had thought that it would be sufficient to perform a
tessellation based on treating roads (and railways and rivers) as borders 
which naturally divide neighbourhood areas (@Fig:t_vs_f, left). 

![Visual Comparison between (left) Tessellated 'Blocks' divided by
bordering streets,\newline and (right) natural Face-Blocks connected by nearest
streets](../fig/tessellated_vs_faceblocks.png){#fig:t_vs_f}

This is the approach taken by the Urban Grammar project of
@MFleischmannArribas-Bel2021, which first generates tessellated
'enclosures' and then subdivides them into Voronoi cells based on
building footprint polygons, as described by @MFleischmannEtAl2020. It
was very helpful to learn from the implementation of this method, shared
openly on GitHub [@LDabbishEtAl2012] in reproducible Jupyter notebooks
[@TKluyverEtAl2016; @BRandlesEtAl2017; @GBoeingArribas-Bel2021].

However, in reviewing the literature, it became apparent that while
certainly motorways and railways act as dividing boundaries of social
space, residential streets perform the opposite role, connecting rather
than dividing. My goal was therefore to operationalize a way of
algorithmically describing the face-block (@Fig:t_vs_f, right) that
@GSuttles1972 and @RGrannis2009 have demonstrated is a fundamental
building-block of neighbourhood space, and of identifying the connected
community networks formed of concatenated residential face-blocks.



## Computational Setup: Open Data and Free Open-Source Software

To do this I used data from Ordnance Survey's OpenData product suite
(@Tbl:osdata), which was launched in 2010 [@BLilley2011], but has had to
navigate a certain tensions between various economic, political, and
legal interests [@KField2010]. In particular, the Ordnance Survey is
obliged by statute to make its data widely available, but also to
finance its operations independently through a commercial licensing
model [@CBirss2019], a business model which @OBoswarva2019 has suggested
"combines the worst features of state monopoly and rentier capitalism".
One significant omission in the catalogue of British open data is an
authoritative national address dataset [@PWells2021].
 
```{.table caption="Ordnance Survey Open Data {#tbl:osdata}"
source="../csv/osdatadescriptions.csv"}
```

\newpage


In 2018, the British government's commitment to open geospatial data was
reiterated with the creation of the GeoSpatial Commission
[@CabinetOffice2020].  While this has not led to the release of
authoritative address data, it has at least led to the release of the
Unique Property Reference Number (UPRN) dataset, which includes a
geographic location and unique numeric identifier for every addressable
location in Great Britain found in the premium OS AddressBase products.
Addressable properties given a UPRN include objects such as bus
shelters, lamp posts, and public toilets [@LGreenwoodBrandwood2020], so
although we know that neighbourhood household properties form a subset
of the UPRN data, we need to somehow eliminate those properties that we
are not interested in.

This was done by using the 'Buildings' polygons from the OpenMapLocal
dataset. On their own these cannot either provide us with a proxy for
neighbourhood households, for they do not give the boundaries of
individual property plots -- although @MFleischmannArribas-Bel2021
seem to use them as if they do -- but only of disconnected architectural
structures. So for example a terraced row of houses is shown as a single
building. But by combining the two sets of data, it becomes possible to
exclude property reference points which refer to outside objects.

For street (or road) network data, there were several possible
candidates, including the USRN dataset (which, like the UPRN, offers
unique locational reference numbers, but for streets); the 'Roads' layer
of the OpenMapLocal dataset, and the OpenRoads dataset (@Tbl:openroads).
I used the last of these three options.
 
```{.table caption="Summary Statistics for OS OpenRoads Street Segments {#tbl:openroads}"
source="../csv/road_function.csv"}
```

I also used the simplified coastline data from the Strategi product.
For our purposes there is no need for the other more detailed (and
therefore more computationally resource-consuming) waterline boundaries
also available.  Together with the 'Railways' layer of the OpenMapLocal
dataset, the OpenRivers dataset, and the major roads from the OpenRoads
dataset, these provided a full set of boundaries for tessellating
Britain into naturally bounded areas.

To simplify setup, and to make it easy not only to make my analysis
reproducible across different machines, but to make it easy to restore
my computational environment if and when necessary, I used Docker, which
has become accepted as a powerful solution for reproducible research and
collaborative software development [@CBoettiger2015]. Docker allows the
required configuration to be specified as code, run in an isolated
container, and reproduced straightforwardly simply by building an image
from the relevant Dockerfile. 

I made use of the Geographic Data Science notebook stack maintained by
@DArribas-Bel2019, which extends the official Jupyter Docker Stack with
a comprehensive set of geospatial Python libraries [of which
@MFleischmannEtAl2021a give a full description]. I coupled this with a
separate Docker container running the most up-to-date version of
PostGIS, which extends the excellent open-source database PostgreSQL
[@BMomjian2001] with the functionality to make spatial queries. 

@MFleischmannArribas-Bel2021 download the datasets from the Ordnance
Survey API within a Jupyter notebook, and save them to a PostGIS
database by first loading them into a Geopandas dataframe, but while
this method is feasible with the smaller OS datasets, it became
incredibly slow when dealing with almost 40 million rows of UPRN data.
When I instead used the GDAL ogr2ogr tool [@GDALContributors2021] --
again, just by pulling the most recent official Docker image -- to
inject the data from the downloaded GeoPackage directly into the
database, the process became much quicker: shortening from over an hour,
to just a few minutes.


## Conceptual Definition: Metric Spaces, Topological Neighbourhoods, and Walkable Graphs

In order to analyze the propinquity of neighbours, we need to understand
how to calculate the proximity of points.

Given some set $X$, a *metric* $d:X^{2}\rightarrow{\mathbb R}$ is a 
function with the following properties:

- $d(x,y)\geq 0$ for all $x,\,y\in X$.

- $d(x,y)=0$ if and only if $x=y$.

- $d(x,y)=d(y,x)$ for all $x,\,y\in X$.

- $d(x,y)+d(y,z)\geq d(x,z)$ for all $x,\,y,\,z\in X$.

Perhaps the most familiar metric is the Euclidean norm $\|\: \|_{2}$ 
on ${\mathbb R}^{2}$, derived from the Pythagorean theorem and
easily extended to ${\mathbb R}^{n}$:

$$\|{\mathbf x}\|_{2}=\left(\sum_{j=1}^{n}x_{j}^{2}\right)^{1/2}$$

This is the metric that our analysis uses to calculate the distance
between a property and its nearest street or building.

Our earth is of course not a flat Euclidean plane but rather (very
nearly) an oblate spheroid [@PMathewsShapiro1992]. To calculate the
distance between two points on the surface of a sphere, we should
calculate the *great-circle distance*, that is the distance along the
shorter arc of the circle which cuts through both points and the centre
of the sphere. For a spheroid, the formulae of @TVincenty1975,
-@TVincenty1975a provide iterative methods for calculating the distance
precisely.  However, since the geographical positions of our data are
given by reference to the British National Grid (@Tbl:crs), and since
the distances we are here interested in are all small, we can ignore
this fact. PostGIS is capable of calculating geographical distances that
take into account the curvature of the earth's surface, but its
calculations will be quicker and more efficient if we simply calculate
geometrical Euclidean distances.

```{.table caption="Some Reference Systems commonly used for tracking
location in Britain {#tbl:crs}"
source="../csv/crs.csv"}
```

 
A *graph* is an ordered tuple $G = (V,E)$, consisting of a set of
*nodes* (or *vertices*) $V = \{v_{i}\}$, and a set of *edges* $E =
\{e_{ij}\}$, where the edge $e_{i,j}$ is the ordered pair $(i,j)$
representing some connection from the *source* $v_{i}$ to the *target*
$v_{j}$. 

Given a graph G, we can describe a *walk* of length L as a sequence of
adjacent (but not necessarily distinct) nodes $(v_{0},...,v_{L})$; or,
equivalently, as a sequence of edges $e_{0,1},...,e_{L-1,L}$.
Conversely, given a set of walks, we can construct the (minimal)
underlying graph containing all the nodes and edges involved in the
walks.

# Data Analysis

## Boundary Units: Tiles, Pixels, and Cells

## Neighbourhoods: Residential Face-Blocks and Connected Communities

![Neighbourhoods of Connected Face-Blocks](../fig/neighbourhoods.png){#fig:nbhds}

## Implementation: Embarrassingly Parallel Neighbourhoods


# Conclusion

# References

