Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D42CD1288
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 08:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ma8a/wmeJUAK+tUGSHJIAlZt70nbToEqdBkf3RLTSt8=; b=ZQtAOF656ghGAV
	/z7VF9g/gq+3x/Fn9ETROEqSTag5tjVnvdP7ZSqK2abc+yZVYs/7uZ0Lw6qWDV7A70IiOZz3JOUHd
	BsJzNbUtFz2nCz4qCSwXgnl20aBeqh6hfxR4qQvbItqYMnlkynWQ9h+y5m2YVITiyuScshcCb9KbG
	j/4mcsvqiIXPtM+FwR8WFc6vd40ixaxHyP+OeePRaNT2e3nMv5+iIWeSAi98hK9lnwwbpkOgit6uM
	HvchM7b6YQV3RQzBMXFlVabM3PV9+hEhqm09/ODnqdHaph27Vbk0eWf8kp/OoyKzAbJprR6+MCAzH
	9AFQHoPEwz2d6FEVIpXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq7qR-0000000HMTA-02DM;
	Fri, 29 Mar 2024 08:44:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq7qN-0000000HMSZ-1rId
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 08:44:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 43543618CC;
	Fri, 29 Mar 2024 08:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEA49C433C7;
	Fri, 29 Mar 2024 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711701849;
	bh=b6rn6CCukcXUENMWI2jflkbWvCdoMCgXAAuXqt6upD0=;
	h=From:To:Cc:Subject:Date:From;
	b=dIpxnTV3O6ShgwfSYQMGIX9zsZ73Ft2dFsUQUP4HpbfZR9FKo+UMCUlSfr3AvQRR/
	 eWquhL8swJg2Zq4tOfCoF8p3ZfWBsYp03RWdgWs10JjNbx3l+IhjAdiMhdmcTl0vO/
	 t7Gyr+o/fCPs6niNq/EDMcrlGdYFLtuJRgBckUxjqf/0f82mjWcsv+uDHe8bLSheUV
	 10L1pcjEBdGXZ6sj5Al7k0l4oJEh4r2b783aT+OnG3HP3sJ2dIQABDU+aVHX/XhKEJ
	 y7oRNepdpaYhai0XzbLfzk9dVuDL3E2CFYZETFs10wf26SUDRcowgYIJQcyc3GXvPA
	 KatP+d0CmWtpQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST handling
Date: Fri, 29 Mar 2024 17:44:07 +0900
Message-ID: <20240329084407.1050307-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_014411_555849_8F7724A5 
X-CRM114-Status: UNSURE (   8.41  )
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

The PCI specifications mandate that PERST be asserted for at least
100ms. Make sure that is done in rockchip_pcie_host_init_port() by
adding a 100ms sleep before bringing back PESRT signal to high using the
ep_gpio GPIO. Comments are also added to clarify this behavior.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 300b9dc85ecc..d526b9d26c18 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	int err, i = MAX_LANE_NUM;
 	u32 status;
 
+	/* Assert PERST */
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
 
 	err = rockchip_pcie_init_port(rockchip);
@@ -322,6 +323,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
+	/*
+	 * PCIe specifications mandate that PERST be asserted for at
+	 * least 100ms.
+	 */
+	msleep(100);
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
