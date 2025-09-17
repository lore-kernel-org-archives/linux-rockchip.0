Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF42CAC59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Sep 2025 14:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yo6cBAxApKURAMqQKaBBflEinChjKbfKfZkAY1c98L4=; b=46bOuHzRLrmbLV
	6geJQgUwAkTiRxxTD7R4f/RZ1KPRXdiXw2fHAhFGTtgJ5ZH7BNSLnO8Pi4nVBWFqggamzP2VZ1rqc
	K4jNwQbgXhbvfgqbzLE5FGFeYa2a35pVnmcqpDoNaz3f0mHssUwm6PRrb1KtokgfQ1QkGLx76Pguz
	3VwsJYSPTcTW5uHULIkouX5hIm1tTJ1+/1jMSmLsi61XRNMtL01pDCjS46yQTL0MJM+7XQo+vuAPU
	8CVNnGzzeQIQLwxWEHlBUHnraIllyV8LNsDkj31QZLALVOgcEwfhFuCsuOy8sXbGR+eqNSPT1vA7G
	4q1RVkZAC2gagPnSMlqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyt70-0000000CCp6-0hUz;
	Wed, 17 Sep 2025 14:26:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyt6t-0000000CCho-1jWp;
	Wed, 17 Sep 2025 14:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XBxKHfRCGcE5Q/eepg5aPjxUu8diqcOmzAvEs6SS1gU=; b=iPeTG/S7BlbqBcsqvb6s5BzW8C
	+K5i7IF5xnqnky7+WluHCxzTVYLW/nX5SZ4xz1RRqfPrwlRCIPUb2l7VwS8EZtUMDFXIBh3I1HiUV
	v6hOiPZ6kgUyWn/QyT7HAVCmge5ATcGHua9nehvN3uHnUDWteZpHXyEn6D5RGt1RDNxDKovDDrJIc
	gJg9Nsh5XBjMoTJjI3znoDVX2LidNsR2MS/d43s+VfKZ+LKV3CvGmQqADqCP5zowN84MEkKpPt0q3
	zY+XFX1H7akSvKHeWA5keKDUxePGwWuDjYuqh8Al6wqSXQWXEdYAh1OLPVtTVu1XKLDVFvdfAi6sP
	fktAFmTw==;
Received: from i53875a9d.versanet.de ([83.135.90.157] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uyt6e-0000pg-Tg; Wed, 17 Sep 2025 16:26:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ed Wildgoose <lists@wildgooses.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] rockchip: dts: Enable UART DMA by adding default dma-names
 property
Date: Wed, 17 Sep 2025 16:25:59 +0200
Message-ID: <4007782.fW5hKsROvD@diego>
In-Reply-To: <7c8576e3d9fc73ba45830833f5281706@manjaro.org>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <20250917114932.25994-3-lists@wildgooses.com>
 <7c8576e3d9fc73ba45830833f5281706@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_072616_645235_882A3620 
X-CRM114-Status: GOOD (  18.84  )
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

QW0gTWl0dHdvY2gsIDE3LiBTZXB0ZW1iZXIgMjAyNSwgMTQ6MjI6NTIgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4gSGVsbG8gRWQsCj4gCj4gT24g
MjAyNS0wOS0xNyAxMzo0OSwgRWQgV2lsZGdvb3NlIHdyb3RlOgo+ID4gS2VybmVsIGFwcGVhcnMg
dG8gbmVlZCBhIGRtYS1uYW1lcyBzZXQgZm9yIERNQSB0byBhY3R1YWxseSBlbmFibGUuIFNldCAK
PiA+IGEKPiA+IGRlZmF1bHQgZG1hLW5hbWVzIHByb3BlcnR5IGZvciBhbGwgVUFSVHMgZGVmaW5l
ZCBpbiB0aGUgYmFzZSAKPiA+IHJrMzU2eC1iYXNlCj4gPiBkdHNpCj4gPiAKPiA+IFRoaXMgaXMg
dGVzdGVkIG9uIGEgUmFkeGEgWmVybyAzVyAod2hpY2ggaGFzIDV4IFVBUlRzKSBhbmQgcmVtb3Zl
cyB0aGUKPiA+IHdhcm5pbmdzIGFuZCBlbmFibGVzIERNQSBvbiB0aGlzIHBsYXRmb3JtCj4gCj4g
VGhhbmtzIGZvciB0aGUgcGF0Y2hlcy4KPiAKPiBXZSBzaG91bGQgKHN0aWxsKSBzdGF5IGF3YXkg
ZnJvbSBkZWZpbmluZyB0aGUgImRtYS1uYW1lcyIgcHJvcGVydHkKPiBhdCB0aGUgU29DIGxldmVs
LCBiZWNhdXNlIGRvaW5nIHRoYXQgY2F1c2VzIHNlcmlvdXMgaXNzdWVzIGluIGNlcnRhaW4KPiBj
YXNlcy4gIFRodXMsIEknZCBzdWdnZXN0IHRoYXQgdGhpcyBwYXRjaCBpcyBkcm9wcGVkLCBhbmQg
dGhhdCB0aGUKPiAiZG1hLW5hbWVzIiBwcm9wZXJ0eSBpcyBkZWZpbmVkIGluc3RlYWQgYXQgdGhl
IGJvYXJkIGxldmVsLCB3aGVyZQo+IGl0J3MgbmVlZGVkIGFuZCB0ZXN0ZWQgdG8gd29yayBhcyBl
eHBlY3RlZC4KPiAKPiBQbGVhc2Ugc2VlIGNvbW1pdCBiZjZmMjZkZWIwZTggKGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBZGQgZG1hLW5hbWVzCj4gdG8gdWFydDEgb24gcXVhcnR6NjQtYiwgMjAyNC0w
Ni0yOCkgZm9yIGZ1cnRoZXIgZXhwbGFuYXRpb24uCj4gCj4gSWYvd2hlbiB0aGUgdW5kZXJseWlu
ZyBpc3N1ZXMgYXJlIGRlYnVnZ2VkIGFuZCByZXNvbHZlZCwgd2UgY2FuIGdldAo+IGJhY2sgdG8g
ZGVmaW5pbmcgdGhlICJkbWEtbmFtZXMiIHByb3BlcnR5IGF0IHRoZSBTb0MgbGV2ZWwuCgpBbmQg
YXBhcnQgZnJvbSB0aGUgd2hvbGUgc3RhYmlsaXR5IHRoaW5nLCBvbiBhIG51bWJlciBvZiBzb2Nz
IHRoZSBwbDMzMApkbWEgY29udHJvbGxlciBoYXMgbW9yZSBwb3NzaWJsZSBzb3VyY2VzIGZvciBk
bWEgb3BlcmF0aW9ucyB0aGFuIGl0CmhhcyBhdmFpbGFibGUgY2hhbm5lbHMgLi4uIGFuZCByaWdo
dCBub3cgdGhlIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0CmhhbmRsaW5nIHRoaXMuCgpTbyB5b3Ug
Y2FuIChhbmQgaWYgSSByZW1lbWJlciBjb3JyZWN0bHkgd2UgZGlkKSBlbmQgdXAgd2l0aCBzb21l
IHVhcnQKcmVxdWVzdGluZyBkbWEgY2hhbm5lbHMgKGFuZCBub3QgbmVlZGluZyB0aGVtKSBhbmQg
dGhlbiBzb3VuZCBub3QKZ2V0dGluZyBhbnkuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
