Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BEB7C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:48:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED6E7611EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 07:48:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED6E7611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UhTONWtJgez3zhT8wbB/H8xc+uUgpaYSOQ+55zWo8HQ=; b=H+U2X+YpR7NDd7bu+tt5fa7lT6
	cK+XmziUSA1xVVEqNtJGMiowp44vkre7nSchC9Uoa/ZKt3c4be57lrTcW7t0qt8Q+aXzsUxFpGp7+
	X/LFr2lbfLZeJS6LjG38Du8Uze0ltVoJ1lyleZMbVNBTgETnwP+EnEJWvQ8ykfepZgbBf7VujAJw8
	AIzTDsPCHAwFU8nEdiYL8TswaO8wYlg4qoanMjej/xmESkDfiBVnoxT62wuFdXoPwgxdX4lA6sig8
	AVgW6VWDdzgepUk6z5V0aEq8f/yo2qQQNVHdlB9sSS1chAW2KTbR45UrCX+VqtEfZYqZnkIK2uawA
	tUH3ht8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liXyj-00E5Qj-6s; Mon, 17 May 2021 07:47:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXyg-00E5Q2-0g; Mon, 17 May 2021 07:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=j+ZeXQcB8mN0+OKJ9KdzAe0z9u/uPSAJpZLz8NLNtkE=; b=S33iZhxAyMe39kSxwEstYSaCrh
 AcI71izqb1AbzBfJI4CEYrmQx2S0Jhb5+nQ8e9GNvbcLDajoPSbJleBqjo7dhDmowarWXHl2ytoKN
 YK3QB+0UtNrB5nGoIeA16Ju42LoewvDowGsW50WkXISIq2A3QF00MTT9O6pYxvlsVz1LZzRzdSTRw
 5e+q8xn90SDNs6ht9K2WT25YfHix3b8VecScV1lE1Zfsvdfb2uq5WTyfe9oeINmHeRFYEx9vHn87y
 Za1aiNnbOyPOl8WkjBqTdihbSi1PXbyCKIa1poh/VjTNPk1u25b9hAxdE51Qu73z7Z/JTTwb1Oiwn
 r0GAna1Q==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXyc-00DYfk-U0; Mon, 17 May 2021 07:47:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14H7lZNW073954;
 Mon, 17 May 2021 02:47:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1621237655;
 bh=j+ZeXQcB8mN0+OKJ9KdzAe0z9u/uPSAJpZLz8NLNtkE=;
 h=From:To:CC:Subject:Date;
 b=j2ZpsBcvschS91tTM6rl3nsfQX1nXCtsreE+J3n5qYPlYq8oroxaqdodAMyJCjKhS
 3n69sDRIDP0mcMPVUmScXSzEQlCD1sy3HtLa3EwfqGTcDWz0RcnkIqqddHWVLLS/Rm
 laCNtWC/0YUAVCMnk9YYyPOfokcQEXSaLw3qI2NE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14H7lZfr007907
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 May 2021 02:47:35 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 17
 May 2021 02:47:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 17 May 2021 02:47:35 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14H7lOcd007607;
 Mon, 17 May 2021 02:47:26 -0500
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
Subject: [PATCH v6 0/7] Add SR-IOV support in PCIe Endpoint Core
Date: Mon, 17 May 2021 13:17:16 +0530
Message-ID: <20210517074723.10212-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_004747_072931_9BB92AFF 
X-CRM114-Status: GOOD (  13.23  )
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
v5 of the patch series can be found at [5]

Here both physical functions and virtual functions use the same
pci_endpoint_test driver and existing pcitest utility can be used
to test virtual functions as well.

Changes from v5:
*) Rebased to 5.13-rc1

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
[5] -> https://lore.kernel.org/r/20210419083401.31628-1-kishon@ti.com

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
