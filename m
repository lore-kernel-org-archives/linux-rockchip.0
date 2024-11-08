Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F44FD5E142
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 06:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iS+n6lXykmzmualCVetF2uQg3yxUek8mDzGlXFCke6I=; b=uBcRExb/Jt4W55
	QgZhyp1SvOx2BFSaQw9pCZrbwBOSD0hPdirrJgOkwIfF8OWmJe+/nYGSoP4Jq1z1jd/Sv5uw/SEbu
	9VjA3AaNSGi+EdkKLF4a/K4ncPCB62Cyw1SidLLuag9NoPKo9TGPLndIB/xJXX2YWRLQ7ZUTWcEIf
	8+Zd5ub/V8MvVTh+NMx03uqN9QH/nAHIiufCRtxwY12A9i88G7erHGai4nzUovL9YaFj8G3KIcpSk
	lCYvo3P8jB8lsnK/BGm3T7wGlmCTwrlO2cxqPBYRagdyw4/JnZw3qxUi7nACQJcuARAgYgtBH1Bhr
	fTAYA+QnwHdJhwlvGTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Iva-00000009YlE-0N1w;
	Fri, 08 Nov 2024 06:57:06 +0000
Received: from mail-m1028.netease.com ([154.81.10.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9IvW-00000009YjA-1MaO
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 06:57:04 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22d35fd3;
	Fri, 8 Nov 2024 14:56:54 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 0/7] Initial support for RK3576 UFS controller
Date: Fri,  8 Nov 2024 14:56:19 +0800
Message-Id: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhLS1YeGUpLGU1KT0tKTx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a930a8fc58e09cckunm22d35fd3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NC46Qhw*FDIdQypLUSo0NAIz
	UQJPFANVSlVKTEhKS09CS0pNSUJCVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLTEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ZhFJOLDPCmOVRq1c9MJZ92uM29kJn5WKwL+TLFpISXECT8JdkHYxH0NjD1h1UDppnMrtjAp7KJQBzJBasR8D0s2NGML8b65ulRzboCCjjVXUudOKl5UPKbzkH1nOTkLY/6lIlsa+UuS7WIr89xEnbQKOipPYsGSNxakH8JW1sDo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1000dFGZBHbcIY0+dtVdQKYZfaPAMvgoTS2zlP+JXns=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_225702_969096_23F618B0 
X-CRM114-Status: GOOD (  18.62  )
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


This patchset adds initial UFS controller supprt for RK3576 SoC.
Patch 1 is the dt-bindings. Patch 2-4 deal with rpm and spm support
in advanced suggested by Ulf. Patch 5 exports two new APIs for host
driver. Patch 6 and 7 are the host driver and dtsi support.


Changes in v5:
- use ufshc for devicetree example
- fix a compile warning
- use device_set_awake_path() and disable ref_out_clk in suspend
- remove pd_id from header
- recontruct ufs_rockchip_hce_enable_notify() to workaround hce enable
  without using new quirk

Changes in v4:
- properly describe reset-gpios
- deal with power domain of rpm and spm suggested by Ulf
- Fix typo and disable clks in ufs_rockchip_remove
- remove clk_disable_unprepare(host->ref_out_clk) from
  ufs_rockchip_remove

Changes in v3:
- rename the file to rockchip,rk3576-ufshc.yaml
- add description for reset-gpios
- use rockchip,rk3576-ufshc as compatible
- reword Kconfig description
- elaborate more about controller in commit msg
- use rockchip,rk3576-ufshc for compatible
- remove useless header file
- remove inline for ufshcd_is_device_present
- use usleep_range instead
- remove initialization, reverse Xmas order
- remove useless varibles
- check vops for null
- other small fixes for err path
- remove pm_runtime_set_active
- fix the active and inactive reset-gpios logic
- fix rpm_lvl and spm_lvl to 5 and move to end of probe path
- remove unnecessary system PM callbacks
- use UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE instead
  of UFSHCI_QUIRK_BROKEN_HCE

Changes in v2:
- rename the file
- add reset-gpios

Shawn Lin (6):
  dt-bindings: ufs: Document Rockchip UFS host controller
  soc: rockchip: add header for suspend mode SIP interface
  pmdomain: rockchip: Add smc call to inform firmware
  scsi: ufs: core: Export ufshcd_dme_reset() and ufshcd_dme_enable()
  scsi: ufs: rockchip: initial support for UFS
  arm64: dts: rockchip: Add UFS support for RK3576 SoC

Ulf Hansson (1):
  pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()

 .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 ++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  25 ++
 drivers/pmdomain/core.c                            |  34 ++
 drivers/pmdomain/rockchip/pm-domains.c             |   8 +
 drivers/ufs/core/ufshcd.c                          |   6 +-
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 368 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  48 +++
 include/linux/pm_domain.h                          |   7 +
 include/soc/rockchip/rockchip_sip.h                |   3 +
 include/ufs/ufshcd.h                               |   2 +
 12 files changed, 617 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
