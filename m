Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53842C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 16:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r77bV/fx6/vzNww/0f50CzM9t9mCBfI36w9F/GrgQpw=; b=NpDyWpH3VanBjo
	LvIAHFyz4/oGLXbc3L4ma9PSTQxmAiaTLCYUOxDx1PRWBoHkUFTD2zzcAPnzAsjBdqdgp8m3jKy+N
	pKLmZL8YhrIS+xadX1z7NlvPZnM99zTSM2YsHG18XdUjOafxJvXPXU0NMZNSAqEa3Qd3q87UDxL60
	g3mAhDlt5X4bpMgiKHhd7/S+imbU10KDty1Vyt6UZ/WjnH+r0Hx27qeKrkLHvM82rntPMiTTeavlB
	cI530dYakuHD2CtN4rM//2LS741OqBtNWKhoGWevR7VTHmIqNUYBRiNbIhFq/J0IezZaEdzCNXLkR
	Wm7bIIB5jVoA5sZovnVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piHlh-0089bv-1Z;
	Fri, 31 Mar 2023 16:38:25 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piHla-0089Wm-0T;
	Fri, 31 Mar 2023 16:38:19 +0000
Received: from jupiter.universe (dyndsl-091-248-213-136.ewe-ip-backbone.de [91.248.213.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9FA476603196;
	Fri, 31 Mar 2023 17:38:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680280696;
	bh=NwhmvCgwedXgOKj8QGZBS+73nuAtMHCK1PojwIJNulc=;
	h=From:To:Cc:Subject:Date:From;
	b=oafzbk93J4uWJGrA9/BmPIM36HVvrENIrRLm0OJLN1bmjubK13Cs+iIQLilL0M3TV
	 DSMo+5ZTLRCNjhWZ4wTW6pbHZ9feIGRfIcAjGfG5Tz1xCahHpwGnxbLsmCrfL0PR8n
	 Yw9Znw7Alolt1kp1V1MeUrkWhF1P0B0+tIHF4D0vpagFzVfhDxKcIh5sIC/G3W5TCA
	 MU9kIGi5L6v/XC9V/EhE7Vaxz2/AB6GpU+IxhCpWfCKVYO52WIrZ0PctpDHxrE0wQu
	 stIcrAjGbyHXnwHZ5ljVnzo2YIMq9gu5ulHWwhGbdp296IrN44fvu9PZCqBAndaDo8
	 XnII8Tfp/r61g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id E6B104807E1; Fri, 31 Mar 2023 18:38:13 +0200 (CEST)
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
Subject: [PATCHv1 0/3] phy-rockchip-inno-usb2: add RK3588 support
Date: Fri, 31 Mar 2023 18:38:09 +0200
Message-Id: <20230331163812.6124-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_093818_336895_88A6FC36 
X-CRM114-Status: UNSURE (   7.65  )
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

This adds RK3588 to the Rockchip Inno USB2 PHY driver.

-- Sebastian

Sebastian Reichel (3):
  dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
  dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
  phy: phy-rockchip-inno-usb2: add rk3588 support

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  21 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 214 ++++++++++++++++--
 3 files changed, 220 insertions(+), 17 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
