Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18ABFC46CD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKPKAWP5PNeL/SkmtGRb2JPMikPhvorexqTKttSoifA=; b=hq5DjPRicjH7Re
	rxCXwkp4vrELSxIVw3I6YiAr8W8P04ZN71IDjTHfGZJ9GCV9wfH3x7dzyrRPUh8ZavgkyTcuDytOx
	6/tWuOzAI6IiNE40Rot6yJYuEK7q+Ps0IawGjFIGOdI9dZn+PQXRzc6/XZ/LG9YdBxjG8XMwODNXx
	xekTM7f/vL4Ku9TvTQnNuwzH5RtzvCu6qMxgdpiMtsl89wsbttfxOg24Oh0BxLKA7YdYCxtXT5J+w
	Ia2vG33TVjtGJvM+x+fQkBz49CU/ekDQxLK+/3N5JKl7py4u9R7z6EvWqD55Yin7Fdnh2LxKMEp20
	8p2ZtBh53Pc4IG/e5LPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdRE-005cbg-1c;
	Fri, 22 Dec 2023 11:11:32 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdQu-005cSi-2Q;
	Fri, 22 Dec 2023 11:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703243143; bh=0fR2LDFcxwDpap7qMyCNCyANGL/FAUTkYz5H7M+mUm8=;
	h=From:Subject:Date:To:Cc:From;
	b=E7ei35fEyNQLV6kQpHiNwkAdt2o4MDhvff5xMX2p+pxe6p+w8dI04tejBk5yVnzzh
	 veVgo0e1+YojtbRNvZQx+YdqQ8PowrU1BUtbRUs7WakAfmdSFqS1qvJy/X2/vV43Fz
	 NAzHgQ6mGnGi9cqPc0s5OgMXM+aVKCYO7tHyoxEsfZoJeFNupw9i/xbPCXx09BT8Vp
	 SZ+7IfqRkROge97dRETC0k42t6vLUkWRf8XGS+2gzxIP/0P6OoB2Ga8uih050pDNcr
	 j6FLVuQvOcrmsNY8DXCNMgva0zWv2R9gwd2G6PnoM/i2vMj1qGYkFNtlSKt1wKK1K3
	 gvUh4643vzCew==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 8BFC3370D3B;
	Fri, 22 Dec 2023 12:05:42 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Subject: [PATCH 0/6] arm64: rockchip: Pine64 pinetab2 support
Date: Fri, 22 Dec 2023 12:05:40 +0100
Message-Id: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIRthWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDIyMj3YLMvNSSxCQj3bTERHPzVAPDlCSzNCWg8oKi1LTMCrBR0bG1tQA
 RoX8xWgAAAA==
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_031112_946618_74B89002 
X-CRM114-Status: GOOD (  10.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This adds support for the BOE TH101MB31IG002 LCD Panel used in Pinetab2 [1] and
Pinetab-V [2] as well as the devictrees for the Pinetab2 v0.1 and v2.0.

The BOE LCD Panel patch was retrieved from [3]. The function-name prefix has
been adapted and the LCD init section was simplified.

The Pinetab2 devicetree patch was retrieved from [4]. Some renaming was needed
to pass the dtb-checks, the brightness-levels are specified as range and steps
instead of a list of values.

The last to patches fix some dtb-checker warnings that showed up with the new
device-trees.

[1] https://wiki.pine64.org/wiki/PineTab2
[2] https://wiki.pine64.org/wiki/PineTab-V
[3] https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/mobian-6.6/debian/patches/display/0018-drm-panel-add-BOE-TH101MB31IG002-28A-driver.patch?ref_type=heads
[4] https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/mobian-6.6/debian/patches/device-tree/0134-arch-arm64-add-Pine64-PineTab2-device-trees.patch?ref_type=heads

Signed-off-by: Manuel Traut <manut@mecka.net>
---
Manuel Traut (4):
      dt-bindings: display: panel: Add BOE TH101MB31IG002-28A panel
      dt-bindings: arm64: rockchip: Add Pine64 Pinetab2
      arm64: dts: rockchip: Fix some dtb-check warnings
      dt-bindings: display: rockchip: dw-hdmi: Add missing sound-dai-cells property

Segfault (2):
      drm/panel: Add driver for BOE TH101MB31IG002-28A panel
      arm64: dts: rockchip: Add devicetree for Pine64 Pinetab2

 .../devicetree/bindings/arm/rockchip.yaml          |    8 +
 .../display/panel/boe,th101mb31ig002-28a.yaml      |   73 ++
 .../display/rockchip/rockchip,dw-hdmi.yaml         |    4 +
 arch/arm64/boot/dts/rockchip/Makefile              |    2 +
 .../boot/dts/rockchip/rk3566-pinetab2-v0.1.dts     |   26 +
 .../boot/dts/rockchip/rk3566-pinetab2-v2.0.dts     |   46 +
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi  | 1032 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |    5 +-
 drivers/gpu/drm/panel/Kconfig                      |   11 +
 drivers/gpu/drm/panel/Makefile                     |    1 +
 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c   |  307 ++++++
 11 files changed, 1513 insertions(+), 2 deletions(-)
---
base-commit: 24e0d2e527a39f64caeb2e6be39ad5396fb2da5e
change-id: 20231222-pinetab2-faa77e01db6f

Best regards,
-- 
Manuel Traut <manut@mecka.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
