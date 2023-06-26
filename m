Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68E4EB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 10:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNIH47RWLNK3dZ4Q8nMMVn2kR1YJoAvii9dYFWdgT7c=; b=u6+cnt16SB7nBd
	L2i97C1YHUgkTg/GYLWS0jhGQdMlU/WF36dM22Yb10U0TpzTJB5tTptRUvXrwchyxl/Gm3CeHFxQw
	zE/4E7ONzKLZ7hXPx7ZoDtNZc6Z87DNPukIlSJGFq9e4irzeqSZfTIzCDEgg4tOpFYBIEtyR4txJK
	LpH6nQVd0iOmzUqeaJ0jlejSmXdg0Iczb152OH/1WCZCm6Bzq2hGOLx+XBI6VV87eRjRBhk3qVUSI
	psHeyGNiQDzFpcytFiYCsk2NGlqaV97KC9WajnW8IFcFeS9DKOZLXExAfzsc3hZDrqPF0Ytk6pvB+
	mdgdwCHecrqs6gDkUvHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDjv2-00A0Of-1b;
	Mon, 26 Jun 2023 10:58:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDjuz-00A0MG-2e;
	Mon, 26 Jun 2023 10:58:03 +0000
Received: from [185.109.152.99] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qDjus-0000At-P9; Mon, 26 Jun 2023 12:57:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Alibek Omarov <a1ba.omarov@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz
Date: Mon, 26 Jun 2023 12:57:37 +0200
Message-Id: <168777705004.859243.8169307365996789856.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
References: <20230614134750.1056293-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_035801_853094_121B0669 
X-CRM114-Status: UNSURE (   9.11  )
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

On Wed, 14 Jun 2023 16:47:50 +0300, Alibek Omarov wrote:
> PLL rate on RK356x is calculated through the simple formula:
> ((24000000 / _refdiv) * _fbdiv) / (_postdiv1 * _postdiv2)
> 
> The PLL rate setting for 78.75MHz seems to be copied from 96MHz
> so this patch fixes it and configures it properly.
> 
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz
      commit: 17c6d0c5f2a4dd3f48e300d77c93780d5c36a37e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
