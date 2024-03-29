Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B199CD128D
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kndu5qj828DEXLxXRwyfQ6h1HRAPHEU0wKj1PDOG9wQ=; b=cxBtKv8zc69BJY
	dWjIXcn4KnWQYTXDa36FAmnv1VdqKo8VPBZuMAZIJUvdtt0muw/08bAx3P7457QhDYAM6VtB6Ha+5
	3wH9ibKwD/RS5igzp7Ihdqrz2WIeutaI7ahEXhVCZPRXJI0SFEWWU4CLkPPYa2zqRqRVejD9ECy7N
	lANbNq3OLJVEh5OZf+y3YjwYFz3USIDwXyjJwr8gDr1yfymMalFzWHa7jXXBE/KsVKOFJ2FF27x5o
	CGcnQPD9qeUgg9OGR2w1Y5l1zR/OVGLyjyaZb0idTc1aaCvTYmNF5s4JKWoXz9MhAUQBqg/UmxLNH
	hKYC6RYpbqSs/engnQOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fa-0000000HQMc-0MvJ;
	Fri, 29 Mar 2024 09:10:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FL-0000000HQ82-2C8o
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E23C061710;
	Fri, 29 Mar 2024 09:09:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91675C433F1;
	Fri, 29 Mar 2024 09:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703398;
	bh=eTw3lNRbr8KXVdzPW1SwocJ9mAakSZelSr8uef0y60M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qsMFTM1Ew65BHQoYV3KHaPWQd6rEco0sqVcsiPqHgl9DuPL0JH9weqtPKbIDX3Ieo
	 wzpiUYmcVXdXHroGXMTtXo3MgTx6tKeEiQKFH316spSegRQBD4weQlRmq7/4tYAkNN
	 +GTtDZHSriUsE+kh8Nv60xN1xhG7M2VwgD1PUTbh5Kd7xnezySUUNTGjUKlMhC4Axg
	 69TT4SK1g9frPqSK8EheIM6mIATAc48hKoYwddc6fNE3ypBKisBzKJdE+8mqljeYeV
	 tsHJte5xWdnYfiGO4+7MZVhJSUricm+zXOi6A5IpoS1kBS033ZRUdN2NalqqWdI97S
	 7yowI7FWpbZUg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 07/19] PCI: endpoint: test: Implement link_down event operation
Date: Fri, 29 Mar 2024 18:09:33 +0900
Message-ID: <20240329090945.1097609-8-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_020959_750733_B094A0DA 
X-CRM114-Status: UNSURE (   9.11  )
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

Implement the link_down event operation to stop the command execution
delayed work when the endpoint controller notifies a link down event.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index ab40c3182677..e6d4e1747c9f 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -824,9 +824,19 @@ static int pci_epf_test_link_up(struct pci_epf *epf)
 	return 0;
 }
 
+static int pci_epf_test_link_down(struct pci_epf *epf)
+{
+	struct pci_epf_test *epf_test = epf_get_drvdata(epf);
+
+	cancel_delayed_work_sync(&epf_test->cmd_handler);
+
+	return 0;
+}
+
 static const struct pci_epc_event_ops pci_epf_test_event_ops = {
 	.core_init = pci_epf_test_core_init,
 	.link_up = pci_epf_test_link_up,
+	.link_down = pci_epf_test_link_down,
 };
 
 static int pci_epf_test_alloc_space(struct pci_epf *epf)
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
