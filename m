Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68E95CD98F2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 15:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHNJWqYnL+v2Y4EzAG//MwRCfq1eanIogErqz+7xW58=; b=ZmL7tn4uPMPDOX
	76ZEbafjSFUG08rSszjsH4zcloL0h6kmxo3Ghf+1RoN9Cr+Tqvxr10tx+5NFr7pH3mRrbCGHi793U
	Lwlb8bwlIh5e8cBHu/ky0iwSsqxW+GSrU6MxyWmXnkwA2lNIP3cH+lwyYAz6hWXF75imIZ4SIQQlk
	/uNDcYUjD1nLdPucnpUXMujjyPfsdeJtNxNylEnPg7qGZS2YFSwJs7JDBL81V9dhZwNnMShhVLxOv
	Xm+PgTMtUnTyhVHcJipPYyGSEPKiAKIkePwrSWaZI07SzMwCX5apqJpFCugFHFQSt/uaVy+LEX9nW
	MoXK2Ii9Zys8jrf+9STA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZsOc-0000000HZeR-1QrN;
	Wed, 17 Jun 2026 15:41:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZsOa-0000000HZdS-2jyl;
	Wed, 17 Jun 2026 15:41:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 04A9B4408A;
	Wed, 17 Jun 2026 15:41:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B0E1F00A3E;
	Wed, 17 Jun 2026 15:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781710899;
	bh=Sv7WK0TLi0qOIuMOvJwU6mbH3yERNXs7/fEc4Hx4c8E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=aUbx83mXCE+WKkE8VV32ftbCXH0r52gqX/y897tbK6cSBbc9oFa1CUdep0NNkVDMS
	 u1jZqyq4K4DGwBLuqJiU7r/RAnQVDT3t/P+wcgUp6BkJnAAIix7vvwpwQ0iqLN0n6J
	 qyPN5BkiHdYRo8lFkwnsoyQKBT5hRQ1MotmAlsK8sL877MNk4V1bv1wgCVUxZUTbdp
	 qcWZF5PV3TnwPXfDq3bVuh+ClBEvwcJvXRfPqCkxxM068kS7C8fEWjhELds9UqdLQa
	 prIzA40cwi5BaIv+lv0yZ6bIIA8QFvcZeSCB7ACyf7gTVDTlZrM+TxumhSTupvvnz4
	 OKYIzZGXkiBJA==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-omap@vger.kernel.org
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/3] dt-bindings: mfd: syscon: Tighten
 checks
Message-Id: <178171089542.1654059.1933552286028471529.b4-ty@b4>
Date: Wed, 17 Jun 2026 16:41:35 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
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

T24gTW9uLCAwOCBKdW4gMjAyNiAyMjo0NDoyMyArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiBDaGFuZ2VzIGluIHYzOgo+IC0gRHJvcCBwYXRjaCAjMjoKPiAgIGR0LWJpbmRpbmdz
OiBtZmQ6IHN5c2NvbjogRHJvcCB1bm5lZWRlZCBjYXNlIGZvciBzeXNjb24gKyBzaW1wbGUtbWZk
Cj4gLSBCdW1wIGR0c2NoZW1hIHJlcXVpcmVtZW50Cj4gLSBMaW5rIHRvIHYyOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjA2MDgtbi1kdC1iaW5kaW5ncy1zaW1wbGUtYnVzLXN5c2Nvbi12
Mi0wLTAyMDNlNmMyNDlkY0Bvc3MucXVhbGNvbW0uY29tCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAx
LiBOZXcgcGF0Y2hlcyAjMiBhbmQgIzMKPiAxLiBBZGQgbWlzc2luZyBwYXJ0IG9mIHBhdGNoICMx
LCB0aHVzIG5vdCBhZGRpbmcgUm9iJ3MgQWNrLgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI2MDUzMTExMDQwNC4xMjc2OC0zLWtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21t
LmNvbS8KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvM10gZHQtYmluZGluZ3M6IG1m
ZDogc3lzY29uOiBEaXNhbGxvdyBzaW1wbGUtYnVzIHdpdGggc3lzY29uCiAgICAgIGNvbW1pdDog
YzExYzkxOGI0MDI5NWRjYjBhZDI0NjBkOTUzNDQ1NDA3MjM4NmY0YwpbMi8zXSBkdC1iaW5kaW5n
czogbWZkOiBzeXNjb246IERyb3AgY3VzdG9tIHNlbGVjdCBmb3Igb2xkZXIgZHRzY2hlbWEKICAg
ICAgY29tbWl0OiBmNzgwNDljYTgwYmEyZTY4ZjdmNDY4NzBiMGQ2OGViNTRhNmNlMzc4CgotLQpM
ZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
