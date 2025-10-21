Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02203CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=giH18gDMHM5tWtXNVcBgCKPGxBjmtGLozANO+TpoTzk=; b=3qpmigcqlts77G
	pOfsKfc/MpGulBbqXrZM4bEfy/8RXMTJhCNGkUedlnQTbbQ809sOIJyMIAPEiEXzI7DKMkf+1GPga
	PxZTIcf/4Paagd2PSFV0zcbDEJtW5P29MEf4ufGaryF7h4qF4HVonVnw47DHhYk6TA9NLQnfmtaXl
	0TIMr6AgsEGJMR3OYK+aR4uInNsxcURsb/9o3UoBK9jQKm1z0gsYcLkt5aADupSkjFZnZG9GXgV9y
	9UOzJ3S/sdzi9NJjNYyWCmA+HfJUsOVnrqwI89IRYX4OJNH1v1jyTh1KFUIw+2rJd56WQ9z00+sM+
	s6/MFRrCShRy1yN230ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB77A-0000000G9b7-3wYm;
	Tue, 21 Oct 2025 07:49:04 +0000
Received: from mail-m32117.qiye.163.com ([220.197.32.117])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB777-0000000G9ZW-1BnP
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 07:49:02 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26a1f526e;
	Tue, 21 Oct 2025 15:48:57 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/4] Add L1 substates support for Rockchip platforms
Date: Tue, 21 Oct 2025 15:48:23 +0800
Message-Id: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a05be1e2309cckunm38953c58648025
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhOQ1ZCQk9JHUsdGE1JSU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Vq3LJ7/UGNDBdYOue34NgFlI1e8t5JJOYSzVN2d/DJK02q0KePB/H/l9zU+hf3ODFCXdQUTtXVCt8myp95loi/M0w7MSvD5VM3TxZtfC2xi+f7I3M3KQDQyJHRmmgn5iqLch2+L8eGdKBu+eLReQvJSJ3lMza2RGGWSfDCCFqeI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=VCQl/FqWE9J7fIKvF5/urqWiEUcYew2okAi1/XK5yYQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004901_601727_DFF7D556 
X-CRM114-Status: UNSURE (   9.49  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This patch-set adds ASPM L1 substates support for Rockchip platform.
As supports-clkreq is used by some more host drivers, patch 1 creates
of_pci_clkreq_present() and patch 2 reuse it. Patch 3 enables or disables
L1 substates on Rockchip driver by checking if clkreq# is ready. Patch 4
enable L1 substates on RK3588-EVB1.

This series of patches is tested on RK3588-EVB1 with a NVMe connected
to the pcie3x4 slot(actually I tested several NVMes), A RTL8111 NIC card
connected pcie2x1l1 and a broadcom Wi-Fi connected to pcie2x1l0. All works
fine under L1 substates by checking the LTSSM.



Shawn Lin (1):
  arm64: dts: rockchip: Add PCIe clkreq stuff for RK3588 EVB1
  PCI: dw-rockchip: Add L1sub support
  PCI: tegra194: Use of_pci_clkreq_present() instead
  PCI: of: Add of_pci_clkreq_present()


 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
