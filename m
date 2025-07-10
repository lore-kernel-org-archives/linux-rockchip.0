Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE10C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz6cArJGmq91G/W9PwaTDpkrkObMF6+k5zX8DUCEM8M=; b=Q/EiDur6LfGBMS
	xMUnjN2zYYXtrtMuuEtxmCPG2W8gdjhUWrs2BVkFsmu0mjFWqbNxCwCd388xRIHzq/+m+I8tqq9rH
	73TlI9mgV1epf9G3WKFYSF9tpzBpx3rYozuGb6rb/BoAFlrYKbvqCXH+GgZOici4WpUiEToKpxwZS
	Zr+kQs7vMvfqO5zxjo99ehOqanTYKX5rKFln7zE2PRppJ99RGCLjd4OwvFHZ5mTRWtnOreW6nuz3A
	twwWEMA+9qXVmA2NA1aeNMzXwzSKq5zQdCpYSJJ9XEv9VkgcuX58tga+75vyNyGMtFUnkmUh7jY7A
	PfRQwbk+Dd4NLvVzEaDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqqy-0000000Bqyr-1fSf;
	Thu, 10 Jul 2025 12:58:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZplf-0000000BfpH-47mp;
	Thu, 10 Jul 2025 11:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=y4s+IUaUyh9dlQ/Hx8EWkCmljPen6fWuwD0jHRtCum8=; b=nRHLVAA91vDKuodTPolGnRickg
	MZaOnRcGGAMfQxRoBaiOPM8+2tohT5OeBxIjdjRNeDIrx+xB5VeYB/NnDGzC4ooY0DAjB0ig+Bu6R
	F6ZVldo36ZBFEJy6GloU1ozA0jnI8JnF6s0nHgkAx/SCSfpILFSUlF5/nHclT8x1Iviz4+MhM+O6s
	3ZzGlk0uzhUc1I7OgVsMFrN2weqxgHFRa9Q215flxKPQo/gFflrO3gjwt4cMUew8kM1sgNZN+knzD
	WXZcJBNywCOjf70pXwimIsehTUu4wtGRkdELWLA3Yg/zyEM8TYrT9rkskh3DgEyHvNDOh+pvB3jVx
	8K8jSB7Q==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZplY-0004dU-ES; Thu, 10 Jul 2025 13:48:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sboyd@kernel.org,
	zhangqing@rock-chips.com,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 132MHz
Date: Thu, 10 Jul 2025 13:48:37 +0200
Message-ID: <175214811246.1905791.3082982718132036980.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250615123922.661998-1-andyshrk@163.com>
References: <20250615123922.661998-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_044848_018802_FE66714F 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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


On Sun, 15 Jun 2025 20:39:05 +0800, Andy Yan wrote:
> Add PLL rate for 132 MHz to allow raydium-rm67200 panel with
> 1080x1920 resolution to run at 60 fps that driven by VPLL.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3568: Add PLL rate for 132MHz
      commit: 132b62280a9dbe38c627183ae7f1611de3ee0d9a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
