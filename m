Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B6D2C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 10:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8CukzwKN6SbECaSr11FkkTxgYP60LckIDRRIsyQGl8=; b=v2IlVMzH+7Ow7Y
	jXUkJID12qfoFkG7/dxgVx1pZUX9rnQU/ccFeNLCUAY5+iNm2tvRePMZRfq3rO3xF3qQ8XKOwzwE2
	qSV4wM5zin1ogqsDdEj/awZ4BzulgpTHyXci2hLBD1jC2SYiw0OJ8bYIqCQ8v3PK2wHvSKm33iP8k
	D5N+6AkeCf4voXWwqnIriz8nIbk6givkgqqIdNUJuMSb9tNqG0Ayq1s7mVFaJw1eeWKSDzPTJXEhR
	7kPWciDltt3c9/4otDGPmYKg4hh+HuYnENTIYHqLY5WBLeLG9KJHV7IdzKzxbo5s+NZ210OexRpCL
	trpsnxpVL79OSzM7d0KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq9KE-000000000yS-1ZYs;
	Fri, 29 Mar 2024 10:19:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FK-0000000HQ6y-05dj
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:09:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6AFB8618E2;
	Fri, 29 Mar 2024 09:09:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A986C433C7;
	Fri, 29 Mar 2024 09:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703397;
	bh=RPsgju8wctxiYCFYLF54C9sP1jD4+/+es21hzNjkdTU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B1cTxtUbTPUd9ck6/DygX4OqkrkhveqVmBXUCh15b/AsCDmL0Ph7xsaN/xn+Vd446
	 rrRc0xLppVRCebX/nhzF+UY5qrN099j/SibNwlLHkEKRnS0QRs3AeOQDocRgptxx2q
	 WwvoyEHITgVCHCNAWmV1ewRH25xbM8dU5uS1+5GBfvJXOsC/hCCLhJsotY/KO5mrjj
	 q+hbJgHNhr8Dm3CN6k7nwb0e3DhriLLyDNFvMZ8T+2QbV79kqV77YhFP7TDd5USZQQ
	 WRVOyeLWtTLKQSGjyVn1i1v4AHwA60+D56x5Fao52QaCYd9SyBXMcFa/+UXmpqJBbD
	 NyvXEUAn5b8Ng==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 06/19] PCI: endpoint: test: Synchronously cancel command handler work
Date: Fri, 29 Mar 2024 18:09:32 +0900
Message-ID: <20240329090945.1097609-7-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_020958_192256_58E3550B 
X-CRM114-Status: GOOD (  10.74  )
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

In pci_epf_test_unbind(), replace the call to cancel_delayed_work() to
cancel the command handler delayed work with the synchronous version
cancel_delayed_work_sync(). This ensure that the command handler is
really stopped when proceeding with dma and bar cleanup.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
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
