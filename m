Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7EDEE57CE
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 03:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zV7JniXEI+0qQTngQbQ+npk2ailfCOHAq9SgxvJBSUY=; b=H+7C4dG4CNqA8+
	HqOByVvCnapfPaC8+bEsdNkaABvXVmG8znkciRbC73T5//c+37VMPmRhaFD+6irILu9KPDnrwCNQK
	uJ89tdMWEjL8Wc2itt4UHqsNAUy1p86rIRBiMyp8tfIGNjD8BdCm7xIzWTCKbWkjGvGBimawfrbSK
	5uIJS1GiVBkkOCz6TFlx2AKwoGZQHJzQE0vS6NE/S5ZaZkhndp8/PM7/lUKyyAHE7N6kSXTygp2ig
	TMYda5ds6C2nQH5L6HP/xR1gnklJkMOAlmf2P+tMRHMQzxoasII5EUHC1DU9kexqGYNlXupnSzOwn
	UB5Ycj3cBHKOr0AFbT+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vambd-00000005d02-32XS;
	Wed, 31 Dec 2025 03:10:37 +0000
Received: from mail-m19731115.qiye.163.com ([220.197.31.115])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vambb-00000005cyq-1H6N
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 03:10:36 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f185eb19;
	Wed, 31 Dec 2025 11:10:22 +0800 (GMT+08:00)
From: Joseph Chen <chenjh@rock-chips.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Joseph Chen <chenjh@rock-chips.com>
Subject: [PATCH v1 0/2] Add RK801 PMIC support
Date: Wed, 31 Dec 2025 11:09:49 +0800
Message-Id: <20251231030951.818-1-chenjh@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Tid: 0a9b726294f009d2kunm5c2c20206ab081
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgaQlZIQkhKHRhMHk8eTRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Pxur/lOqe6i4Qq17oHrfLy6VyVDQAUVruhhvyu372ucqqdOzDxrOstTI3H3XrUuGvVjusPrmaXiRt+9aUiZQmCPptbg6sYGAhZ0R8onpXlP0mc38VD1JgFOFaqutpF56F2mOnJdAFtk/Khx/ZHMnIEEYAsRq0TW2NTIQZ9QK/hI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=us1CIR/fHy2TMxsxpzzfl9wB26I2+NyrKkrZt/vFA38=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_191035_668042_AA99E0C5 
X-CRM114-Status: UNSURE (   9.09  )
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

This patch series adds support for the Rockchip RK801 Power Management
Integrated Circuit (PMIC) to the Linux kernel.

The RK801 is a PMIC designed for multimedia and handheld devices. It
includes:
- 4 BUCK regulators (DCDC)
- 2 LDO regulators
- 1 SWITCH regulator
- Interrupt support for power key events

The implementation follows the existing rk808 MFD driver architecture
and integrates RK801 as a new variant in the RK8XX family.

Patch 1 adds the device tree binding documentation for RK801, describing
the compatible string, regulators configuration, and example usage.

Patch 2 adds the rk801 driver support.

Joseph Chen (2):
  dt-bindings: mfd: Add rk801 binding
  mfd: rk808: Add RK801 support

 .../bindings/mfd/rockchip,rk801.yaml          | 199 ++++++++++++++
 drivers/mfd/Kconfig                           |   6 +-
 drivers/mfd/rk8xx-core.c                      |  81 ++++++
 drivers/mfd/rk8xx-i2c.c                       |  33 ++-
 drivers/regulator/rk808-regulator.c           | 243 ++++++++++++++++++
 include/linux/mfd/rk808.h                     | 118 +++++++++
 6 files changed, 676 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
