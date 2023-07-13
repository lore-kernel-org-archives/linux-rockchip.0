Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA0BC001E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 17:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rswylZj8sDLD/fPwiAllYN6r6G9EAdQDEUs37WH2cQE=; b=JCEgy5/spSEE+v
	9bd1Wl8Xa8Uqt4Q3Wxh1tLxeiqPlTZE5GBdH5cBCQ/Smwn0/XjcqlvGqecmnt1H1FLMVOu23awQ0w
	ZZnfb8z2NhjoRhfBMuRxoQy/Dw8g71KSHuJua+jEGlXnZUO09ma/YbBPVX1hKnr3NYjL/vqUkFgO7
	Kiq4sN+G11lZmeRl2F+lYrapbrNtKS5BibPhjfPzfR11ufVTiIjAAKkEKStswFlJfZaDvdlCLRUmh
	xlKn30Vcqq2urQIH92mzlC4XDfnCKVtjqvmybnaSW1AZlP1IKjHoTQpvUByB1wReyrFcx/rVJjYAy
	nICEZQ7knbyLccfCndDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJzy6-0041uP-25;
	Thu, 13 Jul 2023 17:19:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJzxz-0041ps-3A;
	Thu, 13 Jul 2023 17:19:01 +0000
Received: from jupiter.universe (dyndsl-091-248-214-236.ewe-ip-backbone.de [91.248.214.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C9050660704F;
	Thu, 13 Jul 2023 18:18:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689268735;
	bh=8SNAy+HvH8jQ2JIS228H02hqVwZkE4Q7e2sspvBi+Rw=;
	h=From:To:Cc:Subject:Date:From;
	b=U8nI13odssM7oE33SH8LuPAfkYxOW48OW0KhbokYZWk/yQ5pWtyIvFgdnL7KnfiCn
	 qclTNdpJfONcLQcIRuyudlZI3sh5i9a/8Oma3sHyqluGxDGEpYyNAsinoIQNn0zufp
	 rh0KQvg9TDXfEaW9yGfeaPpIiYrAuSCYMjyR1Z2HNMtrUPtz3M9lL44+Vsvsj2aSHW
	 fsBvca5LKECMhkI7n9uc3DqY/0dO9fOIuXGGN+cJ6kKkU458TUIS2iWD7Cc0Rws2P8
	 r73NMTCkxO2WSoaghP7u3n7AxnWZSlxH7CvTXdrBCAC5QxFmPZ3ch4kkRpcAjFV0Xa
	 Qhb3XLi+jlHdg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C896F480084; Thu, 13 Jul 2023 19:18:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>
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
Subject: [PATCH v2 0/3] RK3588 PCIe2 support
Date: Thu, 13 Jul 2023 19:18:48 +0200
Message-Id: <20230713171851.73052-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_101900_144487_16AF0DCE 
X-CRM114-Status: GOOD (  10.52  )
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

This adds PCIe v2 support for RK3588. The series has been tested with
the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
and Radxa Rock 5B (&pcie2x1l2).

Changes since v1:
 * https://lore.kernel.org/all/20230616170022.76107-1-sebastian.reichel@collabora.com/
 * Dropped patch adding 'RK3588' (queued by Rob)
 * Updated patch adding legacy-interrupt-controller according to comments
   from Rob and Serge
    - added missing additionalProperties: false
    - added all properties to new required property
    - removed useless quotes around interrupt-controller
    - added Rob's Reviewed-by
 * Updated patch adding the missing RK356x/RK3588 interrupt names, so that it
   provides more details about the interrupts
 * Updated the DT patch according to the comment from Jonas Karlman, so that
   the addresses are in 32 bit address space starting at 0x40000000

[0] https://lore.kernel.org/all/20230612171337.74576-1-sebastian.reichel@collabora.com/

Thanks,

-- Sebastian

Sebastian Reichel (3):
  dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
  dt-bindings: PCI: dwc: rockchip: Add missing
    legacy-interrupt-controller
  arm64: dts: rockchip: rk3588: add PCIe2 support

 .../bindings/pci/rockchip-dw-pcie.yaml        |  48 ++++++++
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |  76 +++++++++++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  54 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 108 ++++++++++++++++++
 4 files changed, 285 insertions(+), 1 deletion(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
