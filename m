Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E7BD111B3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 07:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejR0+MLipBnAUw53JGtQP4h8Jt9o+pjMJRvBAEj3PH0=; b=uGwc/rGPS88EP9
	xiWrZn513rgAf0LC4dGGhvL3UW//LMYagYZOrA12szgHy0e77p/TV2ZHfio2CKu3yiQNjmSiU7NlU
	4oQWKlXH31TYpZG+UBFmnSOYcvPfvgizqsEwy3IrBnlSniQQFl1K11sA4h5SrM1yFejGlyEf06C6l
	pL3efjx0dzTNI9OSgUoYhn6LO9kDS4xQV0kW59ybxotjxGipyWCDPx/1CewTPpxhsDaH5I09cGyO3
	V9CLaVRfIXk0Jnjv1APTsn9Wtth6fB8d8IZbXavat9Jrhl70tnfd9sJqZm2+nZQ53ELtNWWYZpy/v
	azcAz5VJ3+QoZkO6Oj0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rZh-0000000Cr8C-2rVZ;
	Mon, 04 Nov 2024 07:32:33 +0000
Received: from mail-m127169.xmail.ntesmail.com ([115.236.127.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7rZe-0000000Cr7M-1i4j
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 07:32:32 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b5d8947;
	Mon, 4 Nov 2024 15:32:23 +0800 (GMT+08:00)
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
Subject: [PATCH v4 0/7] Initial support for RK3576 UFS controller
Date: Mon,  4 Nov 2024 15:31:54 +0800
Message-Id: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh9OSFZJQx8eS01NT09LQh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f616d1f809cckunm1b5d8947
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nhg6HBw*HjIoHjpKHitWCA4B
	TywaCTlVSlVKTEhLTEtOTk9OSk5MVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlMSE43Bg++
DKIM-Signature: a=rsa-sha256;
	b=VjZ9GAWhsJB+tA1g7U+LD0tEazG8JjVGeiRVc8krb7V0MtOZG9q9wqb5hOJWXWgUdR2criLYmbViMkh4iMJGs0XUJoXGffJtoEgEhzZIMB5aXknBCn+QqjVMmUWnNffdwlrpZcHmSxa2PZK48ohpurz3P46PWOSl67XwGh2nNYI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4QVkJH8tpr3nsaz5ziKzyPBT7b6uUdsNiuHpGkBl6UU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_233231_002671_1F8C182D 
X-CRM114-Status: GOOD (  15.67  )
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

This patchset adds initial UFS controller support for RK3576 SoC.
Patch 1 adds new quirk and patch 2 is the dt-bindings. Patch 3-6 deal
with rpm and spm support in advanced suggested by Ulf. Final patch 5 is
the driver added.

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
  scsi: ufs: core: Add UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
  dt-bindings: ufs: Document Rockchip UFS host controller
  soc: rockchip: add header for suspend mode SIP interface
  pmdomain: rockchip: Add smc call to inform firmware
  PM: wakeup: Add device_clr_wakeup_path()
  scsi: ufs: rockchip: initial support for UFS

Ulf Hansson (1):
  pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()

 .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 +++++++
 drivers/pmdomain/core.c                            |  34 +++
 drivers/pmdomain/rockchip/pm-domains.c             |   7 +
 drivers/ufs/core/ufshcd.c                          |  17 ++
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 340 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  51 ++++
 include/linux/pm_domain.h                          |   7 +
 include/linux/pm_wakeup.h                          |   7 +
 include/soc/rockchip/rockchip_sip.h                |   3 +
 include/ufs/ufshcd.h                               |   6 +
 12 files changed, 590 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
