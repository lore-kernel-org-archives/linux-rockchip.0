Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF96C7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3ACGGvUiaCpnJ2VDRJ4GlTnO++7D6+Wkm8PGYC30LA=; b=ugaBdReZxZXDTw
	TXweCFaw3sMk3joNohFwcwXaM4c/MVcIwBYlNchVCj6x8m3eOab2FQuB1A3uGjLoLwgl8Rb+CjyjA
	6vxg0O36LK8MGi/kKy8NYJSjgTrzymivoUMNKE0KcXAqvda0njoahz02hrlQOvpOTIXo2rrnehjgR
	jto133SVGOaHip5j6ntnrCC1aDF1ZPmcEyd+OaFO82THBdI9hQGYEypH7f97mziHX7EN/GVB8A9tW
	54uvCL71gwi7h1UGDQUgcSmAWHByfx/Ino5rvAXa49BLvcoAvsw6xLBLY4UODwWjJ0Qw2QdLw25mI
	nj7yQa0AEUEYN8y7ichA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTeJv-00000002Kki-1bCS;
	Mon, 23 Jun 2025 10:22:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdo6-00000002F1E-0gXf;
	Mon, 23 Jun 2025 09:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+5Oe+/qsP9gfaCq5yCuWO510xxb4CYOCrtgkQfYUfqw=; b=C3rNVk6/YTgOx18uOwfA/6Kv0u
	aT5jAbMK8fISo1i2ZDI8wtkeuEumGISm2CSaGra/PnZe+QXa8tPOOmCr81d+flSTSM8HI0iz636eM
	Ia1ifm8MCjueTiSq+qkMMy0+C0LY67xLbyYiZgl+XPJ9De4eGjmY48XhvYohx2Fu3l4vKOynwXK5p
	AX+TzQnynxRdFmt6x2zxwaUu3eqxgCtcnYtOwWeZ07IjCnnv4Le+91SiKqzzIJTmv9lmq6cM2zsLG
	y6cAEr5zvlXqp1BUhOuWBM5CmDhd7Vftxr98Q3KoSLCOF+tAtDcNqPF7bPjKKyQupixBLU+lnyzYY
	tHgPAjvw==;
Received: from [185.15.108.45] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uTdnr-0007yN-8k; Mon, 23 Jun 2025 11:49:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
 Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>,
 Farouk Bouabid <farouk.bouabid@cherry.de>, Johan Jonker <jbx6244@gmail.com>,
 Jakob Unterwurzacher <jakobunt@gmail.com>
Cc: stable@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: use cs-gpios for spi1 on ringneck
Date: Mon, 23 Jun 2025 11:49:26 +0200
Message-ID: <1925003.tdWV9SEqCh@phil>
In-Reply-To: <20250620113549.2900285-1-jakob.unterwurzacher@cherry.de>
References: <20250620113549.2900285-1-jakob.unterwurzacher@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_024942_220553_528761B9 
X-CRM114-Status: GOOD (  25.58  )
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

SGkgSmFrb2IsCgpBbSBGcmVpdGFnLCAyMC4gSnVuaSAyMDI1LCAxMzozNTo0NiBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpha29iIFVudGVyd3VyemFjaGVyOgo+IEZyb206
IEpha29iIFVudGVyd3VyemFjaGVyIDxqYWtvYi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU+Cj4g
Cj4gSGFyZHdhcmUgQ1MgaGFzIGEgdmVyeSBzbG93IHJpc2UgdGltZSBvZiBhYm91dCA2dXMsCj4g
Y2F1c2luZyB0cmFuc21pc3Npb24gZXJyb3JzIHdoZW4gQ1MgZG9lcyBub3QgcmVhY2gKPiBoaWdo
IGJldHdlZW4gdHJhbnNhY3Rpb24uCj4gCj4gSXQgbG9va3MgbGlrZSBpdCdzIG5vdCBkcml2ZW4g
YWN0aXZlbHkgd2hlbiB0cmFuc2l0aW9uaW5nCj4gZnJvbSBsb3cgdG8gaGlnaCBidXQgc3dpdGNo
ZWQgdG8gaW5wdXQsIHNvIG9ubHkgdGhlIENQVQo+IHB1bGwtdXAgcHVsbHMgaXQgaGlnaCwgc2xv
d2x5LiBUcmFuc2l0aW9ucyBmcm9tIGhpZ2ggdG8gbG93Cj4gYXJlIGZhc3QuIE9uIHRoZSBvc2Np
bGxvc2NvcGUsIENTIGxvb2tzIGxpa2UgYW4gaXJyZWd1bGFyIHNhd3Rvb3RoCj4gcGF0dGVybiBs
aWtlIHRoaXM6Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIF9fX19fCj4gICAgICAgICAgICAg
ICBeICAgICAgICAgLyAgICAgfAo+ICAgICAgIF4gICAgICAvfCAgICAgICAgLyAgICAgIHwKPiAg
ICAgIC98ICAgICAvIHwgICAgICAgLyAgICAgICB8Cj4gICAgIC8gfCAgICAvICB8ICAgICAgLyAg
ICAgICAgfAo+IF9fXy8gIHxfX18vICAgfF9fX19fLyAgICAgICAgIHxfX18KPiAKPiBXaXRoIGNz
LWdwaW9zIHdlIGhhdmUgYSBDUyByaXNlIHRpbWUgb2YgYWJvdXQgMjBucywgYXMgaXQgc2hvdWxk
IGJlLAo+IGFuZCBDUyBsb29rcyByZWN0YW5ndWxhci4KPiAKPiBUaGlzIGZpeGVzIHRoZSBkYXRh
IGVycm9ycyB3aGVuIHJ1bm5pbmcgYSBmbGFzaGNwIGxvb3AgYWdhaW5zdCBhCj4gbTI1cDQwIHNw
aSBmbGFzaC4KPiAKPiBXaXRoIHRoZSBSb2NrY2hpcCA2LjEga2VybmVsIHdlIHNlZSB0aGUgc2Ft
ZSBzbG93IHJpc2UgdGltZSwgYnV0Cj4gZm9yIHNvbWUgcmVhc29uIENTIGlzIGFsd2F5cyBoaWdo
IGZvciBsb25nIGVub3VnaCB0byByZWFjaCBhIHNvbGlkCj4gaGlnaC4KPiAKPiBUaGUgUkszMzk5
IGFuZCBSSzM1ODggU29DcyB1c2UgdGhlIHNhbWUgU1BJIGRyaXZlciwgc28gd2UgYWxzbwo+IGNo
ZWNrZWQgb3VyICJQdW1hIiAoUkszMzk5KSBhbmQgIlRpZ2VyIiAoUkszNTg4KSBib2FyZHMuCj4g
VGhleSBkbyBub3QgaGF2ZSB0aGlzIHByb2JsZW0uIEhhcmR3YXJlIENTIHJpc2UgdGltZSBpcyBn
b29kLgo+IAo+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IFBYMzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBiYXNlYm9hcmQiKQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4gUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVu
dGluLnNjaHVsekBjaGVycnkuZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFrb2IgVW50ZXJ3dXJ6YWNo
ZXIgPGpha29iLnVudGVyd3VyemFjaGVyQGNoZXJyeS5kZT4KPiAtLS0KPiAgLi4uL2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCj4gaW5kZXggYWIyMzJlNWM3
YWQ2Li5kY2M2MmRkOWI4OTQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9weDMwLXJpbmduZWNrLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3B4MzAtcmluZ25lY2suZHRzaQo+IEBAIC0zNzksNiArMzc5LDE4IEBAIHBtaWNfaW50OiBw
bWljLWludCB7Cj4gIAkJCQk8MCBSS19QQTcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+
ICAJCX07Cj4gIAl9Owo+ICsKPiArCXNwaTEgewo+ICsJCXNwaTFfY3NuMF9ncGlvOiBzcGkxLWNz
bjAtZ3BpbyB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPQo+ICsJCQkJPDMgUktfUEIxIFJLX0ZVTkNf
R1BJTyAmcGNmZ19wdWxsX3VwXzRtYT47Cj4gKwkJfTsKPiArCj4gKwkJc3BpMV9jc24xX2dwaW86
IHNwaTEtY3NuMS1ncGlvIHsKCm5hbWluZyB0aGUgbm9kZSAtZ3BpbyB0cmlnZ2VyIHRoZSBib3Qs
IEkgZ3Vlc3MgYSBiZXR0ZXIgbmFtZSB3b3VsZApiZSBzb21ldGhpbmcgd2l0aCAtcGluIGF0IHRo
ZSBlbmQgaW5zdGVhZC4KCj4gKyZzcGkxIHsKPiArCS8qCj4gKwkgKiBIYXJkd2FyZSBDUyBoYXMg
YSB2ZXJ5IHNsb3cgcmlzZSB0aW1lIG9mIGFib3V0IDZ1cywKPiArCSAqIGNhdXNpbmcgdHJhbnNt
aXNzaW9uIGVycm9ycy4KPiArCSAqIFdpdGggY3MtZ3Bpb3Mgd2UgaGF2ZSBhIHJpc2UgdGltZSBv
ZiBhYm91dCAyMG5zLgo+ICsJICovCj4gKwljcy1ncGlvcyA9IDwmZ3BpbzMgUktfUEIxIEdQSU9f
QUNUSVZFX0xPVz4sIDwmZ3BpbzMgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47CgpwbGVhc2UgYWxz
byBwcm92aWRlIGEKCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIKaGVyZS4KSXQgZmVlbHMgbW9y
ZSBmdXR1ciBwcm9vZiB3aGVuIG92ZXJyaWRpbmcgdGhlIHBpbmN0cmwtMCBlbnRyeQp0byBhbHNv
IHN0YXRlIHdlIG9ubHkgZXhwZWN0IHRoYXQgb25lLgoKPiArCXBpbmN0cmwtMCA9IDwmc3BpMV9j
bGsgJnNwaTFfY3NuMF9ncGlvICZzcGkxX2NzbjFfZ3BpbyAmc3BpMV9taXNvICZzcGkxX21vc2k+
Owo+ICt9Owo+ICsKPiAgJnRzYWRjIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAKCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
