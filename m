Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 141F9C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 19:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic/ohW/LSRI8qHY8R6wrm7IXRebSByvvs38ns9xsyPg=; b=mQd7Mgd0ok0i6G
	sUYrCwr5tmGuenAT4kejJcxZPWAJ0vhaYGM6mDOBnHRkOUf2DsHgrghG9GmTV59WFN9Md7GaXnMtB
	Ir9RJELelj29Uxszp72VGv78ZwmLig4JVz1j3afwUExwhNA89Nh8GOK1rTrTilccsLBha9WYbXsMl
	d1AVHIUDqBkKFmubONHXEIVmWcSr7YCuB5FIrARgXCbeOv+akR46IgQnmnfB5Ku6txYtsMlV8VgNc
	9zrGd1JDMElQ1KugJkn+SSQEJeRMcseXDfntRskFhHpJsAbYi4tZ6wc2fyr7eX1XRr3uCN4jonR8p
	kBnGGm2oW5cejAqePcaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Mtf-00000000HSE-10SS;
	Sun, 20 Sep 2026 19:08:19 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Mtb-00000000HRO-2U5l
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 19:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789931292;
	bh=gsOsSA4UI4GOcU56iaOUOuu09hKPfwyNrwyn83XFEtk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CSDHHrFMzwQEU4W0p1FcuCw3H5S2PhLEJadJ0qNmMi3xyQLqyoPkAMTtI41T35PkP
	 isFraDLisPMi1gwUIGIefx+deUKNcHrsYAfrDhZWeaP+2TyOD0uAQ/yE4zNVOJhucn
	 NepoFmm+MeV59UV5XtTwdMUr8qhdOUXnuBhW3Fg85cut71Nq3EFQkF83bIA0WoJUPX
	 bDHMYBG+i5wTbaL0QyvihEP2OxJT0G/A4SvI3FSlIaZ/6lAZpCFbrDpLUn6MA2LCjE
	 2H0t3mY8ZHqsgoNb0m1W32N5+h0EHAIVqwRzFJ9NFTvBFpWRD/OXQlNQyAA9Rj/3gM
	 UfPRUH2Jes6nQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E08B417E03B6;
	Sun, 20 Sep 2026 21:08:11 +0200 (CEST)
Message-ID: <cd511a10-eac1-4531-a0f8-8fc495a63ddf@collabora.com>
Date: Sun, 20 Sep 2026 22:08:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 00/74] Add HDMI 2.0 support to DW HDMI QP TX
To: =?UTF-8?Q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
 <4d885f9e201df6f48a06f4ab3b27a7f1@gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <4d885f9e201df6f48a06f4ab3b27a7f1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_120816_287716_9B7CD2A1 
X-CRM114-Status: GOOD (  22.40  )
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

SGkgUm9iaW4sCgpPbiA5LzEwLzI2IDM6MDggUE0sIFJvYmluIFI/P2JlciB3cm90ZToKPiBIaSBD
cmlzdGlhbiwKPiAKPiBJIHRlc3RlZCB0aGlzIHNlcmllcyBvbiBhIFh1bmxvbmcgT3JhbmdlIFBp
IDUgKFJLMzU4OFMpIGRyaXZpbmcgYW4KPiBBT0MgUTMyRzFXRzQgbW9uaXRvciAoMjU2MHgxNDQw
QDE0NCwgVE1EUyBjaGFyIHJhdGUgNTkyIE1IeikgYW5kIGNhbgo+IHJlcG9ydCB0aGF0IHNjcmFt
Ymxpbmcgd29ya3MsIHdpdGggb25lIGludGVyb3AgaXNzdWUgZGVzY3JpYmVkIGJlbG93Lgo+IAo+
IEEgbm90ZSBvbiB0aGUgdGVzdCBiYXNlOiBkcm0tbWlzYy1uZXh0IGF0IHRoZSBzZXJpZXMnIGJh
c2UgY29tbWl0IGRvZXMKPiBub3QgYm9vdCBvbiB0aGlzIGJvYXJkIGZvciByZWFzb25zIHVucmVs
YXRlZCB0byB0aGUgc2VyaWVzICh0aGUKPiB1bnBhdGNoZWQgYmFzZSBjb21taXQgaGFuZ3MgZWFy
bHkgYXMgd2VsbDsgSSBjYW4gZGlnIGludG8gdGhhdAo+IHNlcGFyYXRlbHkpLiBJIHRoZXJlZm9y
ZSBiYWNrcG9ydGVkIHRoZSBzZXJpZXMgb250byB2Ny4yLjMsIGRyb3BwaW5nCj4gdGhlIHZjNC9z
dW40aS90ZXN0cyBwYXRjaGVzIGFuZCBhZGp1c3RpbmcgZm9yIG1pbm9yIGNvbnRleHQgZHJpZnQg
aW4KPiBkcm1fY29ubmVjdG9yLmMgYW5kIHRoZSBzY2RjL2hkbWkgaGVscGVycy4gVGhlIGR3LWhk
bWktcXAsIHJvY2tjaGlwLAo+IGJyaWRnZV9jb25uZWN0b3IgYW5kIGhlbHBlciBwYXRjaGVzIGFw
cGxpZWQgd2l0aG91dCBmdW5jdGlvbmFsCj4gY2hhbmdlcy4KPiAKPiBXaXRoIHRoZSBiYWNrcG9y
dCBhcHBsaWVkLCBhbGwgZm91ciAyNTYweDE0NDAgbW9kZXMgKDYwLzEwMC8xMjAvMTQ0KQo+IGFy
ZSBleHBvc2VkIGFuZCAxNDQgSHogd29ya3MsIGJ1dCBzY3JhbWJsaW5nIGluaXRpYWxseSBmYWls
ZWQ6Cj4gCj4gICByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIFNpbmsgZG9l
c24ndCBzdXBwb3J0IHNjcmFtYmxpbmcuCj4gICBkd2hkbWlxcC1yb2NrY2hpcCBmZGU4MDAwMC5o
ZG1pOiBGYWlsZWQgdG8gZW5hYmxlIHNjcmFtYmxpbmc6IC0yMgo+IAo+IFRoZSBjYXVzZSBpcyB0
aGUgbW9uaXRvcidzIEVESUQ6IGl0cyBIRi1WU0RCIGRlY2xhcmVzIGEgTWF4aW11bSBUTURTCj4g
Q2hhcmFjdGVyIFJhdGUgb2YgNjAwIE1IeiBidXQgbGVhdmVzIHRoZSBTQ0RDIFByZXNlbnQgZmxh
ZyB1bnNldCwgc28KPiBkcm1fc2NkY19zaW5rX3N1cHBvcnRzX3NjcmFtYmxpbmcoKSByZWplY3Rz
IGl0LiBUaGUgU0NEQyBpbnRlcmZhY2Ugb2YKPiB0aGlzIGRpc3BsYXkgaXMgbmV2ZXJ0aGVsZXNz
IGZ1bGx5IGZ1bmN0aW9uYWw6IHJlYWRpbmcgU0NEQyB2aWEgRERDCj4gcmV0dXJucyBzaW5rIHZl
cnNpb24gMSwgd3JpdGVzIGFyZSBhY2NlcHRlZCwgYW5kIGFmdGVyIHRoZSBjaGFuZ2UKPiBiZWxv
dyBUTURTX0NPTkZJRyByZWFkcyBiYWNrIDB4MDMgKHNjcmFtYmxpbmcgKyA0MC1iaXQgY2xvY2sg
cmF0aW8pCj4gd2l0aCBhIHN0YWJsZSBwaWN0dXJlIGF0IDU5MiBNSHouCj4gCj4gU2luY2UgSERN
SSAyLjAgbWFuZGF0ZXMgU0NEQyBzdXBwb3J0IGZvciBjaGFyYWN0ZXIgcmF0ZXMgYWJvdmUKPiAz
NDAgTUh6LCBJIHdvcmtlZCBhcm91bmQgaXQgYnkgdHJ1c3RpbmcgdGhlIGRlY2xhcmVkIHJhdGU6
Cj4gCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2hkbWlfaGVscGVyLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1faGRtaV9oZWxwZXIuYwo+IEBAIHN0YXRp
YyBib29sIGRybV9zY2RjX3Npbmtfc3VwcG9ydHNfc2NyYW1ibGluZyhzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQo+ICB7Cj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAq
aW5mbyA9ICZjb25uZWN0b3ItPmRpc3BsYXlfaW5mbzsKPiAgCj4gLQlyZXR1cm4gaW5mby0+aXNf
aGRtaSAmJgo+IC0JICAgICAgIGluZm8tPmhkbWkuc2NkYy5zdXBwb3J0ZWQgJiYKPiAtCSAgICAg
ICBpbmZvLT5oZG1pLnNjZGMuc2NyYW1ibGluZy5zdXBwb3J0ZWQ7Cj4gKwlpZiAoIWluZm8tPmlz
X2hkbWkpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiArCS8qCj4gKwkgKiBTb21lIGRpc3BsYXlz
IChlLmcuIEFPQyBRMzJHMVdHNCkgZGVjbGFyZSBhIE1heCBUTURTIENoYXJhY3Rlcgo+ICsJICog
UmF0ZSBhYm92ZSAzNDAgTUh6IGluIHRoZWlyIEhGLVZTREIgYnV0IGxlYXZlIHRoZSBTQ0RDIFBy
ZXNlbnQKPiArCSAqIGZsYWcgdW5zZXQsIGV2ZW4gdGhvdWdoIFNDREMgaXMgZnVuY3Rpb25hbC4g
VGhlIHNwZWMgbWFuZGF0ZXMKPiArCSAqIFNDREMgc3VwcG9ydCBmb3IgcmF0ZXMgYWJvdmUgMzQw
IE1Ieiwgc28gdHJ1c3QgdGhlIGRlY2xhcmVkIHJhdGUuCj4gKwkgKi8KPiArCWlmIChpbmZvLT5t
YXhfdG1kc19jbG9jayA+IDM0MDAwMCkKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlyZXR1cm4g
aW5mby0+aGRtaS5zY2RjLnN1cHBvcnRlZCAmJgo+ICsJICAgICAgIGluZm8tPmhkbWkuc2NkYy5z
Y3JhbWJsaW5nLnN1cHBvcnRlZDsKPiAgfQo+IAo+IEknbSBoYXBweSB0byB0ZXN0IGZ1cnRoZXIg
cmV2aXNpb25zIG9uIHRoaXMgaGFyZHdhcmUsIGFuZCB0byBzdWJtaXQKPiB0aGUgYWJvdmUgYXMg
YSBwcm9wZXIgcGF0Y2ggaWYgeW91IHRoaW5rIHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIHRvCj4g
aGFuZGxlIHN1Y2ggbm9uLWNvbmZvcm1hbnQgRURJRHMuCgpJIG1lcmdlZCB0aGUgaW5mcmFzdHJ1
Y3R1cmUgcGF0Y2hlcyBlYXJsaWVyIHRvZGF5IHRvIHByZXZlbnQgZnVydGhlciBkZWxheXMsIHNv
CnllcywgSSB0aGluayB0aGUgYmVzdCB3YXkgZm9yd2FyZCB3b3VsZCBiZSBmb3IgeW91IHRvIHN1
Ym1pdCB0aGlzIGFzIGEgc2VwYXJhdGUKcGF0Y2ggb24gdG9wIG9mIHRoZSBsYXRlc3QgZHJtLW1p
c2MtbmV4dCwgYW5kIHNlZSB3aGF0IHRoZSBtYWludGFpbmVycyBoYXZlIHRvCnNheS4KCj4gRm9y
IHRoZSBkdy1oZG1pLXFwL3JvY2tjaGlwL2hlbHBlciBwYXJ0cywgb24gdGhlIGJhY2twb3J0IGRl
c2NyaWJlZAo+IGFib3ZlOgo+IAo+IFRlc3RlZC1ieTogUm9iaW4gUsOkYmVyIDxyb2Jpbi5yYWVi
aUBnbWFpbC5jb20+CgpUaGFua3MgZm9yIGNoZWNraW5nIHRoaXMgb3V0IQoKUmVnYXJkcywKQ3Jp
c3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
