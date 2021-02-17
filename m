Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BE8C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:11:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFF7B64E63
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:11:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFF7B64E63
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Po1/njOeqQkcFVbYe7D5/bRzDj584JXrF27zlB6mONw=; b=h2/1XYCKdUnm0T2z8SWzHiKvK
	1m1ZAsP3WrZigwXK9rhWHR03D00ng56hPSion1JNEKmkjrtxQWUS7gnPrKjyel7bHo4EJ95Q0Qb/r
	KBeQN5FfJdHqDviDnUcqD0xLMjq6AJtA04w3XYDnhIisgEDLqRLIRkhB6rXUFgOu5pLEMrIvUh9Pi
	fvR5Ftmd4llPHG5d36FL+6ng0jM6QdJSj2TisENG3S2poNs/JiL0iyOplPg5ywPskdbSicsXVq/io
	DwBdY8ZEaLv9VlW//GjRKEv+DrTl3g46x+a1J53PKOYhO2ILNybtd50SYBOZvzzcMZ1y4cprP05lT
	TevSmJ/gg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTAn-0007aK-NW; Wed, 17 Feb 2021 20:11:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTAk-0007ZS-MT; Wed, 17 Feb 2021 20:11:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D312B1F45878
Message-ID: <361ec02b1af1093684dfd33806025f3d044fc6e2.camel@collabora.com>
Subject: Re: [PATCH v1 06/18] media: hantro: Make sure that ctx->codex_ops
 is set
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:11:28 -0300
In-Reply-To: <20210217080306.157876-7-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-7-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_151142_844657_57D0F98B 
X-CRM114-Status: GOOD (  15.67  )
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBEbyBub3QgdHJ5IHRvIGNhbGwgY3R4LT5jb2RlY19vcHMtPmRvbmUgaWYgY3R4LT5jb2Rl
Y19vcHMgaXMgbm90IHNldC4KPiAKCklmIGNvZGVjX29wcyBpcyBub3Qgc2V0IGZvciBhIGNvZGVj
IHZhcmlhbnQsCnRoaW5ncyB3aWxsIGdvIHNvdXRoIHJlYWxseSBmYXN0LiBTZWUgaGFudHJvX3N0
YXJ0X3N0cmVhbWluZwpmb3IgaW5zdGFuY2UuCgpJIHRoaW5rIHlvdSBjYW4ganVzdCBkcm9wIHRo
aXMgcGF0Y2guCgpUaGFua3MsCkV6ZXF1aWVsCgo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IMKgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgfCAzICsrLQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gaW5kZXggMGQ1ODIwOWZjNTVjLi4wNTcw
MDQ3YzdmYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
Ywo+IEBAIC05Myw3ICs5Myw4IEBAIHZvaWQgaGFudHJvX2lycV9kb25lKHN0cnVjdCBoYW50cm9f
ZGV2ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGFuZCB3aWxsIHRha2UgY2FyZSBvZiBmaW5p
c2hpbmcgdGhlIGpvYi4KPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoGlm
IChjYW5jZWxfZGVsYXllZF93b3JrKCZ2cHUtPndhdGNoZG9nX3dvcmspKSB7Cj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChyZXN1bHQgPT0gVkIyX0JVRl9TVEFURV9ET05FICYm
IGN0eC0+Y29kZWNfb3BzLT5kb25lKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAocmVzdWx0ID09IFZCMl9CVUZfU1RBVEVfRE9ORSAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY3R4LT5jb2RlY19vcHMgJiYgY3R4LT5jb2RlY19vcHMtPmRvbmUp
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3R4LT5j
b2RlY19vcHMtPmRvbmUoY3R4KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhh
bnRyb19qb2JfZmluaXNoKHZwdSwgY3R4LCByZXN1bHQpOwo+IMKgwqDCoMKgwqDCoMKgwqB9CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
