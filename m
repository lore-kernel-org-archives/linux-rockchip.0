Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C99DC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgIemabSDFixDeedHb1oQ1xlOjXrYcjEtA4Efcp/ojU=; b=fpgv2rs0rwPZi5
	HgCXSqN27AFKqYdcfVPyaKIqXsWjTcP8tRWCKZHp54LwIoEJf6GcZKX0NYJEdD0NdXP41O4F5zyMT
	0C/+7taH/ncRBODlBfOcKey/J8xTJbG1DQq8P4S2mC0/r1BKSSiaZlyylDSy8IDTdsfNGOqrnwLOH
	SoSsWB0DqLXsgLSXndvGsmzOha+F/0eGJ1E1es9650AQ98793DqZjFiCdI8dq11Mjg4vU96mhcY4Y
	Z8fkgFh6fLdAvsNrS0MyjwxgEEa96Ni6xG61Doj77b2hgZtfiUC4KR0QyVf9Ms/X7ggXOIrwyGHRe
	O0pCSHEwbdhcQ6Hxru6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCa-00000002k5E-2a8m;
	Sat, 30 Mar 2024 04:20:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQC6-00000002ji7-2xKi;
	Sat, 30 Mar 2024 04:19:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 60F4BCE3197;
	Sat, 30 Mar 2024 04:19:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF19C43142;
	Sat, 30 Mar 2024 04:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772387;
	bh=3XQZJFnWiBCa0pKYKa49EaaDKQXO1nRdHx3kVp9W1t4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SIpfUVs8r5fCMYLpr0DqPZiS7/h9HDaAlucZ3PWu0yhGwc+/+5M3sDIglXFB2efR6
	 kE9LheQ66adzwszcQHewFuwV/Jo6tsBBOE5QKGQ3bjFWvTLHa/P4PRlMBsWaTslWRU
	 J+KJdj3xC7uihNTREoc63N/3BAMEV55Dej9FLP0cG5pyjWLy0hi0CyEEUjBpfZ1CxW
	 q9npUiSPglnrq1p/w2CIVcuGtqFCZ6E/TRDSu3h1nBU5k3UDSZFmjSMqgPEnYEXuLx
	 yz1QjWV4lW3MadTkAuwmUe0oYxJ4FS8oDUDbiNrRi5siA84poPe6R1EjrBfeHVyjv5
	 nSQ3eEFfQbzdA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 05/18] PCI: endpoint: test: Synchronously cancel command handler work
Date: Sat, 30 Mar 2024 13:19:15 +0900
Message-ID: <20240330041928.1555578-6-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_211951_275766_91C5361E 
X-CRM114-Status: GOOD (  11.05  )
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

Replace the call to cancel_delayed_work() with a call to
cancel_delayed_work_sync() in pci_epf_test_unbind(). This ensures that
the command handler is really stopped when proceeding with dma and bar
cleanup.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 0e285e539538..ab40c3182677 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -709,7 +709,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 	struct pci_epf_bar *epf_bar;
 	int bar;
 
-	cancel_delayed_work(&epf_test->cmd_handler);
+	cancel_delayed_work_sync(&epf_test->cmd_handler);
 	pci_epf_test_clean_dma_chan(epf_test);
 	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++) {
 		epf_bar = &epf->bar[bar];
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
