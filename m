Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF78C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 14:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mer3hXJcvIzoQBEAVgvmMK8nfMOcMEAc1WCYZCGc3bU=; b=jl7h+9p3GrS8Kj
	ozWHqs+ru60wFAbHtvMdnUzBlRJj63UyGdADGfEr/iYLa47qplpNaF46TQov7yaHw2jSlCrNlSA+C
	k0hW4eosGDef85DDJMlUI9SiAGLxnA3U8MtDv3x1MjV44LPxnnfshbedlXbbXW1WZA5XmzuzkKUgq
	uYHe8ms7EosWJAfN/FJAGqAy+sgjSwbB8JYJrCHVGXNIBy5BrWSb067IfliKM4wtWPBbtgN/fZQok
	vUiHhGXgbZern/iN0QeRigaQnEIuXVsGxEhqm8JZLHau0pzDVhfIRPd5gWSvvPoHufAxeSu5kq9fC
	yFh3qHW2EEhkB+gtefKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sebBR-0000000A9yj-18qU;
	Thu, 15 Aug 2024 14:10:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sebAk-0000000A9re-08S1;
	Thu, 15 Aug 2024 14:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3GJHxN14hImGkfcEquuGy6L5t/9fvO8apZfgPwP8Qzs=; b=npOOkDXNtrDTvyhXZ1PxQqxQpf
	J9s2SuKRp5nAkOf8YpkJHhwTM0lNog+gTwjUMgzJjR1OrpQzAIhXEOTWuirCxYffGP3xbGGAQk5yn
	r23Fib9CrOZCCxIlkn6edxJB+/p8ZNx3ZZY+MTO/CjMCUqoLeNmIeGwv2sXNXepIj+/duZsqeijQW
	QbbiLQ1qvWgGsYC+xYLR/nx9wtHKC7eKcP2Gbgyi9wfZHCglovXxcMWfsJVk2wKpla258zPvSumsn
	0/fEZgJcNU/3eAiGdJvMhQ+hk5JJBCEcJ/hbS75Rfz4U/55zap7UX07abYl+4C4xBCgZQ3uH7CbtG
	cnVe1EFw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sebAb-0003Vr-44; Thu, 15 Aug 2024 16:09:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v3 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
Date: Thu, 15 Aug 2024 16:09:39 +0200
Message-ID: <3273134.DVCPrJfaZc@diego>
In-Reply-To: <2742918.mvXUDI8C0e@trenzalore>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
 <2742918.mvXUDI8C0e@trenzalore>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_070950_093948_3C16EE30 
X-CRM114-Status: GOOD (  23.87  )
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

QW0gRG9ubmVyc3RhZywgMTUuIEF1Z3VzdCAyMDI0LCAxNToyMzo0MCBDRVNUIHNjaHJpZWIgRGV0
bGV2IENhc2Fub3ZhOgo+IE9uIFdlZG5lc2RheSwgMTQgQXVndXN0IDIwMjQgMjA6NTU6MzcgRURU
IFNoYXduIExpbiB3cm90ZToKPiA+IEhpIERldGxldgo+ID4gCj4gPiDlnKggMjAyNC84LzE1IDY6
MzQsIERldGxldiBDYXNhbm92YSDlhpnpgZM6Cj4gPiA+IEZyb206IFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiAKPiA+ID4gdjIgdHVuaW5nIHdpbGwgaW5oZXJpdCBw
cmUtc3RhZ2UgbG9hZGVyJ3MgcGhhc2Ugc2V0dGluZ3MgZm9yIHRoZSBmaXJzdAo+ID4gPiB0aW1l
LCBhbmQgZG8gcmUtdHVuZSBpZiBuZWNlc3NhcnkuCj4gPiA+IFJlLXR1bmUgd2lsbCBzdGlsbCB0
cnkgdGhlIHJvdWdoIGRlZ3JlZXMsIGZvciBpbnN0YW5jZSwgOTAsIDE4MCwgMjcwLAo+ID4gPiAz
NjAgYnV0IGNvbnRpbnVlIHRvIGRvIHRoZSBmaW5lIHR1bmluZyBpZiBzYW1wbGUgd2luZG93IGlz
bid0IGdvb2QKPiA+ID4gZW5vdWdoLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IERldGxl
diBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+Cj4gPiA+IC0tLQo+ID4g
PiAKPiA+ID4gICBkcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jIHwgNDkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2Vy
dGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2R3X21t
Yy1yb2NrY2hpcC5jCj4gPiA+IGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyBp
bmRleCBiMDcxOTBiYTRiN2FjLi4zNjc2MzNmNGU4ODkyCj4gPiA+IDEwMDY0NAo+ID4gPiAtLS0g
YS9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMv
bW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiAKPiBbLi4uXQo+IAo+ID4gPiAgIAkJCj4gPiA+
ICAgCQlwcml2LT5kZWZhdWx0X3NhbXBsZV9waGFzZSA9IDA7Cj4gPiA+IAo+ID4gPiArCXByaXYt
PnVzZV92Ml90dW5pbmcgPQo+ID4gPiArCQlvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShob3N0LT5k
ZXYtPm9mX25vZGUsCj4gPiA+ICsJCQkJCSJyb2NrY2hpcCxyazM1NzYtZHctCj4gbXNoYyIpOwo+
ID4gPiArCj4gPiAKPiA+IHYyIGlzIGEga2luZCBvZiBzb2Z0d2FyZSBkZWNpc2lvbiBpbnN0ZWFk
IG9mIGhhcmR3YXJlIGRlcGVuZGVuY3kuCj4gPiBTbyBpbiB0aGVvcnksIGFueSBTb0MgY2FuIGNs
YWltIHRvIHVzZSBpdCB2aWEgRFQuCj4gCj4gWWVzIGJ1dCBmcm9tIG15IHRlc3RzLCBvbmx5IHJr
MzU3NiB3b24ndCB3b3JrIHdpdGhvdXQgaXQuIFNvIGl0IG1ha2VzIHNlbnNlIHRvIAo+IG9ubHkg
dXNlIHYyIGZvciB0aGlzIFNvQyAoYW5kIG90aGVyIGZ1dHVyZSBvbmVzIG5vdCBzdXBwb3J0ZWQg
eWV0KQoKR29vZCBrbm93IGFuZCB0aGFua3MgZm9yIHRlc3RpbmcgdGhhdCBzY2VuYXJpby4KCklm
IHlvdSBnbyB3aXRoIG15IHN1Z2dlc3Rpb24gZnJvbSBwYXRjaDMgYW5kIHNlcGFyYXRlIHRoZSBy
azM1NzYKZnJvbSB0aGUgb3JpZ2luYWwgcmszMjg4IHR5cGUsIHlvdSBjYW4gZXZlbiBqdXN0IGFz
c3VtZSB0aGlzIHYyLXR1bmluZwpmb3IgYWxsIHRob3NlIHR5cGVzIChyazM1NzYgb25seSBzbyBm
YXIpCgoKPiA+ID4gICAJcHJpdi0+ZHJ2X2NsayA9IGRldm1fY2xrX2dldChob3N0LT5kZXYsICJj
aXUtZHJpdmUiKTsKPiA+ID4gICAJaWYgKElTX0VSUihwcml2LT5kcnZfY2xrKSkKPiA+ID4gICAJ
Cj4gPiA+ICAgCQlkZXZfZGJnKGhvc3QtPmRldiwgImNpdS1kcml2ZSBub3QgYXZhaWxhYmxlXG4i
KTsKPiAKPiAKPiBEZXRsZXYuCj4gCj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
