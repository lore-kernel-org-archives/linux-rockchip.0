Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74BC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:51:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 345DA60232
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:51:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 345DA60232
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TXuaP1UpGrwwRmdLPo3dcED65/PUr1OJFDZthoQ2fuU=; b=JyTIIKSLcw65NjTsxtERjiX9T
	YyeAnaSQKqSPgK/WSPGx4qnwAAGZ7LaMLg5jLZmMUUwIWDt9lLQIC6H0JPwtGzUP0JPFmLhltQIvb
	pftGSjAsScFnaYvmhippZ9Y4ANtdkekMZpzM5A+EFJ6nN+fgjHNANBm3mKR7CEMx+Qk5TlvghbJXk
	3ahgQGEonHkYhmw8RcznWbrG9HVWRd3Cxr8TWhLT0sBWYFhml9Q27wUqEpwEgzth0escWycJzUiYL
	rVvhOykpA7eJFJx/uNp3ScxGOMbZkEftnAdMfXdcKpYUrc7hHO+tGmkAh83bPpl2Ag/dTzmZ71gZ0
	PtzTvRfOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liY2L-00E6WA-Az; Mon, 17 May 2021 07:51:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXze-00E5cH-JP; Mon, 17 May 2021 07:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PswJzuVJEpo2V7rLJvAKEapfrXwbPZ/ywMR3JM+8zp4=; b=hnYhJu7DJx8/w/HJAR9t+mFCCj
 xTCNagaeuOJpeiB9paOLGHvOmDw9Yohvv2ylhHj4xWYURl135gNi5Q0/qkqFiv2hVEL5Eixop7Y3w
 FwJYDtkZoO7K/KpORigXPTIblDVJxXNgS6xDplEPKL3vzARpgS/ZvoHL8kH++pO8zSN5PaQmr6qm+
 ppzRTgzLvW6XXDxE72hY27V2Ceu6sQlBIrN237YiUNRn9wub0KTNul5IH5Bs1/2TRTfvo61uSyalE
 DHFpI35ZYIkeLFf6GBii1OlruImnmkHkC0UwwSw50IX3iao1QD8cKK+603qarhZhC5rEAarfZKAl/
 Fc7M768A==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXzZ-00DYkV-Iu; Mon, 17 May 2021 07:48:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14H7mbEP115682;
 Mon, 17 May 2021 02:48:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1621237717;
 bh=PswJzuVJEpo2V7rLJvAKEapfrXwbPZ/ywMR3JM+8zp4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=YLRY+8FfTx/HoaXGt+NEz6R9M5rxLuquJUAk/sxt8tkZ9Qz7gwTMOHY3KefYswRcH
 HB0arP15VCWEmmlbuRFDoqobtz2sKvJ0xf5T3uQ4S7dNFslHyX9DTaUrPnDgx3uGUd
 WXOSae3bKDo2if4DPWO03jx4yZSuRENrTBN6grCY=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14H7mbjN008730
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 May 2021 02:48:37 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 17
 May 2021 02:48:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 17 May 2021 02:48:36 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14H7lOck007607;
 Mon, 17 May 2021 02:48:29 -0500
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
Subject: [PATCH v6 7/7] Documentation: PCI: endpoint/pci-endpoint-cfs: Guide
 to use SR-IOV
Date: Mon, 17 May 2021 13:17:23 +0530
Message-ID: <20210517074723.10212-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210517074723.10212-1-kishon@ti.com>
References: <20210517074723.10212-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_004845_724952_2375AB52 
X-CRM114-Status: GOOD (  13.63  )
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
index 696f8eeb4738..56fb33c5e8fd 100644
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
