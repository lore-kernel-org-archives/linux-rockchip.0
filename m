Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46CBFC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 03:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZJ9jCXVn/PRgTG8DRnZlGttl0jJvomGf0WHAqB3TOhs=; b=wXdXmHav8+OevZ
	WfBQ64Jjx9VSLV/bH3RCmo3/nR1klnwujgleqAPFZ5eou/TLIQwG2QvH3EzQXZm5ptprS81avoNUy
	y5bl3AAU/9U0H+C4djPN3wcmOgShSRcSGJbWJDaaGARCQdzr9eN81yvgVkrzhmyrx0bZ2P7I4C6Z6
	cgkn/ab9ejRnyy3qR49cj48C3fej2W6CBdKEMHpjpQAfChxVv9ZsdKUMM0O5hsoioO6a9ByJ3h4mC
	nZEeBAF4Zv6RDYv+iyFT9XMwQK+zeWdeWkuyCe3Da3p2dhyHyt3lAm5FMQUjBUocRNCMWwHL02lPV
	G3/k/7WXtZzrwyevyAHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqPk6-00000002gs4-2uV6;
	Sat, 30 Mar 2024 03:50:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqPjy-00000002gqz-1SZh;
	Sat, 30 Mar 2024 03:50:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B5427618B4;
	Sat, 30 Mar 2024 03:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B46FC433C7;
	Sat, 30 Mar 2024 03:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711770645;
	bh=9vfnCaBKXtRgcv8F/e2Tdm9el/hk1aeDzoQ8fr5kZVQ=;
	h=From:To:Cc:Subject:Date:From;
	b=uQA6GcFPKYREp76Y3XplqgC946g7Qj2DQ5d0cxAX0A65rXq457pclwXd8q9/b3ruC
	 rxPd0RTlXTBqT4GOQ5h0UNp5T+62XgIEXKGtyBlpo78SEJBODeWhO6KdxlKnnFs+Tc
	 jJEOKe7IUgFjgHiGdEubAwXzf3Hlg3vNoprDtzQSZq+rq/t6GUTHMGcsezRDoDGidJ
	 k5Hq/D8o2QZz+o6Na4MEbmXqy7aLQoPNRxCICMdnMWWbqwsDSwNBUeya+SnrUpIrad
	 IPXbPYDwAZtsXYpt+3VB32bDo93snv9LB5rZkmKi2i8HSD8+DzPdB/M+jvG6yzrDyv
	 /0Q1J3xPFGg7w==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
Date: Sat, 30 Mar 2024 12:50:43 +0900
Message-ID: <20240330035043.1546087-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_205046_483960_F2B15A19 
X-CRM114-Status: GOOD (  11.02  )
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

The PCIe specifications (PCI Express Electromechanical Specification rev
2.0, section 2.6.2) mandate that the PERST# signal must remain asserted
for at least 100 usec (Tperst-clk) after the PCIe reference clock
becomes stable (if a reference clock is supplied), for at least 100 msec
after the power is stable (Tpvperl).

In addition, the PCI Express Base SPecification Rev 2.0, section 6.6.1
state that the host should wait for at least 100 msec from the end of a
conventional reset (PERST# is de-asserted) before accessing the
configuration space of the attached device.

Modify rockchip_pcie_host_init_port() by adding two 100ms sleep, one
before and after bringing back PESRT signal to high using the ep_gpio
GPIO. Comments are also added to clarify this behavior.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---

Changes from v1:
 - Add more specification details to the commit message.
 - Add missing msleep(100) after PERST# is deasserted.

 drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 300b9dc85ecc..ff2fa27bd883 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	int err, i = MAX_LANE_NUM;
 	u32 status;
 
+	/* Assert PERST */
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
 
 	err = rockchip_pcie_init_port(rockchip);
@@ -322,8 +323,19 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
+	/*
+	 * PCIe CME specifications mandate that PERST be asserted for at
+	 * least 100ms after power is stable.
+	 */
+	msleep(100);
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
 
+	/*
+	 * PCIe base specifications rev 2.0 mandate that the host wait for
+	 * 100ms after completion of a conventional reset.
+	 */
+	msleep(100);
+
 	/* 500ms timeout value should be enough for Gen1/2 training */
 	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
 				 status, PCIE_LINK_UP(status), 20,
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
