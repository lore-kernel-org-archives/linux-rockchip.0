Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033AC4320A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14C8460230
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 14C8460230
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDEnC6loHzB0nlq8WO7uca2OktArk+nBKK3Zr0bklzw=; b=xn1odq6uB1QWft
	4V5ErAWYeg8OUEU+r0JfoOE5WF2yqwL1VrR8XqXUuhzUgnWhRKnFyr4Iuz8LlHs1DuENlEaJU4lfL
	2j6uMELBxXT8Pcpd6XbnMcETI9wz+0M7zzlM3O8oRxhCAKzAz+Sc1/25cAV0tL6nWP9CMSflblutx
	CqaYVpiQkCkOm1SVk8pgTN6BnfkTD4T07Is20u3RYztVIEGWNG/3hS0s9l4F/njv47YVBrxdEAvdw
	c4/Mr8gxUvn06+64rKJ/gmG7PQtvwHONsxes58wnCavDoqEFXtA7a53ZyKwvRavGolwd147p8YgL2
	qYkUrnVzjsW3/I3617Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m95wf-004CHn-06; Thu, 29 Jul 2021 13:19:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m95wa-004CFX-Vl; Thu, 29 Jul 2021 13:19:26 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m95wX-0003Jt-8q; Thu, 29 Jul 2021 15:19:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/8] fixes and enablement for rk356x
Date: Thu, 29 Jul 2021 15:19:18 +0200
Message-Id: <162755606328.1705274.3410702521597936344.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_061925_063342_9D615B9B 
X-CRM114-Status: GOOD (  14.55  )
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

On Wed, 28 Jul 2021 14:00:26 -0400, Peter Geis wrote:
> Good Morning,
> 
> This series aims to fix some early issues with the rk356x and enable
> nodes that are currently supported by the available drivers.
> 
> 1. fixes the mbi-alias, which points to the wrong location
> 2. fixes the rockchip clk-pll to work without a grf node
> 3. adds the gpio debounce clocks which are necessary for gpio to bind
> 4. adds the common gmac1 node
> 5. adds the tsadc nodes
> 6. adjusts the gpll and ppll clocks to better support hardware
> 7. enables the gmac1 on the Quartz64
> 8. adds thermal support to the Quartz64
> 
> [...]

Applied the easy ones for now, thanks!

[1/8] arm64: dts: rockchip: fix rk3568 mbi-alias
      commit: 0ecf7b9137e05e2ade45b0555b00248cc0b7ac69
-> just put that in for 5.15, as the rk3568 on 5.14 is
   still largely a wip

[2/8] clk: rockchip: fix clk-pll rk356x early pll init
      commit: 6fffe52fb336ec2063270a7305652a93ea677ca1
-> I've adapted the commit message here

[4/8] arm64: dts: rockchip: add rk356x gmac1 node
      commit: 6cdca5eb64c6eff6d552b475b6dc9182d84f2a31
-> did a bit of sorting here

[6/8] arm64: dts: rockchip: adjust rk3568 pll clocks
      commit: 66a6450203e2e9bcaf6cb5938e7a9a159234722a
-> adapted commit message with your reply from v1

[7/8] arm64: dts: rockchip: enable gmac node on quartz64-a
      commit: 797fc427ffb9a746d985c5f31e9c14defc1d1187

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
