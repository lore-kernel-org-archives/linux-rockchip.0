Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F15E3C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:43:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 877B9613A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:43:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 877B9613A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XB/lneQnMDdz/C609BqTqCxZO34i90OhIed+C9J/uqY=; b=x7NHYwPC48TSWG
	C9UCpvTqntx/YZOsAS8nyMIjU31IUUuqoca/QjXxEVk/PpSPMqpolE9RUZDhjFhZYtKmlPYC4FHzF
	Pz0AcnhROXebnGV/onROyWDaBiSoGuF02/6/o5X9mk1dZKNMzHlfXkknLCYlhBy7y2NZUx8rNkVjJ
	smkcHmZp8bQ5l0Ialp3ka9MYrbCGAVJBtW8O6ilRQyYDXREPIlJ12T/b4P2HvPe4y1I5BtK0Xb6x1
	zhBEGoVzGQuMML+0dBUXm8L/s/qMhR7YsAVWOxYjGEJZXENLh3I5XJrWNtjEqHkYkNrGpgJlUHJGa
	r0LhLQlOd21sfxSSyj5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIEud-000L1Z-JU; Mon, 23 Aug 2021 18:43:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIEtw-000Kqv-Ti; Mon, 23 Aug 2021 18:42:30 +0000
Received: from dynamic-046-114-139-102.46.114.pool.telefonica.de
 ([46.114.139.102] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mIEtr-0002Jl-Ei; Mon, 23 Aug 2021 20:42:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 0/1] arm64: dts: rockchip: add missing rockchip,
 grf property to rk356x
Date: Mon, 23 Aug 2021 20:42:15 +0200
Message-Id: <162974163915.2977894.4550089121639046770.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210823123911.12095-1-michael.riesch@wolfvision.net>
References: <20210823123911.12095-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_114229_005118_C8FD2907 
X-CRM114-Status: GOOD (  12.15  )
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

On Mon, 23 Aug 2021 14:39:10 +0200, Michael Riesch wrote:
> The following error messages appear on my RK3568 EVB1 board during boot:
> 
>   rockchip_clk_register_muxgrf: regmap not available
>   rockchip_clk_register_branches: failed to register clock clk_ddr1x: -524
> 
> These can be fixed by providing the missing rockchip,grf property to the
> device tree (similar to other Rockchip SoCs, such as the RK3399).
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing rockchip,grf property to rk356x
      commit: 7e0a31c49b5a1dc16540581d2a9cbe35da97c06c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
