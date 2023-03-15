Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D77C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 03:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P+EQ5LLOsEvcPTFfB5HZA8KMHCkOm+PW3aGbOSZIr6c=; b=E81VQEzJBRue9U
	yf6L+bYHhnjUYv3dgJeiN6Usnv72jYJCHOoM0Y+lm02IYQHGdaEbS8wcg4fkv4ji3ocpeHQObKNkB
	ZMOQ4utYblehaz5AMkS503bKDS89Sq2WzwKvCeuuBfZpOxFgtdHniNw+MI8k5JQrEzBnmddoBH5EM
	kqehKAaQUFAMJD/ytfjzdLcsk5k2lFsDYbz0KYnvo4shRsykXbByTWSSPxBJwB17PGZe2GXH0bwUd
	Og4ni3z8D2DMgSJUEcz6P/wC0itu/VpMgClKLUwN52WrHhgWKsfRCr31s+lKzT4W8eTYehvQrLOqW
	jdKXeHa+uuiQpaRW7CTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHv5-00CADG-2G;
	Wed, 15 Mar 2023 03:35:19 +0000
Received: from dev.gentoo.org ([2001:470:ea4a:1:5054:ff:fec7:86e4] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHv2-00CACX-03;
	Wed, 15 Mar 2023 03:35:17 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Yixun Lan <dlan@gentoo.org>,
	Nick Xie <nick@khadas.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: rockchip: Add Khadas edge2 board
Date: Wed, 15 Mar 2023 11:34:39 +0800
Message-Id: <20230315033441.32719-1-dlan@gentoo.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_203516_120893_51A1D897 
X-CRM114-Status: UNSURE (   9.45  )
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

In this patch series, we will try to add basic support for 
Khadas Edge2 board, currently only UART and eMMC are enabled.
The ethernet connect to Pads expansion board via USB which will need extra
effort, so no ethernet for now.

The first patch introduce a dt-bindings for Edge2 board,
the second patch will add basic device tree.

Yixun Lan (2):
  dt-bindings: arm: rockchip: Add Khadas Edge2 board
  arm64: dts: rockchip: Add Khadas edge2 board

 .../devicetree/bindings/arm/rockchip.yaml     |  5 +++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 37 +++++++++++++++++++
 3 files changed, 43 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
