Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41FDEB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 17:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hbeZf3VIuK9Jmwjw5MI/imXoz+El9cdQKh/KMyJSrb4=; b=jXBqw0B1XyumCl
	uHiWd0wo4hO1AElfv/oASBoem6N9KvA14eesRBy5RBVxm+nDYtcw3vlp7ACmLULZoKh6FS6yHTmiG
	8ACyZHIGD6xmoJNdZi+BEExjd/5yOnyYbJrjSCM3gU6/pwzrdDROto71wZSCs9mhcnc4/46g7teOl
	8gwpUI6X1HCJYVr93/DJdQhtopRT0ZO/753ddFI8y8kaw1lD/sSePYgCGuuE0NlUuELhqmhlATi7l
	xTT4doCN4vr+BqR8EAfNDLihoaAShIvjIlYAHNdSKUj2DcVGl0ZW2MFk3X/cE2XMCyRXvprmBiYUS
	t+ghmj9iOzlV7HC5KWJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoq-001DSI-2Z;
	Fri, 16 Jun 2023 17:01:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoX-001DHW-0h;
	Fri, 16 Jun 2023 17:00:48 +0000
Received: from jupiter.universe (dyndsl-091-248-215-052.ewe-ip-backbone.de [91.248.215.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5B5C06606F5E;
	Fri, 16 Jun 2023 18:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686934841;
	bh=nZW8jIngftAoIkAle/riuzj5bsvkOIB+Gq2bER8yW54=;
	h=From:To:Cc:Subject:Date:From;
	b=cLLVx+z2fOqD0rp76NdCTqrbkAPVqTvc4l+7f+Hx/BlooEfYSq0uIFfmv2evuckov
	 NoWDgqB9g6vq31sSu2jFakd5DiEXk6y+DTEKcMQnrkTZ0mqig/Wm9eHokkqb2pV0lA
	 nKypubAz+UQhaInYuqqiGjqjABPVqSqx68FBczpiXUUgG1STuinJVMDM8fqihAdTFd
	 wW13DBU23HbAtK3UHTAgJgvkEaEhj23kQSFbMFuwNf0b6nm7buAFa5VEBU0WS/i7TZ
	 S0PXY97Zhxe+H2PMtIXBWPpc/GGNZwE8K7TIzewLaERz/4BGAvuzC9j4/EdxizVkpy
	 NoA1d6aX+w+SA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0F76248058E; Fri, 16 Jun 2023 19:00:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/4] RK3588 PCIe2 support
Date: Fri, 16 Jun 2023 19:00:18 +0200
Message-Id: <20230616170022.76107-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_100045_450484_9E470856 
X-CRM114-Status: UNSURE (   9.91  )
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

This adds PCIe2 support for RK3588. The series has been tested with the
onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1) and
Radxa Rock 5B (&pcie2x1l2). The final patch in this series depends on
the combo PHY support added by the SATA series [0].

[0] https://lore.kernel.org/all/20230612171337.74576-1-sebastian.reichel@collabora.com/

Thanks,

-- Sebastian

Sebastian Reichel (4):
  dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
  dt-bindings: PCI: dwc: rockchip: Add missing
    legacy-interrupt-controller
  dt-bindings: PCI: dwc: rockchip: Update for RK3588
  arm64: dts: rockchip: rk3588: add PCIe2 support

 .../bindings/pci/rockchip-dw-pcie.yaml        |  58 +++++++++-
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |  15 ++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  54 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 108 ++++++++++++++++++
 4 files changed, 231 insertions(+), 4 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
