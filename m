Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D2DCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NhgJgniHG8CrcKTXSBm+ioharyQYolJltv2AJMRE7kw=; b=uzoXU6ls2ePptI
	Tx+4ND6O9vCDyuEl1YkYmIXYTl0mV9Gm4HxJ7R98orMyqPOXOcbT73h+mxh91TC+qXOXQooRoP6id
	+Dn/rwL6bF1kVxejfsb1xhYlCq0ReESZuaAmgOpvJA4VzS3fcdsHyEQuYAr9TQQRJUSpJWAls1RBo
	Gpzp/s8EdetVLGGmpflC6w+XR4YQOVu3MsZWXOepy7MaHeEKckmAud6MJnCUbygg3T7kWf3Ojv9/d
	8OTRnvUBstz9fMjUeotWYaMCC/EuBqfo+3fq8L+ChdlGFhefwdxJlNtjXZ+RIl0C0P0t677cPafKK
	dAkg9AZSg4vIGtoWVsTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHo-00000009YOn-1ALd;
	Thu, 02 Oct 2025 03:47:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHl-00000009YNg-1qjb;
	Thu, 02 Oct 2025 03:47:18 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 3146817D8;
	Thu,  2 Oct 2025 05:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376745;
	bh=CqJTrZYTK3Z0ORhw23J/pfO/CDry02I1G+tj+KnzEhY=;
	h=From:To:Cc:Subject:Date:From;
	b=h+KLTpD26CpYFaq7lCJm7HyNWgLavxGZpu5BXNFW5yNQtTZHVkdTE6ZaqsylAOo+r
	 j8qoIPSiHxcPIiV7yB22e6fFMz2HZmgIDOwtu61rDBNj1eddvr/LTLEvhIEm1zwhrt
	 oHGZGXbBB3jTfg1Bs0Lovjo6kOThluY/yCb4bjSo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: rockchip: Add device tree for the Orange Pi CM5 Base board
Date: Thu,  2 Oct 2025 06:47:05 +0300
Message-ID: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_204717_624386_9B7AC345 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
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

The series starts by adding a new compatible for the board to
arm/rockchip.yaml. The next patch documents a missing property in the
rk3588-dw-hdmi-qp bindings that the device tree needs. Finally, the last
patch adds the device tree.

Patch 2/3 may be slightly controversial as the new DT property could be
better named. It has been supported in the driver for a year now, so
there could be users in the wild. I have therefore decided to keep the
current name. I am open to alternative solutions.

Laurent Pinchart (3):
  dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
  dt-bindings: display: rk3588-dw-hdmi-qp: Document enable-gpios
    property
  arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588s-orangepi-cm5-base.dts    | 342 +++++++++++++
 .../dts/rockchip/rk3588s-orangepi-cm5.dtsi    | 450 ++++++++++++++++++
 5 files changed, 803 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5.dtsi


base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
