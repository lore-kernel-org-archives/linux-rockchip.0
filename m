Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B1DC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:42:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1641723A3C
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:42:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1641723A3C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S0wqlaBJtgFGo/3naBaTKhtNd7bz8iZZ/ziEE3GAwp8=; b=jdbJzv1yjlr4MpyL+3OAVvc3Y
	gireXyUMnCdpKh8bW/JTP6ApTlUg6b2ENSkArugiB3fHUjbcDZQPCfRfJMxCAVfKeSYDe2hhk0obK
	Vo4nGTVL5yeOlIhIrwOz3Ltee3SLNYuxhMpTgcSmhgOI5fE8alQp1ciVJdpwEVXSCJUJn1RLDdIkz
	AAPL3BQqXFvCm+g8F/8sEs3/LwXBtSpzktmvBtOb2n3Tz7tN+OYixwHeJxPTug0zCN6TJ3VGkzK3D
	D0OLgjAby+frX05H70HTRI/TqW16p4/pv3UqxvJ5eJnbmtzMoFZay2ByXUHU3ylwWY3evBPfMLdxG
	7I0p5Lu0A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyGNM-0001Ds-5t; Sat, 09 Jan 2021 15:42:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyGLS-0000Zz-5c; Sat, 09 Jan 2021 15:40:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyGLN-0000jX-L2; Sat, 09 Jan 2021 16:39:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Subject: Re: (subset) [PATCH 0/2] PCI: rockchip: Fix PCIe probing in 5.9
Date: Sat,  9 Jan 2021 16:39:52 +0100
Message-Id: <161020678304.3482489.16265373778733987316.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200815125112.462652-1-maz@kernel.org>
References: <20200815125112.462652-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_104002_435335_1614A1AE 
X-CRM114-Status: GOOD (  10.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 15 Aug 2020 13:51:10 +0100, Marc Zyngier wrote:
> Recent changes to the way PCI DT nodes are parsed are now enforcing
> the presence of a "device_type" property, which has been mandated
> since... forever. This has the unfortunate effect of breaking
> non-compliant systems, and those using the Rockchip PCIe driver are
> amongst the victims. Oh well.
> 
> In order to keep users happy as well as my own machines up and
> running, let's paper over the problem by detecting a broken DT from
> the driver itself, and inserting the missing property at runtime.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: Fix PCIe DT properties
      commit: 43f20b1c6140896916f4e91aacc166830a7ba849

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
