Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93BD8C61DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVmcfIQ8z3k1MaOrY/UnPFjFnSPlP0WFjPRsqkctzR4=; b=Rrj9Lk9KsFwUyH
	jQ2Cj0p2wEdLm7nDE1xczRUrWZR0GkNUtjeGael0w6zrngmEpvUet9Kcc9MzXEZXKDgVoP5VNL92V
	BbPYmN6TxUT3/pd9uaCXorpJQ6UPInRZgRD0zqi6QFOTXxg8hhVKBQNtFTk2/zpUno5Lb5mTDHLED
	N2ITIrGXGwzUwR+3wd4T8dGqOuHO++A6ue/poH5iiyBswEkA3pHuG0dfMv90XbgK7llQPpOzSgd6n
	XIuT3DcG6rS1K0gCUVXUODJyKObiNJfQHd06d97TW81U0VV0l/YXAyRFpaZ8Zd7nCia+IOf7c6qWl
	BT4Fra7MAVFzOjg/7XyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZzl-000000042PB-49VX;
	Thu, 27 Aug 2026 13:18:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZzb-000000042Oi-2Q0x;
	Thu, 27 Aug 2026 13:18:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CzaEaww3RehmTxZoTFC0+nmKVn2a5jG0MJBF8jSy9E8=; b=agEWkwM+QabT/9AAY9/u8DTOi/
	Q6bkFcme660Fid9hG/hflDOPqSksKYMgmA+mj9zY7Lzyn2MN7bbsf/QF8gGzNCiovwqtE5C+PT3DP
	liPPghPC8DgNQNpY+JQIMv/IyaQJez2XAVDT2VwPMgpsUibLemZAufRoGZPcZkoNeRMsaqtBPMjzv
	1/nc3uX+lNIriOAWkRM/6cennlMzOUUDvXBob473Fjl2KAKwbK57QcmSJZW316y+AGX+J2a6ECVoq
	hycitnTJFFloj932b4/3a3shegCHcdFaMvNemgfO2WISwXjLjOm6zbPNjDuZG1RGlqoIj1iJsz1Zb
	EFzTtsgg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rudi Heitbaum <rudi@heitbaum.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 rudi@heitbaum.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399pro-vmarc-som: add i2c2 scl timing
Date: Thu, 27 Aug 2026 15:18:01 +0200
Message-ID: <6298523.lOV4Wx5bFT@phil>
In-Reply-To: <aou1Q5-hdF7kRVpe@0d3a7a881997>
References: <aou1Q5-hdF7kRVpe@0d3a7a881997>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_061807_666576_8CF284B4 
X-CRM114-Status: GOOD (  15.54  )
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

SGkgUnVkaSwKCkFtIE1vbnRhZywgMjQuIEF1Z3VzdCAyMDI2LCAwNTowNjo0MyBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJ1ZGkgSGVpdGJhdW06Cj4gVGhlIGh5bTg1NjMg
b24gaTJjMiBkb2VzIG5vdCBhY2s6Cj4gCj4gICBydGMtaHltODU2MyAyLTAwNTE6IGNvdWxkIG5v
dCBpbml0IGRldmljZSwgLTYKPiAKPiBJdCBpcyBhbHNvIHRoZSBleHRfY2xvY2sgZm9yIHNkaW8t
cHdyc2VxLCBzbyB3aWZpIGRvZXMgbm90IGNvbWUgdXAKPiBlaXRoZXIuCj4gCj4gaTJjMiBydW5z
IGF0IDQwMCBrSHogd2l0aCBubyBzY2wgZWRnZSB0aW1lcy4gVGhlIGNvcmUgZGVmYXVsdHMgYm90
aCB0bwo+IDMwMCBucyBhbmQgcmszeC1pMmMgY2FsY3VsYXRlcyBhIDkwMCBucyBoaWdoIHBlcmlv
ZCwgd2hpY2ggaXMgc2hvcnQgZm9yCj4gdGhpcyBidXMgLSBpdCBhY2tzIGF0IDEwMCBrSHouIFNl
dCB0aGUgZWRnZXMgdG8gdGhlIHZhbHVlcyBpMmMzIGFscmVhZHkKPiB1c2VzLCBnaXZpbmcgMTA1
MCBucyBhdCA0MDAga0h6Lgo+IAo+IFRlc3RlZCBvbiBhIFJhZHhhIFJPQ0sgUGkgTjEwOiBydGMw
IHJlZ2lzdGVycyBhbmQga2VlcHMgdGltZSBhY3Jvc3MgYQo+IHJlYm9vdCwgYW5kIHdpZmkgYWN0
aXZhdGVzLgoKWW91IHRlc3RlZCBvbiBhIFJhZHhhIFJvY2sgUEkgTjEwLCBidXQgYXJlIGNoYW5n
aW5nIHRoZSB2bWFyYy1zb20/CkknbSBub3QgcmVhbGx5IHVuZGVyc3RhbmRpbmcgdGhpcy4KCgpI
ZWlrbwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSdWRpIEhlaXRiYXVtIDxydWRpQGhlaXRiYXVtLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMt
c29tLmR0c2kgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMt
c29tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFyYy1z
b20uZHRzaQo+IGluZGV4IDY0ZTZiYTM0NTczOS4uMDc0ZjA5YzZkMTFjIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5cHJvLXZtYXJjLXNvbS5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0
c2kKPiBAQCAtMjk2LDYgKzI5Niw4IEBAICZpMmMxIHsKPiAgCj4gICZpMmMyIHsKPiAgCWNsb2Nr
LWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owo+ICsJaTJjLXNjbC1mYWxsaW5nLXRpbWUtbnMgPSA8MTU+
Owo+ICsJaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDw0NTA+Owo+ICAJc3RhdHVzID0gIm9rYXki
Owo+ICAKPiAgCWh5bTg1NjM6IHJ0Y0A1MSB7Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
