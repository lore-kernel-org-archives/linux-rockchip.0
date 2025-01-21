Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EE6DC02181
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 03:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z5+IseBh1iOKgQwu6hR7ZUxkdGRlQjK06owXP0HA2AM=; b=PBSMmQs1xVXrcH
	are7GRnS33tjJkf3ibc2irdPtGoCvKCzIJkU8s4CkT7OyQBS3ezoClv8B5buDsB+OXkrNENf+0FFb
	c5RqdZBNhl1JAfqouxTG6i2/KAGS7IkODhvKb8OaXEBJPy6o6yeB+UsoHqvACaz8wWgYGjMLFKMBu
	i9mGLznoGGqJ3dJjYniAMu0AkKhXk9RkugCpiupz7KUdLWxgPiUwl5NEZ7/W94GjJd4JUi91sx8zF
	8H0bj5/JfTUC6Z92LiKrWnIZYk46gmWxc9NDlAigahHiwULZD0R0lla7UqYkCEcxW+ufUqICqJHmr
	iJRPWDHTaWy2oewD77jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4Vc-00000006lXx-3V0G;
	Tue, 21 Jan 2025 03:00:56 +0000
Received: from mail-m19731120.qiye.163.com ([220.197.31.120])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta4VZ-00000006lVP-3XHC
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 03:00:55 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 93fdce2d;
	Tue, 21 Jan 2025 11:00:41 +0800 (GMT+08:00)
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
Subject: [PATCH v6 0/7] Initial support for RK3576 UFS controller
Date: Tue, 21 Jan 2025 11:00:20 +0800
Message-Id: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0ZH1YeHkhNGE0aTk5DQhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9486ce196e09cckunm93fdce2d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngg6PAw6OTIVPDULDhcQOUko
	CQ0aCzBVSlVKTEhMT0lDT09ISkxLVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhNSEo3Bg++
DKIM-Signature: a=rsa-sha256;
	b=Gvh5oBvAo2dEaj4m6Wyc7BHdyd3s9/JSuGx7UtA+I7Bk3WhN3/Sv/aPlA1hhCX3ssyT6sqSCW1yhEAm2M4SOaMvYoNQTR//dMjzy7YXNYh1eUvvLDRPX41XuUa1YIwQjRGi4PNh3SVCk7ZtROWlquqx2+Vv9jWVC+gaDRe58yIA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qsTW96WiGE4VUwg9HWhzzwlQ4H/BodYfL5T/GO8IzPA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_190054_407182_8E2CC47B 
X-CRM114-Status: GOOD (  19.21  )
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


Changes in v6:
- export dev_pm_genpd_rpm_always_on()
- replace host drivers with glue drivers suggested by Mani
- add Main's review tag
- remove UFS_MAX_CLKS
- improve err log
- remove hardcoded clocks
- remove comment from ufs_rockchip_device_reset()
- remove pm_runtime_* from ufs_rockchip_remove()
- rebase to scsi/next
- move ufs_rockchip_set_pm_lvl to ufs_rockchip_rk3576_init()
- add comments about device_set_awake_path()
- remove comments suggested by Mani

Changes in v5:
- fix indentation to 4 spaces suggested by Krzysztof
- use ufshc for devicetree example suggested by Mani
- fix a compile warning
- use device_set_awake_path() and disable ref_out_clk in suspend
- remove pd_id from header
- reconstruct ufs_rockchip_hce_enable_notify() to workaround hce enable
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
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  24 ++
 drivers/pmdomain/core.c                            |  35 ++
 drivers/pmdomain/rockchip/pm-domains.c             |   8 +
 drivers/ufs/core/ufshcd.c                          |   6 +-
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 363 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  46 +++
 include/linux/pm_domain.h                          |   7 +
 include/soc/rockchip/rockchip_sip.h                |   3 +
 include/ufs/ufshcd.h                               |   2 +
 12 files changed, 610 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
