Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF89C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 17:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N0JtByZtQT3sCUzNQEo048U6dUkRTyPMkrZOudwIgNo=; b=OYz8TKV06kS7nA
	LqVGujyRfgUqFlWoSjxokYT8MkmSk2v6lefy0veQf4ZQ5ljd0Y4W+jL6vyESQ1DD5y3bczmtFghy/
	q5xVRUtXHGL/1F5+xH1JwN5I+zcq63DmmEksPWvIrVTfcGU3DUe6a30G02AIe5KNIgwpsdVx3wqhl
	AJs7+CAxPZ8NWWiCiB2V4taN8RhSla9WT2+TEBu3DYdqJt/JmEQ2hMxVwlvODMoAG1rw9FsnctZ/b
	nLIx7r78rTfDndauHjWdb0Q0LUE7SxgpCblgSSczUSCc7PK+sutv2SGpoM+cvbiJPio9UyJ0TnuLH
	ldnieSlP+RreHtnv720w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18ww-007IOs-1o;
	Mon, 22 May 2023 17:03:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18wl-007IHe-1N;
	Mon, 22 May 2023 17:03:49 +0000
Received: from jupiter.universe (dyndsl-091-248-208-162.ewe-ip-backbone.de [91.248.208.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CC430660574E;
	Mon, 22 May 2023 18:03:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684775022;
	bh=P4c4yqe0e18spr+hpAbUp22X4HYV0KWO766Aol9DUW4=;
	h=From:To:Cc:Subject:Date:From;
	b=EBmJWqi/ZLk9ozgXn3Uk8niKTpQ9V6r1b5yUvuAEHIZfVcgBR9MLUw621uHTb7kqR
	 Jt91M7bpXMWa+ony0ysg/jxABWQYuEXogIRo6nxlXMwSIK0Wv2ocAxWzCHCWZ4X2pA
	 9ZkhzKbjiSLv6R8hazEJCng+YDQ2FyGf1E//l/UYJzj9kLS9ESQLRO6wWUBpVzlq/H
	 bYPQh7NHywsvdXULZda6ROIVjTREsOP7Mq5kfp6UWYU6+Ba/6Y3+VvJfD+D5UFgOT8
	 cGoE+dBQ+pbVzcYyRnog/O9nQVnOZNVgIZOzd0p1qvOdE2hbZCCgklgoT1aUirNmNV
	 QVXXOIlgmK7rg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 77AAB4805CC; Mon, 22 May 2023 19:03:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 0/7] phy-rockchip-inno-usb2: add RK3588 support
Date: Mon, 22 May 2023 19:03:17 +0200
Message-Id: <20230522170324.61349-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100347_617932_A1FE76CF 
X-CRM114-Status: GOOD (  13.68  )
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

Hi,

This adds RK3588 to the Rockchip Inno USB2 PHY driver. The RK3588 has four of
them. Two are used for USB2 and two are used by USB3 controllers (for USB2
fallback mode). All of them can be used with this patchset.

Changes since PATCHv2:
 * https://lore.kernel.org/linux-phy/20230403202307.120562-1-sebastian.reichel@collabora.com/
 * Dropped patch adding the syscon compatible to the DT binding (applied by Heiko)
 * Collected Reviewed-by from Rob Herring for DT binding patch (DT binding)
 * Rebased to v6.4-rc1
 * Removed superfluous init found by Vinod Koul
 * Added one additional patch improving the error message for missing phy-config
 * Fixed address_cells=2 code to not break the PHY at offset 0. I didn't notice it with the
   previous versions, since that PHY is used for USB3 on Rockchip evaluation board and I
   only started working on that recently.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20230331163812.6124-1-sebastian.reichel@collabora.com/
 * Added patch simplifying phyclk handling
 * Added patch simplifying matchdata handling
 * Added patches for reset handling and PHY tuning; after doing more
   testing I noticed my previous patchset does not support hotplug and
   USB devices need to be plugged in at boot time (more specifically
   in PATCHv1 it had to be plugged before the PHY is suspended). This
   fixes the issue.

-- Sebastian

Sebastian Reichel (7):
  dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
  phy: phy-rockchip-inno-usb2: add rk3588 support
  phy: phy-rockchip-inno-usb2: add reset support
  phy: phy-rockchip-inno-usb2: add rk3588 phy tuning support
  phy: phy-rockchip-inno-usb2: simplify phy clock handling
  phy: phy-rockchip-inno-usb2: simplify getting match data
  phy: phy-rockchip-inno-usb2: improve error message

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  21 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 357 ++++++++++++++++--
 2 files changed, 339 insertions(+), 39 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
