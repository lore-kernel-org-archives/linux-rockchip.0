Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B48C001E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 16:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0XPnaYvEDPZkFaChjKANlUp5CyfB9eTPuLl4+SrRME=; b=InaGkNoVSqWHpf
	eChu68fnJv9GqaD87mDOyZBwZ00fG04ErT+uhuB0KP/aadheBzJvWbYH8ulrNC5gKi0fLztvfzJLt
	Vb/Ty+ejUxbTv7X8Lk+QRVB8U4ixRRIQPnuXAMFT3BuCI7u/TXLXjhnMbVYiwFnhSdfwLnFKY5nAO
	aGsO4+Rt/a4vuG+64+jhCHFg8l0lP7kH2fbNwCBfPX9YmE/c7gJkeIY71+Nnql5MhqIbkrPQWbyza
	tk95dqzbw2P2QFWHXkVScPv6w5YPpBZj2/9FkVvqGHvvEtRC1e1nXGG7djpZSi7PtrOPDH0rb8m59
	xMuXzuOWzBfk9DiaDUhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWDQ-00Ghxu-0H;
	Mon, 31 Jul 2023 16:57:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWD4-00GhDD-1W;
	Mon, 31 Jul 2023 16:57:34 +0000
Received: from jupiter.universe (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 154256606FCD;
	Mon, 31 Jul 2023 17:57:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690822647;
	bh=6bj7q3XOaZvPQ3D5Rpuxi1xUU41U8fTcdodRo9gr6cE=;
	h=From:To:Cc:Subject:Date:From;
	b=IApEo06CLoOTI/+bDpJ3jlireiem32kItGql8+F4MK6pufskhhq3WdFUR8SmKvKPk
	 s4QgT45kZvAvV984+0JWSFthWTHDx7HKAztaAE6Tbr6H8uZ6rJo/bwS3asLS8/i2/I
	 A/MuaptY26x6o6KPihalOQc1wKOvDUnTZfALpdA+gq1lZQOlaSyC62hDr4KK9nYADm
	 yT02J8Omgsbf/1G14+Yuo3BTfqB5GsGb5PJ1DCSSV2i6eBzSAXA2kfU4iHp0TnGCvf
	 Uq2r2xTz9ohyZUVj5KtYjyBxawoSuTs9jjrAvsBWu+/RjHQ4hGgtxu7Op/B5EB1fGJ
	 PkCDHhpXQH6eA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 274C9480099; Mon, 31 Jul 2023 18:57:25 +0200 (CEST)
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
Subject: [PATCH v4 0/5] RK3588 PCIe2 support
Date: Mon, 31 Jul 2023 18:57:18 +0200
Message-Id: <20230731165723.53069-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_095730_690611_B35E8D97 
X-CRM114-Status: GOOD (  12.15  )
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

Changes since v3:
 * https://lore.kernel.org/all/20230717172651.64324-1-sebastian.reichel@collabora.com/
 * Remove unneeded quotes in patch 1 (msi handling)
 * Update patch description of patch 2 (interrupt names) adding information
   about Rockchip specific parts

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
