Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C187C04A6A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBs8YZBu/ou14iNx2DEkotVL7s/S+tQCt/DhEnp9jiM=; b=AkPNKh9qERVA0A
	HYRYG8mEiVU+8gkHmqpPrQ5Jfw4iR6XDayl3lkuiNGmZHYSqOTvuRaMrbv9hQAUJnpv00Y+zUOZNe
	WMVuQXIAvTc/fhgx7afpB/CPrA7ZkM27hGoIVRIWNGFL7GLO5DGISXxf4k5GzuVG3ihwTqecHaPCs
	zhhODN53IBFbUehM74vojB/iyvdEEmW49FgVVXJhlyD1JqnSoN8clbBqfcGQevDBM3tbu+LGqD6ON
	CsWXfluECaLcrIgrI0jMszD0oMGfFZgL0r+1BvefymtFibQ4t/Dj36edvFqMwpl/zGsQ1btxb0p0i
	gCEMOAgJsxdd1j3PdYcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMKO-002b9B-08;
	Tue, 08 Aug 2023 13:00:48 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMKI-002b5B-0K
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 13:00:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20230808130033euoutp023737977c0ccbf37e452443b5efb1b04d~5afR4JBya0433604336euoutp02T
	for <linux-rockchip@lists.infradead.org>; Tue,  8 Aug 2023 13:00:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20230808130033euoutp023737977c0ccbf37e452443b5efb1b04d~5afR4JBya0433604336euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1691499633;
	bh=oqhCqrszph4k9DDqxvhkk/JXqjWX+Un/bQV5mgsVh44=;
	h=Date:Subject:From:To:Cc:In-Reply-To:References:From;
	b=CjfAPH7g4c1ifVeKyx6C/t5cYZf5Qj2FurKB2ghFaEZbwTPIJt6NUEpIHVof/uGk7
	 ep94FupbEKSu0+5mTnUdXLp1DMCOlivMsM/1f2zk9q7Za2x+vg2EQHGfD6rc5/zA9D
	 IsAQrBILU6Dj/6g9LdhmfYr/r6i2vCZpDT5jKJXQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230808130033eucas1p20aaa168211a8e88610b70d6bbeed65b2~5afRlfqiQ1362113621eucas1p2T;
	Tue,  8 Aug 2023 13:00:33 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 55.01.37758.17C32D46; Tue,  8
	Aug 2023 14:00:33 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20230808130032eucas1p1b0f2d07f110f9913b30019b12e1d2841~5afRJbbrD0400304003eucas1p1h;
	Tue,  8 Aug 2023 13:00:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20230808130032eusmtrp2e43a45b06bf8a2d2c65314ee23de87ab~5afRIlcsv1945619456eusmtrp2d;
	Tue,  8 Aug 2023 13:00:32 +0000 (GMT)
X-AuditID: cbfec7f5-815ff7000002937e-7f-64d23c71dfda
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 9A.CF.14344.07C32D46; Tue,  8
	Aug 2023 14:00:32 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230808130031eusmtip1c1b75b1c727aa9181524b4e5b9ee65a6~5afP7fmQA2432624326eusmtip1P;
	Tue,  8 Aug 2023 13:00:31 +0000 (GMT)
Message-ID: <3f4f33fc-ea0b-f992-35bb-1907d2b6ded5@samsung.com>
Date: Tue, 8 Aug 2023 15:00:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.13.0
Subject: Re: [PATCH v2 00/10] Refine the locking for dev->iommu_group
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: Chen-Yu Tsai <wenst@chromium.org>, Joerg Roedel <joro@8bytes.org>
Cc: Jason Gunthorpe <jgg@nvidia.com>, Baolin Wang
	<baolin.wang@linux.alibaba.com>, David Woodhouse <dwmw2@infradead.org>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, Jernej Skrabec
	<jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Orson Zhai
	<orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Samuel Holland
	<samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Will Deacon
	<will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Alex Williamson
	<alex.williamson@redhat.com>, Lu Baolu <baolu.lu@linux.intel.com>
In-Reply-To: <7483d18e-d06f-53eb-92af-beed50674ab0@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0xTVxjNfe/19bWz+CwoNwy30UwRpyDR4W1ksk3d3hJNXMZcIn+MIi8t
	WUFoAX+Pig7kjWVUTSottMQ4RMacgiBQIVIF0kFgIhgUVKzdql2YaKusVOkoDzf+O+d8537f
	d75cCpd+R0ZQGVm5rCZLoZaRYqKpy9e3OidxIH0Nx4WjF4FSEgXaugBq0DeSSH/uBI4Cjr8E
	aMqLkMtyHqDB6SsAlZguCFH9w1sC9GwsgKOT7a0kMkyYAOqYcAqQy1FCIp+tH0Onim4K0NHR
	99HZsVbhh6GMs8OMMXXmOsCYdDcI5oLjZwHTYrwrZBpqVjL1tSUk0/JAzpjtnzMNZwqYRw3l
	gPnhyN8k86R9iGTczysBc/mWGd++cKc4MZ1VZ+SzmriNqWKVY/w0mX0xau/tlitAB55EckBE
	QXod7D7nwYJYStcA6JjcxwHxDPYCWGGrBDzxANjuLwKvXxjG/ARfOAugv6gQ48lTALnH/lmX
	hN4Iq9v+EHKAogj6Xfhn4XJeXgTt5U4iiBfTLGweKRMEcSi9Bd4rt5JBjNPh8I7TMrsSScdD
	bpyb1cNmPJPfV8x5XhDQWrohiEV0EvQU+4S8/jY80mjCg/tAeloEJ4eDA6gZshn2eNbzAUKh
	u/uSkMeRMNBiwXh/MYBV/vtzpAxAnevOXOQNcLRvigw2wukY+GtrHC9/BHtrH5J8/xA4PL6I
	3yEEHm8y4LwsgceKpLx7OTR2n/9vbMfvA3gZkBnnXcU4L71xXhrj/3OrAFELwtk8baaS1a7N
	YvfEahWZ2rwsZeyu3Zn1YOan9kx3P28GNe6nsTaAUcAGIIXLwiRmZ3+6VJKu2Lef1ez+WpOn
	ZrU28CZFyMIl731g3yWllYpc9huWzWY1r6sYJYrQYceG9m839Bx+ubff+7j62pfFyZg/O3aZ
	Vf0TZz2IGx6wvavGEk4j8cFVInDSIyQ/WXJA4KubyD+VmlL/zyPLishrvXkm8VR1UkKc/Iut
	m3/0pkUUdBRWf5WxXiqKPyp3F1hHU5Q7lUNpauvgkqSK4dTFy9bZIjb55WjLL4PbVPkpbTE1
	yas/U9g/Di1/Y8HSqJzMhE364zFdN5RvDfhMpZ2qiaW43ly5R2+2uP1Vh6JXrO3MXqB8Z9je
	lyjKWbjDU0geuG9UXXQ1sSOBkShV4qTrpnhrGBG9Ro1yvZdUVqwz5vL15Kug77fDn95t1029
	+jatV9vanBRCy6Mbm3dYVTJCq1LEr8Q1WsW/6zHNBhgEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRmVeSWpSXmKPExsVy+t/xu7oFNpdSDFq/GVl8+9/DZvF/7zFG
	i80Tt7JZTFw5mdni/6PXrBa/vlhYPJ+/jtHiyr89jBadszewW2x6fI3V4tOD/8wWU/btYrOY
	/mE2o8XBD09YLZ4/6mSz+HnoPJPFjLbLrBYtd0wtlj/Yxe4g7PHk4DwmjzXz1jB6zG64yOKx
	4dFqVo+ds+6ye2xeoeWxaVUnm8fOh5Ye804GemxeUu/xYvNMRo/e5ndsHu/3XWXzePV1LqPH
	9mvzmAP4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
	EvQyHr1dxFawUbHi5s49jA2M72W6GDk5JARMJKY/+M3SxcjFISSwlFFi2+0ZjBAJGYmT0xpY
	IWxhiT/XuthAbCGB94wSa197gdi8AnYSy/Y+Ze9i5OBgEVCReNakBhEWlDg58wkLiC0qkCrx
	q2EX2BhhAVeJezN3g41hFhCXuPVkPhOIzSZgKNH1FmK8CFDN9+45bCD3MAv8YpE4s/QXM8Rx
	jxglZq1ZxwxSxSlgL/G5/Sc7xCQzia6tXYwQtrxE89bZzBMYhWYhOWQWkoWzkLTMQtKygJFl
	FaNIamlxbnpusZFecWJucWleul5yfu4mRmAa2Xbs55YdjCtffdQ7xMjEwXiIUYKDWUmEd96T
	8ylCvCmJlVWpRfnxRaU5qcWHGE2BgTGRWUo0OR+YyPJK4g3NDEwNTcwsDUwtzYyVxHk9CzoS
	hQTSE0tSs1NTC1KLYPqYODilGph8wt93NHyJCfaa4LOhqnWjC9/cqoVlR1dVXLoSmHNwWujm
	c39Od55clxH9cK3477WXWa7VuXQfZbiyb/Lpv8H/I7tWpC++f/3fhAB+g4su2+OV3X5b8U0N
	ufdUW+h6vrFyupycXZqD75pVt4QuOnQpzNpw5s0iyduvPeMedG1j3Si7pypnf0Hv9TvfS/QD
	4x7szN/+5SRbsDe/9qd6o5VaV3byLXnjJ35r2p7n4VOUeny3z/721q1WoNviZBjHBdOPrxgY
	vkVZ9yybNltMM7/ZzrKtUfKz4JbctpvHdz3V1p9+VfbyHL7gmb2aXV22E7r3tC597JPY3WnS
	cb3pQtappI8JzyPOh9wtq3Y1fOapxFKckWioxVxUnAgAughJpqwDAAA=
X-CMS-MailID: 20230808130032eucas1p1b0f2d07f110f9913b30019b12e1d2841
X-Msg-Generator: CA
X-RootMTR: 20230808130032eucas1p1b0f2d07f110f9913b30019b12e1d2841
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230808130032eucas1p1b0f2d07f110f9913b30019b12e1d2841
References: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
	<ZNDpfCoeFxA56ZlU@8bytes.org>
	<CAGXv+5E-f9AteAYkmXYzVDZFSA_royc7-bS5LcrzzuHDnXccwA@mail.gmail.com>
	<7483d18e-d06f-53eb-92af-beed50674ab0@samsung.com>
	<CGME20230808130032eucas1p1b0f2d07f110f9913b30019b12e1d2841@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_060042_738885_46492237 
X-CRM114-Status: GOOD (  17.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQWxsLAoKT24gMDguMDguMjAyMyAxNDozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBP
biAwOC4wOC4yMDIzIDEyOjMxLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4+IE9uIE1vbiwgQXVnIDcs
IDIwMjMgYXQgODo1NOKAr1BNIEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPiB3cm90ZToK
Pj4+IE9uIE1vbiwgSnVsIDMxLCAyMDIzIGF0IDAyOjUwOjIzUE0gLTAzMDAsIEphc29uIEd1bnRo
b3JwZSB3cm90ZToKPj4+PiBKYXNvbiBHdW50aG9ycGUgKDEwKToKPj4+PiDCoMKgIGlvbW11OiBS
ZW1vdmUgdXNlbGVzcyBncm91cCByZWZjb3VudGluZwo+Pj4+IMKgwqAgaW9tbXU6IEFkZCBhIGxv
Y2tkZXAgYXNzZXJ0aW9uIGZvciByZW1haW5pbmcgZGV2LT5pb21tdV9ncm91cCByZWFkcwo+Pj4+
IMKgwqAgaW9tbXU6IEFkZCBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+Pj4+IMKgwqAg
aW9tbXUvc3VuNTBpOiBDb252ZXJ0IHRvIGdlbmVyaWNfc2luZ2xlX2RldmljZV9ncm91cCgpCj4+
Pj4gwqDCoCBpb21tdS9zcHJkOiBDb252ZXJ0IHRvIGdlbmVyaWNfc2luZ2xlX2RldmljZV9ncm91
cCgpCj4+Pj4gwqDCoCBpb21tdS9yb2NrY2hpcDogQ29udmVydCB0byBnZW5lcmljX3NpbmdsZV9k
ZXZpY2VfZ3JvdXAoKQo+Pj4+IMKgwqAgaW9tbXUvaXBtbXUtdm1zYTogQ29udmVydCB0byBnZW5l
cmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+Pj4+IMKgwqAgaW9tbXUvb21hcDogQ29udmVydCB0
byBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+Pj4+IMKgwqAgaW9tbXU6IENvbXBsZXRl
IHRoZSBsb2NraW5nIGZvciBkZXYtPmlvbW11X2dyb3VwCj4+Pj4gwqDCoCBpb21tdS9pbnRlbDog
Rml4IG1pc3NpbmcgbG9ja2luZyBmb3IgCj4+Pj4gc2hvd19kZXZpY2VfZG9tYWluX3RyYW5zbGF0
aW9uKCkKPj4+Pgo+Pj4+IMKgIGRyaXZlcnMvaW9tbXUvaW50ZWwvZGVidWdmcy5jwqAgfMKgIDM0
ICsrKystLS0tCj4+Pj4gwqAgZHJpdmVycy9pb21tdS9pb21tdS5jwqDCoMKgwqDCoMKgwqDCoMKg
IHwgMTU1IAo+Pj4+ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+Pj4+IMKgIGRy
aXZlcnMvaW9tbXUvaXBtbXUtdm1zYS5jwqDCoMKgwqAgfMKgIDIyICsrLS0tCj4+Pj4gwqAgZHJp
dmVycy9pb21tdS9vbWFwLWlvbW11LmPCoMKgwqDCoCB8wqAgMzAgKy0tLS0tLQo+Pj4+IMKgIGRy
aXZlcnMvaW9tbXUvb21hcC1pb21tdS5owqDCoMKgwqAgfMKgwqAgMiArLQo+Pj4+IMKgIGRyaXZl
cnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYyB8wqAgMjIgKy0tLS0KPj4+PiDCoCBkcml2ZXJzL2lv
bW11L3NwcmQtaW9tbXUuY8KgwqDCoMKgIHzCoCAyNCArLS0tLQo+Pj4+IMKgIGRyaXZlcnMvaW9t
bXUvc3VuNTBpLWlvbW11LmPCoMKgIHzCoCAyOSArKy0tLS0KPj4+PiDCoCBpbmNsdWRlL2xpbnV4
L2lvbW11LmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMyArCj4+Pj4gwqAgOSBmaWxlcyBjaGFu
Z2VkLCAxMzggaW5zZXJ0aW9ucygrKSwgMTgzIGRlbGV0aW9ucygtKQo+Pj4gQXBwbGllZCwgdGhh
bmtzIGZvciB0aGUgbmljZSBjbGVhbnVwIQo+PiBUaGlzIHNlcmllcyBzZWVtcyB0byBjYXVzZSBh
IGh1bmcgdGFzayBkdXJpbmcgYm9vdCBvbiBNZWRpYVRlayAKPj4gcGxhdGZvcm1zLgo+PiBJdCBo
YW5ncyB3aXRoIG5leHQtMjAyMzA4MDguIFJldmVydGluZyB0aGUgMTAgY29tbWl0cyBmcm9tIHRo
aXMgc2VyaWVzCj4+IG1ha2VzIHRoZSBzeXN0ZW0gYm9vdCB1cCBhZ2Fpbi4KPgo+IEkgY29uZmly
bSB0aGF0IG5leHQtMjAyMzA4MDggaXMgYnJva2VuIG9uIEFSTSAzMmJpdCBiYXNlZCBFeHlub3Mg
Cj4gYm9hcmRzIHRvby4gQm9hcmRzIGxvY2sgdXAgdmVyeSBlYXJseSBkdXJpbmcgYm9vdC4gSSB3
aWxsIHRyeSB0byAKPiBpbnZlc3RpZ2F0ZSB0aGlzIHNvb24uCgpIbW0gdGhpcyB0dXJuZWQgdG8g
YmUgRXh5bm9zIElPTU1VIHNwZWNpZmljLCBidXQgdGhlIGlzc3VlIGlzIHByb2JhYmx5IApzb21l
aG93IGdlbmVyaWMuCgpUaGUgZGVhZGxvY2sgaGFwcGVucyBlYXJseSBpbiBfX2lvbW11X3Byb2Jl
X2RldmljZSgpIG9uIApkZXZpY2VfbG9jayhkZXYpLiBIZXJlIGlzIGEgc3RhY2sgZHVtcCBvZiB0
aGF0IGNhbGw6CgpDUFU6IDEgUElEOiAxIENvbW06IHN3YXBwZXIvMCBOb3QgdGFpbnRlZCA2LjUu
MC1yYzUtbmV4dC0yMDIzMDgwOC1kaXJ0eSAKIzcwMTMKSGFyZHdhcmUgbmFtZTogU2Ftc3VuZyBF
eHlub3MgKEZsYXR0ZW5lZCBEZXZpY2UgVHJlZSkKIMKgdW53aW5kX2JhY2t0cmFjZSBmcm9tIHNo
b3dfc3RhY2srMHgxMC8weDE0CiDCoHNob3dfc3RhY2sgZnJvbSBkdW1wX3N0YWNrX2x2bCsweDU4
LzB4NzAKIMKgZHVtcF9zdGFja19sdmwgZnJvbSBfX2lvbW11X3Byb2JlX2RldmljZSsweDNkOC8w
eDRhYwogwqBfX2lvbW11X3Byb2JlX2RldmljZSBmcm9tIHByb2JlX2lvbW11X2dyb3VwKzB4OC8w
eDE0CiDCoHByb2JlX2lvbW11X2dyb3VwIGZyb20gYnVzX2Zvcl9lYWNoX2RldisweDYwLzB4YjQK
IMKgYnVzX2Zvcl9lYWNoX2RldiBmcm9tIGJ1c19pb21tdV9wcm9iZSsweDM0LzB4MTE4CiDCoGJ1
c19pb21tdV9wcm9iZSBmcm9tIGlvbW11X2RldmljZV9yZWdpc3RlcisweDk4LzB4MTAwCiDCoGlv
bW11X2RldmljZV9yZWdpc3RlciBmcm9tIGV4eW5vc19zeXNtbXVfcHJvYmUrMHgyMzgvMHgzYzAK
IMKgZXh5bm9zX3N5c21tdV9wcm9iZSBmcm9tIHBsYXRmb3JtX3Byb2JlKzB4ODAvMHhjMAogwqBw
bGF0Zm9ybV9wcm9iZSBmcm9tIHJlYWxseV9wcm9iZSsweDE1NC8weDNkNAogwqByZWFsbHlfcHJv
YmUgZnJvbSBfX2RyaXZlcl9wcm9iZV9kZXZpY2UrMHhhMC8weDFlOAogwqBfX2RyaXZlcl9wcm9i
ZV9kZXZpY2UgZnJvbSBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MzAvMHhkMAogwqBkcml2ZXJfcHJv
YmVfZGV2aWNlIGZyb20gX19kZXZpY2VfYXR0YWNoX2RyaXZlcisweGJjLzB4MTFjCiDCoF9fZGV2
aWNlX2F0dGFjaF9kcml2ZXIgZnJvbSBidXNfZm9yX2VhY2hfZHJ2KzB4NzQvMHhjMAogwqBidXNf
Zm9yX2VhY2hfZHJ2IGZyb20gX19kZXZpY2VfYXR0YWNoKzB4ZWMvMHgxYjQKIMKgX19kZXZpY2Vf
YXR0YWNoIGZyb20gYnVzX3Byb2JlX2RldmljZSsweDhjLzB4OTAKIMKgYnVzX3Byb2JlX2Rldmlj
ZSBmcm9tIGRldmljZV9hZGQrMHg1YjgvMHg3OGMKIMKgZGV2aWNlX2FkZCBmcm9tIG9mX3BsYXRm
b3JtX2RldmljZV9jcmVhdGVfcGRhdGErMHg5NC8weGNjCiDCoG9mX3BsYXRmb3JtX2RldmljZV9j
cmVhdGVfcGRhdGEgZnJvbSBvZl9wbGF0Zm9ybV9idXNfY3JlYXRlKzB4MWFjLzB4NGQ4CiDCoG9m
X3BsYXRmb3JtX2J1c19jcmVhdGUgZnJvbSBvZl9wbGF0Zm9ybV9idXNfY3JlYXRlKzB4MjE0LzB4
NGQ4CiDCoG9mX3BsYXRmb3JtX2J1c19jcmVhdGUgZnJvbSBvZl9wbGF0Zm9ybV9wb3B1bGF0ZSsw
eDgwLzB4MTE0CiDCoG9mX3BsYXRmb3JtX3BvcHVsYXRlIGZyb20gb2ZfcGxhdGZvcm1fZGVmYXVs
dF9wb3B1bGF0ZV9pbml0KzB4Y2MvMHhlNAogwqBvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRl
X2luaXQgZnJvbSBkb19vbmVfaW5pdGNhbGwrMHg2Yy8weDMxOAogwqBkb19vbmVfaW5pdGNhbGwg
ZnJvbSBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDFjNC8weDIxNAogwqBrZXJuZWxfaW5pdF9mcmVl
YWJsZSBmcm9tIGtlcm5lbF9pbml0KzB4MTgvMHgxMmMKIMKga2VybmVsX2luaXQgZnJvbSByZXRf
ZnJvbV9mb3JrKzB4MTQvMHgyYwoKVGhlIHByb2JsZW0gaGVyZSBpcyB0aGF0IGV4eW5vc19zeXNt
bXVfcHJvYmUoKSBpcyBieSBkZXNpZ24gY2FsbGVkIHVuZGVyIApkZXZpY2VfbG9jaywgdGhlbiBp
dCBjYWxscyBpb21tdV9kZXZpY2VfcmVnaXN0ZXIoKSwgd2hpY2ggaW4gdHVybiAKdHJpZ2dlcnMg
Y2FsbGluZyBfX2lvbW11X3Byb2JlX2RldmljZSgpIG9uIGFsbCBwbGF0Zm9ybSBkZXZpY2VzIGlu
IHRoZSAKc3lzdGVtLCB3aGlsZSB0aGUgc3RpbGwgcHJvYmVkIHN5c21tdSBkZXZpY2UgaXMgb25l
IG9mIHRoZW0uCgpGcmFua2x5IHNwZWFraW5nIEkgaGF2ZSBubyBpZGVhIGhvdyB0byBkZWZlciBj
YWxsaW5nIAppb21tdV9kZXZpY2VfcmVnaXN0ZXIoKSB0byBhdm9pZCB0aGlzIGRlYWRsb2NrLiBB
bnkgaWRlYXM/CgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5n
IFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
