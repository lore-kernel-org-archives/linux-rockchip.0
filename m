Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E34C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:42:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5895A6146D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:42:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5895A6146D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0zMSLfVIY9xp0HrlZ40grCH5T8S94jkT3y0MiIY8eig=; b=aMGhxpQnlwlSwHDqvhFCEBUM3
	Grh+9eUyhUcsLebhhqrmJNSiOOQZeajshOUmruDvOF6L3o0FMpMshsRGIzIjKQeaoNDPEVEGPa6yk
	UknWo7EJXtmTWNxBxx3dHTM6EvE+1Ay/vVfb+7quOlEdv6RoF4tz25IUdD2Zgfg2oXvV9jY8BIq0N
	gRuS4juOq+5CDtfm+NCjh3bj+JK4Pu5KhoCjDRobVQxx3+pqRQ/FdXs+UcEXVBbbfg8ONIsPnGFLG
	iKU2XuFmBdlxR9FWWh9UUygfJB7PHTiBFluvTstZrEfUuS5HtGMxDA9svjcCMkMSMg+sOP1tr+Ih0
	6ypmMTpYw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTei-0002hn-Ju; Wed, 17 Feb 2021 20:42:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTee-0002gg-EK; Wed, 17 Feb 2021 20:42:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id EC2C61F450C4
Message-ID: <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
Subject: Re: [PATCH v1 11/18] media: hantro: Add helper function for
 auxiliary buffers allocation
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:42:21 -0300
In-Reply-To: <20210217080306.157876-12-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-12-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_154236_636625_6823F237 
X-CRM114-Status: GOOD (  16.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQmVuamFtaW4sCgpPbiBXZWQsIDIwMjEtMDItMTcgYXQgMDk6MDIgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IEFkZCBoZWxwZXIgZnVuY3Rpb25zIHRvIGFsbG9jYXRlIGFuZCBm
cmVlIGF1eGlsaWFyeSBidWZmZXJzLgo+IFRoZXNlIGJ1ZmZlcnMgYXJlbid0IGZvciBmcmFtZXMg
YnV0IGFyZSBuZWVkZWQgYnkgdGhlIGhhcmR3YXJlCj4gdG8gc3RvcmUgc2NhbGluZyBtYXRyaXgs
IHRpbGVzIHNpemUsIGJvcmRlciBmaWx0ZXJzIGV0Yy4uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0t
LQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCB8IDI0ICsrKysrKysr
KysrKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBpbmRleCBhOWI4MGIyYzkxMjQu
LjdmODQyZWRiYzM0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyby5oCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaAo+
IEBAIC00NDYsNiArNDQ2LDMwIEBAIGhhbnRyb19nZXRfZGVjX2J1ZihzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB2
YjJfcGxhbmVfdmFkZHIodmIsIDApOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBpbmxpbmUgaW50Cj4g
K2hhbnRyb19hdXhfYnVmX2FsbG9jKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBoYW50cm9fYXV4X2J1ZiAqYnVm
LCBzaXplX3Qgc2l6ZSkKPiArewoKQ2FuIHlvdSBhZGQgY29udmVydCB0aGUgZG1hX2FsbG9jXyBj
YWxscyBpbiB0aGUgZHJpdmVyLAphbmQgc3F1YXNoIGl0IGluIHRoaXMgcGF0Y2g/CgpJLmUuIGhh
bnRyb19oMjY0X2RlY19pbml0LCBoYW50cm9fdnA4X2RlY19pbml0LCBldGMuCgpUaGFua3MhCkV6
ZXF1aWVsCgo+ICvCoMKgwqDCoMKgwqDCoGJ1Zi0+Y3B1ID0gZG1hX2FsbG9jX2NvaGVyZW50KHZw
dS0+ZGV2LCBzaXplLCAmYnVmLT5kbWEsIEdGUF9LRVJORUwpOwo+ICvCoMKgwqDCoMKgwqDCoGlm
ICghYnVmLT5jcHUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5P
TUVNOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBidWYtPnNpemUgPSBzaXplOwo+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHZvaWQKPiAraGFudHJvX2F1
eF9idWZfZnJlZShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGhhbnRyb19hdXhfYnVmICpidWYpCj4gK3sKPiArwqDC
oMKgwqDCoMKgwqBpZiAoYnVmLT5jcHUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYV9mcmVlX2NvaGVyZW50KHZwdS0+ZGV2LCBidWYtPnNpemUsIGJ1Zi0+Y3B1LCBidWYtPmRt
YSk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGJ1Zi0+Y3B1ID0gTlVMTDsKPiArwqDCoMKgwqDCoMKg
wqBidWYtPmRtYSA9IDA7Cj4gK8KgwqDCoMKgwqDCoMKgYnVmLT5zaXplID0gMDsKPiArfQo+ICsK
PiDCoHZvaWQgaGFudHJvX3Bvc3Rwcm9jX2Rpc2FibGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCk7
Cj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19lbmFibGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCk7
Cj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19mcmVlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
