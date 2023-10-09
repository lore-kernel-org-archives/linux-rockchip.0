Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F436E95A8E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 13:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jQ7zvXhwSweoeeNuWtu1zXTOpVTv4FQjdEJwuYtbpI=; b=sCZRBRmboqVUP1
	pPQTfVxMOXx0hQPZoN1sfyqMWqX21nqte50QVqQp0wCdZqNlpfnCt2c5TwSf0aI+zajaoywuHu9pM
	88xCClZdgRbWi1kL/4FP+EyoZEAEBEtggSaIr5v880hizMKDNbZJ3Hj4DqqqjZ2+IizbyasDF3Mok
	JfKA6+dbn8PEjlFOjfjTQgwZQ8Ud2+uSxiUGchpUoOIrza9WOuunIDpAQadq0u+1LavXmDjCDZN9A
	OM/q0BISVfyBodQMvgb0UO+RCW223apHcsdRkqtEtChK7ovq2trw7UONfWFeiqqB0galmb0875yGO
	w/0Vsbhq4TDalEVs1oTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qppyH-00Al7G-36;
	Mon, 09 Oct 2023 13:06:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qppyE-00Al5n-2U;
	Mon, 09 Oct 2023 13:06:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39988KWV002751;
	Mon, 9 Oct 2023 15:06:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=3PQ+2v2hmYuHs5jDOC8Az7oTSOTXepldPGCW+7kNOTA=; b=qj
	KXN6ucPltGfUQkCxs5eJy7A75jo7dich1n9YVbSe4Eii8m5W4Nbhpj+Fn/qDpai5
	Dbo9az6CTZcEyjF5vlr3tce4X4YgmKmg0OPJ9hnWqu9Z2OlOtebz6gtyJb2Z/J6t
	xc9ps9L7MmTXwV+T0t0XHRjixFUwKPPfuOqxzONPy2uecd6OVygRbjgmxK3toVK+
	nvZKlPFnhc10HgFuCJnCOVdHMdZCyGsQnj++QSIPoZ4XvfN80uhgRa/i7Ut6/+g+
	mtnknabD4AxY0yNQeLZBNya+nocaQ9n4k+zR2xJwwxvDkZzK/04tESU95bPjf5a4
	OiQr0lskndAPscCSkm3g==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tkhfdw9uw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 15:06:32 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5FA51100063;
	Mon,  9 Oct 2023 15:06:30 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 52ABC23D411;
	Mon,  9 Oct 2023 15:06:30 +0200 (CEST)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 9 Oct
 2023 15:06:29 +0200
Message-ID: <fb77b886-b557-b2af-a2f5-c0057a95b589@foss.st.com>
Date: Mon, 9 Oct 2023 15:06:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/7] dt-bindings: media: Document STM32MP25 VENC video
 encoder
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Adam Ford <aford173@gmail.com>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans
 Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        Andrzej
 Pietrasiewicz <andrzej.p@collabora.com>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
 <20231004091552.3531659-4-hugues.fruchet@foss.st.com>
 <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>
 <20231006162703.GA4030032-robh@kernel.org>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <20231006162703.GA4030032-robh@kernel.org>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_11,2023-10-09_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_060651_118729_2693EC7F 
X-CRM114-Status: GOOD (  14.61  )
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

SGkgUm9iLAoKT24gMTAvNi8yMyAxODoyNywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBP
Y3QgMDQsIDIwMjMgYXQgMDY6NDE6MDlQTSAtMDUwMCwgQWRhbSBGb3JkIHdyb3RlOgo+PiBPbiBX
ZWQsIE9jdCA0LCAyMDIzIGF0IDQ6MTbigK9BTSBIdWd1ZXMgRnJ1Y2hldAo+PiA8aHVndWVzLmZy
dWNoZXRAZm9zcy5zdC5jb20+IHdyb3RlOgo+Pj4KPj4+IEFkZCBTVE0zMk1QMjUgVkVOQyB2aWRl
byBlbmNvZGVyIGJpbmRpbmdzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEh1Z3VlcyBGcnVjaGV0
IDxodWd1ZXMuZnJ1Y2hldEBmb3NzLnN0LmNvbT4KPj4+IC0tLQo+Pj4gICAuLi4vYmluZGluZ3Mv
bWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbCAgICAgfCA1NiArKysrKysrKysrKysrKysrKysr
Cj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspCj4+PiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJt
cDI1LXZlbmMueWFtbAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMm1wMjUtdmVuYy55YW1sCj4+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jNjllMGEzNGY2NzUKPj4+
IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9zdCxzdG0zMm1wMjUtdmVuYy55YW1sCj4+PiBAQCAtMCwwICsxLDU2IEBACj4+PiAr
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+Pj4g
Kwo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3Jn
L3NjaGVtYXMvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbCMKPj4KPj4gQ2FuIHRoaXMgZHQt
YmluZGluZyBiZSBtYWRlIG1vcmUgZ2VuZXJpYywgbGlrZSBzb21ldGhpbmcgbGlrZQo+PiBoYW50
cm8taDEgb3IgVkM4MDAwTmFub0U/Cj4+Cj4+IEkgdGhpbmsgdGhlcmUgd2lsbCBiZSBtb3JlIGJv
YXJkcyB0aGF0IG1heSBpbmNvcnBvcmF0ZSB0aGUgSGFudHJvLUgxCj4+IG9yIGEgVkM4MDAwIGlu
IHRoZSBmdXR1cmUsIGJlY2F1c2UgSSBkb24ndCB0aGluayB0aGlzIElQIGlzIHVuaXF1ZSB0bwo+
PiB0aGUgU1RNMzJNUDI1Lgo+IAo+IFVubGVzcyB0aGUgdW5kZXJseWluZyBJUCBpcyB3ZWxsIGRv
Y3VtZW50ZWQgKGkuZS4gcHVibGljKSwgdGhlbiBpdCdzCj4ga2luZCBvZiBwb2ludGxlc3MuIEV2
ZXJ5b25lIHdpbGwganVzdCBpbnZlbnQgdGhlaXIgb3duIG51bWJlcnMgYW5kIG5hbWVzCj4gb2Yg
Y2xvY2tzLCByZXNldHMsIGV0Yy4gdW5sZXNzIHNvbWVvbmUgY2FuIGVuZm9yY2Ugbm90IGRvaW5n
IHRoYXQuCgpVbmZvcnR1bmF0ZWx5IHRoZSBJUCBkb2N1bWVudGF0aW9uIGlzIG5vdCBwdWJsaWMs
IHRoZXJlIGFyZSBubyBkb2N1bWVudHMgCnByb3ZpZGVkIHB1YmxpY2x5IGJ5IFZlcmlzaWxpY29u
IGZvciB0aGUgdGltZSBiZWluZy4KCj4gCj4gUm9iCgpCUiwKSHVndWVzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
