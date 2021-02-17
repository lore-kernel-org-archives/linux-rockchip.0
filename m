Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4752C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:31:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52FEC64DEC
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:31:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 52FEC64DEC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HK2ll4ndAHs8pVASUnQ4ndbB2px+NunHr9oYN58Qsfw=; b=QZqBo3Xu+b+nCYx0NZfiP5DDx
	syIb25hkuGqHcu6SaQJj1lCMyaMp+woRwwIvocidhi97Re/4JLNbZAb99Jg46cvcvmhMgiDfxjWTp
	heUS+qpsBKtFGLJcMH93ZNShHYFEDVGLVtzMKpioMC/J4SZwni138THR0r08oRiiVDvpTECWh72t6
	8qbV013Mcgy6y9wQkvCJcKijRTT3478SfACnP2YaUngQ07b0an7E1oGJLgpTDB30Uxe/UaU3ycI5d
	DjAwBOSGU2uIcS6OjhK7izvkRQvReNpAYXiGuaeJMoANHqgR/4jaDSNaFpBKetLc2uaXKDCb+pe+K
	i2z+Ee39A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTUB-00020S-4m; Wed, 17 Feb 2021 20:31:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTU7-0001zH-Ac; Wed, 17 Feb 2021 20:31:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2B31F1F449DA
Message-ID: <339018869585eb2eb92cf16b765724a047eaef53.camel@collabora.com>
Subject: Re: [PATCH v1 10/18] media: hantro: Add helper functions for buffer
 information
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:31:30 -0300
In-Reply-To: <20210217080306.157876-11-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-11-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_153143_481067_8F529DE7 
X-CRM114-Status: GOOD (  15.11  )
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
IEdhaWduYXJkIHdyb3RlOgo+IEFkZCBoZWxwIGZ1bmN0aW9ucyB0byByZXRyaWV2ZSBidWZmZXIg
YWRkcmVzcyBhbmQgc2l6ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWll
bCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWRyaWFu
IFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggfCAxNiArKysrKysrKysrKysrKysrCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm8uaAo+IGluZGV4IDI1MjNjMGQwMTBkZi4uYTliODBiMmM5MTI0IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gQEAgLTQzMCw2ICs0MzAsMjIgQEAgaGFu
dHJvX2dldF9kZWNfYnVmX2FkZHIoc3RydWN0IGhhbnRyb19jdHggKmN0eCwgc3RydWN0IHZiMl9i
dWZmZXIgKnZiKQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdmIyX2RtYV9jb250aWdfcGxhbmVf
ZG1hX2FkZHIodmIsIDApOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBpbmxpbmUgc2l6ZV90Cj4gK2hh
bnRyb19nZXRfZGVjX2J1Zl9zaXplKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIHN0cnVjdCB2YjJf
YnVmZmVyICp2YikKPiArewo+ICvCoMKgwqDCoMKgwqDCoGlmIChoYW50cm9fbmVlZHNfcG9zdHBy
b2MoY3R4LCBjdHgtPnZwdV9kc3RfZm10KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGN0eC0+cG9zdHByb2MuZGVjX3FbdmItPmluZGV4XS5zaXplOwo+ICvCoMKgwqDC
oMKgwqDCoHJldHVybiB2YjJfcGxhbmVfc2l6ZSh2YiwgMCk7Cj4gK30KPiArCj4gK3N0YXRpYyBp
bmxpbmUgdm9pZCAqCj4gK2hhbnRyb19nZXRfZGVjX2J1ZihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4
LCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBpZiAoaGFudHJv
X25lZWRzX3Bvc3Rwcm9jKGN0eCwgY3R4LT52cHVfZHN0X2ZtdCkpCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBjdHgtPnBvc3Rwcm9jLmRlY19xW3ZiLT5pbmRleF0uY3B1
Owo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB2YjJfcGxhbmVfdmFkZHIodmIsIDApOwo+ICt9Cj4g
KwoKSXQgbWF5IHNvdW5kIGxpa2UgYSBuaXRwaWNrIGJ1dCBJIHRoaW5rIHlvdSBjb3VsZCBqdXN0
IHNxdWFzaCB0aGlzCmNoYW5nZSB3aGVyZSBpdCdzIG5lZWRlZC4gVGhhdCB3YXkgaXQncyBlYXNp
ZXIgdG8gcmV2aWV3IGFuZApzZWUgd2h5IHRoaXMgd2FzIGFkZGVkLgoKVGhhbmtzLApFemVxdWll
bAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
