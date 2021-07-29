Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0AC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23CE560230
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 23CE560230
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKxI4PHF7fDqJZiMTpjrC7fLGJTvCHm8VgzZBHCJEfU=; b=dOmMiw24VSr33H
	u4uFrRd0TUKtxkQsf1ATLjtMu4SrC8rve7BseUbMMnUKQJFjDSJ5+d9XKAJGtPfT9qIzG3T8RsCNZ
	lX5rFn/7UKDzmfVS0c3He1wAgc5X3TxKsM8RoaAkHwG621eYOm3VW18/Gx0ZFA19SY00sCj9/WcYa
	pfmtbm/IoXIpvbYauECdnPiWCL1Jpe1bBHfofOK9Q2mgpe5LoRX3TnRi7xsQDvwAgT6oz4BciSihj
	0aklg2WIiYjcUu3/dSzf35twx8AoCPyMoZIQwuIxw7uat2ElTYcvH9vhOOpSkgO/vMrSd2EBmhZT3
	6LfCkpimyAPXvGDd5kcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m95x1-004CN1-B3; Thu, 29 Jul 2021 13:19:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m95wc-004CG2-8N; Thu, 29 Jul 2021 13:19:27 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m95wX-0003Jt-Io; Thu, 29 Jul 2021 15:19:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yunhao Tian <t123yh@outlook.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 t123yh.xyz@gmail.com, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
Date: Thu, 29 Jul 2021 15:19:19 +0200
Message-Id: <162755606328.1705274.2205144584185916023.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_061926_346655_3530C9C7 
X-CRM114-Status: GOOD (  11.17  )
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

On Wed, 21 Jul 2021 20:48:16 +0800, Yunhao Tian wrote:
> Currently, no driver support for DDR memory controller (DMC) is present,
> as a result, no driver is explicitly consuming the ddrphy clock. This means
> that VPLL1 (parent of ddr clock) will be shutdown if we enable
> and then disable any child clock of VPLL1 (e.g. SCLK_I2S0_8CH_TX).
> If VPLL1 is disabled, the whole system will freeze, because the DDR
> controller will lose its clock. So, it's necessary to prevent VPLL1 from
> shutting down, by marking the ddrphy4x CLK_IS_CRITICAL.
> 
> [...]

Applied, thanks!

[1/1] clk: rk3308: make ddrphy4x clock critical
      commit: c0c81245dac7caaef4db627fb7043495d1afe662

Though I moved the clock to the pre-existing
list of critical clocks.

I'm still hoping for that handoff mechanism before
we sprinkle CLK_IS_CRITICAL throughout the clock trees.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
