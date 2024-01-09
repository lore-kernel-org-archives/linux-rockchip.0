Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C33C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 09:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcANy6oVSRrbw0zY4NLKkmIcuSrKP73rI08fVLvrlEw=; b=PWrJPhhWuUO175
	FtPC1dHaNW8CJOwb0CGpwnVwFO929dnELy7i55OXkzTcmuA32/n7vHslAVNEobVuQRd/lXR2TDaeF
	44SMh2dXALL1Ydwbfb9cCXeh8ilqxJujxTHA9k1ks6SLifR2sRpFDkrhhwl8EDXBVbHFvF1fBY1k+
	a1ZmKNqYEGvmR4dXip9T+r6qN1A0eYSs4MEbct5zPTYtixtOrkyRz3M94nx8OaD5gJnLsE404+gGp
	D/FP8PJe6eiKGRj7yH9oGHAD2qwT7HJYyR1tlj8oWvQdKvgHm642JR6WEQ5tI96pmvTyOI63HAqIO
	7YRd92qp1lU5omBgOimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8M1-007V45-1J;
	Tue, 09 Jan 2024 09:25:01 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Ly-007V2U-0g;
	Tue, 09 Jan 2024 09:25:00 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 409343xj004773;
	Tue, 9 Jan 2024 10:24:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=PffPX8XtKNmALdkQMwhnZW6kAZxJu3D/e4DIkZpdRa8=; b=HE
	oFePXh9x/Is1DayLz5t6fFdexw5taCHMsc66nTDH5QCGhikN2ugKcFwl2BCRLRqp
	EzaFzJifLh5CNOMsQ8ESIO7KzhyUJsr157FTFZvxJoOTSiSm3E9WTOyRumsF8uPm
	FoZV9rpbrV1XwmKjfFmHp+KQy4NOdHdnyoM0/h3QXeSyKC3vJnlZai23pvV8qts4
	14wY0ZxtYMjBDx6+i28GprV8OjWTAV0ESA2ixrr2qY0bhTwyvad2wwi2HIJ2zRYi
	3IDtNYO88G48cz4C8TK184BSXXIvSPwx13OLSPt0SNrAex3VhN2wVSZ4c3LLzQSD
	UqWOqSzR8oMHSJd8EUWg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vey30jx0a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jan 2024 10:24:46 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3262810002A;
	Tue,  9 Jan 2024 10:24:45 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 11AB12122E9;
	Tue,  9 Jan 2024 10:24:45 +0100 (CET)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 9 Jan
 2024 10:24:43 +0100
Message-ID: <1c76d85c-6f20-4971-a6df-61e4c534b351@foss.st.com>
Date: Tue, 9 Jan 2024 10:24:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
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
 <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
 <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
Content-Language: en-US
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_08,2024-01-05_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_012458_539014_E40C083C 
X-CRM114-Status: GOOD (  23.26  )
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

SGkgQWxleCwKCnY2IHNlbnQgd2l0aCBhbGwgdGhlIHZhcmlhbnRzIGluIGEgc2luZ2xlIGZpbGUu
CgpCZXN0IHJlZ2FyZHMsCkh1Z3Vlcy4KCk9uIDEyLzIxLzIzIDE0OjMxLCBBbGV4IEJlZSB3cm90
ZToKPiBIaSBIdWd1ZXMsCj4gCj4gQW0gMjEuMTIuMjMgdW0gMTQ6MDggc2NocmllYiBIdWd1ZXMg
RlJVQ0hFVDoKPj4gSGkgQWxleCwKPj4KPj4gVGhpcyBpcyBiZWNhdXNlIFZERUMgYW5kIFZFTkMg
YXJlIHR3byBzZXBhcmF0ZWQgSVBzIHdpdGggdGhlaXIgb3duIAo+PiBoYXJkd2FyZSByZXNvdXJj
ZXMgYW5kIG5vIGxpbmtzIGJldHdlZW4gYm90aC4KPj4gT24gZnV0dXJlIFNvQ3MsIFZERUMgY2Fu
IHNoaXAgb24gaXRzIG93biwgc2FtZSBmb3IgVkVOQy4KPj4KPiBJIHRoaW5rIHRoYXQncyB3aGF0
IHRoZSBkcml2ZXIgaXMvd2FzIGRlc2lnbmVkIGZvciA6KQo+IAo+IEkgZG9uJ3TCoCB0aGluayB0
aGVyZSBfaGFzXyB0byBiZSBhIGxpbmsgYmV0d2VlbiB2YXJpYW50cyBpbiB0aGUgc2FtZSBmaWxl
Lgo+IEZvciBSb2NrY2hpcCB3ZSBvbmx5IGhhZCB0aGUgaXNzdWUgdGhhdCB0aGVyZSBfaXNfIGEg
bGluayAoc2hhcmVkCj4gcmVzb3VyY2VzKSBiZXR3ZWVuIGVuY29kZXIgYW5kIGRlY29kZXIgYW5k
IHRoZXkgaGFkIChmb3IgdGhhdCByZWFzb24pIHRvIGJlCj4gZGVmaW5lZCBoYXMgYSBfc2luZ2xl
XyB2YXJpYW50LiBBbmQgdGhlcmUgaXMgbm8gcmVhc29uIHlvdSBjYW4gc2hpcCBkZWNvZGVyCj4g
YW5kIGVuY29kZXIgc2VwZXJhdGVkIHdoZW4geW91IGhhdmUgdHdvIHZhcmlhbnRzICh3aXRoIGRp
ZmZlcmVudAo+IGNvbXBhdGlibGVzKS4KPiBGb3IgUm9ja2NoaXAgYW5kIGlNWCB0aG9zZSBmaWxl
cyBhcmUgZXZlbiBjb250YWluaW5nIHZhcmlhbnRzIGZvciBjb21wbGV0bHkKPiBkaWZmZXJlbnQg
Z2VuZXJhdGlvbnMgLyBkaWZmZXJlbnQgU29Dcy4gSSBoYWQgdG8gY2xlYW51cCB0aGlzIG1lc3Mg
Zm9yCj4gUm9ja2NoaXAgb25jZSAtIGFuZCBpdCB3YXMgbm8gZnVuIDopIEFueXdheXM6IEl0J3Mg
dXAgdG8gdGhlIG1haW50YWluZXJzIEkKPiBndWVzcyAtIEkganVzdCB3YW50ZWQgdG8gYXNrIGlm
IEkgbWlzc3VuZGVyc3RhbmQgc29tZXRoaW5nIGhlcmUuCj4gCj4gR3JlZXRpbmdzLAo+IAo+IEFs
ZXgKPiAKPj4gSG9waW5nIHRoYXQgdGhpcyBjbGFyaWZ5Lgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+
IEh1Z3Vlcy4KPj4KPj4gT24gMTIvMjEvMjMgMTM6NDAsIEFsZXggQmVlIHdyb3RlOgo+Pj4gSGkg
SHVndWVzLCBIaSBOaWNvbGFzLAo+Pj4KPj4+IGlzIHRoZXJlIGFueSBzcGVjaWZpYyByZWFzb24g
SSdtIG5vdCB1bmRlcnN0YW5kaW5nIC8gc2VlaW5nIHdoeSB0aGlzIAo+Pj4gaXMgYWRkZWQgaW4g
dHdvIHNlcGVyYXRlIHZkZWMqIC8gdmVuYyogZmlsZXMgYW5kIG5vdCBhIHNpbmdsZSB2cHUqIAo+
Pj4gZmlsZT8gSXMgaXQgb25seSBmb3IgdGhlIHNlcGVyYXRlIGNsb2NrcyAoLW5hbWVzKSAvIGly
cXMgKC1uYW1lcykgLyAKPj4+IGNhbGxiYWNrcz8gVGhvc2UgYXJlIGRlZmluZWQgcGVyIHZhcmlh
bnQgYW5kIHBlcmZlY3RseSBmaXQgaW4gYSAKPj4+IHNpbmdsZSBmaWxlIGhvbGRpbmcgb25lIHZk
ZWMgYW5kIG9uZSB2ZW5jIHZhcmlhbnQuCj4+Pgo+Pj4gQWxleAo+Pj4KPj4+IEFtIDIxLjEyLjIz
IHVtIDA5OjQ3IHNjaHJpZWIgSHVndWVzIEZydWNoZXQ6Cj4+Pj4gVGhpcyBwYXRjaHNldCBpbnRy
b2R1Y2VzIHN1cHBvcnQgZm9yIFZERUMgdmlkZW8gaGFyZHdhcmUgZGVjb2Rlcgo+Pj4+IGFuZCBW
RU5DIHZpZGVvIGhhcmR3YXJlIGVuY29kZXIgb2YgU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyTVAy
NQo+Pj4+IFNvQyBzZXJpZXMuCj4+Pj4KPj4+PiBUaGlzIGluaXRpYWwgc3VwcG9ydCBpbXBsZW1l
bnRzIEgyNjQgZGVjb2RpbmcsIFZQOCBkZWNvZGluZyBhbmQKPj4+PiBKUEVHIGVuY29kaW5nLgo+
Pj4+Cj4+Pj4gVGhpcyBoYXMgYmVlbiB0ZXN0ZWQgb24gU1RNMzJNUDI1N0YtRVYxIGV2YWx1YXRp
b24gYm9hcmQuCj4+Pj4KPj4+PiA9PT09PT09PT09PQo+Pj4+ID0gaGlzdG9yeSA9Cj4+Pj4gPT09
PT09PT09PT0KPj4+PiB2ZXJzaW9uIDU6Cj4+Pj4gwqDCoMKgIC0gUHJlY2lzZSB0aGF0IHZpZGVv
IGRlY29kaW5nIGFzIGJlZW4gc3VjY2Vzc2Z1bGx5IHRlc3RlZCB1cCB0byAKPj4+PiBmdWxsIEhE
Cj4+Pj4gwqDCoMKgIC0gQWRkIE5pY29sYXMgRHVmcmVzbmUgcmV2aWV3ZWQtYnkKPj4+Pgo+Pj4+
IHZlcnNpb24gNDoKPj4+PiDCoMKgwqAgLSBGaXggY29tbWVudHMgZnJvbSBOaWNvbGFzIGFib3V0
IGRyb3BwaW5nIGVuY29kZXIgcmF3IHN0ZXBzCj4+Pj4KPj4+PiB2ZXJzaW9uIDM6Cj4+Pj4gwqDC
oMKgIC0gRml4IHJlbWFya3MgZnJvbSBLcnp5c3p0b2YgS296bG93c2tpOgo+Pj4+IMKgwqDCoMKg
IC0gZHJvcCAiaXRlbXMiLCB3ZSBrZWVwIHNpbXBsZSBlbnVtIGluIHN1Y2ggY2FzZQo+Pj4+IMKg
wqDCoMKgIC0gZHJvcCBzZWNvbmQgZXhhbXBsZSAtIGl0IGlzIHRoZSBzYW1lIGFzIHRoZSBmaXJz
dAo+Pj4+IMKgwqDCoCAtIERyb3AgdW51c2VkIG5vZGUgbGFiZWxzIGFzIHN1Z2dlc3RlZCBieSBD
b25vciBEb29sZXkKPj4+PiDCoMKgwqAgLSBSZXZpc2l0IG1pbi9tYXggcmVzb2x1dGlvbnMgYXMg
c3VnZ2VzdGVkIGJ5IE5pY29sYXMgRHVmcmVzbmUKPj4+Pgo+Pj4+IHZlcnNpb24gMjoKPj4+PiDC
oMKgwqAgLSBGaXggcmVtYXJrcyBmcm9tIEtyenlzenRvZiBLb3psb3dza2kgb24gdjE6Cj4+Pj4g
wqDCoMKgwqAgLSBzaW5nbGUgdmlkZW8tY29kZWMgYmluZGluZyBmb3IgYm90aCBWREVDL1ZFTkMK
Pj4+PiDCoMKgwqDCoCAtIGdldCByaWQgb2YgIi1uYW1lcyIKPj4+PiDCoMKgwqDCoCAtIHVzZSBv
ZiBnZW5lcmljIG5vZGUgbmFtZSAidmlkZW8tY29kZWMiCj4+Pj4KPj4+PiB2ZXJzaW9uIDE6Cj4+
Pj4gwqDCoCAtIEluaXRpYWwgc3VibWlzc2lvbgo+Pj4+Cj4+Pj4gSHVndWVzIEZydWNoZXQgKDUp
Ogo+Pj4+IMKgwqAgZHQtYmluZGluZ3M6IG1lZGlhOiBEb2N1bWVudCBTVE0zMk1QMjUgVkRFQyAm
IFZFTkMgdmlkZW8gY29kZWNzCj4+Pj4gwqDCoCBtZWRpYTogaGFudHJvOiBhZGQgc3VwcG9ydCBm
b3IgU1RNMzJNUDI1IFZERUMKPj4+PiDCoMKgIG1lZGlhOiBoYW50cm86IGFkZCBzdXBwb3J0IGZv
ciBTVE0zMk1QMjUgVkVOQwo+Pj4+IMKgwqAgYXJtNjQ6IGR0czogc3Q6IGFkZCB2aWRlbyBkZWNv
ZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pj4+IMKgwqAgYXJtNjQ6IGR0czogc3Q6IGFkZCB2
aWRlbyBlbmNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pj4+Cj4+Pj4gwqAgLi4uL21lZGlh
L3N0LHN0bTMybXAyNS12aWRlby1jb2RlYy55YW1swqDCoMKgwqDCoMKgIHzCoCA1MCArKysrKysr
Kwo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpwqDCoMKgwqDC
oMKgwqAgfMKgIDEyICsrCj4+Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0zMm1wMjU1
LmR0c2nCoMKgwqDCoMKgwqDCoCB8wqAgMTcgKysrCj4+Pj4gwqAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9LY29uZmlnwqDCoMKgIHzCoCAxNCArKy0KPj4+PiDCoCBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlwqDCoCB8wqDCoCA0ICsKPj4+PiDC
oCAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jwqDCoCB8wqDCoCA0
ICsKPj4+PiDCoCAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmjCoMKg
wqAgfMKgwqAgMiArCj4+Pj4gwqAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92
ZGVjX2h3LmPCoCB8wqAgOTIgKysrKysrKysrKysrKysKPj4+PiDCoCAuLi4vcGxhdGZvcm0vdmVy
aXNpbGljb24vc3RtMzJtcDI1X3ZlbmNfaHcuY8KgIHwgMTE1IAo+Pj4+ICsrKysrKysrKysrKysr
KysrKwo+Pj4+IMKgIDkgZmlsZXMgY2hhbmdlZCwgMzA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IAo+Pj4+IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMm1wMjUtdmlkZW8tY29kZWMueWFtbAo+Pj4+
IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMKPj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+
Pj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmVuY19ody5j
Cj4+Pj4KPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
