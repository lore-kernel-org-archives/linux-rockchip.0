Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D1DDC77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 14:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FveO0hTP8CUrZXtc5sQv4r5Ybru57VQEvEwo4HWLEQs=; b=q8aJj7b7Uwv32E
	Vk7YyTecyre93M2Lp42anPehG+KfSdnK7NanQW2fQ9DICqo/tz08Lv23oTG1DfRVtv2bwgxPahbaS
	cwkvRCJElt7w7mchn5VmWGG8ZQ9IySDCUVl0VJfCVDRRUBc8RgCO01zMFwJciIA0luiH7i5IMpHsi
	266bGOPfFq4f9mLz7xq7sU4fGc+s/m4632cLQrMniZjkqqfa3mNk+s1vFkt+fW3HBDkFVdkImrA0L
	4wda2Owwd6M7AnVgYGSgP1PIDNcHcyeo6E+iqGcpVuOfRyhVllZKGwx/EJcle6Npft46jBlxGvb6d
	LVAr9PbPaXRoz3Bg1s+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrO1-001s6T-2P;
	Tue, 02 May 2023 14:53:49 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrNv-001s4J-34;
	Tue, 02 May 2023 14:53:46 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 342ErN65031685;
	Tue, 2 May 2023 14:53:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=A9PzCa1lY9nUR20Q3fDAZA1RsBEr5LdyYZXsjJQssc8=;
 b=itWJdKMD0Vb1kIguS2uvvFOOLyK9gL3u+2PzJEPocTOIRjyJRVVEm0u5BgKPrNWHt78+
 9JZR5LqNUnWgKyagrJRVwRXl45H59PXlaUDtqaj2PFPMUZp3hMgAJvwvJTTuAsM4Gytp
 /bYtg7X+0tpvaSlRv4DO35XyuHtzCCy109LAtVqLIJkKtEuZTUSISou1oFEFbWv8V/ay
 Qiu1BETXlt//c8thokXeJy3C8PX+m/VFcDBVgQ7213tir+ncGT95DRwKuq7owvQ/K9oZ
 1M6av8FikOWDloi7BlO2KaLxC5a+yU6baB8o1Bh50Gzz33k+hXMOa6DZnkhGcKbDghgq sQ== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb4h3rbve-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 14:53:25 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 342Egimo031178;
	Tue, 2 May 2023 14:52:56 GMT
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com [169.51.49.99])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb4h3rbpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 14:52:56 +0000
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
	by ppma04ams.nl.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 341LC9Fa005173;
	Tue, 2 May 2023 14:52:38 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
	by ppma04ams.nl.ibm.com (PPS) with ESMTPS id 3q8tv6snm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 14:52:38 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com [10.20.54.103])
	by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 342EqZPw54460742
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 2 May 2023 14:52:35 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F3F742004E;
	Tue,  2 May 2023 14:52:34 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D981B2004D;
	Tue,  2 May 2023 14:52:32 +0000 (GMT)
Received: from [9.171.18.35] (unknown [9.171.18.35])
	by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  2 May 2023 14:52:32 +0000 (GMT)
Message-ID: <b9b6a50724b4f1ac2b98e518a8b9a820a912850f.camel@linux.ibm.com>
Subject: Re: [PATCH 20/20] iommu: Convert remaining simple drivers to
 domain_alloc_paging()
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Andy Gross <agross@kernel.org>,
        Alim
 Akhtar <alim.akhtar@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Gerald Schaefer
 <gerald.schaefer@linux.ibm.com>,
        Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonathan
 Hunter <jonathanh@nvidia.com>,
        Joerg Roedel <joro@8bytes.org>,
        Konrad
 Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
        linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Matthew Rosato
 <mjrosato@linux.ibm.com>,
        Orson Zhai <orsonzhai@gmail.com>, Rob Clark
 <robdclark@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Samuel Holland
 <samuel@sholland.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krishna
 Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
        Will Deacon
 <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
        Chunyan Zhang
 <zhang.lyra@gmail.com>
Cc: Lu Baolu <baolu.lu@linux.intel.com>, Kevin Tian <kevin.tian@intel.com>,
        Nicolin Chen <nicolinc@nvidia.com>,
        Steven Price <steven.price@arm.com>
Date: Tue, 02 May 2023 16:52:32 +0200
In-Reply-To: <20-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
References: <20-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: T6YFZPN53T-8NBr50MiQVf0_hbdxvlIx
X-Proofpoint-ORIG-GUID: edimN0IzfVknfN6LBbnWL53jz6o5saRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_09,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 impostorscore=0 mlxlogscore=999 lowpriorityscore=0
 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305020124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_075343_998560_2E0DABA1 
X-CRM114-Status: GOOD (  30.26  )
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

T24gTW9uLCAyMDIzLTA1LTAxIGF0IDE1OjAzIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
Cj4gVGhlc2UgZHJpdmVycyBkb24ndCBzdXBwb3J0IElPTU1VX0RPTUFJTl9ETUEsIHNvIHRoaXMg
Y29tbWl0IGVmZmVjdGl2ZWx5Cj4gYWxsb3dzIHRoZW0gdG8gc3VwcG9ydCB0aGF0IG1vZGUuCj4g
Cj4gVGhlIHByaW9yIHdvcmsgdG8gcmVxdWlyZSBkZWZhdWx0X2RvbWFpbnMgbWFrZXMgdGhpcyBz
YWZlIGJlY2F1c2UgZXZlcnkKPiBvbmUgb2YgdGhlc2UgZHJpdmVycyBpcyBlaXRoZXIgY29tcGls
YXRpb24gaW5jb21wYXRpYmxlIHdpdGggZG1hLWlvbW11LmMsCj4gb3IgYWxyZWFkeSBlc3RhYmxp
c2hpbmcgYSBkZWZhdWx0X2RvbWFpbi4gSW4gYm90aCBjYXNlcyBhbGxvY19kb21haW4oKQo+IHdp
bGwgbmV2ZXIgYmUgY2FsbGVkIHdpdGggSU9NTVVfRE9NQUlOX0RNQSBmb3IgdGhlc2UgZHJpdmVy
cyBzbyBpdCBpcyBzYWZlCj4gdG8gZHJvcCB0aGUgdGVzdC4KPiAKPiBSZW1vdmluZyB0aGVzZSB0
ZXN0cyBjbGFyaWZpZXMgdGhhdCB0aGUgZG9tYWluIGFsbG9jYXRpb24gcGF0aCBpcyBvbmx5Cj4g
YWJvdXQgdGhlIGZ1bmN0aW9uYWxpdHkgb2YgYSBwYWdpbmcgZG9tYWluIGFuZCBoYXMgbm90aGlu
ZyB0byBkbyB3aXRoCj4gcG9saWN5IG9mIGhvdyB0aGUgcGFnaW5nIGRvbWFpbiBpcyB1c2VkIGZv
ciBVTk1BTkFHRUQvRE1BL0RNQV9GUS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBHdW50aG9y
cGUgPGpnZ0BudmlkaWEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2lvbW11L2ZzbF9wYW11X2RvbWFp
bi5jIHwgNyArKy0tLS0tCj4gIGRyaXZlcnMvaW9tbXUvbXNtX2lvbW11LmMgICAgICAgfCA3ICsr
LS0tLS0KPiAgZHJpdmVycy9pb21tdS9tdGtfaW9tbXVfdjEuYyAgICB8IDcgKystLS0tLQo+ICBk
cml2ZXJzL2lvbW11L29tYXAtaW9tbXUuYyAgICAgIHwgNyArKy0tLS0tCj4gIGRyaXZlcnMvaW9t
bXUvczM5MC1pb21tdS5jICAgICAgfCA3ICsrLS0tLS0KPiAgZHJpdmVycy9pb21tdS90ZWdyYS1n
YXJ0LmMgICAgICB8IDcgKystLS0tLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDMwIGRlbGV0aW9ucygtKQo+IAo+IAotLS04PC0tLQo+IC1zdGF0aWMgc3RydWN0IGlvbW11
X2RvbWFpbiAqczM5MF9kb21haW5fYWxsb2ModW5zaWduZWQgZG9tYWluX3R5cGUpCj4gK3N0YXRp
YyBzdHJ1Y3QgaW9tbXVfZG9tYWluICpzMzkwX2RvbWFpbl9hbGxvY19wYWdpbmcoc3RydWN0IGRl
dmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgczM5MF9kb21haW4gKnMzOTBfZG9tYWluOwo+ICAK
PiAtCWlmIChkb21haW5fdHlwZSAhPSBJT01NVV9ET01BSU5fVU5NQU5BR0VEKQo+IC0JCXJldHVy
biBOVUxMOwo+IC0KPiAgCXMzOTBfZG9tYWluID0ga3phbGxvYyhzaXplb2YoKnMzOTBfZG9tYWlu
KSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIXMzOTBfZG9tYWluKQo+ICAJCXJldHVybiBOVUxMOwo+
IEBAIC00NDcsNyArNDQ0LDcgQEAgdm9pZCB6cGNpX2Rlc3Ryb3lfaW9tbXUoc3RydWN0IHpwY2lf
ZGV2ICp6ZGV2KQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGlvbW11X29wcyBzMzkwX2lvbW11X29w
cyA9IHsKPiAgCS5kZWZhdWx0X2RvbWFpbiA9ICZzMzkwX2lvbW11X3BsYXRmb3JtX2RvbWFpbiwK
PiAgCS5jYXBhYmxlID0gczM5MF9pb21tdV9jYXBhYmxlLAo+IC0JLmRvbWFpbl9hbGxvYyA9IHMz
OTBfZG9tYWluX2FsbG9jLAo+ICsJLmRvbWFpbl9hbGxvY19wYWdpbmcgPSBzMzkwX2RvbWFpbl9h
bGxvY19wYWdpbmcsCgpMZWF2aW5nIC5kb21haW5fYWxsb2MgdW5zZXQgaGVyZSBsZWFkcyB0byBh
biBPT1BzIHdpdGggeW91ciBHaXRIdWIKYnJhbmNoIChpb21tdV9tYW5kYXRvcnlfZGVmYXVsdCkg
d2hlbiBJIHRyeSB0byB1c2UgdmZpby1wY2kgZm9yIEtWTQpwYXNzLXRocm91Z2ggdmlhIHRoZSBm
b2xsb3dpbmcgY2FsbCBjaGFpbjoKCi4uLgp2ZmlvX2dyb3VwX2ZvcHNfdW5sX2lvY3RsKCkKICAg
dmZpb19ncm91cF9pb2N0bF9zZXRfY29udGFpbmVyKCkKICAgICAgdmZpb19jb250YWluZXJfYXR0
YWNoX2dyb3VwKCkKICAgICAgICAgaW9tbXVfZ3JvdXBfY2xhaW1fZG1hX293bmVyKCkKICAgICAg
ICAgICAgX19pb21tdV90YWtlX2RtYV9vd25lcnNoaXAoKQogICAgICAgICAgICAgICBfX2lvbW11
X2dyb3VwX2FsbG9jX2Jsb2NraW5nX2RvbWFpbigpCiAgICAgICAgICAgICAgIF9faW9tbXVfZG9t
YWluX2FsbG9jKOKApiwgSU9NTVVfRE9NQUlOX0JMT0NLRUQpCgpUaGUgcHJvYmxlbSBpcyB0aGF0
IGluIF9faW9tbXVfZG9tYWluX2FsbG9jKCkgYSBjYWxsIHRvIGJ1cy0+aW9tbXVfb3BzLQo+ZG9t
YWluX2FsbG9jKCkgaXMgYXR0ZW1wdGVkIGZvciBJT01NVV9ET01BSU5fQkxDT0tFRCBldmVuIGlm
IHRoZQpmdW5jdGlvbiBwb2ludGVyIGlzIHVuc2V0LgoKU28gSSB0cmllZCB3aXRoIHRoZSBvYnZp
b3VzIGZpeDoKCkBAIC0xOTQ3LDcgKzE5NDgsNyBAQCBzdGF0aWMgc3RydWN0IGlvbW11X2RvbWFp
biAqX19pb21tdV9kb21haW5fYWxsb2Moc3RydWN0IGJ1c190eXBlICpidXMsCiAgICAgICAgaWYg
KCh0eXBlID09IElPTU1VX0RPTUFJTl9VTk1BTkFHRUQgfHwgdHlwZSA9PSBJT01NVV9ET01BSU5f
RE1BKSAmJgogICAgICAgICAgICBidXMtPmlvbW11X29wcy0+ZG9tYWluX2FsbG9jX3BhZ2luZykK
ICAgICAgICAgICAgICAgIGRvbWFpbiA9IGJ1cy0+aW9tbXVfb3BzLT5kb21haW5fYWxsb2NfcGFn
aW5nKGRldik7Ci0gICAgICAgZWxzZQorICAgICAgIGVsc2UgaWYgKGJ1cy0+aW9tbXVfb3BzLT5k
b21haW5fYWxsb2MpCiAgICAgICAgICAgICAgICBkb21haW4gPSBidXMtPmlvbW11X29wcy0+ZG9t
YWluX2FsbG9jKHR5cGUpOwogICAgICAgIGlmICghZG9tYWluKQogICAgICAgICAgICAgICAgcmV0
dXJuIE5VTEw7CgpUaGlzIHRoZW4gdXNlcyB0aGUgZmFsbGJhY2sgb2YgYW4gZW1wdHkgSU9NTVVf
RE9NQUlOX1VOTUFOQUdFRCBhbmQgSQpnZXQgYSB3b3JraW5nIGRldmljZSBpbiB0aGUgZ3Vlc3Qu
IEFsc28gdHJpZWQgaG90IHVucGx1ZyB3aGVyZSB0aGUKZGV2aWNlIGlzIHRha2VuIG92ZXIgYnkg
dGhlIGhvc3QgYWdhaW4uIEkgdGhpbmsgd2l0aCBteSBETUEgQVBJCmNvbnZlcnNpb24gcGF0Y2hl
cyB3ZSBjYW4gc3VwcG9ydCBibG9ja2luZyBkb21haW5zIHByb3Blcmx5IGJ1dCBmb3IgYQp0ZW1w
b3Jhcnkgc29sdXRpb24gdGhlIGFib3ZlIG1heSBiZSBhY2NlcHRhYmxlLgoKPiAgCS5wcm9iZV9k
ZXZpY2UgPSBzMzkwX2lvbW11X3Byb2JlX2RldmljZSwKPiAgCS5yZWxlYXNlX2RldmljZSA9IHMz
OTBfaW9tbXVfcmVsZWFzZV9kZXZpY2UsCj4gIAkuZGV2aWNlX2dyb3VwID0gZ2VuZXJpY19kZXZp
Y2VfZ3JvdXAsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
