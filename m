Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A976C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:51:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF64C610FA
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:51:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF64C610FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SaGVk0ERs6k1B4+QyVpbP0f5yGOZ4h3YdPEs/ATwnXA=; b=SXTTrWSCJn2GuxosoIc9MlB27
	f0XebkOC5enROKsqHJsYXXa60Dl2LszTQpnwVPYJkctU/A2Ie5GFAMCaCfput7kEQv4fJhj3/NUd4
	LbkpwlMu9kH/adHxhbI/c0vYkf4W3Cj6xt6baOSZQZ4lL3sc/qbdDTcMv0CO8cZPo2XVGVQqONZK/
	KCujjX2l84AIkgTHCoA/fp1nxriHwHsOfivmpLdM0vLrQ/9FvrIAuLxs6jjj2E3fevgOFmURTCvG7
	qGjENv5dspa2x6LBXi1JTdxY1yTozgqZQW511D3glPJC19YEwSMBLTeTMEZtuBE78Owg64u8a2qNr
	EWe5bVr1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liY1s-00E6LS-Bf; Mon, 17 May 2021 07:51:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXzU-00E5ZH-Ve; Mon, 17 May 2021 07:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=we7tEI3t7CYiYHQjHpttOgbazqYJANHRmdU5X4Zij6w=; b=CA+UYIj+/qWAx6cGQi5T8A2cCV
 I+ozHpN0xfkIqgPtMXuy53jM9Q2LdQwhO5bYxIkqbdrNdGWhJ6aiidlFuSUkKsoKWrtxWqQKtRLGG
 K8MIkPO0ARfDhsMbqr4NqHv+j8rF4ZI1a4gvcVVRrj8dsDuUAMQvQfQK5TDQIOv9EhNpKQEAzaYZl
 9B+nxOEBWesdW3Uzj7M8IFSozJZVnc+/OhZwNUngWLI6Z3uTFp3Gd31dTSkDEBU4teSl1Sn3nO4yE
 WNMqEUjyD4msHL0uDMd4FRpmsX4wczhBVMXRaaRbFrLzx1i8dQ42aQncEOewNDQho26XPoS2KQJTp
 t30btJkg==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXzS-00DYk2-AG; Mon, 17 May 2021 07:48:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14H7mTsT074318;
 Mon, 17 May 2021 02:48:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1621237709;
 bh=we7tEI3t7CYiYHQjHpttOgbazqYJANHRmdU5X4Zij6w=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=l4TKFOy+HpgfQpYdC5tgPmH93jQ9EWNZmgbBKRj5w6kzM3Ch1/Sikw8ua51e2q/MO
 HOG6DX7IRlTUiWX8XLDKEa2y9ffvYBNhuDPVuQxi3bx/syEmDDryMdRN40Eg0qQLnR
 k5BK58ME4VJn7WugxBsnXIpQM+wuzNPdeU1y9WFc=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14H7mTBH127008
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 May 2021 02:48:29 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 17
 May 2021 02:48:28 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 17 May 2021 02:48:29 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14H7lOcj007607;
 Mon, 17 May 2021 02:48:21 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Tom Joseph
 <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
CC: Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v6 6/7] misc: pci_endpoint_test: Populate sriov_configure ops
 to configure SR-IOV device
Date: Mon, 17 May 2021 13:17:22 +0530
Message-ID: <20210517074723.10212-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210517074723.10212-1-kishon@ti.com>
References: <20210517074723.10212-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_004838_455088_95D7B053 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Populate sriov_configure ops with pci_sriov_configure_simple to
configure SR-IOV device.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 1b2868ca4f2a..c7ee34013485 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -978,6 +978,7 @@ static struct pci_driver pci_endpoint_test_driver = {
 	.id_table	= pci_endpoint_test_tbl,
 	.probe		= pci_endpoint_test_probe,
 	.remove		= pci_endpoint_test_remove,
+	.sriov_configure = pci_sriov_configure_simple,
 };
 module_pci_driver(pci_endpoint_test_driver);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
