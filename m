Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92572C982DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 18:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YUDuPuiOoPHqbYXBVNsJkXtZPXrWZ1/qGPcJv1TME4=; b=RQi6ik7tIURfDS
	TiJF+UNFvI4Est+g6+daOat1PPuj4kdswXO6jwBNo0ZyhpGfIcqFIV/Z+tozpyyNGd54rY1H9L3t0
	w4CA76guSZrNlVJFB/ykjrWwP5S8BgfRcLHwFQLYt3Hl/+8zxAoXJnYtDnEHeTuaHcPQkHiur0Dg6
	IWcCYStPFfVY+3hUUUtp1sJZqC1BOOhkGeyiVKN6Y+M9K+4xDYSpfJvvyYXIDVXLlGwgwJ4wIt5Ij
	exX9blN5cTfQPROodutFw9GSEO5zRFBkgaSZNRsazCKHI4MMcsIo032IsrWcU+LY8T7oDzcCOwVXN
	QtQnySz+oCLtwzI2QN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7H07-0000000CFML-1DGO;
	Thu, 17 Sep 2026 18:38:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gzr-0000000CFFQ-47Pi;
	Thu, 17 Sep 2026 18:38:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 96EB844002;
	Thu, 17 Sep 2026 18:38:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 164D31F000FF;
	Thu, 17 Sep 2026 18:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789670291;
	bh=wz7ynco97WHqvgbZ/Bh5SA7Wz6otJSPrEA15/FgWv6w=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=TDnBLQheIeWQmYvRhrxYPJhx8S25S8ThmPsf7SKU1+1N5fDmjsC1dqinkmY9AAvau
	 3tc8ofayc8hBOk11I0oC04ZSt35cNK9hRBz59poz1KajiUcUh1IUo59f+1rqGejDPz
	 wWFBukaqFKu5By7CI423UEG3rHcUg+BSgnV34Aru0xo9Z7+HPXTV79e2J6KikESd0G
	 A9RYx43ZM+oRQtcLJ0fnUogKaPAXmP2bOwjBanQ0hR3vtgs/QEwbkL3prjJRlzFced
	 XaUacDVhdebipIMtb+m6LgGs45/DH4dwXuqif2kw9yg4o6s+3E+Es44ZZuI479psTr
	 +jyOjiCELLXrA==
Subject: Re: [PATCH net-next v6 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
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
Date: Thu, 17 Sep 2026 18:38:09 +0000
Message-ID: <178967028966.22033.2377561177851606071@kernel.org>
In-Reply-To: <20260915123802.1561724-4-coiaprant@gmail.com>
References: <20260915123802.1561724-4-coiaprant@gmail.com>
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
IMK3IE1lZGl1bTogMCDCtyBMb3c6IDEKCi0gW0xvd10gZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmM6MzgwLTM4MSByZWFkcwogICdyb2NrY2hpcCxzZ21p
aS1tYWMtc2VsJyB3aXRoIGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMigpIGZvciBldmVyeeKApgoK
LS0KCnBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBhZGQgU0dNSUkgTUFDIHNlbGVjdGlv
biBmb3IgUkszNTY4CgpUaGlzIGFkZHMgYSAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIgRFQgcHJv
cGVydHkgc28gdGhlIFJLMzU2OCBTR01JSQppbnRlcmZhY2UgY2FuIGJlIHJvdXRlZCB0byBHTUFD
MCBvciBHTUFDMSB2aWEgdGhlIFBJUEVfR1JGX1hQQ1NfQ09OMApwaXBlX3NnbWlpX21hY19zZWwg
Yml0LCBkZWZhdWx0aW5nIHRvIEdNQUMxIHRvIG1hdGNoIHRoZSBoYXJkd2FyZSByZXNldAp2YWx1
ZS4KCkxpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1Jv
Y2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDElMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAy
MjkpCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFu
ZW5nLWNvbWJwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmct
Y29tYnBoeS5jCj4gaW5kZXggNzg0MzM1NmE0ZGQ0Ny4uN2I4NjdlNzUyMDA2NCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5j
CgpbIC4uLiBdCgo+IEBAIC0zNzUsNiArMzc3LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9jb21i
cGh5X3BhcnNlX2R0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHkK
PiAgCj4gIAlwcml2LT5leHRfcmVmY2xrID0gZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoZGV2LCAi
cm9ja2NoaXAsZXh0LXJlZmNsayIpOwo+ICAKPiArCXByaXYtPnNnbWlpX21hY19zZWwgPSAxOwo+
ICsJZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwi
LCAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7Cj4gKwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNuJ3Qg
YSBidWcgZm9yIGFueSBzY2hlbWEtY2hlY2tlZCBkZXZpY2UgdHJlZSwgYnV0IHdvdWxkIGl0IGJl
IHdvcnRoCnJlYWN0aW5nIHRvIHRoZSByZXR1cm4gdmFsdWUgaGVyZT8KClRoZSBiaW5kaW5nIHJl
c3RyaWN0cyB0aGUgcHJvcGVydHkgdG8gdHdvIHZhbHVlcyBhbmQgdG8gb25lIGNvbXBhdGlibGU6
CgogIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6CiAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy91aW50MzIKICAgIGVudW06IFswLCAxXQogICAgZGVmYXVsdDogMQoKICAu
Li4KICAgICAgICByb2NrY2hpcCxzZ21paS1tYWMtc2VsOiB0cnVlCiAgICBlbHNlOgogICAgICBw
cm9wZXJ0aWVzOgogICAgICAgIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6IGZhbHNlCgpJbiByb2Nr
Y2hpcF9jb21icGh5X3BhcnNlX2R0KCkgdGhlIHJlc3VsdCBvZiBkZXZpY2VfcHJvcGVydHlfcmVh
ZF91MzIoKSBpcwpkcm9wcGVkLCBzbyBhIG1hbGZvcm1lZCBwcm9wZXJ0eSAoZm9yIGV4YW1wbGUg
YSB6ZXJvLWxlbmd0aCBvciB3cm9uZy1zaXplZApjZWxsLCB3aGljaCByZXR1cm5zIC1FTk9EQVRB
Ly1FT1ZFUkZMT1cgYW5kIGxlYXZlcyB0aGUgb3V0cHV0IHVudG91Y2hlZCkKZW5kcyB1cCBpbmRp
c3Rpbmd1aXNoYWJsZSBmcm9tIGFuIGV4cGxpY2l0IHJlcXVlc3QgZm9yIEdNQUMxLgoKVGhlIHJl
YWQgYWxzbyBoYXBwZW5zIGZvciBldmVyeSBjb21wYXRpYmxlLCBpbmNsdWRpbmcgcmszNTI4L3Jr
MzU2Mi9yazM1NzYvCnJrMzU4OCB3aGVyZSB0aGUgYmluZGluZyBkZWNsYXJlcyB0aGUgcHJvcGVy
dHkgaW52YWxpZDsgdGhlcmUgdGhlIHZhbHVlIGlzCnBhcnNlZCBhbmQgdGhlbiBuZXZlciB1c2Vk
LCBzaW5jZSBvbmx5IHJrMzU2OF9jb21icGh5X2NmZygpIGNvbnN1bWVzIGl0LgoKWyAuLi4gXQoK
PiBAQCAtODczLDYgKzg3OCw4IEBAIHN0YXRpYyBpbnQgcmszNTY4X2NvbWJwaHlfY2ZnKHN0cnVj
dCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnByaXYpCj4gIAkJYnJlYWs7Cj4gIAo+ICAJY2FzZSBQ
SFlfVFlQRV9TR01JSToKPiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBp
cGVfZ3JmLCAmY2ZnLT5waXBlX3NnbWlpX21hY19zZWwsCj4gKwkJCQkJICAgICBwcml2LT5zZ21p
aV9tYWNfc2VsID4gMCk7CgpbU2V2ZXJpdHk6IExvd10KU2hvdWxkIG91dC1vZi1yYW5nZSB2YWx1
ZXMgYmUgcmVqZWN0ZWQgcmF0aGVyIHRoYW4gZm9sZGVkIGludG8gR01BQzE/CgpUaGUgInByaXYt
PnNnbWlpX21hY19zZWwgPiAwIiB0ZXN0IGNvbGxhcHNlcyB0aGUgdTMyIHRvIGEgYm9vbGVhbiwg
c28gYQpkZXZpY2UgdHJlZSB3aXRoIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgPSA8Mj4gKG9yIDB4
ZmZmZmZmZmYpIHRoYXQgd2FzIG5ldmVyCnJ1biB0aHJvdWdoIGR0YnNfY2hlY2sgZ2V0cyB0aGUg
R01BQzEgcm91dGluZyBhbmQgcmszNTY4X2NvbWJwaHlfY2ZnKCkgc3RpbGwKcmV0dXJucyBzdWNj
ZXNzLCB3aXRoIG5vdGhpbmcgbG9nZ2VkLgoKQSByYW5nZSBjaGVjayBpbiByb2NrY2hpcF9jb21i
cGh5X3BhcnNlX2R0KCkgcmV0dXJuaW5nIC1FSU5WQUwsIG9yIGF0IGxlYXN0CmEgZGV2X3dhcm4o
KSwgd291bGQgbWFrZSBzdWNoIGEgZGV2aWNlIHRyZWUgdmlzaWJsZSBpbnN0ZWFkIG9mIHNpbGVu
dGx5CnNlbGVjdGluZyB0aGUgZGVmYXVsdCByb3V0ZS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAy
NjA5MTUxMjM4MDIuMTU2MTcyNC0xLWNvaWFwcmFudCU0MGdtYWlsLmNvbQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
