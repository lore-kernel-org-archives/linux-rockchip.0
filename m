Return-Path: <SRS0=3xED=I4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC541C433C1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Mar 2021 00:33:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A96F60C3D
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Mar 2021 00:33:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A96F60C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pms/bNv3TQl02ZPge5Q1nfXzfaIzsdaMRDbypWIelKY=; b=T2Zfi3VpqnCZSDlrNMzTaaGyw
	UO/nhfPc/7hFMxGvW4xvMNpVPHP8WuP9euyo0gVD2OBJMfG+HQFev499QkzhhVJftp1p13uV6Qn+I
	OYUotAHbQ065Q8tfec2XUgF39KLqVr/8R9gsUoFjX8nEpIvYmpAwAiAs3R4ZHlBPOvsaZcfBljfNN
	503uVtmjGRYGlm2W16uJ7PITPfi1GY6XBXi0H/dld8zNgzyckTg0u2+GLiASh9+XbZmUAKgGcsWER
	YkKiEAgq0Mx/vuwJh15TbiXuwvErSxHKki7EFJcRwPMNnfF/NdpR3v1taxEsguYBrZGchMpfws9+h
	1/L1WrTDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR2I8-002Auj-BN; Tue, 30 Mar 2021 00:31:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQxZ9-001FV2-1Y; Mon, 29 Mar 2021 19:28:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 09D661F454DE
Message-ID: <aa7fad73a4f06d94273a1e26d36a96f51c477929.camel@collabora.com>
Subject: Re: [PATCH v7 08/13] media: hantro: Only use postproc when post
 processed formats are defined
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Mon, 29 Mar 2021 16:28:35 -0300
In-Reply-To: <20210329065743.11961-9-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-9-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_202852_519038_102D06A1 
X-CRM114-Status: GOOD (  17.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTAzLTI5IGF0IDA4OjU3ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBJZiB0aGUgdmFyaWFudCBkb2Vzbid0IG9mZmVydCBwb3N0cHJvY2Vzc2VkIGZvcm1hdHMg
bWFrZSBzdXJlIGl0IHdpbGwKPiBiZSBvay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBF
emVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOCAr
Ky0tLS0tLQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fcG9zdHByb2Mu
YyB8IDE0ICsrKysrKysrKysrKysrCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb192NGwyLmPCoMKgwqDCoCB8wqAgNCArKystCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyby5oCj4gaW5kZXggZWRiNDU2MWE2ODg3Li43YTVhZDkzNDY2YzggMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaAo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBAQCAtNDE0LDEyICs0MTQsOCBAQCBoYW50
cm9fZ2V0X2RzdF9idWYoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIHY0bDJfbTJtX25leHRfZHN0X2J1ZihjdHgtPmZoLm0ybV9jdHgpOwo+IMKgfQo+IMKg
Cj4gLXN0YXRpYyBpbmxpbmUgYm9vbAo+IC1oYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3Ry
dWN0IGhhbnRyb19jdHggKmN0eCwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10KQo+IC17Cj4gLcKgwqDCoMKgwqDC
oMKgcmV0dXJuICFjdHgtPmlzX2VuY29kZXIgJiYgZm10LT5mb3VyY2MgIT0gVjRMMl9QSVhfRk1U
X05WMTI7Cj4gLX0KPiArYm9vbCBoYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3RydWN0IGhh
bnRyb19jdHggKmN0eCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdCk7Cj4gwqAKPiDCoHN0YXRp
YyBpbmxpbmUgZG1hX2FkZHJfdAo+IMKgaGFudHJvX2dldF9kZWNfYnVmX2FkZHIoc3RydWN0IGhh
bnRyb19jdHggKmN0eCwgc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fcG9zdHByb2MuYwo+IGluZGV4IDZkMmE4ZjJhOGYwYi4u
ZWQ4OTE2Yzk1MGE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX3Bvc3Rwcm9jLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19wb3N0cHJvYy5jCj4gQEAgLTUwLDYgKzUwLDIwIEBAIGNvbnN0IHN0cnVjdCBoYW50cm9f
cG9zdHByb2NfcmVncyBoYW50cm9fZzFfcG9zdHByb2NfcmVncyA9IHsKPiDCoMKgwqDCoMKgwqDC
oMKgLmRpc3BsYXlfd2lkdGggPSB7RzFfUkVHX1BQX0RJU1BMQVlfV0lEVEgsIDAsIDB4ZmZmfSwK
PiDCoH07Cj4gwqAKPiArYm9vbCBoYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3RydWN0IGhh
bnRyb19jdHggKmN0eCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdCkKPiArewo+ICvCoMKgwqDC
oMKgwqDCoHN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPiArCj4gK8KgwqDCoMKg
wqDCoMKgaWYgKGN0eC0+aXNfZW5jb2RlcikKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoIXZwdS0+dmFyaWFudC0+
cG9zdHByb2NfZm10cykKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZh
bHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gZm10LT5mb3VyY2MgIT0gVjRMMl9QSVhf
Rk1UX05WMTI7Cj4gK30KPiArCj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19lbmFibGUoc3RydWN0
IGhhbnRyb19jdHggKmN0eCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGhhbnRyb19k
ZXYgKnZwdSA9IGN0eC0+ZGV2Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b192NGwyLmMKPiBpbmRleCAxYmMxMThlMzc1YTEuLjc3ZDdmZTYyY2U4MSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtNTUsNyArNTUsOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKgo+IMKgaGFudHJvX2dldF9wb3N0cHJv
Y19mb3JtYXRzKGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCAqbnVt
X2ZtdHMpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+ICvC
oMKgwqDCoMKgwqDCoHN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKGN0eC0+aXNfZW5jb2RlciB8fCAhdnB1LT52YXJpYW50LT5wb3N0cHJv
Y19mbXRzKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAqbnVtX2ZtdHMgPSAw
Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIE5VTEw7Cj4gwqDCoMKg
wqDCoMKgwqDCoH0KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
