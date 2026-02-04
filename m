Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 913B4EA7946
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 22:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfFGomG9DJN+wnW2B8JXDH33llUdbyyjdlNOfCDvFPY=; b=eV3jrNS52zgVi6
	JSWeko90hHXY/eecHOMNJk29P8DsEyXjP1Obk3COPsOgianl3toiLKTs1O0Korto8IdjmQf+LzNII
	tqAV3fyVMP9ZiZwFkksWxHD1gwZQH6QBjFiFVHHC+Zx4NOgA6DgmQt4eNo3gfFlk8ivCU14FfF9qh
	R52WLbOMhkzHyaOkqODAVuv54V6kFxeaNyH0nbn0apdtEkKBO0lQ8rS8VGcq9vsBcRQcMEd8jsDQg
	uDxgZ9gXBrTgDaKe68JsJ9FclJexXpCPG7YrMH8KePQZMbKILN1nJRZ9Xi0pYVlV2MFZovepgeclP
	BwL+BnclzYbguQjurYjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnkyh-000000097lj-00ht;
	Wed, 04 Feb 2026 22:04:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnkye-000000097lE-0Mb3;
	Wed, 04 Feb 2026 22:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sjPwyNGA9xy8POgiuW0Tq0QzH0cSNVPVKMgCL48PxsA=; b=QX8FJnswsoHYefLJ2uxQ9cSJdv
	Ct7M/Ce3CQEZOx/pMyy8ZhYfHLFD5QUUNGFRvi3xXcRIFiN1o8D0V1cOhCKgfc31bzbLOxMRiM0cv
	rNEgb3KmbBBE+QrZtzh6+pVAoW5d43BCoKPCc+dni1OQfT7Kd+/jro0rbIt8ZNSvrebbDjIyVVX6y
	Q9MpyLZo95PnPlSFE3bePul4W5Uo+DZ0v+3AQqyIXgkGYpclY4FgxQBEMkhQOj5hjQ/Gi7NvaKneT
	FKh93TtRfz00xQZY6kCekx9qcI3QW/pyqyCtMRvNX3jtbc+5AC5+LPgtv7LGGYj9B+M0Ouq+2Nu47
	pTQ5b9FQ==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnkyV-0071Wm-Sl; Wed, 04 Feb 2026 23:03:52 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 5/6] net: stmmac: rk: use rk_encode_wm16() for clock
 selection
Date: Wed, 04 Feb 2026 23:03:51 +0100
Message-ID: <20297648.sWSEgdgrri@diego>
In-Reply-To: <E1vnYy6-00000007hp9-1AJM@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYy6-00000007hp9-1AJM@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_140400_178621_BB6A9066 
X-CRM114-Status: GOOD (  25.38  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MzggTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gVXNlIHJrX2VuY29k
ZV93bTE2KCkgZm9yIFJNSUkgY2xvY2sgZ2F0aW5nIGNvbnRyb2wsIGFuZCBhbHNvIGZvciB0aGUK
PiBpb19jbGtzZWwgYml0IHVzZWQgdG8gc2VsZWN0IHRoZSB0cmFuc21pdCBjbG9jayBiZXR3ZWVu
IENSVS1kZXJpdmVkCj4gYW5kIElPLWRlcml2ZWQgY2xvY2sgc291cmNlcy4KPiAKPiBCb3RoIG9m
IHRoZXNlIHdlcmUgY29uZmlndXJlZCB2aWEgdGhlICJzZXRfY2xvY2tfc2VsZWN0aW9uIiBtZXRo
b2QgaW4KPiB0aGUgU29DIHNwZWNpZmljIG9wZXJhdGlvbnMsIGJ1dCB0aGVyZSBpcyBubyByZXF1
aXJlbWVudCB0byBjaGFuZ2UgdGhlCj4gaW9fY2xrc2VsIGV4Y2VwdCB3aGVuIGVuYWJsaW5nIGNs
b2Nrcy4KPiAKPiBJdCBpcyBhbHNvIHBvc3NpYmxlIHRoYXQgd2UgZG9uJ3QgbmVlZCB0byB1bmdh
dGUgdGhlIFJNSUkgY2xvY2sgaWYgd2UKPiBhcmUgb3BlcmF0aW5nIGluIFJHTUlJIG1vZGUsIGJ1
dCB0aGlzIGNvbW1pdCBtYWtlcyBubyBjaGFuZ2UgdGhlcmUuCj4gCj4gU3BsaXQgdXAgdGhlIGNv
bmZpZ3VyYXRpb24gb2YgdGhlc2UgYXMgc2VwYXJhdGUgZnVuY3Rpb25zLCBhbmQgcmVtb3ZlCj4g
dGhlIHNldF9jbG9ja19zZWxlY3Rpb24oKSBtZXRob2QuIFNpbmNlIHRoZXNlIGNsb2NraW5nIGJp
dHMgYXJlIGluIHRoZQo+IHNhbWUgcmVnaXN0ZXIgdGhhdCB3ZSBjYWxsIHRoZSAic3BlZWQiIHJl
Z2lzdGVyLCBtb3ZlIHRoZSBsb2dpYyBmb3IKPiB3cml0aW5nIHRoYXQgcmVnaXN0ZXIgaW50byBy
a193cml0ZV9zcGVlZF9ncmZfcmVnKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogUnVzc2VsbCBLaW5n
IChPcmFjbGUpIDxybWsra2VybmVsQGFybWxpbnV4Lm9yZy51az4KPiAtLS0KPiAgLi4uL25ldC9l
dGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jICAgIHwgMTc0ICsrKysrKysrLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKSwgOTkgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3
bWFjLXJrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5j
Cj4gaW5kZXggNDA5OWNiYzVkMGRlLi5lZDlhZGFjNzBmMGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPiBAQCAtMjcsOCArMjcsMTcg
QEAKPiAgc3RydWN0IHJrX3ByaXZfZGF0YTsKPiAgCj4gIHN0cnVjdCBya19jbG9ja19maWVsZHMg
ewo+ICsJLyogaW9fY2xrc2VsX2NydV9tYXNrIC0gaW9fY2xrc2VsIGJpdCBpbiBjbG9jayBHUkYg
cmVnaXN0ZXIgd2hpY2gsCj4gKwkgKiB3aGVuIHNldCwgc2VsZWN0cyB0aGUgdHggY2xvY2sgZnJv
bSBDUlUuCj4gKwkgKi8KPiArCXUxNiBpb19jbGtzZWxfY3J1X21hc2s7Cj4gKwkvKiBpb19jbGtz
ZWxfaW9fbWFzayAtIGlvX2Nsa3NlbCBiaXQgaW4gY2xvY2sgR1JGIHJlZ2lzdGVyIHdoaWNoLAo+
ICsJICogd2hlbiBzZXQsIHNlbGVjdHMgdGhlIHR4IGNsb2NrIGZyb20gSU8uCj4gKwkgKi8KCm5p
dDogY29tbWVudCBzdGlsZSBkb2VzIG5vdCBzZWVtIHRvIGZvbGxvdyB0aGUga2VybmVsIGNvZGlu
ZyBzdHlsZQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxl
LnJzdCNuNjIyCgo+ICsJdTE2IGlvX2Nsa3NlbF9pb19tYXNrOwo+ICAJdTE2IGdtaWlfY2xrX3Nl
bF9tYXNrOwo+ICAJdTE2IHJtaWlfY2xrX3NlbF9tYXNrOwo+ICsJdTE2IHJtaWlfZ2F0ZV9lbl9t
YXNrOwo+ICAJdTE2IG1hY19zcGVlZF9tYXNrOwo+ICB9OwoKWy4uLl0KCj4gKwkvKiBUaGUgaW9f
Y2xrc2VsIGNvbmZpZ3VyYXRpb24gY2FuIGJlIGVpdGhlcjoKPiArCSAqICAwPUNSVSwgMT1JTyAo
cmszNTA2LCByazM1MjAsIHJrMzU3Nikgb3IKPiArCSAqICAwPUlPLCAxPUNSVSAocmszNTg4KQo+
ICsJICogd2hlcmUgQ1JVIG1lYW5zIHRoZSB0cmFuc21pdCBjbG9jayBjb21lcyBmcm9tIHRoZSBD
UlUgYW5kIElPCj4gKwkgKiBtZWFucyB0aGUgdHJhbnNtaXQgY2xvY2sgY29tZXMgZnJvbSBJTy4K
PiArCSAqCj4gKwkgKiBIYW5kbGUgdGhpcyBieSBoYXZpbmcgdHdvIG1hc2tzLgo+ICsJICovCgpu
aXQ6IHNhbWUgYXMgYWJvdmUKCk90aGVyIHRoYW4gdGhlc2UgMiBuaXRzLCB0aGlzIGxvb2tzIGdv
b2QgdG8gbWUuCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
VGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAjcHgzMCxyazMzMjgs
cmszNTY4LHJrMzU4OAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
