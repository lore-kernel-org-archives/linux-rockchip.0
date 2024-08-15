Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F0CC52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EB4xxwiv7LSvVvq4VENS1MAXSO8riAw1xtcP+tjhVLM=; b=YOCSkYKQRxXNGX
	gif9nnODpq+U5h5Otw8qdaef8plResARo9R/jqqPasX3bwHm60GpK+Khq2+gNzr55X3TVzXwnfb1L
	MfW5TiAxfp8kB+kYqaxfDY7yVQKUgjynaEHgetqjkpB1zfcMpVJEYAFtJd3zu1vkFBpx0y68jriXj
	LZke64snjnzwBpnGKycINIPGCG0y6u1bUyav6Q81ZtilDjPgYbeJGbGGV27NM8mweKtJiOrGV/XE2
	urSX9akeVexCVHcKhEH/FTCmCMzqSULi41H8dNEE8/vSRPsYYMAL/JoB7geyCO4nihjKy3BGwmUml
	JNet0otvcWKdHxlU/Yrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedJx-0000000AVmE-1CY3;
	Thu, 15 Aug 2024 16:27:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedJF-0000000AVdc-0Dbj;
	Thu, 15 Aug 2024 16:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UCm31tTxU+jGw6jFfVSUx/29jMoVpph6qM7iV+DkIU0=; b=CelTMwnSz8i//OS31LMsADnPBp
	EmtDaANKkHlkzO1+W2uHpBcCE34SLLgsGJ29fRYGJVdVJCFEBGtf4ctCxbCC2ihHKJJrYt+GUEM8K
	dFIOS/3bv/kGuz0l6827BuNfqY2oRgBmUdDfbP+PU4JoNyBSeyokUHFiEsKDrBRblSJ8k9xgLfaoP
	/0cznBwYqh+4MGvRcRhhR8TSIdJ86M0ios7QZsoYBi/fsIwbzEzDLkNafO99FIG8yZA1KEsq5xzcs
	vUnsdDutQMVzyHGFo351QjfrMY9CJ65qyQoE6QLFpHRjWOFX0dC80p6t5mrVgW1ogprFO602Yv0wC
	fkKgSZEg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sedIk-0005Ic-4x; Thu, 15 Aug 2024 18:26:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Golle <daniel@makrotopia.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
Date: Thu, 15 Aug 2024 18:26:12 +0200
Message-ID: <861871884.pAmPZ1aGmH@diego>
In-Reply-To: <CAL_JsqKG+dMJjPXrWiQ8qZ7yfpdX3R22ntKRBawYZWTaW_9GWA@mail.gmail.com>
References: <cover.1722355365.git.daniel@makrotopia.org>
 <d2beb15377dc8b580ca5557b1a4a6f50b74055aa.1722355365.git.daniel@makrotopia.org>
 <CAL_JsqKG+dMJjPXrWiQ8qZ7yfpdX3R22ntKRBawYZWTaW_9GWA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_092645_113895_D261EA0B 
X-CRM114-Status: GOOD (  20.62  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDEzLiBBdWd1c3QgMjAyNCwgMTY6MTc6MDUgQ0VTVCBzY2hyaWViIFJvYiBI
ZXJyaW5nOgo+IE9uIFR1ZSwgSnVsIDMwLCAyMDI0IGF0IDEwOjEx4oCvQU0gRGFuaWVsIEdvbGxl
IDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyb3RlOgo+ID4KPiA+IEZyb206IEF1cmVsaWVuIEph
cm5vIDxhdXJlbGllbkBhdXJlbDMyLm5ldD4KPiA+Cj4gPiBJbmNsdWRlIHRoZSBqdXN0IGFkZGVk
IFJvY2tjaGlwIFJORyBkcml2ZXIgZm9yIFJLMzU2eCBTb0NzIGFuZAo+ID4gZW5hYmxlIGl0IG9u
IFJLMzU2OC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBdXJlbGllbiBKYXJubyA8YXVyZWxpZW5A
YXVyZWwzMi5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWty
b3RvcGlhLm9yZz4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LmR0c2kgfCAgNCArKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NnguZHRzaSB8IDEwICsrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+
IGluZGV4IGYxYmU3NmE1NGNlYjAuLjJhNmNhMjBlNjA3ZmQgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiBAQCAtMjU3LDYgKzI1NywxMCBAQCBw
b3dlci1kb21haW5AUkszNTY4X1BEX1BJUEUgewo+ID4gICAgICAgICB9Owo+ID4gIH07Cj4gPgo+
ID4gKyZybmcgewo+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+
ICAmdXNiX2hvc3QwX3hoY2kgewo+ID4gICAgICAgICBwaHlzID0gPCZ1c2IycGh5MF9vdGc+LCA8
JmNvbWJwaHkwIFBIWV9UWVBFX1VTQjM+Owo+ID4gICAgICAgICBwaHktbmFtZXMgPSAidXNiMi1w
aHkiLCAidXNiMy1waHkiOwo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTZ4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5k
dHNpCj4gPiBpbmRleCA0NjkwYmU4NDFhMWNkLi5kMTYwYTIzZmQ0OTU5IDEwMDY0NAo+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ID4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ID4gQEAgLTExMTMsNiArMTEx
MywxNiBAQCBzZGhjaTogbW1jQGZlMzEwMDAwIHsKPiA+ICAgICAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4gICAgICAgICB9Owo+ID4KPiA+ICsgICAgICAgcm5nOiBybmdAZmUz
ODgwMDAgewo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4
LXJuZyI7Cj4gPiArICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZlMzg4MDAwIDB4MCAweDQw
MDA+Owo+ID4gKyAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IENMS19UUk5HX05TPiwgPCZj
cnUgSENMS19UUk5HX05TPjsKPiA+ICsgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3Jl
IiwgImFoYiI7Cj4gPiArICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9UUk5HX05T
PjsKPiA+ICsgICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJyZXNldCI7Cj4gCj4gVGhpcyBh
ZGRzIGEgbmV3IHdhcm5pbmc6Cj4gCj4gcm5nQGZlMzg4MDAwOiAncmVzZXQtbmFtZXMnIGRvZXMg
bm90IG1hdGNoIGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwoKSSd2ZSBjcmVh
dGVkIGFuZCBzZW50IGEgcGF0Y2ggdG8gcmVtb3ZlIHRoZSByZXNldC1uYW1lcyBub3cuCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
