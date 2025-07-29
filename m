Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB11DC87FC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 09:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmL9bSQrPZmrK3fyu2r5BDKnJ3kK34k8wU7KzRQkvFk=; b=paVp0Ml794v27z
	92AtMThotNW69IFi0FSGnlXf355GQ9igBMrf+9r7yFIAdnXR7Tx+sQJIuHFUG+mwvwa+/8FPAoL7N
	u9U6ihDdinpjupVU+D8HJERKvZ0xdNSHhDkDUulXkmONPnOYbnGCltqaudKrxLdm/kZ8jqflF3Nbt
	sItp6JBsagkT7i925bLMCqUlPm1zT3hkbopjmcsBCtSKsH4MaI+x8u0EOAug9CInqHOwJQzu9d02C
	VOb9gFRH5P2VI+SLSWXD25dxSpKBezIcKe7fpW5nWrjXfLAUC4Z4yVA82/BhyEWgN4xaX56nRJg5Y
	ZgRGW+i1qzS5PCKaUSdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggtI-0000000GQrT-0Bg8;
	Tue, 29 Jul 2025 09:45:00 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggZQ-0000000GO86-20qT;
	Tue, 29 Jul 2025 09:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1753781067;
	bh=5f4BpgvVmzCRmDHsN/VvJBuhhWIHDaaAjfV2HvJvoOs=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=hpFXhVh8LgP8dqnxcUgwPNo6gTpGwmpdL+3iJuNNFBFpBGjzSvPtenKS/Y9H3jdWH
	 X/4iWVa8l+2IL96OuJShAyeJHPCwqh9Az2ub+A/Lz7JxMoqm7K6rcDGD83j+lxa/Wd
	 uCSHnl91sS97i1Z1IKre75KtOgyk60OGoIBsWv8CethiTw8QEXtyiKcypi+037gNuF
	 /O6DkkSV8Nz6N/EjDY0V+hUNQibAfE6UCubpHFlaulVS+D+YlWbKbsmPcWSl1JdwBR
	 ZNvHDBz00pwgPYLzjmGSYtT64gVmO8CyajtRGjwVfBKTZ4kg4Onc6if6XGliWFxR/P
	 jEp2aIU1uWMpQ==
Received: from smtpclient.apple (unknown [IPv6:2600:4040:50b7:b604:2ca9:1ceb:f1ef:b736])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 629C327E434;
	Tue, 29 Jul 2025 09:24:27 +0000 (UTC)
From: Erik Beck <xunil@tahomasoft.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: rockchip: add LinkStar-H68k-1432v1
Date: Tue, 29 Jul 2025 05:24:17 -0400
Message-Id: <9E402294-53BD-4BA7-9E0A-EE4B287DF038@tahomasoft.com>
References: <20250729-passionate-jerboa-of-superiority-c7aff5@kuoka>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250729-passionate-jerboa-of-superiority-c7aff5@kuoka>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: iPhone Mail (22F76)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_022428_574965_DDFD83FB 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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

Cgo+IE9uIEp1bCAyOSwgMjAyNSwgYXQgMDQ6NTQsIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gCj4g77u/T24gTW9uLCBKdWwgMjgsIDIwMjUgYXQgMTE6MDc6
MzdBTSAtMDQwMCwgRXJpayBCZWNrIHdyb3RlOgo+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGluZ3Mu
Cj4gCj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSBjb3JyZWN0IHBhdGNoIG9yZGVyIHdhcyBjaGFu
Z2VkIHRvIGluY29ycmVjdC4KCk15IGVycm9yLiBUaGFuayB5b3UsIGFuZCBJJ2xsIGJlIHJlb3Jk
ZXJpbmcgdGhlbSBzaG9ydGx5LgoKUmVnYXJkcywKCkVyaWsKPiAKPiBTZWUgc3VibWl0dGluZyBw
YXRjaGVzIGluIERUIGJpbmRpbmdzIGRpci4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9m
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
