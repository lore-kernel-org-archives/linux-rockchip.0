Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3713C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPuqbVXDoCj3G948VEU5DB5R5i48HaK9PEixAAF23/Q=; b=OGeQNvlpJML7cO
	d4U1U8wFsNo4Dr9+5autx2WOb0IOw7G8l8nkEj73OXo3xyrfXmOkt80W/2X33NDIjA4EffYzN/Frt
	Foz7RU5AKxMod1nTg7GzBxAI/o/jsc1fS7v8lEctfosFuYJWY+PkxEPkIVDlV3sI6EAE/sQ8iUBjO
	NgWwINugJBgbgu0xiYy91OygaAD2oX6RPmL6BSZ9UtrT2IcikkviBwHOEOeSuAg871EI2257P0eCf
	1654Q4J/vLPYW/qfM9Ykoth7loIiScAq9T5eeOSVeqfIvt2+N6ZtcSMiSz4hyFz5R9IPlWg05bZj3
	ICwhGvWWn5oHDX2zF+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBns-0000000B8EW-0Z1I;
	Thu, 06 Mar 2025 14:02:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBdD-0000000B6yd-4A0j;
	Thu, 06 Mar 2025 13:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Tfit3Fz0i31tRy70JNSd1EFtd6PuzVakM4X6XHPww3A=; b=FPz9Z27hjz7fSVnFEjpmWs2Gws
	HJGmNcdSHNouYuPAwLHFVZzkQjvN320hkAOi6R9hsUDbPtcQ/Z4elyXx7nKUhT9h8bljbi/aeklCx
	hKRZjn6F51nlXCIW364BM0uF6ijzwpRKJgnFgN/RBDg8pnJ4VU2GMVO6Gv3aVUdvqfN3wBYPhd2hL
	ZVvdJhG7G2UnUaUMV92c1Yx99CI2/nWB2t0Bqft0QqZ7Zu4Apz0N7NjBtdsnE2SvFgCdMQkYZ1mVj
	VXiCbMyVHrKgnf+KeLImycwmI3qAH4beCRX6yhJvFDV27cWWSfsXrZQNcIB8REHN3xiixtTwIY/RD
	q0D4Y5+Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBdB-000000016cj-0eYH;
	Thu, 06 Mar 2025 13:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Tfit3Fz0i31tRy70JNSd1EFtd6PuzVakM4X6XHPww3A=; b=Ejvj1ORDq3Xzz/I8L7kds7Y9Xq
	1/dh6WYh+ZOXL7uLac0XITB00b+xgwn3eYH25rvAqmifFDkIgGb7gMwg23nbr016dV2qH6dEds0/d
	nFmqG6/2x4MjzAXyDz7nsyN6UGfA8Gj0YPhzBj501xEQpTHao3mo7UCDx2AMCPvjlxqaQIFkzxcC1
	rIUC+yoVIVQy9Y3U7iakqAW1G3g/sRjntXIJ6utLWP5+Ue4Akw9pQtCsGndck1ipaQdUBQTSgn07P
	3p5FsgHIa2LRwCnnc10C9dj6JShiiZlhOpTtt+NtRrpp+Od11fEZwHrHSYpqaE9/julw1+4bUD5RN
	vEKh3wEQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqBd6-0003Vp-TB; Thu, 06 Mar 2025 14:51:16 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org, ziyao@disroot.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
Date: Thu, 06 Mar 2025 14:51:16 +0100
Message-ID: <7020561.MhkbZ0Pkbq@diego>
In-Reply-To: <20250306134002.380690-1-amadeus@jmu.edu.cn>
References: <4856313.kQq0lBPeGt@diego> <20250306134002.380690-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_135121_287287_A2533024 
X-CRM114-Status: GOOD (  12.23  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMTQ6NDA6MDIgTUVaIHNjaHJpZWIgQ2h1a3Vu
IFBhbjoKPiBIaSwKPiAKPiA+IFRoYXQgc3JhbSBpcyBwYXJ0IG9mIHRoZSBzb2MgKGFuZCBoYXMg
YW4gbW1pby1hZGRyZXNzKSwgc28gSSdkIHRoaW5rCj4gPiBpdCBzaG91bGQgbGl2ZSBpbnNpZGUg
dGhlIHNvYyBub2RlPwo+IAo+IEJ1dCBzb2MgcmFuZ2VzIHN0YXJ0cyBmcm9tIDB4ZmUwMDAwMDAs
IEkgZG9uJ3Qga25vdyB3aGV0aGVyIHRvIGNoYW5nZSBpdC4KPiBBbmQgYWxsIG90aGVyIG5vZGVz
IGFyZSAweGYuLi4sIGV4Y2VwdCB0aGlzIHNyYW0uCj4gQW55IHN1Z2dlc3Rpb25zIHdvdWxkIGJl
IGdyZWF0bHkgYXBwcmVjaWF0ZWQuCgpkYXJuIC4uLiBJIGRpZG4ndCByZWFsaXplIHRoYXQgdGhp
cyBpcyBub3Qgc3JhbSwgYnV0IG1haW4gbWVtb3J5IDotKQoKaW4gZnJlZXNjYWxlL3MzMmczLmR0
c2kgYW5kIGJsYWl6ZS9ibGFpemUtYmx6cDE2MDAuZHRzaSBJIHNlZSBzdHJ1Y3R1cmVzIGxpa2U6
CgogICAgICAgIHJlc2VydmVkLW1lbW9yeSAgewogICAgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8Mj47CiAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKICAgICAgICAgICAg
ICAgIHJhbmdlczsKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgc2NtaV9zaG1lbTog
c2htQGQwMDAwMDAwIHsKICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0s
c2NtaS1zaG1lbSI7CiAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhkMDAwMDAw
MCAweDAgMHg4MD47CiAgICAgICAgICAgICAgICAgICAgICAgIG5vLW1hcDsKICAgICAgICAgICAg
ICAgIH07CiAgICAgICAgfTsKCmRvZXMgc29tZXRoaW5nIGxpa2UgdGhpcyB3b3JrIG9uIHRoZSBy
azM1Mjg/CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
