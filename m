Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B60EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY4euperl+rmYOLixKw5/uXvorE8xhz5oXFzOEdaI8M=; b=SbwFbuJMpBlJQg
	/o2yWaGbY6xJ+DPj/keq4n1XVbezKnFVETPULXS6u7NSUHQi834eHa5tL+eQ2LxU5Sx9bXbEDT7D2
	fPL/Ux9CA13jTbaffJH0KcHIFuvkFwUF8Jmo9VMEZYKphfR8R4DFLchHRLE4m3RToxAtMLVtfHbQ6
	tuzvY5xtnwIlcCVSsdNkicINYMq2JsfKurOvF+GhyssZ8k/j+1zfVGTIQ4iC7UuSJaxJBfZe0lUAn
	ns/RUVVYh+UmI882C23wQqlh+ynk1S5xhWh4+RxThuN10xyyTPPo27/zfbV/o10HpGbNe1hu+SiNV
	FBBKlvHh1VgO7cVpSsWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleTL-002uOo-8S; Mon, 02 May 2022 22:24:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleSu-002uBl-DA; Mon, 02 May 2022 22:24:25 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nleSe-0005bu-O7; Tue, 03 May 2022 00:24:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>,
 inki.dae@samsung.com
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 laurent.pinchart@ideasonboard.com, dri-devel@lists.freedesktop.org,
 samuel@sholland.org, krzk@kernel.org, wens@csie.org, hjc@rock-chips.com,
 airlied@linux.ie, sw0312.kim@samsung.com, alain.volmat@foss.st.com,
 daniel@ffwll.ch, lgirdwood@gmail.com, linux-samsung-soc@vger.kernel.org,
 jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org,
 jy0922.shim@samsung.com, alim.akhtar@samsung.com,
 linux-sunxi@lists.linux.dev, broonie@kernel.org, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, kyungmin.park@samsung.com,
 mripard@kernel.org
Subject: Re: (subset) [PATCH 0/5] Replace drm_detect_hdmi_monitor() with
 drm_display_info.is_hdmi
Date: Tue,  3 May 2022 00:24:02 +0200
Message-Id: <165153020899.255051.7449667943189045907.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152424_492459_734DA991 
X-CRM114-Status: GOOD (  10.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVGh1LCAyMSBBcHIgMjAyMiAxOTowNzoyMCArMDIwMCwgSm9zw6kgRXhww7NzaXRvIHdyb3Rl
Ogo+IEFmdGVyIGltcGxlbWVudGluZyBhIHNpbWlsYXIgY2hhbmdlIGluIHRoZSBWQzQgZHJpdmVy
IFsxXSwgYXMgc3VnZ2VzdGVkCj4gYnkgTGF1cmVudCBpbiB0aGUgVG9EbyBsaXN0IFsyXSwgSSBu
b3RpY2VkIHRoYXQgYSBzaW1pbGFyIHBhdHRlcm4gaXMKPiB1c2VkIGluIHRoZSBFeHlub3MsIFJv
Y2tjaGlwLCBTVEkgYW5kIHN1bjRpIGRyaXZlcnMuCj4gCj4gVGhpcyBwYXRjaHNldCByZXBsYWNl
cyBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRvcigpIHdpdGggaXNfaGRtaSBpbiB0aGUKPiBtZW50aW9u
ZWQgZHJpdmVycy4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzIvNV0gZHJtL3JvY2tj
aGlwOiBpbm5vX2hkbWk6IFJlcGxhY2UgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSB3aXRoIGlz
X2hkbWkKICAgICAgY29tbWl0OiBkNDQ5MjIyZGQ1MzNjYTgzYTNhMmY4OGFhZmUwNmZkZDhkNTg5
MjgwClszLzVdIGRybS9yb2NrY2hpcDogcmszMDY2X2hkbWk6IFJlcGxhY2UgZHJtX2RldGVjdF9o
ZG1pX21vbml0b3IoKSB3aXRoIGlzX2hkbWkKICAgICAgY29tbWl0OiBkMmVhYmRiNjQ0NzRjMjEw
MTk1Mzg1OTYwMTc5NGYxZWEwOGVjMWQ5CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
