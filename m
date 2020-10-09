Return-Path: <SRS0=itU/=DQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CEE8C8303A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2020 19:58:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED59C225A9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2020 19:58:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="S2h7jhux"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED59C225A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0UlF+2DDP/5S+d01FFYzxWuDBoONxi7MIfQR3FSp8mA=; b=S2h7jhux3CR3SrDsRBmTaPe6k0
	7EUdlyjShALHexyAye0k0+VZ37zSkHc84QSAlbvhehri9TvoMbRtrARmfu3sD1QijUd2aPKrdOO9p
	WdNgxJjNXmDL3Di5FQGk0Ix+yNckJ07eYWYGylEV9yI/857awomSgwaj9/uiY/ArPqecYRJdIUbOl
	eeWE2pDAEDvEVAJsSyRTliQ4geYOzC2CZm1GFjzmefZkjfBcAdcyvIDeOgu2AHpNQa1Lgc938e1Eo
	7ZhfNtGDR5yKuxWLIqb7qOIy2nR64rQm+oiNs+EFKGV8kAkOV+GPKn8aLmcJsSeyuTb2yOmskYDWA
	pIpEKNQA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kQyWU-00048Q-FK; Fri, 09 Oct 2020 19:57:50 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQySO-0001lZ-P4; Fri, 09 Oct 2020 19:53:48 +0000
Received: by mail-ot1-x341.google.com with SMTP id n61so10049818ota.10;
 Fri, 09 Oct 2020 12:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RuJMRkm/6mOfAA06cZuhfs1T0jl6aR1m0eqVuTh18Xg=;
 b=AwcXxA/72TXwl6AkDz6fj13kFBzifLpRYjnJFIA7Ywqxbjxv7BC+6QLc3p3RjKe3yU
 hcwEpmX78txktcO+q+zLC9BsacBGO0A/2zq1J72rAnKWotv7850KnKhgkAjS5sHYCTw8
 kgSDkQ10i6gnPWNJwxoMZkr+wg6mFE4upUsdkmce8qDEnKYMhjmGHKRaaoRVxZi33+oj
 sl6c0Bbhx7Mq0qX0mBR55prXetWlbk1ivSv2Tt+LpmnUPZvAK6QRaR9xEcJhqhblkzpH
 JBlY37eE37gUfY6km45OfZymo1RmWuvehbWcBvEQDTDuPUfa61ci2Hly2UfiuXeuVqKb
 waLQ==
X-Gm-Message-State: AOAM530L3LdeBexPtVfMzqZbCZsc1GD1+dAvEmwps2ylBPoP4QTTEjMq
 EG+9y8RGMj4L74zaNBP5fQ==
X-Google-Smtp-Source: ABdhPJwi1Nt0bUQebv1yfgeFfw3DTpd+okHMVMA/kAzJwhWYLHi73v6K/4pHkplIlP85ycCMJBtTgA==
X-Received: by 2002:a9d:638d:: with SMTP id w13mr9789206otk.32.1602273212011; 
 Fri, 09 Oct 2020 12:53:32 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id t20sm8316526oot.22.2020.10.09.12.53.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 12:53:31 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH] PCI: Move Rockchip driver to Cadence directory
Date: Fri,  9 Oct 2020 14:53:30 -0500
Message-Id: <20201009195330.396775-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201009_155336_964186_3F17DB23 
X-CRM114-Status: GOOD (  17.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip PCIe host controller is in fact a Cadence based PCIe host.
This is most evident by comparing the address translation registers.

As a first step to merge the Rockchip driver into the Cadence driver,
let's just move the Rockchip driver into the Cadence directoy. This at
least makes the relationship obvious.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Tom Joseph <tjoseph@cadence.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
This is going to conflict at least with 'PCI: rockchip: Fix bus checks 
in rockchip_pcie_valid_device()' and the common ECAM defines. 

 drivers/pci/controller/Kconfig                | 28 -------------------
 drivers/pci/controller/Makefile               |  3 --
 drivers/pci/controller/cadence/Kconfig        | 28 +++++++++++++++++++
 drivers/pci/controller/cadence/Makefile       |  3 ++
 .../{ => cadence}/pcie-rockchip-ep.c          |  0
 .../{ => cadence}/pcie-rockchip-host.c        |  2 +-
 .../controller/{ => cadence}/pcie-rockchip.c  |  2 +-
 .../controller/{ => cadence}/pcie-rockchip.h  |  0
 8 files changed, 33 insertions(+), 33 deletions(-)
 rename drivers/pci/controller/{ => cadence}/pcie-rockchip-ep.c (100%)
 rename drivers/pci/controller/{ => cadence}/pcie-rockchip-host.c (99%)
 rename drivers/pci/controller/{ => cadence}/pcie-rockchip.c (99%)
 rename drivers/pci/controller/{ => cadence}/pcie-rockchip.h (100%)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index f18c3725ef80..3ffc4ad01a33 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -202,34 +202,6 @@ config PCI_HOST_THUNDER_ECAM
 	help
 	  Say Y here if you want ECAM support for CN88XX-Pass-1.x Cavium Thunder SoCs.
 
-config PCIE_ROCKCHIP
-	bool
-	depends on PCI
-
-config PCIE_ROCKCHIP_HOST
-	tristate "Rockchip PCIe host controller"
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
-	depends on OF
-	depends on PCI_MSI_IRQ_DOMAIN
-	select MFD_SYSCON
-	select PCIE_ROCKCHIP
-	help
-	  Say Y here if you want internal PCI support on Rockchip SoC.
-	  There is 1 internal PCIe port available to support GEN2 with
-	  4 slots.
-
-config PCIE_ROCKCHIP_EP
-	bool "Rockchip PCIe endpoint controller"
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
-	depends on OF
-	depends on PCI_ENDPOINT
-	select MFD_SYSCON
-	select PCIE_ROCKCHIP
-	help
-	  Say Y here if you want to support Rockchip PCIe controller in
-	  endpoint mode on Rockchip SoC. There is 1 internal PCIe port
-	  available to support GEN2 with 4 slots.
-
 config PCIE_MEDIATEK
 	tristate "MediaTek PCIe controller"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index bcdbf49ab1e4..1c03d1178df0 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -23,9 +23,6 @@ obj-$(CONFIG_PCIE_IPROC_PLATFORM) += pcie-iproc-platform.o
 obj-$(CONFIG_PCIE_IPROC_BCMA) += pcie-iproc-bcma.o
 obj-$(CONFIG_PCIE_ALTERA) += pcie-altera.o
 obj-$(CONFIG_PCIE_ALTERA_MSI) += pcie-altera-msi.o
-obj-$(CONFIG_PCIE_ROCKCHIP) += pcie-rockchip.o
-obj-$(CONFIG_PCIE_ROCKCHIP_EP) += pcie-rockchip-ep.o
-obj-$(CONFIG_PCIE_ROCKCHIP_HOST) += pcie-rockchip-host.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
 obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
 obj-$(CONFIG_VMD) += vmd.o
diff --git a/drivers/pci/controller/cadence/Kconfig b/drivers/pci/controller/cadence/Kconfig
index 5d30564190e1..2bdf6eb03ed8 100644
--- a/drivers/pci/controller/cadence/Kconfig
+++ b/drivers/pci/controller/cadence/Kconfig
@@ -65,4 +65,32 @@ config PCI_J721E_EP
 	  Say Y here if you want to support the TI J721E PCIe platform
 	  controller in endpoint mode. TI J721E PCIe controller uses Cadence PCIe
 	  core.
+
+config PCIE_ROCKCHIP
+	bool
+
+config PCIE_ROCKCHIP_HOST
+	tristate "Rockchip PCIe host controller"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OF
+	depends on PCI_MSI_IRQ_DOMAIN
+	select MFD_SYSCON
+	select PCIE_ROCKCHIP
+	help
+	  Say Y here if you want internal PCI support on Rockchip SoC.
+	  There is 1 internal PCIe port available to support GEN2 with
+	  4 slots.
+
+config PCIE_ROCKCHIP_EP
+	bool "Rockchip PCIe endpoint controller"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OF
+	depends on PCI_ENDPOINT
+	select MFD_SYSCON
+	select PCIE_ROCKCHIP
+	help
+	  Say Y here if you want to support Rockchip PCIe controller in
+	  endpoint mode on Rockchip SoC. There is 1 internal PCIe port
+	  available to support GEN2 with 4 slots.
+
 endmenu
diff --git a/drivers/pci/controller/cadence/Makefile b/drivers/pci/controller/cadence/Makefile
index 9bac5fb2f13d..eb1aeae6c52b 100644
--- a/drivers/pci/controller/cadence/Makefile
+++ b/drivers/pci/controller/cadence/Makefile
@@ -4,3 +4,6 @@ obj-$(CONFIG_PCIE_CADENCE_HOST) += pcie-cadence-host.o
 obj-$(CONFIG_PCIE_CADENCE_EP) += pcie-cadence-ep.o
 obj-$(CONFIG_PCIE_CADENCE_PLAT) += pcie-cadence-plat.o
 obj-$(CONFIG_PCI_J721E) += pci-j721e.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie-rockchip.o
+obj-$(CONFIG_PCIE_ROCKCHIP_EP) += pcie-rockchip-ep.o
+obj-$(CONFIG_PCIE_ROCKCHIP_HOST) += pcie-rockchip-host.o
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/cadence/pcie-rockchip-ep.c
similarity index 100%
rename from drivers/pci/controller/pcie-rockchip-ep.c
rename to drivers/pci/controller/cadence/pcie-rockchip-ep.c
diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/cadence/pcie-rockchip-host.c
similarity index 99%
rename from drivers/pci/controller/pcie-rockchip-host.c
rename to drivers/pci/controller/cadence/pcie-rockchip-host.c
index 0bb2fb3e8a0b..1ee409d7b7e5 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/cadence/pcie-rockchip-host.c
@@ -36,7 +36,7 @@
 #include <linux/reset.h>
 #include <linux/regmap.h>
 
-#include "../pci.h"
+#include "../../pci.h"
 #include "pcie-rockchip.h"
 
 static void rockchip_pcie_enable_bw_int(struct rockchip_pcie *rockchip)
diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/cadence/pcie-rockchip.c
similarity index 99%
rename from drivers/pci/controller/pcie-rockchip.c
rename to drivers/pci/controller/cadence/pcie-rockchip.c
index 904dec0d3a88..72ba71bab8e9 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/cadence/pcie-rockchip.c
@@ -19,7 +19,7 @@
 #include <linux/platform_device.h>
 #include <linux/reset.h>
 
-#include "../pci.h"
+#include "../../pci.h"
 #include "pcie-rockchip.h"
 
 int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/cadence/pcie-rockchip.h
similarity index 100%
rename from drivers/pci/controller/pcie-rockchip.h
rename to drivers/pci/controller/cadence/pcie-rockchip.h
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
