Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 857ABF4368D
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 11:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXbEvB2TVfccjOKYldyTU6BNxLpvcNZHIB2vQfiXj/Q=; b=Cj3cfZOESG0ohl
	9QP8kQ463z94FINoWjHhUGSJYrZ7QJixcP4L4OttHcwLmZwYzXRgrMdiyxifrmrBa278w6gjE+6XX
	8xDNQIn0X91/KQve5rgrqDDmqbIKxlhNBw90xDqXv5suMpT5gLK98sfSARs1m56tpaNyLH19mpAs4
	h0k6WQ7iZ+NPga1VvUIJk1iakvh+jTFW7qdr47i3Ilhp+Rq/FTejXvl9oehUHkAkwf69sMQshD7wx
	rAS1DEZOZz1wCdPVuWU+jTcnO7SjT1X7el38CPr1BSR3LuPwalj0z/Yg7xsVuN12Ar0PNmS69jZNC
	Ngik4dMro3CR3Degnl/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDhRL-00000003yzG-06Vx;
	Fri, 17 Apr 2026 11:32:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDhRI-00000003yyc-1RC3;
	Fri, 17 Apr 2026 11:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8QyLMvKF44I/UarTwSVYz03wCTTEkLP4ZLZ/bSttUck=; b=ALAyFiqJXMslOeqg+jJlEYthCo
	UVRDtIAW0JAjYkBK0IDOoG6FsPd84Xv4i1Ede9QYaKCkqHrvMjyCxPlUT/xuVb9WgUwWePUhg62w2
	uAFTXjOSfnRG2MOjpXKlwHIhHkPAJew55oBzmjYx39aV/86aIp4KZ816pzVVa4U9tdL/3s1kWc8l8
	7SM7z+MCW0jJyYUOqy+im8sAxJBq0+NDoUYi/DJIogEoJn2gKHhkgJujwM5kyWeEqFekfyTdMWfMI
	L31z0CTJe/InBk/UkCtZnueMejzmzj9KHjjzzqZUdvzKqNjJ0t1TFpAbujQWTMAP773E/1vGMGqk7
	HqjjK+WA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-luckfox-core3576
Date: Fri, 17 Apr 2026 13:32:37 +0200
Message-ID: <2000470.6tgchFWduM@phil>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_043248_404112_F2778FE1 
X-CRM114-Status: GOOD (  20.31  )
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

SGkgQ3Jpc3RpYW4sCgp0aGUgY29tbWVudHMgYmVsb3cgYXBwbHkgc29ydCBvZiB0byBhbGwgcGF0
Y2hlcyBpbiB0aGF0IHNlcmllcy4KCkFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAxMToyNDoz
OSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRl
YToKPiBUaGUgYm9hcmQgZXhwb3NlcyB0aGUgR1BJTzRfQzYgbGluZSB0byBjb250cm9sIHRoZSB2
b2x0YWdlIGJpYXMgb24gdGhlCj4gSERNSSBkYXRhIGxpbmVzLiAgSXQgbXVzdCBiZSBhc3NlcnRl
ZCB3aGVuIG9wZXJhdGluZyBpbiBIRE1JIDIuMSBGUkwKPiBtb2RlIGFuZCBkZWFzc2VydGVkIGZv
ciBIRE1JIDEuNC8yLjAgVE1EUyBtb2RlLgo+IAo+IFdpcmUgdXAgdGhlIEhETUkgbm9kZSB0byB0
aGUgR1BJTyBsaW5lIHVzaW5nIHRoZSBmcmwtZW5hYmxlLWdwaW9zCj4gcHJvcGVydHkgYW5kIGRy
b3AgdGhlIGxpbmUgZnJvbSB0aGUgdmNjXzV2MF9oZG1pIHJlZ3VsYXRvciB0byBhbGxvdwo+IGFk
anVzdGluZyB0aGUgYmlhcyB3aGVuIHRyYW5zaXRpb25pbmcgYmV0d2VlbiBUTURTIGFuZCBGUkwg
b3BlcmF0aW5nCj4gbW9kZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVh
IDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVja2ZveC1jb3JlMzU3Ni5kdHNpIHwgOSArKysrLS0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVja2Zv
eC1jb3JlMzU3Ni5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVj
a2ZveC1jb3JlMzU3Ni5kdHNpCj4gaW5kZXggNzQ5ZjBhNTRiNDc4Li45M2FlMzc2OTkzNjYgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVja2ZveC1j
b3JlMzU3Ni5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYt
bHVja2ZveC1jb3JlMzU3Ni5kdHNpCj4gQEAgLTE0MCwxMCArMTQwLDcgQEAgcmVndWxhdG9yLXN0
YXRlLW1lbSB7Cj4gIAo+ICAJdmNjXzV2MF9oZG1pOiByZWd1bGF0b3ItdmNjLTV2MC1oZG1pIHsK
PiAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gLQkJZW5hYmxlLWFjdGl2ZS1o
aWdoOwo+IC0JCWdwaW9zID0gPCZncGlvNCBSS19QQzYgR1BJT19BQ1RJVkVfSElHSD47Cj4gLQkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAtCQlwaW5jdHJsLTAgPSA8JmhkbWlfY29uX2Vu
PjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDUwMDAwMDA+Owo+ICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+
ICAJCXJlZ3VsYXRvci1uYW1lID0gInZjY181djBfaGRtaSI7CgpJIHRoaW5rIHRoaXMgcmVndWxh
dG9yIHdhcyBzb3J0IG9mIGEgY29tcGxldGUgaGFjaywgdG8gc2V0IHRoYXQKZ3BpbyB0byBzb21l
IHNvcnQgb2YgZGVmYXVsdCBzdGF0ZSwgYnkgZGVjbGFyaW5nIGl0IGFzIGhkbWktcHdyLXN1cHBs
eS4KCk9ubHkgMiByazM1NzYgYm9hcmRzIHNlZW0sIHRvIHVzZSB0aGF0IGhhY2ssIHNvIEkgdGhp
bmsgYXMgdGhhdCAicmVndWxhdG9yIgppcyBjb21wbGV0ZWx5IGZ1bmN0aW9ubGVzcyBub3csIHRo
ZSB3aG9sZSB0aGluZyBjb3VsZCBiZSByZW1vdmVkPwoKCgo+IEBAIC0yMzEsNiArMjI4LDggQEAg
JmdwdSB7Cj4gIH07Cj4gIAo+ICAmaGRtaSB7Cj4gKwlwaW5jdHJsLTAgPSA8JmhkbWlfdHhtMF9w
aW5zICZoZG1pX3R4X3NjbCAmaGRtaV90eF9zZGEgJmhkbWlfZnJsX2VuPjsKPiArCWZybC1lbmFi
bGUtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDNiBHUElPX0FDVElWRV9MT1c+OwoKdGhpcyBzaG91bGQg
YmUgc29ydGVkIHRoZSBvdGhlciB3YXkgYXJvdW5kIEkgdGhpbmsuCgpBbHNvIHBsZWFzZSBwcm92
aWRlIGEgcGluY3RybC1uYW1lcyBwcm9wZXJ0eSB0b28uIElmIGZvciB3aGF0ZXZlciByZWFzb24K
dGhlIGR3LWhkbWkgYXF1aXJlcyBhIDJuZCBwaW5jdHJsIHN0YXRlIGluIHRoZSBmdXR1cmUsIHRo
aXMgbWFrZXMgc3VyZQpib2FyZCBEVHMgYXJlIHN0YXlpbmcgaW4gdGhlICJvbGQiIGNvbXBhdGli
bGUgbW9kZSB1bnRpbCB0aGV5IGFyZSBhZGFwdGVkLgoKCj4gIAlzdGF0dXMgPSAib2theSI7Cj4g
IH07Cj4gIAo+IEBAIC02NTUsNyArNjU0LDcgQEAgJnBjaWUwIHsKPiAgCj4gICZwaW5jdHJsIHsK
PiAgCWhkbWkgewo+IC0JCWhkbWlfY29uX2VuOiBoZG1pLWNvbi1lbiB7Cj4gKwkJaGRtaV9mcmxf
ZW46IGhkbWktZnJsLWVuIHsKCnBpbmN0cmwgbmFtZXMgc2hvdWxkIGlkZWFsbHkgbWF0Y2ggdGhl
IG5hbWluZyBpbiBzY2hlbWF0aWNzLCBmb3IgZXhhbXBsZQp0aGUgIkhETUkwX1RYX09OX0giIGZv
ciBqYWd1YXIgYW5kIHRpZ2VyLiBUaGlzIG1ha2VzIGl0IHdheSBlYXNpZXIgdG8KZ28gZnJvbSBE
VCB0byBzY2hlbWF0aWNzIGFuZCBiYWNrLgoKPiAgCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BD
NiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiAgCQl9Owo+ICAJfTsKPiAKPiAKCkhl
aWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
