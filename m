Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBD8C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 09:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV+/JSQgLgAiVPNykM5iVHfa4bt6Ap9PLxms6utL+ZQ=; b=g0SoAkVShuVtRo
	lKa5zeinfhPrWnXpUKxB5govvqD8PPv7O6faXN7MsDpLCsOH0HGl0GKvodDh5Tikk3V9br38oaE71
	YUv0UBHTEzqHtsBucI+Oir8ue/M585EupGIc7Gc5aL28Q2444KgodS+8iFr36OjyPvOwCefWS3hpo
	5ZU7pw8l4TV2uRo32m1BSVSYP+VOEzJWJ19JUp7NeVZ/9qL5VKq6cGLgUXHuECDWw2Bk+O5fxesbk
	QaHb2XNkiMI+jcR/9irW8cOHz8mQ120kD3s+5NMW2Arn77FDG8lXHESxjsKMg6hYxCjY/b/F7jMsA
	qQB6B/2x2J6r94xAJ9KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7upc-004nVj-0N;
	Tue, 28 Nov 2023 09:56:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7upY-004nVI-1Z;
	Tue, 28 Nov 2023 09:56:37 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7upR-0002pQ-SP; Tue, 28 Nov 2023 10:56:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] RK3128 clock fixes
Date: Tue, 28 Nov 2023 10:56:28 +0100
Message-Id: <170116536542.2181089.13845527972157638659.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127181415.11735-2-knaerzche@gmail.com>
References: <20231127181415.11735-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_015636_546699_DAE1FCCE 
X-CRM114-Status: GOOD (  10.10  )
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

On Mon, 27 Nov 2023 19:14:14 +0100, Alex Bee wrote:
> This series has 2 patches which fix some clock driver issues for RK3128.
> 
> In v2 [0] there was one more patch [1] which I dropped now, since
> it has been merged already (was submitted by somebody else [2]).
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20230829192958.250248-1-knaerzche@gmail.com/
> [1] https://lore.kernel.org/linux-arm-kernel/20230829192958.250248-3-knaerzche@gmail.com/
> [2] https://lore.kernel.org/linux-arm-kernel/20231031111816.8777-1-cn.liweihao@gmail.com/
> 
> [...]

Applied, thanks!

[1/2] clk: rockchip: rk3128: Fix aclk_peri_src's parent
      commit: 98dcc6be3859fb15257750b8e1d4e0eefd2c5e1e
[2/2] clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name
      commit: 99fe9ee56bd2f7358f1bc72551c2f3a6bbddf80a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
