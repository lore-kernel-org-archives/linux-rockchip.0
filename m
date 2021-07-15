Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7261AC636CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1866F6128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1866F6128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM4A0Rzy1Rn1fasgvSf6bUPt863Wm1A407GzGuATGTw=; b=myiST/Rau56gEd
	O1ghVTuEVZDb/3sbxdJofPwj4pMwC2DBTkwX1Yydd7GqDX/xXPoyLn93jn8fMP5QLlVEq3y+REj1k
	SOPdHHON20YSIoSCliFCfe/i3Kbo2Q9j0b6Xu9SM61oHJigjFZ1Owbgn+NtkvUBos4Ynx5vPrLiAH
	+qaJqnw0b97mZJLjpf7HZ948Ve4qU604XDxmyFL4SrS7RiNchhrGvJQ51Y/jpmKzwos2X3qUlmnvR
	xmUKzSDqHVgmjLZcjHraTCqit/gT3cjgMobcemp/tV/oOtdgj3vDk6S5OTaAlvlshmexTTjQbtIB0
	gPk6E3sRhaorDdm5t3SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A6N-002VfL-CK; Thu, 15 Jul 2021 22:45:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4N-002UmY-Bg; Thu, 15 Jul 2021 22:43:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4J-0005t7-7I; Fri, 16 Jul 2021 00:42:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jon Lin <jon.lin@rock-chips.com>,
	linux-spi@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, macroalpha82@gmail.com,
 sugar.zhang@rock-chips.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 p.yadav@ti.com, hjc@rock-chips.com, linux-kernel@vger.kernel.org,
 sboyd@kernel.org, mturquette@baylibre.com, yifeng.zhao@rock-chips.com,
 jbx6244@gmail.com, linux-clk@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-rockchip@lists.infradead.org,
 broonie@kernel.org
Subject: Re: (subset) [PATCH v12 00/10] Add Rockchip SFC(serial flash
 controller) support
Date: Fri, 16 Jul 2021 00:42:54 +0200
Message-Id: <162638886253.651069.9476890727039205269.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210713094456.23288-1-jon.lin@rock-chips.com>
References: <20210713094456.23288-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154303_481552_C4728AFE 
X-CRM114-Status: GOOD (  10.57  )
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

On Tue, 13 Jul 2021 17:44:46 +0800, Jon Lin wrote:
> Changes in v12:
> - Remove useless oneOf lable
> - Add sfc controller discription
> - Remove the limitation of SFC_MIN_SPEED_HZ
> - Add IRQ_NONE method for irq handler
> - Add SPI_MASTER_HALF_DUPLEX flags
> - Add sfc interrupt mask bits and status register initial progress
> 
> [...]

Applied, thanks!

[04/10] clk: rockchip: rk3036: fix up the sclk_sfc parent error
        commit: 0be3df186f870cbde56b223c1ad7892109c9c440
[05/10] clk: rockchip: add dt-binding for hclk_sfc on rk3036
        commit: b13c1fff66cc255c0a9d48561d05f0f7e8ffd385
[06/10] clk: rockchip: Add support for hclk_sfc on rk3036
        commit: d61eb8a1f5184f32ddc5ac03c930cff8e9a6fae9

I've just picked the clk-related patches for now, as they're
not dependent on the sfc being applied itself.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
