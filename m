Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67289C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 05:06:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A14060FC2
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 05:06:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3A14060FC2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dklUPerQW/PRDvds6eliz/tUCfALB/S+KzDzh8ctg5o=; b=w+KSmB1RZa/eXz
	7fII1CqWJFWa7KHqrGkkNT9RRbLRYdskfKnp/2XCj4mcjo5AU1xnyTuKOv78JLG3e3GMqega8eVGW
	FcGzyOAmmHwAbwjOb6my6JTVZwN2bi5A8E2c8AFRIIi3791Bevq5U2qFrg8Yl3Fo3zACXYnIcU9Cb
	BHh/2b69h+BGPNxzcGIScSvgWc2EVozjYPg/MNn5P/swzJUVVrvzqaGFJLneytAXasYjXtx7lQfb8
	2s2cXLVlQvjAb8lR5tXmkZPgUCV+3Wfb8bz45O43We0Ln1K+msXjnN8409S4XFp2OhCuimHWBF+65
	I6saSli8DFEMQnVSACeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAmdM-0016jw-LD; Tue, 03 Aug 2021 05:06:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAmbg-0015nd-43; Tue, 03 Aug 2021 05:04:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17354cUI094582;
 Tue, 3 Aug 2021 00:04:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1627967078;
 bh=poueu/euKtfcqbr8LzsTcjIQ1wgv6v/lzsChvHScOeU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dqFKAytlSoqOZPGPIUUoqkgu711aa3ExmfYm1xDURmwSgWY4iLzvUwIxEW3bAvo3E
 Ye3ascMO/mODZu15TvxwcN0aUsNXvgkbghpjZkvUsdLy9dk9Q9ahdYiKSr7a/2hF4/
 O7IlBnseLwWYkK0m67DFVh60TiuAveG2L0xZIqro=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17354cpX007313
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 3 Aug 2021 00:04:38 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 3 Aug
 2021 00:04:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 3 Aug 2021 00:04:38 -0500
Received: from a0393678-ssd.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17353BeX090231;
 Tue, 3 Aug 2021 00:04:30 -0500
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
 <linux-arm-kernel@lists.infradead.org>, <kishon@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 7/7] Documentation: PCI: endpoint/pci-endpoint-cfs: Guide
 to use SR-IOV
Date: Tue, 3 Aug 2021 10:33:10 +0530
Message-ID: <20210803050310.27122-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210803050310.27122-1-kishon@ti.com>
References: <20210803050310.27122-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_220448_310394_A6A612F0 
X-CRM114-Status: GOOD (  14.28  )
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

Add Documentation to help users use PCI endpoint to create virtual
functions using configfs. An endpoint function is designated as a
virtual endpoint function device when it is linked to a physical
endpoint function device (instead of a endpoint controller).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/PCI/endpoint/pci-endpoint-cfs.rst | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
index db609b97ad58..fb73345cfb8a 100644
--- a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
+++ b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
@@ -43,6 +43,7 @@ entries corresponding to EPF driver will be created by the EPF core.
 		.. <EPF Driver1>/
 			... <EPF Device 11>/
 			... <EPF Device 21>/
+			... <EPF Device 31>/
 		.. <EPF Driver2>/
 			... <EPF Device 12>/
 			... <EPF Device 22>/
@@ -68,6 +69,7 @@ created)
 				... subsys_vendor_id
 				... subsys_id
 				... interrupt_pin
+			        ... <Symlink EPF Device 31>/
                                 ... primary/
 			                ... <Symlink EPC Device1>/
                                 ... secondary/
@@ -79,6 +81,13 @@ interface should be added in 'primary' directory and symlink of endpoint
 controller connected to secondary interface should be added in 'secondary'
 directory.
 
+The <EPF Device> directory can have a list of symbolic links
+(<Symlink EPF Device 31>) to other <EPF Device>. These symbolic links should
+be created by the user to represent the virtual functions that are bound to
+the physical function. In the above directory structure <EPF Device 11> is a
+physical function and <EPF Device 31> is a virtual function. An EPF device once
+it's linked to another EPF device, cannot be linked to a EPC device.
+
 EPC Device
 ==========
 
@@ -98,7 +107,8 @@ entries corresponding to EPC device will be created by the EPC core.
 
 The <EPC Device> directory will have a list of symbolic links to
 <EPF Device>. These symbolic links should be created by the user to
-represent the functions present in the endpoint device.
+represent the functions present in the endpoint device. Only <EPF Device>
+that represents a physical function can be linked to a EPC device.
 
 The <EPC Device> directory will also have a *start* field. Once
 "1" is written to this field, the endpoint device will be ready to
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
