Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56DD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 18:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P/DdMOTCwqCOi57JtqGOAy4sqCKGRUs4Uyb6B3i+K9k=; b=x8WdVdD18vEjTO
	aKDQDHa8lHrxRR0yk+w4wSWAQ4A/LzKSz5VX4WpEsxFh0sSNfSITzwIfaf+30LY57K5c1ZR5ZEzUJ
	vuLgB7uDCb8vjO3CDrxE6r/spgzZiF4z+SPuvrihQ2U1XSiM4BkoHfEPPk3TNctjqX7H300tLecFT
	4ouQ05ICSl3Og+4LGnq3mDvp2eQkpyA/hfvnbR1FSCiMXxKYZMOnZWFGINy1aQEzpSIS0bXQNDxyf
	WS56z8WNmPxKCHjZ1OzIQVr1QFkWmHosnjuZqhO4mbvCAS3P5h0I8PA8MZJu4Gmy6kAOeo5j7kVYl
	rAXknDwCISPkU4ie7rIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOOIG-009wtl-VK; Sun, 27 Feb 2022 18:29:16 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOOHV-009wXr-0D; Sun, 27 Feb 2022 18:28:30 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id AA78D5FBF6;
 Sun, 27 Feb 2022 18:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1645986500;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=u4mYWaeD+lK1rhFLIPWnn/G9vhAGh1u9NboRs/RE/ow=;
 b=JU02zlGxUNEjhxwe27o+7eMPenGEWQmkCPdSIpBR5qunebhSp461VrVf9zJq0NioEDcy2Y
 yr1DUrgO3XLl73oSzLG6eAeukjQICH61Z+5l+GlIrcSGH7RrWpNMXVVVPTqpyBiuqvSwLK
 wauW4nXFOoJSg6psFVakxfQsoI3tXl4=
Received: from localhost.localdomain (fttx-pool-80.245.76.205.bambit.de
 [80.245.76.205])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id C713B4054D;
 Sun, 27 Feb 2022 18:28:19 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH v3 0/3] Add sata nodes to rk356x
Date: Sun, 27 Feb 2022 19:27:57 +0100
Message-Id: <20220227182800.275572-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: b31bc3f0-f46f-4773-805b-b34a3d2c2b1d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_102829_230646_867CF603 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Frank Wunderlich <frank-w@public-files.de>

This Series converts the binding for ahci-platform to yaml and adds
sata nodes to rockchip rk356x device trees.

v3:
  - add conversion to sata-series
  - fix some errors in dt_binding_check and dtbs_check
  - move to unevaluated properties = false
  - add power-domain to yaml
  - move sata0 to rk3568.dtsi
  - drop clock-names and interrupt-names

Frank Wunderlich (3):
  dt-bindings: Convert ahci-platform DT bindings to yaml
  dt-bindings: Add power-domains property to ahci-platform
  arm64: dts: rockchip: Add sata nodes to rk356x

 .../devicetree/bindings/ata/ahci-platform.txt |  79 ----------
 .../bindings/ata/ahci-platform.yaml           | 143 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  14 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  26 ++++
 4 files changed, 183 insertions(+), 79 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
 create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
