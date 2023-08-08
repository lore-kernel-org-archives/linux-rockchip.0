Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D9A7C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 14:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Qm+L609gaRj/+ip7AubzALEA+IgkPCg8aCxdvm4MoM=; b=riC8k5S8HQQzfJ
	SPVLL7eCdQp7IOVNIp0tzPBaqWEjePuDTOWXfMlniyxO1iybgxIAO3reiMtbdJSwqf6P6drqW/yGn
	drfFpoYN9Gs9QnfNzuJ9w0ErxOlGOEECGDenAIKD30nWsNr5SLk1VN9PHnOD/RQsGz0zukK8Rapbb
	zRCIKzl+yyOBX2dBdTPnF8FFIpZPKX/fTCuxVU5ufcTH+0DMLpvN0x2KiY7g6MK3Vh8F5o/paeqAm
	krLdrrZ7Bs+10pQIwiUGWZ24eJZlWuFlmGYs2j5441TAJsBaYAFihPYqWjnIZRoDeQAI8Q+WzmELc
	JQTDrsS+OYHtnjhlGnPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTNIT-002iP9-1g;
	Tue, 08 Aug 2023 14:02:53 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTNIP-002iNq-0Q
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 14:02:51 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20230808140243euoutp024e989746add81e58658af6411f5b8362~5bVjWosp11272012720euoutp02u
	for <linux-rockchip@lists.infradead.org>; Tue,  8 Aug 2023 14:02:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20230808140243euoutp024e989746add81e58658af6411f5b8362~5bVjWosp11272012720euoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1691503363;
	bh=R6c8tltZ0FO59uKXwgmONFbNQg0cDEH9mkfGy4aZvWQ=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=lOng1TJll/w2N8L8xrB5v1+2uJ/gY+DigODOQtBOEvyh31l8rbSfVATSLLoQnfhmx
	 sFZ807S+qJwX7e5dyxYjuXHb/bfzkOg++hvM/QSslF9yyChatYo+uum404X7oSmjHs
	 x8JuR1IGS94K9zq7xQEhIKBIC1UibCVrFkBmgJmA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20230808140242eucas1p18de32ec65225255ab2783ef10c292afd~5bVi-qM4J0300603006eucas1p1p;
	Tue,  8 Aug 2023 14:02:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 1F.7F.37758.20B42D46; Tue,  8
	Aug 2023 15:02:42 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20230808140242eucas1p20b35b3e887dff951ec9024d58a141f22~5bVicFzZy1553915539eucas1p2C;
	Tue,  8 Aug 2023 14:02:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20230808140242eusmtrp2da747abb85da603d36eae2356329fbdd~5bVibV38z2196421964eusmtrp2S;
	Tue,  8 Aug 2023 14:02:42 +0000 (GMT)
X-AuditID: cbfec7f5-7ffff7000002937e-cf-64d24b024587
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id BE.0C.10549.20B42D46; Tue,  8
	Aug 2023 15:02:42 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230808140241eusmtip1a7329f247b774864cd7788300319f6b8~5bVhQxu6Z2434324343eusmtip16;
	Tue,  8 Aug 2023 14:02:41 +0000 (GMT)
Message-ID: <bc5d6aa8-e8ca-c896-2f39-af074d55e436@samsung.com>
Date: Tue, 8 Aug 2023 16:02:40 +0200
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
In-Reply-To: <ZNJCRhGGxS+63Dnr@nvidia.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0wTZxj2u7tej0rxLJB+YS5uhWzKIo6p8xMc+6XzUNl0ixkxZrajt0IG
	RVvwBzMZGcIoHYpTgV6xECMR0FADwgRBpSFUBMYGA0HcRCwrAxTLCgmF2Xm9/eC/532f9/me
	533zUbgsmwyhkrRprE6rSlaQEqK+ba57DbajR/26eXAdmvV+RyJvcxtAtafqSHSq8jSOvCMT
	IuRxI+QsrQbol2dNABnMV8So5lG/CE0Pe3F05kYjiYqemgFqeeoQIeeIgURztm4MFef0itDx
	+xvQxeFG8TuBjKPFgjGXLZcBY878mWCujFwSMQ3cr2KmtiKcqakykEzDw02MpX03U3vha2as
	1gSY/KwnJDN1o49kxmfOAeaHfgu+a9leyWY1m5x0iNWtjVFKEl2TWfiB+YAjc/PbM4HLPw9Q
	FKTXQxsPJZSMrgDQeHpKLBRuAJ0ld4FQ/AnggKUMywN+PkVTh4EUiIsAcsYOEU/IaBeAvV0H
	eSylY+AlcyHJY4IOgzdzi0mhvxy2mxwEj4NpFl4bKvBpA+mt8DfTdd8MTsvhPUepzyzoufb2
	7U5fJJw2iWClOx/nCZKOhHmP83wCPzoccjkTQBCvhFl1ZpwXQHraD47Z3IQQewusbzaJBBwI
	x+1XxQJeAb0NvBsv+BbAsvkH/xQFAGY67wFhKhre/9FD8ifD6dXQ2rhWuN670F5+SIABcODx
	ciFDAPy+vggX2lKYmyMT3ngFcvbq/1xbfurBC4CCW3QWbtH63KJtuP9tywBRBeRsuj5Fw+rX
	adnDEXpVij5dq4lISE2pAc9/ascz+8w1UDHuirABjAI2AClcESS1OLrVMqladTSD1aXu16Un
	s3obeIEiFHLpa2+1J8hojSqN/ZJlD7C6f1mM8gvJxDSewnbJCefWWPlUEnf2j8EPK06unhmM
	PDw5PSTf/7K23BiVX+k2+3eV5s6+OfSNznrkvbePrkq75X+yeJ8hu1GsPZ7bmm1VZrjiH0Wv
	OXFnSVwRsTJk9tyCf0DY5k+OrfoiZiwW6951fcl8rKkrrnyiNHp698LnnSkKZwKhJu6abn5Q
	/7GsJcqoD/b2LVW2bhTFP3BuV+av8HYaIsPOT3aNng2tijr2YmjQRz2hD1M3jep33on/3fz+
	WLbTcjCjeR+G9jrXBy8s3TZojfDMwD3aV/uUo5+BNzx9MTvtLwF1df9fsg3xA7q6wh0mxrgx
	8UmJioorSdO0WZu+uvXp8JnWLb0KQp+oigzHdXrV31LeCC0YBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsVy+t/xu7pM3pdSDF6tErT49r+HzeL/3mOM
	FpsnbmWzmLhyMrPF/0evWS1+fbGweD5/HaPFlX97GC06Z29gt9j0+BqrxacH/5ktpuzbxWYx
	/cNsRouDH56wWjx/1Mlm8fPQeSaLGW2XWS1a7phaLH+wi91B2OPJwXlMHmvmrWH0mN1wkcVj
	w6PVrB47Z91l99i8Qstj06pONo+dDy095p0M9Ni8pN7jxeaZjB69ze/YPN7vu8rm8errXEaP
	7dfmMQfwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunb
	JehlfHzTzFzwm6/i52+vBsaPPF2MnBwSAiYSe053snUxcnEICSxllPhztZ8ZIiEjcXJaAyuE
	LSzx51oXVNF7Rompc8+zgSR4BewkVs+eBmazCKhI7O+YARUXlDg58wkLiC0qkCrxq2EX2CBh
	AVeJezN3g9UwC4hL3HoynwnEFgHqPXHiDDvIAmaB2awSE5ZvYYLYtppZ4srvdnaQKjYBQ4mu
	t11g3ZwCWhKz2l4zQkwyk+ja2gVly0s0b53NPIFRaBaSQ2YhWTgLScssJC0LGFlWMYqklhbn
	pucWG+oVJ+YWl+al6yXn525iBCaSbcd+bt7BOO/VR71DjEwcjIcYJTiYlUR45z05nyLEm5JY
	WZValB9fVJqTWnyI0RQYGhOZpUST84GpLK8k3tDMwNTQxMzSwNTSzFhJnNezoCNRSCA9sSQ1
	OzW1ILUIpo+Jg1OqgalR7ouT27Pd65XiTGe6eHhcnB44wSBwDuO8LpG5y8zCbALqvMzKG6W1
	ubcs4q+bP/m21LcA9mPn7n55f7kn0aI0LPz0SVlu5+7r2bm7GbPf9Wgu/VZt1lsXdHzXE464
	Xt7r2wXWr/7Qofy5+mDYV07t/G23zrs1PxP+X/fwzmchVj6P/9JfBXJleByL1s5N4e83To7Y
	dVL9lNbZlGchiX1bTyeqJXxQZ3DfOJfvQ+tkW9HKddeSOktYn5zuPrPE2T3Xwupe+aWtOpua
	pxSYvP1b9fOLeVZitoFqDvek5Qkz3/+5uW3i9ldb+rbqqd+r0rG6JR88z6Vea8KS6w9dJ3Ae
	eDUxpMwoiOPp5IKZHkosxRmJhlrMRcWJAJvYRYatAwAA
X-CMS-MailID: 20230808140242eucas1p20b35b3e887dff951ec9024d58a141f22
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
	<4d56203e-b602-07ee-ab74-2825c110c36d@samsung.com>
	<ZNJCRhGGxS+63Dnr@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_070249_824400_B19B2756 
X-CRM114-Status: GOOD (  12.42  )
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

SGkgSmFzb24sCgpPbiAwOC4wOC4yMDIzIDE1OjI1LCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4g
T24gVHVlLCBBdWcgMDgsIDIwMjMgYXQgMDM6MDg6MzBQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPj4+IEFueSBvZiB0aGUgZHJpdmVycyB0aGF0IHVzZSBwbGF0Zm9ybSBkZXZpY2Ug
YXMgdGhlIGlvbW11X2RldmljZSB3aWxsCj4+PiBoYXZlIGEgcHJvYmxlbSwgcGxlYXNlIHRyeToK
Pj4+Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS9aTkl6JTJGTlZMYjZX
cXF2UXhAbnZpZGlhLmNvbS8KPj4gSSd2ZSBjaGVja2VkIGFuZCBpdCBkb2Vzbid0IGhlbHAgaW4g
bXkgY2FzZS4gSSB3aWxsIHNvb24gY2hlY2sgd2h5Lgo+IE9oLCBJIGJvdGNoZWQgaXQuIEZvcmdv
dCB0aGF0IHRoZSBpb21tdV9kZXZpY2UtPmRldiBpcyB0aGUgc3lzZnMKPiBoYW5kbGUgbm90IHRo
ZSBIVyBkZXZpY2UuIE1heWJlIHRoaXM6CgpUaGlzIGZpeGVkIHRoZSBlYXJseSBsb2NrdXAsIGJ1
dCB0aGVuIHN5c3RlbSBoYW5ncyBhZ2FpbiBhIGJpdCBsYXRlci4gSXQgCmxvb2tzIHRoYXQgdGhp
cyBkZXZpY2UgbG9jayBpbiBfX2lvbW11X3Byb2JlX2RldmljZSgpIGlzIHJlYWxseSAKcHJvYmxl
bWF0aWMsIGJlY2F1c2UgX19pb21tdV9wcm9iZV9kZXZpY2UoKSBpcyB0aGVuIGNhbGxlZCBkdXJp
bmcgdGhlIAppb21tdSAnY2xpZW50IGRldmljZScgcHJvYmUgb24gdGhlIHByb2JlZCBkZXZpY2Uu
IEhlcmUgaXMgYSBjb21wbGV0ZSAKY2FsbCBzdGFjazoKCiDCoHVud2luZF9iYWNrdHJhY2UgZnJv
bSBzaG93X3N0YWNrKzB4MTAvMHgxNAogwqBzaG93X3N0YWNrIGZyb20gZHVtcF9zdGFja19sdmwr
MHg1OC8weDcwCiDCoGR1bXBfc3RhY2tfbHZsIGZyb20gX19pb21tdV9wcm9iZV9kZXZpY2UrMHgz
ZDgvMHg0YjgKIMKgX19pb21tdV9wcm9iZV9kZXZpY2UgZnJvbSBpb21tdV9wcm9iZV9kZXZpY2Ur
MHgxMC8weDQwCiDCoGlvbW11X3Byb2JlX2RldmljZSBmcm9tIG9mX2lvbW11X2NvbmZpZ3VyZSsw
eGY4LzB4MWM4CiDCoG9mX2lvbW11X2NvbmZpZ3VyZSBmcm9tIG9mX2RtYV9jb25maWd1cmVfaWQr
MHgxODgvMHg0NTAKIMKgb2ZfZG1hX2NvbmZpZ3VyZV9pZCBmcm9tIHBsYXRmb3JtX2RtYV9jb25m
aWd1cmUrMHgyNC8weDYwCiDCoHBsYXRmb3JtX2RtYV9jb25maWd1cmUgZnJvbSByZWFsbHlfcHJv
YmUrMHhhYy8weDNkNAogwqByZWFsbHlfcHJvYmUgZnJvbSBfX2RyaXZlcl9wcm9iZV9kZXZpY2Ur
MHhhMC8weDFlOAogwqBfX2RyaXZlcl9wcm9iZV9kZXZpY2UgZnJvbSBkcml2ZXJfcHJvYmVfZGV2
aWNlKzB4MzAvMHhkMAogwqBkcml2ZXJfcHJvYmVfZGV2aWNlIGZyb20gX19kcml2ZXJfYXR0YWNo
KzB4MTBjLzB4MTkwCiDCoF9fZHJpdmVyX2F0dGFjaCBmcm9tIGJ1c19mb3JfZWFjaF9kZXYrMHg2
MC8weGI0CiDCoGJ1c19mb3JfZWFjaF9kZXYgZnJvbSBidXNfYWRkX2RyaXZlcisweGUwLzB4MjA4
CiDCoGJ1c19hZGRfZHJpdmVyIGZyb20gZHJpdmVyX3JlZ2lzdGVyKzB4N2MvMHgxMTgKIMKgZHJp
dmVyX3JlZ2lzdGVyIGZyb20gZXh5bm9zX2RybV9pbml0KzB4ZTAvMHgxNGMKIMKgZXh5bm9zX2Ry
bV9pbml0IGZyb20gZG9fb25lX2luaXRjYWxsKzB4NmMvMHgzMTgKIMKgZG9fb25lX2luaXRjYWxs
IGZyb20ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxYzQvMHgyMTQKIMKga2VybmVsX2luaXRfZnJl
ZWFibGUgZnJvbSBrZXJuZWxfaW5pdCsweDE4LzB4MTJjCiDCoGtlcm5lbF9pbml0IGZyb20gcmV0
X2Zyb21fZm9yaysweDE0LzB4MmMKCkFueSBpZGVhcz8KCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsg
U3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
