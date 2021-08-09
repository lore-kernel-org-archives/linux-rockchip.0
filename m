Return-Path: <SRS0=9QTE=NA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C4F9C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 15:17:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2313660F35
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Aug 2021 15:17:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2313660F35
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mat5IGFSDz+YN2brg+Q3r/tx+7RkUM9ZkAoE9U2a2go=; b=nV0I2QVAS5/GJR
	u8M+zJznNjEB1zUFPVovnaqDrKpcX2Ov0WKQPtvMie1YXQ6U6Lzi5a0pYfK13jvruwmUCG98ndgQk
	X8n7y/NxB2CzQg/dkbBCZ64t7/Ued0vmZzKhrbghG86QyfPbaWkK3y8wsakLiWo0xjc85CvDeh7hV
	siKKuUe+Scayy+01NCum9mWHyBv2CS/L/5uTzk7FZE5Ar1ZcZNGGiR2Qh4ETEjAiRtTFB8qBLUzYF
	EO1HEynj0KYxpQFAOvNrgQP3ZeISJ28dkcqUKG85Q7/Quq50Vc1H9H4VO+NV6JACfLfxkPVXqLT/t
	NucZG5L9NHakwTdiMQJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD71N-0016Ap-LT; Mon, 09 Aug 2021 15:16:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD71H-00167P-SF
 for linux-rockchip@lists.infradead.org; Mon, 09 Aug 2021 15:16:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EF426D;
 Mon,  9 Aug 2021 08:16:46 -0700 (PDT)
Received: from e123427-lin.arm.com (unknown [10.57.39.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC9623F718;
 Mon,  9 Aug 2021 08:16:42 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Simon Xue <xxm@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v11] PCI: rockchip-dwc: Add Rockchip RK356X host
 controller driver
Date: Mon,  9 Aug 2021 16:16:35 +0100
Message-Id: <162852218275.22823.11845865403290734998.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210625065511.1096935-1-xxm@rock-chips.com>
References: <20210625065511.1096935-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_081651_976503_3244655F 
X-CRM114-Status: UNSURE (   6.73  )
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

On Fri, 25 Jun 2021 14:55:11 +0800, Simon Xue wrote:
> Add a driver for the DesignWare-based PCIe controller found on
> RK356X. The existing pcie-rockchip-host driver is only used for
> the Rockchip-designed IP found on RK3399.

Applied to pci/dwc, thanks!

[1/1] PCI: rockchip-dwc: Add Rockchip RK356X host controller driver
      https://git.kernel.org/lpieralisi/pci/c/e1229e884e

Thanks,
Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
