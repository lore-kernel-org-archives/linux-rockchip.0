Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD7A6CED270
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 06:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n68F82vWnY4eaDNrKoyy/BBLx9z77jogVP8vcZCHwss=; b=QmBpQoWuDyClI7
	CTIh0fzairCd0dx12+fshl5dVRoM/xO8Z3EvYRGDRj0NbZVvSwIqIyD76a8IgoekPq/88C0NXQb0H
	Phv2OvAT9bg3DFIOsAJWUdf8qQhWn/TxzaZpXVXDXAmJTIuYS+cKHX7sZ1bkma5mS/ZKldvSESFaq
	i7T0HOeFzsPnVPcqZsuGEs0BBsEhoOSzHqfkcG5PW3LyqNk+fm9MraVDnt0vN1F/adEHlIoH9YE9h
	oT2tXlQ2vsaOKt435E/uPSCdHhJhw9adZNi4kUQQVDZnXFsOvPF55xyhXjjrzjxchi05XcHAg2XWB
	q4Iw4i9KzmSxBi0m0iiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3Wd-00000004chL-2WMe;
	Tue, 08 Oct 2024 06:16:51 +0000
Received: from mail-m49194.qiye.163.com ([45.254.49.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy3WR-00000004cev-19ba
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 06:16:42 +0000
DKIM-Signature: a=rsa-sha256;
	b=KgWcxmciS5GpTyARwQKc6LgB1GSoVgqp2cAyyTzFohP9VzhACD6syEFaz9rP2m1BdhLv/8GBTE1ZkwNUrpibIE/EdUjSBiOYgbb/EG2+9Tz2JyJfcgvQok5xP8Ns5VbKEFwlLqZWY2Bxmpiew2YPP1y5fdvSoZ4MK8XdFl+sijI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2RS102Ukpw/1cre6YFY4SwFwGmpEzgGiNXvoLSujjwY=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id EBDA5520711;
	Tue,  8 Oct 2024 14:15:57 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 0/5] Initial support for RK3576 UFS controller
Date: Tue,  8 Oct 2024 14:15:25 +0800
Message-Id: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5KT1ZISE5JQ0oYTBkYS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a926ac528db03afkunmebda5520711
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBA6Cio5NTIdTRYpCStNDkgj
	Dy9PCi5VSlVKTElDSE1DSk5CT0JMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9LQ0I3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_231639_848530_B7B71D5D 
X-CRM114-Status: GOOD (  14.82  )
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
Patch 1 adds new quirk and patch 2 is the dt-bindings.
patch 3/4 deal with rpm and spm support in advanced. Final atch 5 is the
driver added.


Changes in v3:
- rename the file to rockchip,rk3576-ufshc.yaml
- add description for reset-gpios
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

Shawn Lin (5):
  scsi: ufs: core: Add UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
  dt-bindings: ufs: Document Rockchip UFS host controller
  soc: rockchip: add header for suspend mode SIP interface
  soc: rockchip: power-domain: Add GENPD_FLAG_RPM_ALWAYS_ON support
  scsi: ufs: rockchip: initial support for UFS

 .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 103 ++++++
 drivers/pmdomain/rockchip/pm-domains.c             |   3 +
 drivers/ufs/core/ufshcd.c                          |  17 +
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 346 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  51 +++
 include/soc/rockchip/rockchip_sip.h                |   3 +
 include/ufs/ufshcd.h                               |   6 +
 9 files changed, 542 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
