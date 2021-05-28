Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFE0C47087
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 17:32:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 099CE613B5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 17:32:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 099CE613B5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux/M0wcKtLYTsVlvUCUoy2ugQECiEg3HFjWGpJTzkl4=; b=beG1sGk8o8Zfv1
	jY4hvThdgYM+5qNQEA0cfwASRfRT8UJJU8baiTsbQe/xPS3dLtwA4qNgm3Jm/o00alak2jJ1PC52O
	7obtT+bnYOJzkyRHpD2SzMDWJszL0Z+YtpFNN0bu99bEKzlmaKzsrohhqEVZbt57bUicD7ZZTLcvJ
	rO7GPlHXRz75I5WYLamtwZyXAzOTuS0pWBFpD4jHIIhaxSsLiKIHzG8MKhJ2ZMQWJIFDIndBmjwpu
	qC/V6tuLPjTKlXhJ5JZaV5sSu/a8OUZMIKrvLvMKX2A5stjZY0eJwlxYR9p3FGdKOL6y3ENjeHyTq
	ys1ZSnfUSPWOr/jMRyOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgLj-00HTSs-5V; Fri, 28 May 2021 17:32:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgLh-00HTRB-1n; Fri, 28 May 2021 17:32:42 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgLf-0006NM-DL; Fri, 28 May 2021 19:32:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: export ACLK_VCODEC for RK3036
Date: Fri, 28 May 2021 19:32:37 +0200
Message-Id: <162222314613.2865009.9291015386212006336.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210528140736.79686-1-knaerzche@gmail.com>
References: <20210528140736.79686-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_103241_111019_9BE51556 
X-CRM114-Status: GOOD (  10.86  )
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

On Fri, 28 May 2021 16:07:36 +0200, Alex Bee wrote:
> It is required for the series at [1] to let hantro driver aquire the
> clock and set the rate for RK3036 correctly, but I didn't want to
> add a patch for yet another subsystem to this series.
> 
> [1] https://lore.kernel.org/linux-media/20210525152225.154302-1-knaerzche@gmail.com/

Applied, thanks!

[1/1] clk: rockchip: export ACLK_VCODEC for RK3036
      commit: 2adafc0512625bbd090dc37a353ddda15d525e9d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
