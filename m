Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB18CC7115D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 10:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VfLservgutCsoQBo4hEDB9y1MoiNnh09sJkSRYzNbM=; b=EyKtV7FVHxrLkE
	BfY1jgJfeFYAOSx09QB/1kkuaBnCpEUR2pl7U1/G+1R+7qA6DOU3pLD5jfRhszM1tWXBgkGUMq31X
	pX5MBHHzQZwaroV2r7wBmC6Yie052Ritg0zFVpjivw04RAMR/EyuNqgvFpDceefkzRzYmWSDortpf
	6xWAi2qV1q5PmlseztTJWdwqEcd2jOFKtqLROMCWnUyuRlaSyga5oytX6Ef193Hb3nkzzsetBBuZ+
	JcYHaXAXdWyU6UVqOJoPndQCwF1RFv14svFj1oUp0H4TJGysJkiR4IJ+BIl+LLj1jIeQssRuoKuj1
	caLLjfdhVflCHB636Wtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSZ6z-0000000FLle-1D4o;
	Fri, 20 Jun 2025 10:36:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSY3N-0000000FBhm-3P30;
	Fri, 20 Jun 2025 09:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=O0Z76gXzXASZvB45zMW7OBOfjiQs1Vtulp5U1K5X9+M=; b=E0xVwfePovI7zW07TkUrEmyv3u
	R6+iMMc2szMneU5Th+XbYLGrJMTI6wOnXneDpAa+NUznRovozXXGjIsRNZ3jM5XtXpaSvZ+1O50KY
	/YiANnD7+B6m3xmrAmSMjP/ADzGH+C6YP3KUnsrlFQtdCCWYW1TKw6kg35jrkVA8/N1yz/0KxnISa
	VrP5B9U/Y2f2kkmCCaa5m0sT8obSTTtEQZQ29fJbf2qyDFec7LH9Tvi5mpfWM2Npr8PKr7SZ2DGtm
	gE+NS9aCpNSgCLmcAC0mjhuBV8cJR6kxgEocCpeaFl2Hkr/s+H0fNHscRzNLwFSQ8wO+n2cjCxUnY
	61fY+D8A==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSY2z-0008Po-Kz; Fri, 20 Jun 2025 11:28:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
Date: Fri, 20 Jun 2025 11:28:32 +0200
Message-ID: <2241399.8hzESeGDPO@phil>
In-Reply-To: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_022857_847370_89B309F6 
X-CRM114-Status: GOOD (  15.78  )
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

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwODoyODoyMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFRvbWV1IFZpem9zbzoKPiBUaGlzIHNlcmllcyBhZGRzIGEgbmV3IGRy
aXZlciBmb3IgdGhlIE5QVSB0aGF0IFJvY2tjaGlwIGluY2x1ZGVzIGluIGl0cwo+IG5ld2VyIFNv
Q3MsIGRldmVsb3BlZCBieSB0aGVtIG9uIHRoZSBOVkRMQSBiYXNlLgo+IAo+IEluIGl0cyBjdXJy
ZW50IGZvcm0sIGl0IHN1cHBvcnRzIHRoZSBzcGVjaWZpYyBOUFUgaW4gdGhlIFJLMzU4OCBTb0Mu
Cj4gCj4gVGhlIHVzZXJzcGFjZSBkcml2ZXIgaXMgcGFydCBvZiBNZXNhIGFuZCBhbiBpbml0aWFs
IGRyYWZ0IGNhbiBiZSBmb3VuZCBhdDoKPiAKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMjk2OTgKPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
b21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KCj4gLS0tCj4gTmljb2xhcyBGcmF0
dGFyb2xpICgyKToKPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHBkX25wdSBsYWJl
bCBmb3IgUkszNTg4IHBvd2VyIGRvbWFpbnMKPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDog
ZW5hYmxlIE5QVSBvbiBST0NLIDVCCj4gCj4gVG9tZXUgVml6b3NvICg4KToKPiAgICAgICBhY2Nl
bC9yb2NrZXQ6IEFkZCByZWdpc3RlcnMgaGVhZGVyCj4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQg
YSBuZXcgZHJpdmVyIGZvciBSb2NrY2hpcCdzIE5QVQo+ICAgICAgIGFjY2VsL3JvY2tldDogQWRk
IElPQ1RMIGZvciBCTyBjcmVhdGlvbgo+ICAgICAgIGFjY2VsL3JvY2tldDogQWRkIGpvYiBzdWJt
aXNzaW9uIElPQ1RMCj4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQgSU9DVExzIGZvciBzeW5jaHJv
bml6aW5nIG1lbW9yeSBhY2Nlc3Nlcwo+ICAgICAgIGR0LWJpbmRpbmdzOiBucHU6IHJvY2tjaGlw
LHJrbm46IEFkZCBiaW5kaW5ncwo+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbm9k
ZXMgZm9yIE5QVSBhbmQgaXRzIE1NVSB0byByazM1ODgtYmFzZQo+ICAgICAgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBFbmFibGUgdGhlIE5QVSBvbiBxdWFydHpwcm82NAoKZnJvbSBhIGhhbmRsaW5n
IHBvaW50IG9mIHZpZXcsIEkgd291bGQgZXhwZWN0IHBhdGNoIDEgLSA2Cihkcml2ZXIgY29kZSAr
IGR0LWJpbmRpbmcgcGF0Y2gpIHRvIGdvIHRocm91Z2ggc29tZSBkcml2ZXIgdHJlZQpidXQgaGF2
ZSBub3QgY2x1ZSB3aGljaCBvbmUgdGhhdCBpcy4KCkFuZCBhZnRlcndhcmRzLCBJIHdvdWxkIHBp
Y2sgdXAgdGhlIGFybTY0IGRldmljZXRyZWUgYWRkaXRpb25zCnBhdGNoZXMgNyAtIDEwIC4KCgpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
