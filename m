Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F29BACF8549
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 17:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYR86GEvDTlJC/lw7yH0sRAU43RueCNVjhC3ZDLLQd8=; b=F6bF4wWh4a85oY
	gMehJF7tjCx55tnK3CqPZDPNxT9eQhE8MXq/y/rUyU6MU2aXEHmYWH1ibJQ0hSvMs5c6PqIYIoLzg
	tSNdhHcD9BqiXN/ySrIhTu2rzPy2M/W3y4UYLVy4NGkhlZChyTX4dzxCV+aC+0a1rANLiFbLm6kVb
	sG4RPpIoyBwZTrZRcQFkSmYSB+2PGJZwA/OhBhlisKKSSwwRcKKQak52HoPmdWWFqqkpyL0h9rSnE
	rnZqTi/B3tSiESyBz4La60FYE6qlXfKuxLrQSUFWI8VgV2ZpsO1G5vhEICS+Lp/nt+JK0yTNcvZpi
	Bt8nau9Wu9YX2/huwElQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CU-000000074Jw-15gu;
	Thu, 20 Nov 2025 17:12:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CR-000000074Gy-3UaN;
	Thu, 20 Nov 2025 17:12:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4583F601D9;
	Thu, 20 Nov 2025 17:12:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5308DC116D0;
	Thu, 20 Nov 2025 17:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658723;
	bh=TZ7UcwAhWUQhR7KDTDdYhyKcJHFIZ+LO4pE367CenvU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Md0EoynvvDdeTGZq18pbq4cD9xiTvbXkjXaJZDM36u78bNWkuxqljtBzo5SE2xr1W
	 kKzI432byuixijVBvTpMvIkvP7Y8nt9fmo6leyCN1KtBEI/HJQ6xtQa2fbGGoN1Pk8
	 y05+HRMdL91MIYagx4F5D5utpVC905C6lsgKIQwMqrbCQVWOhGtSAiF5jSVqVALay4
	 ZJS2YPixFiypFBmHBmwKL1sKs3Et7VrOtHbGPftYxWJanx1TjvPZghJ9LyGKMdKuRS
	 U6ttAX7Z8vSNsCFxN+ZqqfLJq9/R229ki4Bej2ih/4rEKXUNPOwGcBEXvb24l/9I5T
	 XCjj2xKRZVdMg==
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
References: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 1/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss
 support RK3528
Message-Id: <176365872091.207696.17487424973195215305.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:42:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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


On Tue, 18 Nov 2025 17:52:05 +0800, Shawn Lin wrote:
> When PCIe link enters L1 PM substates, the PHY will turn off its
> PLL for power-saving. However, it turns off the PLL too fast which
> leads the PHY to be broken. According to the PHY document, we need
> to delay PLL turnoff time.
> 
> 

Applied, thanks!

[1/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss support RK3528
      commit: a2a18e5da64f8da306fa97c397b4c739ea776f37
[2/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss support RK3562
      commit: be866e68966d20bcc4a73708093d577176f99c0c

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
