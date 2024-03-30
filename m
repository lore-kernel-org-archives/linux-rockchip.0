Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07615C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FURwleL+a94XmJHzMO9DxTyDFjQzS86KRaiW7UubRc=; b=YyLZQlVGoBuVqA
	XipqoOsD4mRWnowe/Whj1TO+9sJnfSsMkC3EqjWWGHE6ZDvPFcTLAcN/friPIQJ0LHfW7RKo0oBFi
	WjHk0qTzb/h3E+uRYORJs124O02Zi/geOHf+/Q4D7KdRDN4ojGELH+NJ4tejchIu7WivySBqoT5Pc
	LkQAkJ33qGHeL8VCDmTqPcMjd9oSaTdiVjajYOknbzfPM8+1n3HE4YbSn4W0V/YbBoiVV4CttJrlq
	VWpL3c9E3QgWuvvAbfFd8/QM6nDaTDPZTUKRmLJ1AusAHYq+DfqWJzVeLKWVl1mMU8Ep90eB0H5kh
	6krd/mma/VmXUr664v4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQD2-00000002kMk-12zd;
	Sat, 30 Mar 2024 04:20:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCF-00000002jpb-04LF;
	Sat, 30 Mar 2024 04:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IuxqquyX9/Xvnhvy7HRY7o5XAsru05+AXFTYeYRV/1A=; b=IzcXuCLU3TifK9g0vVq/2UG+9z
	3/TbckeZEQymSZ+OCduVk3rbIjGfsosX/73sQP6elmCYtleqxdFX72k44jNgBnVzOUfaBTEGEq30P
	Q6IWNQrgYbvhRqCXOEBTCahyjUEvM5HHlf0Nwsve+b9zJM1fWnpU0uyosN719O0Noiwlsglr84F79
	p2pmiDDXGf8eIWtrupd3aVtv8J4ZvBeRQfjTTYfhUNv6sLRZw04OtEP8xn4QUGrpR/iVNH1MmOxT6
	noxf4EncbrW2rtkaksoJH1WE3R3SOgajuvoVRyPSX1xcNqIuFugh3DwKJSfql5HvaPqps7WjaWu05
	3NscLinA==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCA-00000001uMH-2tc3;
	Sat, 30 Mar 2024 04:19:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6A67FCE319E;
	Sat, 30 Mar 2024 04:19:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06708C433B2;
	Sat, 30 Mar 2024 04:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772390;
	bh=7Csd0n7kv5QXdaAzg91Mtj2IgQHbVhJebQ8xA5NsDJs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HhUxeh/UoT/YQhTuYt6KJtbteVy+/KnhJ2v/zGKS5C9UfPfA311npSI+qTeVV3veU
	 vINHMF2FHveAHt7qWXXPha5EL0DE8gBuVMg7ZKdFAMJl9ERQp1I8txkig671PxQqSB
	 ARYxkJ5CTbwQLeJe9A5qcMZgRLSgzg0r/FV+EE9XfCqDgP1aUAXG0/3EXxkJQCV9eN
	 KsTX78SMG8dJdK3+lvWiuhi4DNz1IOhitT3ERABCdj7qrxeorF8wu5MGnhf6+oPLTc
	 gkWwaLzgbn/ynIFk1v93uwNK6qjg1f4noL6dh5AhQJrGCaGVD7R3V0tgtXiWR58L1P
	 mchOjcl0kYzqg==
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
Subject: [PATCH v2 06/18] PCI: endpoint: test: Implement link_down event operation
Date: Sat, 30 Mar 2024 13:19:16 +0900
Message-ID: <20240330041928.1555578-7-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_041955_143174_314BA951 
X-CRM114-Status: UNSURE (   9.82  )
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
Reviewed-by: Frank Li <Frank.Li@nxp.com>
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
