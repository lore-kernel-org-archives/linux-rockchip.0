Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E431BECAAA3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 21:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7lQUF0zEi/LVDCNC0x6P+/SMqzA/BdDgLBXNQ17TTo=; b=HDwIoWUCbh4Ymk
	VeAnT2q07yNa1c4mo4hGBx+2gJJqruvnV1Wh5yx6jlUepPtjjJ9vJusdQURyBmnRqKW8zdbTzxzMi
	zc6I70EjI1r2QRqglRyJwVmSlYLa7vITjR9Osm+IAOFP3/7bBGtloJQQhJeVFgzqmuBCw4ljlZkuO
	3lcGBo1FtOs4MMpR1W5sPqAoC4r8tf6qVI5H9mMhrEpr4Kb+PPzGkxm8eVGJrw4eqIlabn/mOE5b3
	tQ9KhL9CFQFCej12rUqqGttTldEw7xfVnFm5q+fN/xMvdqvjWgvN5JbO4oOckHTAEv/uEsqB8mMTt
	NOhPigM0fbo5Pch0MIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKOE-003RdH-8v; Thu, 25 Aug 2022 21:27:50 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKNx-003RW2-41; Thu, 25 Aug 2022 21:27:34 +0000
Received: by mail-wm1-x331.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so3155017wmb.4;
        Thu, 25 Aug 2022 14:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=gVyA5Z8on1cy579HoV3noOGIo3WqfSZOmskPQryMgtM=;
        b=eh/92dgXe0iyyY3sIgffq4zQH1CFGZMuz44bFe8eqZHrFui9w/sE6IF5yB6Fdl31m9
         q/giSA6K9TF82r9Z7/3a4lVAFzW09wfSy/165AHuuX16K0vRUPKCGD88QxiQrmNNKFx/
         PNqEaEBMyUErAL98l5VkqMECNhnqLIbgF9x4D6cHJgp36/cUymxzMzQQUJrrxSPR1sbt
         tHiJVRpf39VhrJtrS58T4jfliailuywTFaV0Thv6p9mpo8wn9z+7N1sXsoBeOU89UV5s
         QbzmqMrzJx9P96pqjjVEkAMxG/vEgHLJT3Oq/CqKdjvYxbHH4kMnlj0pz7TUi/E6SNFj
         m1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=gVyA5Z8on1cy579HoV3noOGIo3WqfSZOmskPQryMgtM=;
        b=VVV7u+VRTi9kxg6XrgwptQKcIixXLb6jtI30AwjIgtauywAyIhOaSd2u9r1UZh34f7
         7hCoXU2Bpej9TSTp0TWR8d1wkn8P1Xw+r0hDMbCRrf1ANgej+0XAoTP7DVulDHSnkMZS
         1NlfD9xc7ZQlI+U1Aq2KBlPu2yoTK1P9N8runrFmOcY88rR5MaazyJRKcyReu1ihI6dJ
         mc3CPWBCjAzDZt+mw6sD5WxKMdFAL91JKTOx6EOG7RJCC9jymdjwTqHXmFHRE3rg4q+I
         aefuGhV671HYUsUSRO4Y/QvPVdjyDMET542Cv5YbYnkMyt0n4GIMT4KaxryAO7m8Qgft
         qr6A==
X-Gm-Message-State: ACgBeo2B/4r2bgovmh4TKR5EAHdZJa0A1J/ynQWDCjE/JNFc9ZrM4qNS
	J1+XNofzHWi8eYeQQogOj0I=
X-Google-Smtp-Source: AA6agR6cucYg/Du4YLrUO/NU1z88fXBAfmGuIRfE4Qrrqd+tO0lSZk3dovhgHxZZ4bK1jgQbd4MAWw==
X-Received: by 2002:a05:600c:198e:b0:3a5:d4a2:8896 with SMTP id t14-20020a05600c198e00b003a5d4a28896mr8967780wmq.140.1661462851646;
        Thu, 25 Aug 2022 14:27:31 -0700 (PDT)
Received: from kista.localnet (82-149-1-172.dynamic.telemach.net. [82.149.1.172])
        by smtp.gmail.com with ESMTPSA id k1-20020a5d6e81000000b0021e8d205705sm242110wrz.51.2022.08.25.14.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 14:27:31 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Evan Quan <evan.quan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <narmstrong@baylibre.com>, Robert Foss <robert.foss@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Russell King <linux@armlinux.org.uk>, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, amd-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] gpu: move from strlcpy with unused retval to strscpy
Date: Thu, 25 Aug 2022 23:27:29 +0200
Message-ID: <22761203.6Emhk5qWAg@kista>
In-Reply-To: <20220818210008.6721-1-wsa+renesas@sang-engineering.com>
References: <20220818210008.6721-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_142733_189954_11913C57 
X-CRM114-Status: GOOD (  11.28  )
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

RG5lIMSNZXRydGVrLCAxOC4gYXZndXN0IDIwMjIgb2IgMjM6MDA6MDcgQ0VTVCBqZSBXb2xmcmFt
IFNhbmcgbmFwaXNhbChhKToKPiBGb2xsb3cgdGhlIGFkdmljZSBvZiB0aGUgYmVsb3cgbGluayBh
bmQgcHJlZmVyICdzdHJzY3B5JyBpbiB0aGlzCj4gc3Vic3lzdGVtLiBDb252ZXJzaW9uIGlzIDE6
MSBiZWNhdXNlIHRoZSByZXR1cm4gdmFsdWUgaXMgbm90IHVzZWQuCj4gR2VuZXJhdGVkIGJ5IGEg
Y29jY2luZWxsZSBzY3JpcHQuCj4gCj4gTGluazoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
L0NBSGstPXdnZlJuWHowVzNEMzdkMDFxM0pGa3JfaV91VEw9VjZBNkcxb1VaY3BybWsKPiBud0Bt
YWlsLmdtYWlsLmNvbS8gU2lnbmVkLW9mZi1ieTogV29sZnJhbSBTYW5nCj4gPHdzYStyZW5lc2Fz
QHNhbmctZW5naW5lZXJpbmcuY29tPgoKQWNrZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BnbWFpbC5jb20+CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICBk
cml2ZXJzL2dwdS9kcm0vYW1kL3BtL2xlZ2FjeS1kcG0vbGVnYWN5X2RwbS5jICAgICAgfCAyICst
Cj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1haGItYXVkaW8uYyB8
IDYgKysrLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jICAg
ICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX2hlbHBlci5j
ICAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfbXN0
X3RvcG9sb2d5LmMgICAgICAgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kc2ku
YyAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2kyYy90ZGE5
OTh4X2Rydi5jICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaV9kZGMuYyAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fYXRvbWJpb3MuYyAgICAgICAgICAgIHwgNCArKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NvbWJpb3MuYyAgICAgICAgICAgICB8IDQgKyst
LQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgICAgICAgICAgICAgICAg
fCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jICAgICAgICAg
ICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfaTJjLmMgICAg
ICAgICAgICAgIHwgMiArLQo+ICAxNSBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAx
OSBkZWxldGlvbnMoLSkKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
