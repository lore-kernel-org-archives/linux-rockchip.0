Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51289C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 07:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyNQVMQKh9Gql5m0YYIJlRTT+mqD2HFWuxUlFRQEYf8=; b=zGtydjP03htmhi
	IdYbGdGpJQ53DBHSvdvb8zmvl5g4LEBKjylIxuxHt5e8zrunzfNStT8mXiRMULoaZQ67OeACLl6CA
	fjzNLUzRH5satOl22gwL0tUkYUq1jVdYVN0RaQscCeqZC3QxejfOmTNExnUJxRoqNH7AH/E9ns7id
	zT7zEZFob1/ZCD0Xb06Deqb/DexmHjRLj7MoTA46xylxjQ0RxLouB4sEsLGbTiBMkCRA9/XWx4rt6
	G6n35VsQ3ZB9YlDg8xsxQ9dBD2I1V80c7Rv6uHe5Xu8r5gSZ7mkDRi0aGscjmjg9ETS3vp5zHg8kr
	fRPdfd5yMKf2CEEA67TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIkna-0000000753c-35yR;
	Sun, 16 Jun 2024 07:59:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIknY-00000007536-21KA;
	Sun, 16 Jun 2024 07:59:37 +0000
Received: from 79-98-74-242.sys-data.com ([79.98.74.242] helo=phil.guest.centrum-krystal.cz)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sIknO-0000UZ-8H; Sun, 16 Jun 2024 09:59:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-rockchip@lists.infradead.org,
	Sam Protsenko <semen.protsenko@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: (subset) [PATCH v1 0/4] clk: Switch to use kmemdup_array()
Date: Sun, 16 Jun 2024 09:59:24 +0200
Message-Id: <171852472233.3824365.10919952003321666649.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_005936_542067_9F60D114 
X-CRM114-Status: UNSURE (   8.31  )
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

On Thu, 6 Jun 2024 19:09:30 +0300, Andy Shevchenko wrote:
> Replace open coded kmemdup_array(), which does an additional
> overflow check.
> 
> Andy Shevchenko (4):
>   clk: mmp: Switch to use kmemdup_array()
>   clk: rockchip: Switch to use kmemdup_array()
>   clk: samsung: Switch to use kmemdup_array()
>   clk: visconti: Switch to use kmemdup_array()
> 
> [...]

Applied, thanks!

[2/4] clk: rockchip: Switch to use kmemdup_array()
      commit: c9ba07b0c02acd89f2e521754357de30e704c254

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
