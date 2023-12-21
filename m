Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77075C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 13:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eVd3WnS3GiwtcRIl7BX0M/y4SSNUwWQq26meXIQsmg=; b=nEk0l9I0pMAF7H
	AepLsaDu7a+hCiQDxJalHXRa0QeZBIRteNJcApSrUF3eqG9YEPVfkz3dnhoKqW6ayOgjgnVwP4ot2
	czgld/fF/ETG1Tv3qzIf3TUlHrmsLnrQ0uIG2jhPVj+O96eUUSvS/S1vOU+Ik54Lp6MjvbsoQYwSz
	WrOcJMtiJGYlj4V+3lSnPuQqYmtzdgZvAbid5hDCt7lQquQfewieFBw/t4YAHTfn+oN9yQiyTWw88
	QTAmhtCBiwzPrHsKCucMrCgh3REXlBdsEsb4uZS2XLQSeybA9udOZPhpIPzwGNJeyZIqp6Y6YjAyF
	5pKL4MiiMDYGgtu1hOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIjr-002tIt-0w;
	Thu, 21 Dec 2023 13:05:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIjm-002tG2-3D;
	Thu, 21 Dec 2023 13:05:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3BL93V38026783;
	Thu, 21 Dec 2023 14:05:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=qKB5MFFD1Jhsz7q6UhIrZ8SdYwmTMombWQWBCfbDjMA=; b=U7
	VLTATdz5V+RXI86ihxwUPSOQX1CT/3D6FGYvhvOiT2Zwra2HHLVSwWXtCABUu469
	JONexw9XjyaiI9WtYT2zqUStBD4+ktYm7gdGcoXnb7K0auDO9xiHnZEx4Ow74zON
	GFZM7oX0Y7Hi5hfVQax1zYhxsk24j1RGPJW7fkpHoBFeZHUbPxHBUQEUbWAInZkL
	5bbX9bolyrFiosOMeUjKZltNfqIkRjyxb8UrdEw9IYwvESHWii7/HVtQ7pnaP986
	i68sQmYZJrdRwuY1dpsW5zGKinpv285ADwX/jDdIBMIH45uFN5rTnZVoZ4bUFCWU
	QL30ajLV8cj68tU8t3AA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3v11w97htr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 14:05:05 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1B898100066;
	Thu, 21 Dec 2023 14:05:04 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0992D2C38A1;
	Thu, 21 Dec 2023 14:05:04 +0100 (CET)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Dec
 2023 14:05:02 +0100
Message-ID: <70ed583e-af57-43e5-91a4-daa0568e83ab@foss.st.com>
Date: Thu, 21 Dec 2023 14:05:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] media: hantro: add support for STM32MP25 VENC
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <20231221084723.2152034-4-hugues.fruchet@foss.st.com>
 <20231221111837.4u22pmba7jd3hinj@basti-XPS-13-9310>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <20231221111837.4u22pmba7jd3hinj@basti-XPS-13-9310>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-21_06,2023-12-20_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_050519_309687_659E1F33 
X-CRM114-Status: GOOD (  20.47  )
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

SGkgU2ViYXN0aWFuLAoKWWVzLCBmZWVsIGZyZWUgdG8gZml4IHRoZSB0d28gY29tbWVudHMgIQoK
QlIsCkh1Z3Vlcy4KCk9uIDEyLzIxLzIzIDEyOjE4LCBTZWJhc3RpYW4gRnJpY2tlIHdyb3RlOgo+
IEhleSBIdWd1ZXMsCj4gCj4gb25lIHNtYWxsIGNvbW1lbnQgYmVsb3csIGlmIGl0IHNob3VsZCB0
dXJuIG91dCB0byBiZSB0aGUgb25seSBwcm9ibGVtIEkKPiBjYW4gZml4IGl0IG15c2VsZiBmb3Ig
dGhlIHB1bGwgcmVxdWVzdC4KPiAKPiBPbiAyMS4xMi4yMDIzIDA5OjQ3LCBIdWd1ZXMgRnJ1Y2hl
dCB3cm90ZToKPj4gQWRkIHN1cHBvcnQgZm9yIFNUTTMyTVAyNSBWRU5DIHZpZGVvIGhhcmR3YXJl
IGVuY29kZXIuCj4+IFN1cHBvcnQgb2YgSlBFRyBlbmNvZGluZy4KPj4gVkVOQyBoYXMgaXRzIG93
biByZXNldC9jbG9jay9pcnEuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEh1Z3VlcyBGcnVjaGV0IDxo
dWd1ZXMuZnJ1Y2hldEBmb3NzLnN0LmNvbT4KPj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVz
bmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vTWFrZWZpbGXCoMKgIHzCoMKgIDMgKy0KPj4gLi4uL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuY8KgwqAgfMKgwqAgMSArCj4+IC4u
Li9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaMKgwqDCoCB8wqDCoCAxICsK
Pj4gLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZW5jX2h3LmPCoCB8IDExNSAr
KysrKysrKysrKysrKysrKysKPj4gNCBmaWxlcyBjaGFuZ2VkLCAxMTkgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+PiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmVuY19ody5jCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlIAo+PiBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vTWFrZWZpbGUKPj4gaW5kZXggNTg1NGUwZjBkZDMyLi4z
YmY0M2ZkYmVkYzEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vTWFrZWZpbGUKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9NYWtlZmlsZQo+PiBAQCAtNDEsNCArNDEsNSBAQCBoYW50cm8tdnB1LSQoQ09ORklHX1ZJREVP
X0hBTlRST19TVU5YSSkgKz0gXAo+PiDCoMKgwqDCoMKgwqDCoCBzdW54aV92cHVfaHcubwo+Pgo+
PiBoYW50cm8tdnB1LSQoQ09ORklHX1ZJREVPX0hBTlRST19TVE0zMk1QMjUpICs9IFwKPj4gLcKg
wqDCoMKgwqDCoMKgIHN0bTMybXAyNV92ZGVjX2h3Lm8KPj4gK8KgwqDCoMKgwqDCoMKgIHN0bTMy
bXAyNV92ZGVjX2h3Lm8gXAo+PiArwqDCoMKgwqDCoMKgwqAgc3RtMzJtcDI1X3ZlbmNfaHcubwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZHJ2LmMgCj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2
LmMKPj4gaW5kZXggMmRiMjdjMzMzOTI0Li40ZDk3YThhYzAzZGUgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+IEBAIC03MzYs
NiArNzM2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfaGFudHJvX21h
dGNoW10gCj4+ID0gewo+PiAjZW5kaWYKPj4gI2lmZGVmIENPTkZJR19WSURFT19IQU5UUk9fU1RN
MzJNUDI1Cj4+IMKgwqDCoMKgeyAuY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMjUtdmRlYyIsIC5k
YXRhID0gCj4+ICZzdG0zMm1wMjVfdmRlY192YXJpYW50LCB9LAo+PiArwqDCoMKgIHsgLmNvbXBh
dGlibGUgPSAic3Qsc3RtMzJtcDI1LXZlbmMiLCAuZGF0YSA9IAo+PiAmc3RtMzJtcDI1X3ZlbmNf
dmFyaWFudCwgfSwKPj4gI2VuZGlmCj4+IMKgwqDCoMKgeyAvKiBzZW50aW5lbCAqLyB9Cj4+IH07
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19ody5oIAo+PiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3
LmgKPj4gaW5kZXggYjdlY2NjMWE5NmZjLi43MGM3MmU5ZDExZDUgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmgKPj4gKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaAo+PiBAQCAtNDA3LDYg
KzQwNyw3IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgCj4+IHJrMzU4OF92
cHU5ODFfdmFyaWFudDsKPj4gZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBzYW1h
NWQ0X3ZkZWNfdmFyaWFudDsKPj4gZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBz
dW54aV92cHVfdmFyaWFudDsKPj4gZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBz
dG0zMm1wMjVfdmRlY192YXJpYW50Owo+PiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFy
aWFudCBzdG0zMm1wMjVfdmVuY192YXJpYW50Owo+Pgo+PiBleHRlcm4gY29uc3Qgc3RydWN0IGhh
bnRyb19wb3N0cHJvY19vcHMgaGFudHJvX2cxX3Bvc3Rwcm9jX29wczsKPj4gZXh0ZXJuIGNvbnN0
IHN0cnVjdCBoYW50cm9fcG9zdHByb2Nfb3BzIGhhbnRyb19nMl9wb3N0cHJvY19vcHM7Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92
ZW5jX2h3LmMgCj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9zdG0zMm1w
MjVfdmVuY19ody5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMGZmMGYwNzNiOTIyCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmVuY19ody5jCj4+IEBAIC0wLDAgKzEsMTE1
IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+PiArLyoKPj4gKyAq
IFNUTTMyTVAyNSBWRU5DIHZpZGVvIGVuY29kZXIgZHJpdmVyCj4+ICsgKgo+PiArICogQ29weXJp
Z2h0IChDKSBTVE1pY3JvZWxlY3Ryb25pY3MgU0EgMjAyMgo+PiArICogQXV0aG9yczogSHVndWVz
IEZydWNoZXQgPGh1Z3Vlcy5mcnVjaGV0QGZvc3Muc3QuY29tPgo+PiArICrCoMKgwqDCoMKgwqDC
oMKgwqAgZm9yIFNUTWljcm9lbGVjdHJvbmljcy4KPj4gKyAqCj4+ICsgKi8KPj4gKwo+PiArI2lu
Y2x1ZGUgPGxpbnV4L2Nsay5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4+ICsjaW5j
bHVkZSA8bGludXgvcmVzZXQuaD4KPj4gKwo+PiArI2luY2x1ZGUgImhhbnRyby5oIgo+PiArI2lu
Y2x1ZGUgImhhbnRyb19qcGVnLmgiCj4+ICsjaW5jbHVkZSAiaGFudHJvX2gxX3JlZ3MuaCIKPj4g
Kwo+PiArLyoKPj4gKyAqIFN1cHBvcnRlZCBmb3JtYXRzLgo+PiArICovCj4+ICsKPj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCBzdG0zMm1wMjVfdmVuY19mbXRzW10gPSB7Cj4+ICvC
oMKgwqAgewo+PiArwqDCoMKgwqDCoMKgwqAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9ZVVY0MjBN
LAo+PiArwqDCoMKgwqDCoMKgwqAgLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiAr
wqDCoMKgwqDCoMKgwqAgLmVuY19mbXQgPSBST0NLQ0hJUF9WUFVfRU5DX0ZNVF9ZVVY0MjBQLAo+
PiArwqDCoMKgIH0sCj4+ICvCoMKgwqAgewo+PiArwqDCoMKgwqDCoMKgwqAgLmZvdXJjYyA9IFY0
TDJfUElYX0ZNVF9OVjEyTSwKPj4gK8KgwqDCoMKgwqDCoMKgIC5jb2RlY19tb2RlID0gSEFOVFJP
X01PREVfTk9ORSwKPj4gK8KgwqDCoMKgwqDCoMKgIC5lbmNfZm10ID0gUk9DS0NISVBfVlBVX0VO
Q19GTVRfWVVWNDIwU1AsCj4+ICvCoMKgwqAgfSwKPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1lVWVYsCj4+ICvCoMKgwqDCoMKgwqDCoCAuY29k
ZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4+ICvCoMKgwqDCoMKgwqDCoCAuZW5jX2ZtdCA9
IFJPQ0tDSElQX1ZQVV9FTkNfRk1UX1lVWVY0MjIsCj4+ICvCoMKgwqAgfSwKPj4gK8KgwqDCoCB7
Cj4+ICvCoMKgwqDCoMKgwqDCoCAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1VZVlksCj4+ICvCoMKg
wqDCoMKgwqDCoCAuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4+ICvCoMKgwqDCoMKg
wqDCoCAuZW5jX2ZtdCA9IFJPQ0tDSElQX1ZQVV9FTkNfRk1UX1VZVlk0MjIsCj4+ICvCoMKgwqAg
fSwKPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAuZm91cmNjID0gVjRMMl9QSVhfRk1U
X0pQRUcsCj4+ICvCoMKgwqDCoMKgwqDCoCAuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX0pQRUdf
RU5DLAo+PiArwqDCoMKgwqDCoMKgwqAgLm1heF9kZXB0aCA9IDIsCj4+ICvCoMKgwqDCoMKgwqDC
oCAuaGVhZGVyX3NpemUgPSBKUEVHX0hFQURFUl9TSVpFLAo+PiArwqDCoMKgwqDCoMKgwqAgLmZy
bXNpemUgPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5taW5fd2lkdGggPSA5NiwKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLm1heF93aWR0aCA9IEZNVF80S19XSURUSCwKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLnN0ZXBfd2lkdGggPSBNQl9ESU0sCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC5taW5faGVpZ2h0ID0gOTYsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC5tYXhfaGVpZ2h0ID0gRk1UXzRLX0hFSUdIVCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LnN0ZXBfaGVpZ2h0ID0gTUJfRElNLAo+PiArwqDCoMKgwqDCoMKgwqAgfSwKPj4gK8KgwqDCoCB9
LAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGlycXJldHVybl90IHN0bTMybXAyNV92ZW5jX2lycShp
bnQgaXJxLCB2b2lkICpkZXZfaWQpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGhhbnRyb19kZXYg
KnZwdSA9IGRldl9pZDsKPj4gK8KgwqDCoCBlbnVtIHZiMl9idWZmZXJfc3RhdGUgc3RhdGU7Cj4+
ICvCoMKgwqAgdTMyIHN0YXR1czsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9IHZlcHVfcmVhZCh2
cHUsIEgxX1JFR19JTlRFUlJVUFQpOwo+PiArwqDCoMKgIHN0YXRlID0gKHN0YXR1cyAmIEgxX1JF
R19JTlRFUlJVUFRfRlJBTUVfUkRZKSA/Cj4+ICvCoMKgwqDCoMKgwqDCoCBWQjJfQlVGX1NUQVRF
X0RPTkUgOiBWQjJfQlVGX1NUQVRFX0VSUk9SOwo+PiArCj4+ICvCoMKgwqAgdmVwdV93cml0ZSh2
cHUsIEgxX1JFR19JTlRFUlJVUFRfQklULCBIMV9SRUdfSU5URVJSVVBUKTsKPj4gKwo+PiArwqDC
oMKgIGhhbnRyb19pcnFfZG9uZSh2cHUsIHN0YXRlKTsKPj4gKwo+PiArwqDCoMKgIHJldHVybiBJ
UlFfSEFORExFRDsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgc3RtMzJtcDI1X3ZlbmNfcmVz
ZXQoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPj4gK3sKPj4gK30KPj4gKwo+PiArLyoKPj4gKyAq
IFN1cHBvcnRlZCBjb2RlYyBvcHMuCj4+ICsgKi8KPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVj
dCBoYW50cm9fY29kZWNfb3BzIHN0bTMybXAyNV92ZW5jX2NvZGVjX29wc1tdID0gewo+PiArwqDC
oMKgIFtIQU5UUk9fTU9ERV9KUEVHX0VOQ10gPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAucnVuID0g
aGFudHJvX2gxX2pwZWdfZW5jX3J1biwKPj4gK8KgwqDCoMKgwqDCoMKgIC5yZXNldCA9IHN0bTMy
bXAyNV92ZW5jX3Jlc2V0LAo+PiArwqDCoMKgwqDCoMKgwqAgLmRvbmUgPSBoYW50cm9faDFfanBl
Z19lbmNfZG9uZSwKPj4gK8KgwqDCoCB9LAo+PiArfTsKPj4gKwo+PiArLyoKPj4gKyAqIFZhcmlh
bnRzLgo+PiArICovCj4+ICsKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2lycSBzdG0z
Mm1wMjVfdmVuY19pcnFzW10gPSB7Cj4+ICvCoMKgwqAgeyAidmVuYyIsIHN0bTMybXAyNV92ZW5j
X2lycSB9LAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBzdG0zMm1w
MjVfdmVuY19jbGtfbmFtZXNbXSA9IHsKPj4gK8KgwqDCoCAidmVuYy1jbGsiCj4+ICt9Owo+PiAr
Cj4+ICtjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgc3RtMzJtcDI1X3ZlbmNfdmFyaWFudCA9
IHsKPj4gK8KgwqDCoCAuZW5jX2ZtdHMgPSBzdG0zMm1wMjVfdmVuY19mbXRzLAo+PiArwqDCoMKg
IC5udW1fZW5jX2ZtdHMgPSBBUlJBWV9TSVpFKHN0bTMybXAyNV92ZW5jX2ZtdHMpLAo+PiArwqDC
oMKgIC5jb2RlYyA9IEhBTlRST19KUEVHX0VOQ09ERVIsCj4+ICvCoMKgwqAgLmNvZGVjX29wcyA9
IHN0bTMybXAyNV92ZW5jX2NvZGVjX29wcywKPj4gK8KgwqDCoCAuaXJxcyA9IHN0bTMybXAyNV92
ZW5jX2lycXMsCj4+ICvCoMKgwqAgLm51bV9pcnFzID0gQVJSQVlfU0laRShzdG0zMm1wMjVfdmVu
Y19pcnFzKSwKPj4gK8KgwqDCoCAuY2xrX25hbWVzID0gc3RtMzJtcDI1X3ZlbmNfY2xrX25hbWVz
LAo+PiArwqDCoMKgIC5udW1fY2xvY2tzID0gQVJSQVlfU0laRShzdG0zMm1wMjVfdmVuY19jbGtf
bmFtZXMpCj4+ICt9Owo+PiArCj4gCj4gVGhlcmUgaXMgYW4gc3VwZXJmbHVvdXMgbmV3IGxpbmUg
aGVyZS4KPiAKPiBHcmVldGluZ3MsCj4gU2ViYXN0aWFuCj4gCj4+IC0tIAo+PiAyLjI1LjEKPj4K
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
