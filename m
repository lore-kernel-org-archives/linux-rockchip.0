Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64DA6C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 15:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TSrHR7t4kBqu92xc0Tkqto0g++Mb/ILeAxSnsoooCPM=; b=MGkEicuJK9DA0u
	RYf9Oth09OWmGy1kBmQO4RSpagZhhd3oZj5uQPTNFwaieGYu5tc4QawlNUvD85Ua3KDfu8HPc8Ye2
	PUEmw/t/3Hwg3+9OfrA+usJBMAlbEjTZezmQ+wptniPIQKmBOhGZcmcXeRyicFvpSfMFxNrCpiILo
	mr2zCWmXzTeOEDSqcdj9Nf+JyS8wuBUClP1qHZeJXZetQD8mygtCi+1k8iaQLdgh2lglNYyAsrDE5
	DN+yGOv9FMcDmVURCj88VgXpXEn2QkOoxZaISBSuPjiC/iHe+JK8xd+47Cq6qPmDnhAT3Ve4Chw3L
	3E96hqKqhWFPeMHfjSYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3nw-0085QQ-1F;
	Sat, 23 Dec 2023 15:20:44 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3nr-0085O8-2u;
	Sat, 23 Dec 2023 15:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703344837; bh=gjmk34cgD8+7am+EzGIKiXzgLsLe0EolSOD4WblBzXo=;
	h=From:Subject:Date:To:Cc:From;
	b=A/Y10BnzEC6vegjs4Djnb775+rgfUD+izHRI2vOAXaddj9y+xDeWc1cCiVOXsSaDr
	 9FeTvsE1pggSdnnKBMrZM1XcwqFMA35s7yU1u3OsMyRrGInTmyThVMwigLRrD4/Wpa
	 pL4WSlewSef/lucS2PHuGwIYwINkPf68X6K/DpiDBSo41GsfI/tsW6E5h1Mrh8nAlA
	 awl06zHCw4fCkUfcfmijp/dkunt87aRRbdZg72AxyBL5JDzHdsLgdfhd7HYsM71XAj
	 B+7VLnRShQUQ3uga0jdxgQ2fGrLNKQNXdbxxezczjqBUZNHKPmzVL0sBh6wvAwoOi+
	 2dHkN48NQicfw==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 13CDF371958;
	Sat, 23 Dec 2023 16:20:37 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Subject: [PATCH v2 0/4] arm64: rockchip: Pine64 pinetab2 support
Date: Sat, 23 Dec 2023 16:20:14 +0100
Message-Id: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK76hmUC/22MQQ7CIBBFr9LMWgwzmmJceQ/TBZTBToy0gYZoG
 u4udu3y/f/yNsichDNcuw0SF8kyxwZ06GCcbHywEt8YSNMJiUgtEnm1jlSw1hjW6F0foOlL4iD
 vPXUfGk+S1zl99nLB3/onUlBpxXi+WBN6dB5vLx6f9thuGGqtX90PBjmgAAAA
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
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
 Danct12 <danct12@riseup.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_072040_149091_89EB4D7A 
X-CRM114-Status: GOOD (  10.74  )
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

[5] was also used as source for this queue.

The last to patches fix some dtb-checker warnings that showed up with the new
device-trees.

[1] https://wiki.pine64.org/wiki/PineTab2
[2] https://wiki.pine64.org/wiki/PineTab-V
[3] https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/mobian-6.6/debian/patches/display/0018-drm-panel-add-BOE-TH101MB31IG002-28A-driver.patch?ref_type=heads
[4] https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/mobian-6.6/debian/patches/device-tree/0134-arch-arm64-add-Pine64-PineTab2-device-trees.patch?ref_type=heads
[5] https://github.com/dreemurrs-embedded/linux-pinetab2/tree/v6.6.7-danctnix1

Signed-off-by: Manuel Traut <manut@mecka.net>
---
Changes in v2:
- Removed dtb-checker fixups, cause I am not sure if they are correct
- Applied review comments for dt bindings
- pinetab2 dts:
    * Remove unverified WLAN entries, as in [5]
    * Simplify flash LED definition, as in [5]
    * Fix headphone detection and sound routing, as in [5]
    * Fix CRU clock configuration
- BOE TH101MB31IG002 LCD Panel:
    * Reworked prepare/enable unprepare/disable, as in [5]
- Replaced nicknames by realnames in author and signed-offs

- Link to v1: https://lore.kernel.org/r/20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net

---
Alexander Warnecke (2):
      drm/panel: Add driver for BOE TH101MB31IG002-28A panel
      arm64: dts: rockchip: Add devicetree for Pine64 Pinetab2

Manuel Traut (2):
      dt-bindings: display: panel: Add BOE TH101MB31IG002-28A panel
      dt-bindings: arm64: rockchip: Add Pine64 Pinetab2

 .../devicetree/bindings/arm/rockchip.yaml          |   8 +
 .../display/panel/boe,th101mb31ig002-28a.yaml      |  58 ++
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../boot/dts/rockchip/rk3566-pinetab2-v0.1.dts     |  26 +
 .../boot/dts/rockchip/rk3566-pinetab2-v2.0.dts     |  46 +
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi  | 979 +++++++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c   | 348 ++++++++
 9 files changed, 1479 insertions(+)
---
base-commit: 5254c0cbc92d2a08e75443bdb914f1c4839cdf5a
change-id: 20231222-pinetab2-faa77e01db6f

Best regards,
-- 
Manuel Traut <manut@mecka.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
