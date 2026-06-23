Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 378C0CDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 12:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQ+tK/BEYANHdoEI2hAALCIIEifGAzJYIbJSo+9QK/Y=; b=bm8bqJkJaXdJEV
	0rw+PDZI8KZKyyIGberHCRy8i61mRS644vvoRZPRo6ZkYJw1V+laOB/E35QrDp5+XdZ7E31clVkly
	Jyle8yh5Nq16PFFCRMq/zQnuwtWmRptxDWA7tvCrnvjX/AVFeM+L5r4Hf1in3vfuUn/cRBCbJ5R51
	6uv/BKg+CT1cDYLSRdQIk2CP+g7QjJMh1KL+BsNrPAwRvS3vdjhms6F47sM1KpmYd6vp4NAUcy8dc
	wuNtvb4y4OZ7ND5/Wld4O/+9NpNWZqXm1thNIw+yU8HB7rVRB+31hga5ZtDr2qjPgtKfLMCOwv3ox
	S6L0xx4gD3Po/+kzIlUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzsp-00000006EWo-1cPV;
	Tue, 23 Jun 2026 12:05:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbzsm-00000006EWH-188x;
	Tue, 23 Jun 2026 12:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=o4EIKtwqCpFYeGsPVo3VJsOw6XGIUVKYtVjsD1vfNPQ=; b=Z0YHtJuX+qACxhtxk/vftzSUaj
	UM8/L5b4xqfa+3aSxlqpgzQR+QksSUSpU7fUaq6S5lZ792SCoCSrR7qzTzXvkN5Mk5ztsrIs/49Px
	Juse7vo4GKfIVzsnuZM0bw9MWr81n9/g8snHTryED/kL8S3YxgywuZnhGzzV59kjUPRcSdCzRl/Zz
	srQznHQSyF4zFReqMKdMG/lMYgaMVCZW/O7wDj0Kb5MX3SMGeZa2n3/L9gpCQJiJ4OGAP41jC4OL0
	DYlxg6sHZUwjzr0Ptr8PbEwr3EqSEa/iohWG57J73D1ByMb1xNUjibdGfSrbLC+NdTfmG4Fz4kz/3
	QMML1KOQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Daniele Briguglio <hello@superkali.me>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK
 output to IO
Date: Tue, 23 Jun 2026 14:05:15 +0200
Message-ID: <2100447.PIDvDuAF1L@diego>
In-Reply-To: <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_050536_370896_630AAEA6 
X-CRM114-Status: GOOD (  20.46  )
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

SGkgRGllZGVyaWNrLAoKQW0gRGllbnN0YWcsIDIzLiBKdW5pIDIwMjYsIDEzOjEwOjQ5IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiBbUmVz
ZW5kaW5nIGl0IGFnYWluc3QgdjQgd2hpY2ggd2Fzbid0IHByZXNlbnQgaW4gbXkgSU5CT1gsIGJ1
dCB3YXMgdGhlCj4gdmVyc2lvbiBhY2NlcHRlZCBhbmQgdXNlZCBpbiBteSBrZXJuZWxdCj4gCj4g
T24gVHVlIEp1biAyMywgMjAyNiBhdCAxOjA4IFBNIENFU1QsIERhbmllbGUgQnJpZ3VnbGlvIHdy
b3RlOgo+ID4gVGhlIEkyUyBNQ0xLIG91dHB1dHMgb24gUkszNTg4IGFyZSBnYXRlZCBieSBiaXRz
IGluIHRoZSBTWVNfR1JGCj4gPiByZWdpc3RlciBTT0NfQ09ONiAob2Zmc2V0IDB4MzE4KS4gVGhl
c2UgZ2F0ZXMgY29udHJvbCB3aGV0aGVyIHRoZQo+ID4gaW50ZXJuYWwgQ1JVIE1DTEsgc2lnbmFs
cyByZWFjaCB0aGUgZXh0ZXJuYWwgSU8gcGlucyBjb25uZWN0ZWQgdG8KPiA+IGF1ZGlvIGNvZGVj
cy4KPiA+Cj4gPiBUaGUga2VybmVsIHNob3VsZCBleHBsaWNpdGx5IG1hbmFnZSB0aGVzZSBnYXRl
cyBzbyB0aGF0IGF1ZGlvCj4gPiBmdW5jdGlvbmFsaXR5IGRvZXMgbm90IGRlcGVuZCBvbiBib290
bG9hZGVyIHJlZ2lzdGVyIHN0YXRlLiBUaGlzIGlzCj4gPiBhbmFsb2dvdXMgdG8gd2hhdCB3YXMg
ZG9uZSBmb3IgUkszNTc2IFNBSSBNQ0xLIG91dHB1dHMgWzFdLgo+ID4KPiA+IFJlZ2lzdGVyIHRo
ZSBTWVNfR1JGIGFzIGFuIGF1eGlsaWFyeSBHUkYgd2l0aCBncmZfdHlwZV9zeXMgdXNpbmcKPiA+
IHJvY2tjaGlwX2Nsa19hZGRfZ3JmKCksIGFuZCBhZGQgR0FURV9HUkYgZW50cmllcyBmb3IgYWxs
IGZvdXIgSTJTCj4gPiBNQ0xLIG91dHB1dCBnYXRlczoKPiA+Cj4gPiAgIC0gSTJTMF84Q0hfTUNM
S09VVF9UT19JTyAoYml0IDApCj4gPiAgIC0gSTJTMV84Q0hfTUNMS09VVF9UT19JTyAoYml0IDEp
Cj4gPiAgIC0gSTJTMl8yQ0hfTUNMS09VVF9UT19JTyAoYml0IDIpCj4gPiAgIC0gSTJTM18yQ0hf
TUNMS09VVF9UT19JTyAoYml0IDcpCj4gPgo+ID4gQm9hcmQgRFRTIGZpbGVzIHRoYXQgbmVlZCBN
Q0xLIG9uIGFuIElPIHBpbiBjYW4gcmVmZXJlbmNlIHRoZXNlCj4gPiBjbG9ja3MsIGUuZy46Cj4g
Pgo+ID4gICAgIGNsb2NrcyA9IDwmY3J1IEkyUzBfOENIX01DTEtPVVRfVE9fSU8+Owo+ID4KPiA+
IFRlc3RlZCBvbiB0aGUgWW91eWVldG9vIFlZMzU4OCAoUkszNTg4KSB3aXRoIGFuIEVTODM4OCBj
b2RlYyBvbiBJMlMwLgo+IAo+IERvZXNuJ3QgdGhpcyBicmVhayBhdWRpbyBvbiBhIGxvdCBvZiBS
SzM1ODggYmFzZWQgYm9hcmRzPwo+IEkgaGF2ZSBhIGtlcm5lbCB3aXRoIHRoaXMgcGF0Y2ggc2V0
IGFuZCBzaW5jZSB0aGVuIGFuYWxvZyBhdWRpbyBvbiBteSBOYW5vUEMtVDYKPiBMVFMgYW5kIG15
IFdJUCBOYW5vUEMtVDYgUGx1cyBzdG9wcGVkIHdvcmtpbmcuCj4gVW50aWwgSSBkaWQgcy9JMlMw
XzhDSF9NQ0xLT1VUL0kyUzBfOENIX01DTEtPVVRfVE9fSU8vIGluIG15IGR0c1tpXSBmaWxlcy4K
PiAKPiBBbmQgSSB3b3VsZG4ndCBiZSBzdXJwcmlzZWQgaWYgdGhlIHNhbWUgdGhpbmcgYXBwbGll
cyB0byBvdGhlciBSSzM1ODggYmFzZWQKPiBib2FyZHM/IFRoZSBzYW1lIGR0YiBmaWxlIHdpdGgg
YSA3LjEga2VybmVsLCB3aXRob3V0IHRoaXMgcGF0Y2ggc2V0LCB3b3Jrcy4KCmNhbiB5b3UgY2hl
Y2sgaWYgYWRkaW5nIENMS19JR05PUkVfVU5VU0VEIFswXSBjaGFuZ2VzIHRoZSBzaXR1YXRpb24g
Zm9yIHlvdT8KCldoYXQgSSBhc3N1bWUgaXMgaGFwcGVuaW5nIGlzIHRoYXQgd2hlbiB0aGUgY2xv
Y2tzIHdlcmUgbm90IGRlY2xhcmVkIHRoZXkgd2VyZQpqdXN0IGxlZnQgcnVubmluZywgd2hpbGUg
bm93IHRoZSBrZXJuZWwgdHVybnMgb2YgdW51c2VkIChidXQgZGVmaW5lZCkgY2xvY2tzLgoKClsw
XSBleGFtcGxlIGluCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjEuMS9zb3Vy
Y2UvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4OC5jI0w4NjUKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
