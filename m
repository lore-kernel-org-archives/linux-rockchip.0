Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6AFCDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NQXa1hmX+J9pTrglLyN8RnEqb98H1GRHqmF6OBCGKU=; b=DhSAcinpFoxUbQ
	exn8hAHTl0WJKh7eduDvo1Y+htl0zpezd5RxdUjEvIleL0DXG1stnhCEWpIfx7YSI/EpuvvZzqmGy
	wunvEKOBmw4Mb1YvKqm0BvYq279EUb81C3hXlcK7espvb2uBip/+EI3NOeCM6r8ScqpIO7v4iCQC8
	puAAncr5OD9+LcSgUl82dynukBedozCY8rRZkRC/4qwR0q2J1bSlW9pvb+mXEhpC+/1VBD4ypmw5O
	GLCxkmvCNll0qOUQ+KlWhsqPyaee6NeYzfV8uVxIlAIwqMizaw2WXlaJFngoTO4vWGnMuO8HrOOFq
	yLCaRI0dvfqPNhII3jNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJQB-00000007Rne-2TZy;
	Wed, 24 Jun 2026 08:57:23 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJQ8-00000007Rmo-0F9v;
	Wed, 24 Jun 2026 08:57:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1782291430; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DpFn91+bjtZWhARFvMO9f4K+LOcTIP2YjffTyQTCGVBAV+cmPymOyQx4vDfMzJ5bayy0oaEa46Mo/gwBfeKEN8XNKX6BpTglrAOPQbxWww1Kzpp42IOPxkL47rzSFlhSABDbZ0MqtSvd0ovVZjdbh1XA6h0jNVn8Wq46CPNPXEU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1782291430; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7Z2dXNv3rLrXY82Odx71lPH+DoZfD3dtEOh0UsRZ4zM=; 
	b=AubUZqFX1geExzk9Xi7xJ2unHheQPgR1qlRKVgML+hnfSdW9Av29jeJZ3I7ekswTg3RdouenHUyqcpsBQro369H5+X36QS4OY719RPP8FM5sU8r5fxCX0wl/pebzKfr4AClthv7WGM4azR/KYzWK93likM/dmWhL8UkSEj/PB8E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782291430;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=7Z2dXNv3rLrXY82Odx71lPH+DoZfD3dtEOh0UsRZ4zM=;
	b=evKOpiaTtlp9o4Y34yZPFp7VUp4y9ORV2307SCujKdZHOCrKClNcHC43f+1tbZgu
	qd+jDg/7/aPEnOlJugGbTv7K9ikkexBTf8Vu/XQ8LUTr0y9jr+fcBrxHyV0mnbFJdZI
	xTgK1IEuPYIzQQDJAFdnkRj/ST1N9gVdB8yFIT14=
Received: by mx.zohomail.com with SMTPS id 1782291428934490.12484575176916;
	Wed, 24 Jun 2026 01:57:08 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHViKQ==?=
 <u.kleine-koenig@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ASoC: rockchip: rockchip_sai: #include
 <linux/platform_device.h> explicitly
Date: Wed, 24 Jun 2026 10:57:03 +0200
Message-ID: <rKfcwvouTiqAemuVUZWRbg@collabora.com>
In-Reply-To: <20260624083708.254517-2-u.kleine-koenig@baylibre.com>
References: <20260624083708.254517-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_015720_150841_9ED412E0 
X-CRM114-Status: GOOD (  12.29  )
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

T24gV2VkbmVzZGF5LCAyNCBKdW5lIDIwMjYgMTA6Mzc6MDcgQ2VudHJhbCBFdXJvcGVhbiBTdW1t
ZXIgVGltZSBVd2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHViKSB3cm90ZToKPiBDdXJy
ZW50bHkgdGhhdCBoZWFkZXIgaXMgb25seSBpbmNsdWRlZCB2aWE6Cj4gCj4gCTxzb3VuZC9kbWFl
bmdpbmVfcGNtLmg+IC0+Cj4gCTxzb3VuZC9zb2MuaD4gLT4KPiAJPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+IAo+IHdoaWNoIGRvZXNuJ3QgbG9vayByZWxpYWJsZSwgc3RpbGwgbW9yZSBpbiB0
aGUgcHJlc2VuY2Ugb2YgdGhlIGNvbW1lbnQ6Cj4gCj4gCS8qIEZvciB0aGUgY3VycmVudCB1c2Vy
cyBvZiBzb3VuZC9zb2MuaCB0byBhdm9pZCBidWlsZCBpc3N1ZXMgKi8KPiAKPiBpbiA8c291bmQv
c29jLmg+Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIChUaGUgQ2FwYWJs
ZSBIdWIpIDx1LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPgo+IC0tLQo+ICBzb3VuZC9zb2Mv
cm9ja2NoaXAvcm9ja2NoaXBfc2FpLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWku
YyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYwo+IGluZGV4IGExOTVlOTZmZWQw
YS4uMzdlODFkNTZiYzE2IDEwMDY0NAo+IC0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hp
cF9zYWkuYwo+ICsrKyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYwo+IEBAIC0x
MSw2ICsxMSw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvb2ZfZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+
ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+
IAo+IGJhc2UtY29tbWl0OiBlZjBjOWY3NWExOTUzMmQ3Njc1Mzg0NzA4ZmM4NjIxZTEwODUwMTA0
Cj4gCgpNYWtlcyBzZW5zZS4KClJldmlld2VkLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29s
YXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
