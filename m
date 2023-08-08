Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B90DC001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 13:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKflPPf7Y82Gf9q+YrcpjCyyrQExs8/0LKMSIGM2h18=; b=mpkFTT/RsK6AJ8
	t6IU2B/uu6i39hl0tP1zSq4TOIHH8eFgsjsLOZ+JJiH6k2+n93xUsvv23Ek8PKLNin7vwHse5/t9U
	S91xxUh4or2k5iX9fJIOjecxmuuUGb7nzKC71eKPs7AvLgAyy4MQEeYxHrySbcFaPm9cP3ts6j5JN
	6dijYoWelKFUualv+gt8x8H9Ibkca5qpBfb+b2EET3MsGUrERudqW8XRDiFpSp/cjwVFxnK4tlaoh
	L99yNq6rt9IrvIt8wBTkWSPa2jA+F0ExislajTyORaco4kwK92uLic/5iIqdOu6xWnGb2Espnn25l
	XV7V4gI+Cee0qFidG+ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMRz-002bwV-1U;
	Tue, 08 Aug 2023 13:08:39 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMRw-002bvO-0c
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 13:08:38 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20230808130833euoutp020dc89f32d5ea64100b03a3ca77d36f27~5amQnzt5q1607416074euoutp02h
	for <linux-rockchip@lists.infradead.org>; Tue,  8 Aug 2023 13:08:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20230808130833euoutp020dc89f32d5ea64100b03a3ca77d36f27~5amQnzt5q1607416074euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1691500113;
	bh=+y/qt4HK5xdtRnacVh6aBBBKtUVBJA/3594jbkBRLjI=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=XqXzBL+H0nNEwGhA8nIbX2IJaJ5ZviKy8O4IvhPRsqtABua7KV5hBRUSB86sDqvqA
	 OzKM8U5mIKLZJjQP/T2Fpcw2UMDSXoZDe+hE+UIM6KmyBnVibZcDUAibYjEcd153aZ
	 J+RnvJM9h0OWRgVohoJkeul8fr7a8VvXFReC0WU8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230808130832eucas1p2b8ef2df5509731d6e148498fcff05079~5amQFBX_x1961819618eucas1p2U;
	Tue,  8 Aug 2023 13:08:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 44.03.37758.05E32D46; Tue,  8
	Aug 2023 14:08:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20230808130832eucas1p20d46ed1c49a271e16b24baf3bd985372~5amPobM8O1961819618eucas1p2Q;
	Tue,  8 Aug 2023 13:08:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20230808130832eusmtrp153f423b207cd1258468b68351484c440~5amPnoNzx3194031940eusmtrp1v;
	Tue,  8 Aug 2023 13:08:32 +0000 (GMT)
X-AuditID: cbfec7f5-7ffff7000002937e-7d-64d23e503698
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id C5.41.14344.05E32D46; Tue,  8
	Aug 2023 14:08:32 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230808130831eusmtip153eba0215b08b89df3ce0bf6b61402d3~5amOaxpv_2255922559eusmtip1x;
	Tue,  8 Aug 2023 13:08:31 +0000 (GMT)
Message-ID: <4d56203e-b602-07ee-ab74-2825c110c36d@samsung.com>
Date: Tue, 8 Aug 2023 15:08:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.13.0
Subject: Re: [PATCH v2 00/10] Refine the locking for dev->iommu_group
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Joerg Roedel <joro@8bytes.org>,
	Baolin Wang <baolin.wang@linux.alibaba.com>, David Woodhouse
	<dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev, Orson Zhai <orsonzhai@gmail.com>, Robin Murphy
	<robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai
	<wens@csie.org>, Will Deacon <will@kernel.org>, Chunyan Zhang
	<zhang.lyra@gmail.com>, Alex Williamson <alex.williamson@redhat.com>, Lu
	Baolu <baolu.lu@linux.intel.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <ZNI8W0hTXraSi/Ne@nvidia.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTVxjAc3pvb1uSskth4cgIm51jiA4kuOQwHbJEl+ucgSVbzDQRq72D
	brSaVkA3hwUmj6IJ9RHWFkqNgsCYEqry8lGK0mKxjIfIGBPFTqSkSBWYvOflzo3/ft93zu97
	nBw+JjpGBPFlioO0UiFJERM++NXW6Y4PEmK7pOtOlkaiqcXjBFq83gqQWXuFQNrKUxhaHBrl
	opkJhIZLLwLUs3ANoHxDDQ/VPu7loucPFzF0+kYjgYrGDQA1j7u4aHgon0DT1g4O+jmnm4t+
	GvgQXXjYyIvzp1zNRg5VbawGlEHdiVM1Q79wqQb9nzzKXBFO1VblE1TDoxjK2PYFZT5/lHpq
	1gHqRPYYQT27cY+g3JMlgKrrNWIJb+z02SilU2RptDIydo9PckH5FOfAvN8hy0gmUIM6Xw0Q
	8CG5HnqePMEYFpEVAM6/pDTA5xVPAPg05wHOBi8AfNlr4bw2xs4P8ljjAoB2N2QveQGsn/Is
	lRKSsTC7uJirAXw+Tq6C9vFENu0H23QunOE3SRrW/1HIZdif3AIf6JoIhjEyEPa7Spd6BTCq
	vZ3H1MdIHRdWTpxYqk+QUVDj0SwJAjIcTnrLASu/DbOvGDBGgOSUAD4a/Ytgp94M5+8YAMv+
	0G27zGM5GDpOHcdZIRdA0+wghw0KAVQP9/9rbIADzhmCWQcjV8NLjZEMQvITaCtLY9EX9nn8
	2Bl84cmrRRibFsK8HBFbIxTqbRf/69r8WxdWCMT6Zc+iX7a+ftk2+v/bmgBeBQLpVJU8iVZF
	K+j0CJVErkpVJEXs2y+vBa9+qmPBNlkPKtzeCCvg8IEVQD4mDhAaXR1SkVAqOfw9rdyfqExN
	oVVW8BYfFwcK13zctk9EJkkO0t/R9AFa+fqUwxcEqTmSgtoIc8HtIFOY+o7nmyPvl9+slDi0
	XSH2F0PWooD1lmpHS9a3h3qaM6ML04NXy3+Nj9nemSjTBx+pn9jqDA0B0dNbSvt+NKIV7dPv
	9qyQzu6++zhszvuc2OTotO8dKHuWcPR+etZH1ttFwpXygPn+sry0DZU/yOZMrXFWi1EWdnMs
	1FCHDm8tOUecUZicLbvd6+5l7Tj7+477tl0lTXOfSp0120ec10S3FGZLQVxKYl5IRtXOzO6V
	wxszBMENuTOXvvT9elNL8mfihqiY0yPv/d3UWhN/a0Q06P1qz+W7xdtaRnNjUXea/+e6Y+/g
	Mm1H29pdUrg3Pm5zxoJ2FmtHa/rEuCpZEhWOKVWSfwDnkT1TGAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsVy+t/xu7oBdpdSDO585LH49r+HzeL/3mOM
	FpsnbmWzmLhyMrPF/0evWS1+fbGweD5/HaPFlX97GC06Z29gt9j0+BqrxacH/5ktpuzbxWYx
	/cNsRouDH56wWjx/1Mlm8fPQeSaLGW2XWS1a7phaLH+wi91B2OPJwXlMHmvmrWH0mN1wkcVj
	w6PVrB47Z91l99i8Qstj06pONo+dDy095p0M9Ni8pN7jxeaZjB69ze/YPN7vu8rm8errXEaP
	7dfmMQfwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunb
	JehldC/7xlTwV7DiwMtGxgbG7XxdjJwcEgImEu+W3GfvYuTiEBJYyijRsucHM0RCRuLktAZW
	CFtY4s+1LjaIoveMElvbpjOCJHgF7CSa58wBKuLgYBFQkTjxIR4iLChxcuYTFhBbVCBV4lfD
	LrA5wgKuEvdm7mYDsZkFxCVuPZnPBGKLgLSeOAN2BLPAbFaJCcu3MEEsu8YkcXn3fbBuNgFD
	ia63XWDdnAJaEl8/LmOEmGQm0bW1C8qWl2jeOpt5AqPQLCSHzEKycBaSlllIWhYwsqxiFEkt
	Lc5Nzy020itOzC0uzUvXS87P3cQITCTbjv3csoNx5auPeocYmTgYDzFKcDArifDOe3I+RYg3
	JbGyKrUoP76oNCe1+BCjKTAwJjJLiSbnA1NZXkm8oZmBqaGJmaWBqaWZsZI4r2dBR6KQQHpi
	SWp2ampBahFMHxMHp1QD02rxoO1M+/pldO9qLuLzOKtxaxN3g9uiPDcrIZZdYo21MxzOCZ+L
	evFH4vcOg3RRJp4ZOZ9/bVwvpTXt8EFm9k7Dn/7yaWk3pwgtPSb+yjPAv/FgwE/pC94ddn2z
	DLIPqDS9263Fd2RzUYvNBgXuFRsnvG3+/PCEy+FFv2RSBFZJTLPm3Kd58tUXRhF9I1dl0fPb
	q1dxlEmUXH3p2tEslfk+dV0u1/q0q2/e27luudFYrDV3gmGO7mTrHaZr8vKvO59R3f7//vvY
	ledS0h+6Vh7eY+j3KbnSu9T6gKbnK7VNdzfGPzvLtMu4YN6uryscgpVXJ32b39Zscqy28X62
	QMgX8xK2mi++c/KOnlu8WYmlOCPRUIu5qDgRAIXY7BytAwAA
X-CMS-MailID: 20230808130832eucas1p20d46ed1c49a271e16b24baf3bd985372
X-Msg-Generator: CA
X-RootMTR: 20230808123250eucas1p19d12a9ae0e530c123ba625189f593b36
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230808123250eucas1p19d12a9ae0e530c123ba625189f593b36
References: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
	<ZNDpfCoeFxA56ZlU@8bytes.org>
	<CAGXv+5E-f9AteAYkmXYzVDZFSA_royc7-bS5LcrzzuHDnXccwA@mail.gmail.com>
	<CGME20230808123250eucas1p19d12a9ae0e530c123ba625189f593b36@eucas1p1.samsung.com>
	<7483d18e-d06f-53eb-92af-beed50674ab0@samsung.com>
	<ZNI8W0hTXraSi/Ne@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_060836_840664_1D7E5ED5 
X-CRM114-Status: GOOD (  15.90  )
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

SGkgSmFzb24sCgpPbiAwOC4wOC4yMDIzIDE1OjAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4g
T24gVHVlLCBBdWcgMDgsIDIwMjMgYXQgMDI6MzI6NDhQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPj4gT24gMDguMDguMjAyMyAxMjozMSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+Pj4g
T24gTW9uLCBBdWcgNywgMjAyMyBhdCA4OjU04oCvUE0gSm9lcmcgUm9lZGVsIDxqb3JvQDhieXRl
cy5vcmc+IHdyb3RlOgo+Pj4+IE9uIE1vbiwgSnVsIDMxLCAyMDIzIGF0IDAyOjUwOjIzUE0gLTAz
MDAsIEphc29uIEd1bnRob3JwZSB3cm90ZToKPj4+Pj4gSmFzb24gR3VudGhvcnBlICgxMCk6Cj4+
Pj4+ICAgICBpb21tdTogUmVtb3ZlIHVzZWxlc3MgZ3JvdXAgcmVmY291bnRpbmcKPj4+Pj4gICAg
IGlvbW11OiBBZGQgYSBsb2NrZGVwIGFzc2VydGlvbiBmb3IgcmVtYWluaW5nIGRldi0+aW9tbXVf
Z3JvdXAgcmVhZHMKPj4+Pj4gICAgIGlvbW11OiBBZGQgZ2VuZXJpY19zaW5nbGVfZGV2aWNlX2dy
b3VwKCkKPj4+Pj4gICAgIGlvbW11L3N1bjUwaTogQ29udmVydCB0byBnZW5lcmljX3NpbmdsZV9k
ZXZpY2VfZ3JvdXAoKQo+Pj4+PiAgICAgaW9tbXUvc3ByZDogQ29udmVydCB0byBnZW5lcmljX3Np
bmdsZV9kZXZpY2VfZ3JvdXAoKQo+Pj4+PiAgICAgaW9tbXUvcm9ja2NoaXA6IENvbnZlcnQgdG8g
Z2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3VwKCkKPj4+Pj4gICAgIGlvbW11L2lwbW11LXZtc2E6
IENvbnZlcnQgdG8gZ2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3VwKCkKPj4+Pj4gICAgIGlvbW11
L29tYXA6IENvbnZlcnQgdG8gZ2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3VwKCkKPj4+Pj4gICAg
IGlvbW11OiBDb21wbGV0ZSB0aGUgbG9ja2luZyBmb3IgZGV2LT5pb21tdV9ncm91cAo+Pj4+PiAg
ICAgaW9tbXUvaW50ZWw6IEZpeCBtaXNzaW5nIGxvY2tpbmcgZm9yIHNob3dfZGV2aWNlX2RvbWFp
bl90cmFuc2xhdGlvbigpCj4+Pj4+Cj4+Pj4+ICAgIGRyaXZlcnMvaW9tbXUvaW50ZWwvZGVidWdm
cy5jICB8ICAzNCArKysrLS0tLQo+Pj4+PiAgICBkcml2ZXJzL2lvbW11L2lvbW11LmMgICAgICAg
ICAgfCAxNTUgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4+Pj4+ICAgIGRyaXZl
cnMvaW9tbXUvaXBtbXUtdm1zYS5jICAgICB8ICAyMiArKy0tLQo+Pj4+PiAgICBkcml2ZXJzL2lv
bW11L29tYXAtaW9tbXUuYyAgICAgfCAgMzAgKy0tLS0tLQo+Pj4+PiAgICBkcml2ZXJzL2lvbW11
L29tYXAtaW9tbXUuaCAgICAgfCAgIDIgKy0KPj4+Pj4gICAgZHJpdmVycy9pb21tdS9yb2NrY2hp
cC1pb21tdS5jIHwgIDIyICstLS0tCj4+Pj4+ICAgIGRyaXZlcnMvaW9tbXUvc3ByZC1pb21tdS5j
ICAgICB8ICAyNCArLS0tLQo+Pj4+PiAgICBkcml2ZXJzL2lvbW11L3N1bjUwaS1pb21tdS5jICAg
fCAgMjkgKystLS0tCj4+Pj4+ICAgIGluY2x1ZGUvbGludXgvaW9tbXUuaCAgICAgICAgICB8ICAg
MyArCj4+Pj4+ICAgIDkgZmlsZXMgY2hhbmdlZCwgMTM4IGluc2VydGlvbnMoKyksIDE4MyBkZWxl
dGlvbnMoLSkKPj4+PiBBcHBsaWVkLCB0aGFua3MgZm9yIHRoZSBuaWNlIGNsZWFudXAhCj4+PiBU
aGlzIHNlcmllcyBzZWVtcyB0byBjYXVzZSBhIGh1bmcgdGFzayBkdXJpbmcgYm9vdCBvbiBNZWRp
YVRlayBwbGF0Zm9ybXMuCj4+PiBJdCBoYW5ncyB3aXRoIG5leHQtMjAyMzA4MDguIFJldmVydGlu
ZyB0aGUgMTAgY29tbWl0cyBmcm9tIHRoaXMgc2VyaWVzCj4+PiBtYWtlcyB0aGUgc3lzdGVtIGJv
b3QgdXAgYWdhaW4uCj4+IEkgY29uZmlybSB0aGF0IG5leHQtMjAyMzA4MDggaXMgYnJva2VuIG9u
IEFSTSAzMmJpdCBiYXNlZCBFeHlub3MgYm9hcmRzCj4+IHRvby4gQm9hcmRzIGxvY2sgdXAgdmVy
eSBlYXJseSBkdXJpbmcgYm9vdC4gSSB3aWxsIHRyeSB0byBpbnZlc3RpZ2F0ZQo+PiB0aGlzIHNv
b24uCj4gQW55IG9mIHRoZSBkcml2ZXJzIHRoYXQgdXNlIHBsYXRmb3JtIGRldmljZSBhcyB0aGUg
aW9tbXVfZGV2aWNlIHdpbGwKPiBoYXZlIGEgcHJvYmxlbSwgcGxlYXNlIHRyeToKPgo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11L1pOSXolMkZOVkxiNldxcXZReEBudmlkaWEu
Y29tLwoKSSd2ZSBjaGVja2VkIGFuZCBpdCBkb2Vzbid0IGhlbHAgaW4gbXkgY2FzZS4gSSB3aWxs
IHNvb24gY2hlY2sgd2h5LgoKQmVzdCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQK
U2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
