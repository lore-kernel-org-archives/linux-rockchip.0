Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E5A0C88E6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 20:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCNG0vwb4DfAg23R/F2ZqNIylxQzbPKeBaggFCtGRvw=; b=lVvRSvVTjktJ1j
	BUSpR0Dr5EI39ExZuPgF6vE91h14M7kits7zjYuJyBqTvjcP3FqLGchbc/Nm2F0g68Uxqyims+QlZ
	QYgIuyoR6jPFWFa59ZOgVRtrdlRC5f0n1wDMhiCqSkRyBzSYjVHm1mvU4wmakb7EYdyNBM/AtZABI
	jlzPLkqT1OOZsTBnFW+3CzJ0wlP1OBcc7FJ1B7P6a9KNHVEy30/iuQVVplO2o7uJHCg+ErUXMWS4w
	YBJNAuEizjzdz8W9cVs3+f8GYu5yDAe6eaFQ1xXl7et6Td9jIiRm+ENwMo7+UceOl3PIOzJ51GXZq
	KWawWu0hlxst5ICsxyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6DEN-00000004aMX-3ji9;
	Mon, 14 Sep 2026 20:24:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6DEF-00000004aGx-2AEB;
	Mon, 14 Sep 2026 20:24:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 35B1140F0E;
	Mon, 14 Sep 2026 20:24:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9161F0089E;
	Mon, 14 Sep 2026 20:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789417479;
	bh=w587efkOjiQf9pLi3wYoyzihoJi5RgWEhsC3DWDduOI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=c8Q/E5xBLlpVxk8HmFhY6cfDA7hI4fRNR/3W/efZKa9vyQzeaSLvRcYsG0+FW8ZYy
	 7ZSdFWp7b1aOLOdyfjh8uENE+aE35r9MiUTDggEJCKY89RvwO5cSsj06/p0MWVzxe9
	 AlDg3ZeTnVfNeKU38bTpzyjnywHAwVAGSgBPkkaLKXZ1u23spa1IqMF8tJwLFQtW8t
	 MDFeFzcuTHiB0wd+hLlHUmO95dCZR4CVRhzi9M0R2wARVMqBVJAsI5BNkmk8l/bCjL
	 WIldtGsE3g4di0Z8D9Ys5RybXB9k6t1tqJPFF7hZtOtDc5IzmQ07sm29oq5sazcLQr
	 H8h4foIq0Z7Vg==
Subject: Re: [PATCH net-next v5 02/11] dt-bindings: phy: rockchip:
 naneng-combphy: add rockchip,sgmii-mac-sel property
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
Date: Mon, 14 Sep 2026 20:24:37 +0000
Message-ID: <178941747711.22033.8495700704733189874@kernel.org>
In-Reply-To: <20260913185849.907479-3-coiaprant@gmail.com>
References: <20260913185849.907479-3-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUocykgdG8gY29uc2lkZXI6CgpDcml0aWNhbDogMCDCtyBIaWdoOiAw
IMK3IE1lZGl1bTogMCDCtyBMb3c6IDEKCi0gW0xvd10gQ29uY2VybiAodmFsaWRhdGVkIGFzIE5P
VCBhIGRlZmVjdCBpbiB0aGUgc2VyaWVzIGNvbnRleHQpOiB0aGUKICBiaW5kaW5nIGFkZHMgYHJv
Y2tjaGlwLHNnbWlpLW1hYy1zZWxgIHdoaWxlLCBhdCB0aGlzIGNvbW1pdCBhbG9uZSwgbm/igKYK
Ci0tCgpkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2Nr
Y2hpcCxzZ21paS1tYWMtc2VsIHByb3BlcnR5CgpUaGlzIGFkZHMgYW4gb3B0aW9uYWwgcm9ja2No
aXAsc2dtaWktbWFjLXNlbCBwcm9wZXJ0eSB0byB0aGUgbmFuZW5nLWNvbWJwaHkKYmluZGluZyBz
byBhIGJvYXJkIGNhbiBzZWxlY3Qgd2hldGhlciB0aGUgUkszNTY4IFNHTUlJIGludGVyZmFjZSBp
cyByb3V0ZWQKdG8gR01BQzAgb3IgR01BQzEuICBUaGUgcHJvcGVydHkgaXMgcmVzdHJpY3RlZCB0
byB0aGUgUkszNTY4IGNvbXBhdGlibGUgdmlhCnRoZSBleGlzdGluZyBhbGxPZiBjb25kaXRpb25h
bCBhbmQgZGVmYXVsdHMgdG8gMSAoR01BQzEpLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5h
bmVuZy1jb21icGh5LnlhbWwKPiBpbmRleCAzNzliMDhiZDllOTdhLi44ZTg5OGJjZTlhZjczIDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gQEAgLTgw
LDYgKzgwLDE1IEBAIHByb3BlcnRpZXM6Cj4gICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICAgU29t
ZSBhZGRpdGlvbmFsIHBpcGUgc2V0dGluZ3MgYXJlIGFjY2Vzc2VkIHRocm91Z2ggR1JGIHJlZ3Mu
Cj4gIAo+ICsgIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiArICAgIGVudW06IFswLCAxXQo+ICsgICAg
ZGVmYXVsdDogMQo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFNlbGVjdCBnbWFjMCBvciBn
bWFjMSB0byBiZSB1c2VkIGFzIFNHTUlJIGNvbnRyb2xsZXIuCj4gKyAgICAgIFRoZSBoYXJkd2Fy
ZSByZXNldCB2YWx1ZSBpcyBHTUFDMSAoMSkuIFNldCB0aGlzIHRvIDAgdG8gcm91dGUKPiArICAg
ICAgU0dNSUkgdG8gR01BQzAuCj4gKwoKW1NldmVyaXR5OiBMb3ddCkF0IHRoaXMgY29tbWl0IGFs
b25lLCBpcyByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHJlYWQgYnkgYW55dGhpbmc/Cgpyb2NrY2hp
cF9jb21icGh5X3BhcnNlX2R0KCkgaW4KZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LW5hbmVuZy1jb21icGh5LmMgZG9lcyBub3QgbG9vayBpdCB1cCwKc3RydWN0IHJvY2tjaGlwX2Nv
bWJwaHlfZ3JmY2ZnIGhhcyBubyBwaXBlX3NnbWlpX21hY19zZWwgZGVzY3JpcHRvciwgYW5kCm5v
IGluLXRyZWUgRFRTIHNldHMgaXQsIHNvIGEga2VybmVsIGJ1aWx0IGZyb20gZXhhY3RseSB0aGlz
IGNvbW1pdCB3b3VsZApzaWxlbnRseSBpZ25vcmUgdGhlIHByb3BlcnR5LgoKVGhpcyByZXNvbHZl
cyBpdHNlbGYgbGF0ZXIgaW4gdGhlIHNhbWUgc2VyaWVzOiAicGh5OiByb2NrY2hpcDoKbmFuZW5n
LWNvbWJwaHk6IGFkZCBTR01JSSBNQUMgc2VsZWN0aW9uIGZvciBSSzM1NjgiIGFkZHMgdGhlIHBh
cnNpbmcKCglwcml2LT5zZ21paV9tYWNfc2VsID0gMTsKCWRldmljZV9wcm9wZXJ0eV9yZWFkX3Uz
MihkZXYsICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiwgJnByaXYtPnNnbWlpX21hY19zZWwpOwoK
YWxvbmcgd2l0aCB0aGUgUkszNTY4IHBpcGUtR1JGIGRlc2NyaXB0b3IKCgkucGlwZV9zZ21paV9t
YWNfc2VsCT0geyAweDAwNDAsIDEsIDEsIDB4MDAsIDB4MDEgfSwKCmFuZCB0aGUgd3JpdGUgaW4g
dGhlIFBIWV9UWVBFX1NHTUlJIHBhdGggb2YgcmszNTY4X2NvbWJwaHlfY2ZnKCksIGFuZAoiYXJt
NjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2OC1waG90b25pY2F0OiBlbmFibGUgU0dNSUkgTEFOIHBv
cnQiIGFkZHMgdGhlCmZpcnN0IHVzZXI6CgoJJmNvbWJwaHkyIHsKCQlyb2NrY2hpcCxzZ21paS1t
YWMtc2VsID0gPDA+OwoJCXN0YXR1cyA9ICJva2F5IjsKCX07CgpTbyB0aGlzIGlzIG5vdGVkIG9u
bHkgZm9yIHRoZSByZWNvcmQsIHNpbmNlIHRoZSBiaW5kaW5nIGFuZCBpdHMgY29uc3VtZXIKYmVp
bmcgc3BsaXQgYWNyb3NzIGNvbnNlY3V0aXZlIHBhdGNoZXMgaXMgdGhlIG5vcm1hbCBzZXJpZXMg
bGF5b3V0LgoKVGhlIHJlbWFpbmluZyBwb2ludCBpcyBhIGRlc2lnbiBxdWVzdGlvbiByYXRoZXIg
dGhhbiBhIGJ1ZzogaXMgYSByYXcKdWludDMyIE1BQyBpbmRleCB0aGUgaW50ZXJmYWNlIHByZWZl
cnJlZCBoZXJlLCBvciB3b3VsZCBhIHBoYW5kbGUgdG8gdGhlCkdNQUMgY29udHJvbGxlciBub2Rl
IGJlIGEgYmV0dGVyIGZpdCBmb3IgZGVzY3JpYmluZyB0aGUgcm91dGluZz8KClsgLi4uIF0KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9z
YXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjA5MTMxODU4NDkuOTA3NDc5LTEtY29pYXByYW50JTQwZ21h
aWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
