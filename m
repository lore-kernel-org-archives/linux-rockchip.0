Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF99CCD187
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Oct 2025 23:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8FNJ4+EQNhRpMIl+408xJ0X/2hCU8GrNPX+2+3PA8uU=; b=jE1Ka14sqbg4Kt
	66/ft8ZvIufk5AnUUXgFt4Hsx5OwTbzfvG+7w4tnQMMxnJVxE840Llzn56FzCvMDkL5RwZL9sONDM
	RNji+1xAIdQB34RFWTX9AYUjnwu40pMKKpaIe6R7hx5hwUze0+Hk1VAUnSqg2EvPYZxL4Wjr1NnJ3
	EbPLGa8qg6YQaEB5zLZ+hDOASUalw4PnV+hDhZJFfHWKphzeqrbCb3pdJJGlxXSv+/mEsgqrGKPzU
	ZTK+sboEzO8e2B+5W3pZ7R/NgDZ+QWqe6o1xEg/9QUWRiFosOTxRZNy+9rn9x2jBOerCJjbFIMoF3
	s9TeiGFwZYOoEbyRfvIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5Ya7-0000000Gkar-0qCF;
	Sun, 05 Oct 2025 23:55:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5Ya3-0000000GkW1-3r9Z;
	Sun, 05 Oct 2025 23:55:57 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 9FAAC11AE;
	Mon,  6 Oct 2025 01:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759708456;
	bh=H6DUy7gUUFzf7L9G58j7/brWtZ1vdQDbJMU7TIx2b+s=;
	h=From:To:Cc:Subject:Date:From;
	b=dNmIR7tdjJz+LYW1VSS0Y7dcW6TLI9FViOmnzeC7yViytgHDpSdGEyPvjxxFapuUk
	 /7SrVAUPeep41iQdUU0CO2lK/t60W+xSkisdTPazs+fjlf4VOx7zUpZkyO2Smt6BZg
	 4PKwXuHeKlgX/7HSFG41gdaqodKY/AakpMeTU2bw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the Orange Pi CM5 Base board
Date: Mon,  6 Oct 2025 02:55:36 +0300
Message-ID: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_165556_090974_27A767BB 
X-CRM114-Status: GOOD (  13.97  )
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
Cc: Ondrej Jirman <megi@xff.cz>, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Algea Cao <algea.cao@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

This patch series adds a device tree for the Orange Pi CM5 Base board
from Xunlong. This is a combination of a compute module and a carrier
board, so the device tree is split in two files.

The work is based on a combination of upstream device trees for other
RK3588-based Orange Pi boards and the downstream device tree, all
checked against the available schematics for the carrier board. The
compute module schematics is unfortunately not available.

The series starts with three patches that add a new tmds-enable-gpios
property to the rk3588-dw-hdmi-qp DT binding (1/5) and update the driver
accordingly (2/5 and 3/5). Those patches have been authored by Cristian
Ciocaltea as part of a larger series, I have incorporated them here
as-is.

Patch 4/5 then add a new compatible for the board to arm/rockchip.yaml.
The last patch (5/5) adds the device tree for the board.

Patches 2/5 and 3/5 could be merged separately through the DRM tree,
but patch 1/5 needs to be merged with the device tree in 5/5 to avoid
introducing DT validation warnings. I'd appreciate advice from the DT
maintainers regarding how to handle this, as I have been told before
that DT bindings and DT sources can't be merged through the same tree.

Cristian Ciocaltea (3):
  dt-bindings: display: rk3588-dw-hdmi-qp: Add tmds-enable-gpios
    property
  drm/rockchip: dw_hdmi_qp: Improve error handling with dev_err_probe()
  drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main
    struct

Laurent Pinchart (2):
  dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
  arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  10 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588s-orangepi-cm5-base.dts    | 346 +++++++++++++
 .../dts/rockchip/rk3588s-orangepi-cm5.dtsi    | 473 ++++++++++++++++++
 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    |  70 ++-
 6 files changed, 864 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5.dtsi


base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
