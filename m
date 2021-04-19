Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB7FC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 08:34:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B670961057
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 08:34:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B670961057
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NvQUNwGJE/ZGz+gUkrHzeEvK3kutkdkMlKSJ0YBr0LY=; b=bU0lk2WopVZ+ZSBefI8gFbDM+n
	SYMRSzudRhQQolt4nlw7w0+dQncEuqvXJDMKAYyF+PxJ2b6OsidPORcU3iErI/b2LzzrEoO/Xv8h9
	d2P6MskLTJ68gTqDTtB4i3KCCLhjnuId+WSPoMJDUveZm2CBs4eM5RB/v0HAEN3LETqpNAA4Ak1g+
	IHUBFdgzZ/RFgz8NWdp4Z+8vSUICRNVkZhIkVcrbzJDVcJRch40y/QP2eINHdclgaSujh+ftdh/oB
	V0GumpUlLw3ndaIMalHITj/oyCbpvzwzs3froYcWnEeP/WkG6oV+OtiCogqZ0H+MEzO/k+1g36w0p
	+RDEq6IQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYPMZ-009RHg-9H; Mon, 19 Apr 2021 08:34:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYPMW-009RHL-U2; Mon, 19 Apr 2021 08:34:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=lDZMGFvOojG166N3pt/xx3m8GVsBndajtYIH24dGjQM=; b=d+m5F7H5Z3lBDW7Wp02IEfLLLL
 GUUtB7JcYFvcXpMek1KSQO4aYmETEEC3JAq41Alq6XkGgjFynzniKrnWXjENUfKEFrOojNKlu9qJT
 1D/urEDdMeE9zGVClIz1njjZDGuLzXM/7ZcbFarZG4a4LvCGKOCa3gcwmnb1VyervHw4ru7jukEhR
 rfBYV3TX2sobXfvgwW1GV2PbvW3ZqEiC0aQ5ItpQM3faWKCHHrvS9oELeQ4z4JTqXH2my7MnQCwqi
 TwKDHybgkRkN8O+FV4jADaVIImrqZkwrWquYsR8AE+9dFdJhWY15jGtURLT+AdKa8c3Ug3GP3CCJo
 1huo2J/g==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYPMS-00BBuu-Rn; Mon, 19 Apr 2021 08:34:31 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13J8YA9H119166;
 Mon, 19 Apr 2021 03:34:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618821250;
 bh=lDZMGFvOojG166N3pt/xx3m8GVsBndajtYIH24dGjQM=;
 h=From:To:CC:Subject:Date;
 b=FoGsDH7/2v7pycsqNBf8qDfP/CyC5r0v34Fr7FN2LkC74GMvO0cJjATNk39xgXaH7
 VblW4RfO0TkbTWR5PMU2TldQDkGMB+kwu2IVPdrmC2QRu+iC6BRnzxYUHLcsxWqJSw
 IGxgx4ybzRBJpR9CONER7iCJggF8iV2qL73E07wA=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13J8YAfC025030
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Apr 2021 03:34:10 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 19
 Apr 2021 03:34:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 19 Apr 2021 03:34:10 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13J8Y2aP051194;
 Mon, 19 Apr 2021 03:34:02 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
CC: Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v5 0/7] Add SR-IOV support in PCIe Endpoint Core
Date: Mon, 19 Apr 2021 14:03:54 +0530
Message-ID: <20210419083401.31628-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_013429_863654_60119856 
X-CRM114-Status: GOOD (  12.94  )
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

Patch series
*) Adds support to add virtual functions to enable endpoint controller
   which supports SR-IOV capability
*) Add support in Cadence endpoint driver to configure virtual functions
*) Enable pci_endpoint_test driver to create pci_device for virtual
   functions

v1 of the patch series can be found at [1]
v2 of the patch series can be found at [2]
v3 of the patch series can be found at [3]
v4 of the patch series can be found at [4]

Here both physical functions and virtual functions use the same
pci_endpoint_test driver and existing pcitest utility can be used
to test virtual functions as well.

Changes from v4:
*) Added a fix in Cadence driver which was overwriting BAR configuration
   of physical function.
*) Didn't include Tom's Acked-by since Cadence driver is modified in
   this revision.

Changes from v3:
*) Fixed Rob's comment and added his Reviewed-by as suggested by him.

Changes from v2:
*) Fixed DT binding documentation comment by Rob
*) Fixed the error check in pci-epc-core.c

Changes from v1:
*) Re-based and Re-worked to latest kernel 5.10.0-rc2+ (now has generic
   binding for EP)

[1] -> http://lore.kernel.org/r/20191231113534.30405-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20201112175358.2653-1-kishon@ti.com
[3] -> https://lore.kernel.org/r/20210305050410.9201-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20210310160943.7606-1-kishon@ti.com

Kishon Vijay Abraham I (7):
  dt-bindings: PCI: pci-ep: Add binding to specify virtual function
  PCI: endpoint: Add support to add virtual function in endpoint core
  PCI: endpoint: Add support to link a physical function to a virtual
    function
  PCI: endpoint: Add virtual function number in pci_epc ops
  PCI: cadence: Add support to configure virtual functions
  misc: pci_endpoint_test: Populate sriov_configure ops to configure
    SR-IOV device
  Documentation: PCI: endpoint/pci-endpoint-cfs: Guide to use SR-IOV

 .../PCI/endpoint/pci-endpoint-cfs.rst         |  12 +-
 .../devicetree/bindings/pci/pci-ep.yaml       |   7 +
 drivers/misc/pci_endpoint_test.c              |   1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  | 285 ++++++++++++++----
 drivers/pci/controller/cadence/pcie-cadence.h |   7 +
 .../pci/controller/dwc/pcie-designware-ep.c   |  36 +--
 drivers/pci/controller/pcie-rcar-ep.c         |  19 +-
 drivers/pci/controller/pcie-rockchip-ep.c     |  18 +-
 drivers/pci/endpoint/functions/pci-epf-ntb.c  |  79 +++--
 drivers/pci/endpoint/functions/pci-epf-test.c |  66 ++--
 drivers/pci/endpoint/pci-ep-cfs.c             |  24 ++
 drivers/pci/endpoint/pci-epc-core.c           | 130 +++++---
 drivers/pci/endpoint/pci-epf-core.c           | 144 ++++++++-
 include/linux/pci-epc.h                       |  57 ++--
 include/linux/pci-epf.h                       |  16 +-
 15 files changed, 684 insertions(+), 217 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
