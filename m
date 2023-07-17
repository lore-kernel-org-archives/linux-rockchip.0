Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86777EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cv8Njyo07DUXJ3LmrdVwnWaxXVHCjqCkq4XlKKmzEoI=; b=f5KzLFeZPkS7uv
	enlGL4nybJ2ijpwXRvKVr3brpgPu9JpEwH7tmdIFHVUh0wXEpUawuOgEE9rCDBirqwXFfIAuGrOXU
	W6h4Hrtolgiu1x0go5QCPt0G4Jf6gXXH169bssyYkHFD1XX5kIkq3pAouuP4/YfwIHtBQxJ1dGltE
	WRdz5d91RyLvebLrrXNqcwKCbMnYGXu2cYQZd2GQpriuU3FyFhNUNUt/jA3x8z0g4LgIRqgxACwOE
	UNc+WZgaj4MFPhbfD2a+rWaVJulkZvnI+WGCa0+W2qC40zXSxw4rLQD3RZp880KPu6Xhvr1U7ZY9a
	J72irxeSs+wfZFMNa76A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS0l-004ffv-1L;
	Mon, 17 Jul 2023 17:27:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRzx-004fS2-2z;
	Mon, 17 Jul 2023 17:27:04 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CDA85660297B;
	Mon, 17 Jul 2023 18:26:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689614816;
	bh=br7WffVrrPWJblI6hMOtAA0jJageWK+7UkJ5nR07nqU=;
	h=From:To:Cc:Subject:Date:From;
	b=JVOOWYXgss8UA4sAVTgkYDtjcBT/b6kAw/X48OcmDdWKC7MgBaUKwgFoWBWaK9pWl
	 480byhNk9NwbJ1RIyLepO5zC2pVEdDGmt9F8RZp9r2yO3CzbcUA6cVCYRm4zCG7Xnh
	 Pc1xQMC8jP2n5p8NHF7pWOPdTXZzCF6nJ0g9b75+xNY1PGJscSHdTwA+tD3QcBlkAP
	 xbl3z2WMoFMJjokghr0P2YmcmE1hdxpDPy/lXC8fGMJRLjENSCkD3CDcj6ENQN+4y2
	 OixAH6wUx+BOUMrMRjjDhk8MsGUJNEhjcc3nKlkS6y8chaso5eG6zOXmtwR3nFVARg
	 RVJ8qqXAkSNgw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 17F5B480C72; Mon, 17 Jul 2023 19:26:53 +0200 (CEST)
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
Subject: [PATCH v3 0/5] RK3588 PCIe2 support
Date: Mon, 17 Jul 2023 19:26:46 +0200
Message-Id: <20230717172651.64324-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_102702_154290_45AD07BA 
X-CRM114-Status: GOOD (  11.19  )
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

Changes since v2:
 * https://lore.kernel.org/all/20230713171851.73052-1-sebastian.reichel@collabora.com/
 * Removed num-ib-windows/num-ob-windows/num-viewport from DT
 * Added patch making 'msi' irq optional, if 'msi-map' property is available
 * Updated binding according two discussion with Serge Semin, I provided two
   options by adding one extra patch that should be squashed into the main
   one or dropped depending on preferences from DT binding  maintainers.
 * Collected Reviewed-by/Tested-by from Jagan Teki

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

Sebastian Reichel (5):
  dt-bindings: PCI: dwc: improve msi handling
  dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
  dt-bindings: PCI: dwc: rockchip: Use generic binding
  dt-bindings: PCI: dwc: rockchip: Add missing
    legacy-interrupt-controller
  arm64: dts: rockchip: rk3588: add PCIe2 support

 .../bindings/pci/rockchip-dw-pcie.yaml        |  70 ++++++++++++
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |  18 +++-
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  51 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 102 ++++++++++++++++++
 4 files changed, 237 insertions(+), 4 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
