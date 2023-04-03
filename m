Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A64C77B6C
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8kXam2V4MWSewyi9o8iZygJxVE8YgBX/CrwlsbyEbY=; b=zSzAk+tcSb7AiY
	fXZ+R4NAy6JJYw6u1akHyMPpqGYp+iVB7iQV8mesNLCT2VpPu6Fn5dQBaUsH5/mcThhWXzbguqiUW
	51gd7bxEquR9IyJ4W8eiiH7rAzRm6062GXjcuqKZI5QsUrXynQINMBavGEWFkN7xYwECJY+jCIoqT
	bzVJQ+nALrW/DDpPEWfcRU4vDRB6B5pv2ULRiZIlZC6SJ/EFJp59v4Fb82PC+rROyLmLuy0wCNiGG
	tTdg/oCJVhXGDG/0M6rNp9NETZzMuwivsJR+j5GPH+xYQ0jMnGMoxiE2v8Pn5LlokkyAApcOwlhZy
	3ZkaqFVeTqbYdmSl8N4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQi9-00Gayn-0H;
	Mon, 03 Apr 2023 20:23:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQi1-00GalO-2w;
	Mon, 03 Apr 2023 20:23:23 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A86EB660312D;
	Mon,  3 Apr 2023 21:23:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553391;
	bh=sQ6dRJmgA+DiW2bmxGnApVDBaMlLaTvrDqylSpALvFc=;
	h=From:To:Cc:Subject:Date:From;
	b=EoITfGwZIX9Zfs4sZSAl39HzDrn0fzFHU1fHHb9y5O114oaC5djzz+xfH0OUjtuBb
	 KOfM5zPFjgtv0nSq7KmJn7wXHcEGev33Whs72/o8cL+EauuQ/EAlOYA+HN0f8U37oJ
	 vgVR0jPlMFfmB3M5lgJRcwZ5kzUgNhlrazeBDTEdX2CrpycNRoIzO3LzlC0ZahvHxO
	 llifpkvFfN5PQbLHgpNC19Nco+HTyHFqKcHkUX9hMl4gZC5+WmmhkKWKYdM+xmTW1g
	 wnUgdmEnNzj+Y955LL85RhYAnCyuQYVXS+A1JQxs05oDBu1mvybT+GJ9H9h6gCozRL
	 TRV8zIyaCeePg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 08AF74807E1; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
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
Subject: [PATCHv2 0/7] phy-rockchip-inno-usb2: add RK3588 support
Date: Mon,  3 Apr 2023 22:23:00 +0200
Message-Id: <20230403202307.120562-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132322_113806_F1A81E2A 
X-CRM114-Status: UNSURE (   9.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

This adds RK3588 to the Rockchip Inno USB2 PHY driver. I have tested this
with USB2_0 and USB2_1.

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
  dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
  dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
  phy: phy-rockchip-inno-usb2: add rk3588 support
  phy: phy-rockchip-inno-usb2: add reset support
  phy: phy-rockchip-inno-usb2: add rk3588 phy tuning support
  phy: phy-rockchip-inno-usb2: simplify phy clock handling
  phy: phy-rockchip-inno-usb2: simplify getting match data

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  21 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 352 ++++++++++++++++--
 3 files changed, 339 insertions(+), 36 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
