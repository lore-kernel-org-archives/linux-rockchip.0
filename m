Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AABC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 17:01:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 389EA60E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 17:01:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 389EA60E76
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ha5SMtCaOmuPiodn2rblc21rRgXTasrrPNz+cifB/PU=; b=ulQZWHMnkOIdtg
	IM6kEFzsKrzqctpXzjnKMQC7Ky8i+7p09qhptGDxcOER374F5tCRToVE6pgUZUl1sVxns+cM2qzBV
	lEID5w9i3ZW+BLnKAS/HSI+GTgiLEt7/WGXw4bAB6K4ZqPQQMFaTYltNIAK1qB9gR+JdP4WgNcpJ6
	TzVfmcc26XtgsNh17ecFaELPnCax9WV+Q868gb1/GIuC5E2UZoyVqHgZ4CBIAv4Q8tB9aC5uwEFwr
	m3P7I/LqxFZI3sOgukh95v+G0luaCZ73dSTzQlfoiTSjl3+424kMxfcpQnk7D4Mw7rAF3uP/5aVXt
	56fETVA0br7nHw4lcbPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFfzU-00HVAj-Gi; Mon, 16 Aug 2021 17:01:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFfzH-00HV9v-Tj; Mon, 16 Aug 2021 17:01:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DD216D;
 Mon, 16 Aug 2021 10:01:19 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.42.29])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C118D3F40C;
 Mon, 16 Aug 2021 10:01:14 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-renesas-soc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Arnd Bergmann <arnd@arndb.de>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 0/8] Add SR-IOV support in PCIe Endpoint Core
Date: Mon, 16 Aug 2021 18:01:08 +0100
Message-Id: <162913323780.3691.9972292377170327162.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210811064656.15399-1-kishon@ti.com>
References: <20210811064656.15399-1-kishon@ti.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_100124_043609_E1CACDD0 
X-CRM114-Status: UNSURE (   9.67  )
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

On Wed, 11 Aug 2021 12:16:48 +0530, Kishon Vijay Abraham I wrote:
> Patch series
> *) Adds support to add virtual functions to enable endpoint controller
>    which supports SR-IOV capability
> *) Add support in Cadence endpoint driver to configure virtual functions
> *) Enable pci_endpoint_test driver to create pci_device for virtual
>    functions
> 
> [...]

Applied to pci/endpoint, thanks!

[1/8] dt-bindings: PCI: pci-ep: Add binding to specify virtual function
      https://git.kernel.org/lpieralisi/pci/c/ea96be4a7b
[2/8] PCI: endpoint: Add support to add virtual function in endpoint core
      https://git.kernel.org/lpieralisi/pci/c/b64215ff2b
[3/8] PCI: endpoint: Add support to link a physical function to a virtual function
      https://git.kernel.org/lpieralisi/pci/c/555d7c5f83
[4/8] PCI: endpoint: Add virtual function number in pci_epc ops
      https://git.kernel.org/lpieralisi/pci/c/22a8013ade
[5/8] PCI: cadence: Simplify code to get register base address for configuring BAR
      https://git.kernel.org/lpieralisi/pci/c/9d26fd710f
[6/8] PCI: cadence: Add support to configure virtual functions
      https://git.kernel.org/lpieralisi/pci/c/f52e1cf18d
[7/8] misc: pci_endpoint_test: Populate sriov_configure ops to configure SR-IOV device
      https://git.kernel.org/lpieralisi/pci/c/681883d1d1
[8/8] Documentation: PCI: endpoint/pci-endpoint-cfs: Guide to use SR-IOV
      https://git.kernel.org/lpieralisi/pci/c/805ff686a1

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
