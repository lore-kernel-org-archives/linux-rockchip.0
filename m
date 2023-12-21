Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FC22C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 13:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rQO/z8TI77CroF7oyoAb78Frw/YJbIjRshTnIybzFw=; b=YiGmvZ1XdJTGJF
	NCsuJFOGzagcKaRs/vdl6kPCFKFhDGjIs0ZK8lYbe0O0J6i5MJ0WCJaJTQa1/IdICJ0TtH5FQpLYA
	t3SyQVIBchXCSOtX/AJOmx4RgviqdOq9iZwrENJeu2odu33g68gzUL1Nn1pVKosbDkm8uDcmT3SsQ
	+ALFzL8RXIs5zumvlZmrPY5F4dP4aUpNgsE+Ffy8oVT2nZ2v2MbHR7va8VcOmetfvbSPDpCENkp4f
	PEggwtSKVLnlPI8WgWG4PvawRKdWasBj9byIALj5k43G2MzTMeSB3iWxgdpyR0ORgre85pf+Lwe4b
	t0Y6pFg88hehnisuJIaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIn5-002tlN-1b;
	Thu, 21 Dec 2023 13:08:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIn2-002tkI-0z;
	Thu, 21 Dec 2023 13:08:41 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BLAIATv023361;
	Thu, 21 Dec 2023 14:08:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=0l3CJIF0YF007rW0bGlIBQ9AkCLi54Vt0zTpMSyEszk=; b=0w
	0mEaaVchzg0y3gIqMJgY9PbojsKnCH4cyWBSUBcla6RU/Ft+0dOFWs1msjk0EhCN
	H0xTIYGqiUC+C/FoKCfd0+c8x0PjaNz4hX5HNB5uIM+SY1V5mZgTiuuY8f3O9L5M
	lq44oS32APSol9xYPTNmT6ZbWDl4A8PUdoiuEYJTzYlu4Mmc+QmosY7TOqOEZpCT
	vYsJC4AYbJb91xDhI418Hj/BZ2P65mKKfp4aa+oVcDlMCr41LzfIgHDtmCm69Rfz
	Uka0EVZErKoz+ZOl+8L4ZRBvinik2OVzJboztuQpqRi8MbZIw2syuU0rwVi13tv/
	QYrF4ayhsCHpSMcrJz3Q==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3v3q810t43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 14:08:26 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 768F0100053;
	Thu, 21 Dec 2023 14:08:25 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CABE2C38C0;
	Thu, 21 Dec 2023 14:08:25 +0100 (CET)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Dec
 2023 14:08:24 +0100
Message-ID: <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
Date: Thu, 21 Dec 2023 14:08:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>,
        Nicolas Dufresne
	<nicolas.dufresne@collabora.com>
CC: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>, Hans
 Verkuil <hverkuil@xs4all.nl>,
        Rob Herring <robh+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        <linux-media@vger.kernel.org>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-21_06,2023-12-20_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_050840_620286_805D5193 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQWxleCwKClRoaXMgaXMgYmVjYXVzZSBWREVDIGFuZCBWRU5DIGFyZSB0d28gc2VwYXJhdGVk
IElQcyB3aXRoIHRoZWlyIG93biAKaGFyZHdhcmUgcmVzb3VyY2VzIGFuZCBubyBsaW5rcyBiZXR3
ZWVuIGJvdGguCk9uIGZ1dHVyZSBTb0NzLCBWREVDIGNhbiBzaGlwIG9uIGl0cyBvd24sIHNhbWUg
Zm9yIFZFTkMuCgpIb3BpbmcgdGhhdCB0aGlzIGNsYXJpZnkuCgpCZXN0IHJlZ2FyZHMsCkh1Z3Vl
cy4KCk9uIDEyLzIxLzIzIDEzOjQwLCBBbGV4IEJlZSB3cm90ZToKPiBIaSBIdWd1ZXMsIEhpIE5p
Y29sYXMsCj4gCj4gaXMgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBJJ20gbm90IHVuZGVyc3Rh
bmRpbmcgLyBzZWVpbmcgd2h5IHRoaXMgaXMgCj4gYWRkZWQgaW4gdHdvIHNlcGVyYXRlIHZkZWMq
IC8gdmVuYyogZmlsZXMgYW5kIG5vdCBhIHNpbmdsZSB2cHUqIGZpbGU/IElzIAo+IGl0IG9ubHkg
Zm9yIHRoZSBzZXBlcmF0ZSBjbG9ja3MgKC1uYW1lcykgLyBpcnFzICgtbmFtZXMpIC8gY2FsbGJh
Y2tzPyAKPiBUaG9zZSBhcmUgZGVmaW5lZCBwZXIgdmFyaWFudCBhbmQgcGVyZmVjdGx5IGZpdCBp
biBhIHNpbmdsZSBmaWxlIGhvbGRpbmcgCj4gb25lIHZkZWMgYW5kIG9uZSB2ZW5jIHZhcmlhbnQu
Cj4gCj4gQWxleAo+IAo+IEFtIDIxLjEyLjIzIHVtIDA5OjQ3IHNjaHJpZWIgSHVndWVzIEZydWNo
ZXQ6Cj4+IFRoaXMgcGF0Y2hzZXQgaW50cm9kdWNlcyBzdXBwb3J0IGZvciBWREVDIHZpZGVvIGhh
cmR3YXJlIGRlY29kZXIKPj4gYW5kIFZFTkMgdmlkZW8gaGFyZHdhcmUgZW5jb2RlciBvZiBTVE1p
Y3JvZWxlY3Ryb25pY3MgU1RNMzJNUDI1Cj4+IFNvQyBzZXJpZXMuCj4+Cj4+IFRoaXMgaW5pdGlh
bCBzdXBwb3J0IGltcGxlbWVudHMgSDI2NCBkZWNvZGluZywgVlA4IGRlY29kaW5nIGFuZAo+PiBK
UEVHIGVuY29kaW5nLgo+Pgo+PiBUaGlzIGhhcyBiZWVuIHRlc3RlZCBvbiBTVE0zMk1QMjU3Ri1F
VjEgZXZhbHVhdGlvbiBib2FyZC4KPj4KPj4gPT09PT09PT09PT0KPj4gPSBoaXN0b3J5ID0KPj4g
PT09PT09PT09PT0KPj4gdmVyc2lvbiA1Ogo+PiDCoMKgwqAgLSBQcmVjaXNlIHRoYXQgdmlkZW8g
ZGVjb2RpbmcgYXMgYmVlbiBzdWNjZXNzZnVsbHkgdGVzdGVkIHVwIHRvIAo+PiBmdWxsIEhECj4+
IMKgwqDCoCAtIEFkZCBOaWNvbGFzIER1ZnJlc25lIHJldmlld2VkLWJ5Cj4+Cj4+IHZlcnNpb24g
NDoKPj4gwqDCoMKgIC0gRml4IGNvbW1lbnRzIGZyb20gTmljb2xhcyBhYm91dCBkcm9wcGluZyBl
bmNvZGVyIHJhdyBzdGVwcwo+Pgo+PiB2ZXJzaW9uIDM6Cj4+IMKgwqDCoCAtIEZpeCByZW1hcmtz
IGZyb20gS3J6eXN6dG9mIEtvemxvd3NraToKPj4gwqDCoMKgwqAgLSBkcm9wICJpdGVtcyIsIHdl
IGtlZXAgc2ltcGxlIGVudW0gaW4gc3VjaCBjYXNlCj4+IMKgwqDCoMKgIC0gZHJvcCBzZWNvbmQg
ZXhhbXBsZSAtIGl0IGlzIHRoZSBzYW1lIGFzIHRoZSBmaXJzdAo+PiDCoMKgwqAgLSBEcm9wIHVu
dXNlZCBub2RlIGxhYmVscyBhcyBzdWdnZXN0ZWQgYnkgQ29ub3IgRG9vbGV5Cj4+IMKgwqDCoCAt
IFJldmlzaXQgbWluL21heCByZXNvbHV0aW9ucyBhcyBzdWdnZXN0ZWQgYnkgTmljb2xhcyBEdWZy
ZXNuZQo+Pgo+PiB2ZXJzaW9uIDI6Cj4+IMKgwqDCoCAtIEZpeCByZW1hcmtzIGZyb20gS3J6eXN6
dG9mIEtvemxvd3NraSBvbiB2MToKPj4gwqDCoMKgwqAgLSBzaW5nbGUgdmlkZW8tY29kZWMgYmlu
ZGluZyBmb3IgYm90aCBWREVDL1ZFTkMKPj4gwqDCoMKgwqAgLSBnZXQgcmlkIG9mICItbmFtZXMi
Cj4+IMKgwqDCoMKgIC0gdXNlIG9mIGdlbmVyaWMgbm9kZSBuYW1lICJ2aWRlby1jb2RlYyIKPj4K
Pj4gdmVyc2lvbiAxOgo+PiDCoMKgIC0gSW5pdGlhbCBzdWJtaXNzaW9uCj4+Cj4+IEh1Z3VlcyBG
cnVjaGV0ICg1KToKPj4gwqDCoCBkdC1iaW5kaW5nczogbWVkaWE6IERvY3VtZW50IFNUTTMyTVAy
NSBWREVDICYgVkVOQyB2aWRlbyBjb2RlY3MKPj4gwqDCoCBtZWRpYTogaGFudHJvOiBhZGQgc3Vw
cG9ydCBmb3IgU1RNMzJNUDI1IFZERUMKPj4gwqDCoCBtZWRpYTogaGFudHJvOiBhZGQgc3VwcG9y
dCBmb3IgU1RNMzJNUDI1IFZFTkMKPj4gwqDCoCBhcm02NDogZHRzOiBzdDogYWRkIHZpZGVvIGRl
Y29kZXIgc3VwcG9ydCB0byBzdG0zMm1wMjU1Cj4+IMKgwqAgYXJtNjQ6IGR0czogc3Q6IGFkZCB2
aWRlbyBlbmNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pgo+PiDCoCAuLi4vbWVkaWEvc3Qs
c3RtMzJtcDI1LXZpZGVvLWNvZGVjLnlhbWzCoMKgwqDCoMKgwqAgfMKgIDUwICsrKysrKysrCj4+
IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpwqDCoMKgwqDCoMKgwqAg
fMKgIDEyICsrCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1NS5kdHNpwqDC
oMKgwqDCoMKgwqAgfMKgIDE3ICsrKwo+PiDCoCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL0tjb25maWfCoMKgwqAgfMKgIDE0ICsrLQo+PiDCoCBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlwqDCoCB8wqDCoCA0ICsKPj4gwqAgLi4uL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuY8KgwqAgfMKgwqAgNCArCj4+IMKgIC4uLi9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaMKgwqDCoCB8wqDCoCAyICsKPj4g
wqAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmPCoCB8wqAgOTIg
KysrKysrKysrKysrKysKPj4gwqAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92
ZW5jX2h3LmPCoCB8IDExNSArKysrKysrKysrKysrKysrKysKPj4gwqAgOSBmaWxlcyBjaGFuZ2Vk
LCAzMDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4gwqAgY3JlYXRlIG1vZGUgMTAw
NjQ0IAo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJt
cDI1LXZpZGVvLWNvZGVjLnlhbWwKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IAo+PiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMKPj4gwqAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IAo+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0
bTMybXAyNV92ZW5jX2h3LmMKPj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
