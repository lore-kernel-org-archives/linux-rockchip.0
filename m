Return-Path: <SRS0=SEAf=KT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FCCC04FF3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 16:58:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3AF561406
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 16:58:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3AF561406
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0XEeOR6NfL/kUgmFQyCspfD9wJv6am3UbBxOPgL560=; b=25S4u9DBocMYQx
	qnqwc0ouaQ2syNiqXm9GrroRgUiSuDLU94YByN+eQQl6zv23UW+zqR0CBP9KWXu+aE7ll2w+Uj1bl
	Sw4BAZE3956tV+/kqrAIDa7TTRMj0GOVyCfThOeQACUHCjQUL/VExg41t5Nfv3emKxrfmjJ9xloVc
	RyrYlbiM3Wto/IC3qzkIGj5LLMrXDBbg0quUOeht6kC1WwqgafZUn24s8iA3P8W58BJgdSDlHkROC
	xqOojkMwiHTxGjEBFSvQ72dZOoKaxsyvrQw9/E9V/WGIJzvFtNIJ5wP7nqgfFWg02Y8iNX1GqY55B
	mvKQ7fzH4ebjj1xzGLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llDu1-001ByO-Re; Mon, 24 May 2021 16:58:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkxsU-000cGV-0c; Sun, 23 May 2021 23:51:27 +0000
Received: from p5b127ecf.dip0.t-ipconnect.de ([91.18.126.207]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lkxsF-0003D5-NC; Mon, 24 May 2021 01:51:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: fix rk3568 cpll clk gate bits
Date: Mon, 24 May 2021 01:51:10 +0200
Message-Id: <162181382840.2545380.4133939469375306641.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210519174149.3691335-1-pgwipeout@gmail.com>
References: <20210519174149.3691335-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210523_165126_074114_F83AE0A6 
X-CRM114-Status: UNSURE (   9.25  )
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

On Wed, 19 May 2021 13:41:49 -0400, Peter Geis wrote:
> The cpll clk gate bits had an ordering issue. This led to the loss of
> the boot sdmmc controller when the gmac was shut down with:
> `ip link set eth0 down`
> as the cpll_100m was shut off instead of the cpll_62p5.
> cpll_62p5, cpll_50m, cpll_25m were all off by one with cpll_100m
> misplaced.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: fix rk3568 cpll clk gate bits
      commit: 2f3877d609e7951ef96d24979eb9d163f1f004f8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
