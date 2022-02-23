Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA99DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsLX3P06LSM9ctd5FrFTHahW9Ny18IuUpGf58kbwigc=; b=buMcOapA5Z/zy2
	pL8kIY4+e5tPwdTPr5nHTdM9g95ZXoOoOpQQNuEjUYztykMtm3bSrgpfasunzpZr1PBJh3tEQnI8v
	TZkAnsnOhIxM6Tfg0iNPQXTJlYJa1FfS/EGuK5106xJ5lKPv7WtNYBAnv8XKROkb75K8AEwgnQI5Z
	UU5iAkk/U7dE+MNQ+NqhMQsoS4QT+e3JTGMNU+LVS9MK6+89RS3NBK1hKpdP0Nb0j3Ab63sNGT9Ng
	qY6AUglPjlsJDKQo/VoBZPjxlZdww5cjrJqfD/tTeO82duQHeT1tvS7X8l6lnrx7sue9XNVLSizva
	wTqRkeYJmLaeZDjjRaxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nN1Ju-00GIfh-S8; Wed, 23 Feb 2022 23:45:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nN1Iz-00GICm-BZ; Wed, 23 Feb 2022 23:44:22 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nN1Is-0005mN-Ig; Thu, 24 Feb 2022 00:44:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "quentin.schulz@theobroma-systems.com"
 <quentin.schulz@theobroma-systems.com>
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, Quentin Schulz <foss+kernel@0leil.net>,
 mturquette@baylibre.com, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: re-add rational best approximation
 algorithm to the fractional divider
Date: Thu, 24 Feb 2022 00:44:11 +0100
Message-Id: <164565984101.1356028.16253191967940444197.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131163224.708002-1-quentin.schulz@theobroma-systems.com>
References: <20220131163224.708002-1-quentin.schulz@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_154421_445333_FE7FEB8E 
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

On Mon, 31 Jan 2022 17:32:24 +0100, quentin.schulz@theobroma-systems.com wrote:
> In commit 4e7cf74fa3b2 ("clk: fractional-divider: Export approximation
> algorithm to the CCF users"), the code handling the rational best
> approximation algorithm was replaced by a call to the core
> clk_fractional_divider_general_approximation function which did the same
> thing back then.
> 
> However, in commit 82f53f9ee577 ("clk: fractional-divider: Introduce
> POWER_OF_TWO_PS flag"), this common code was made conditional on
> CLK_FRAC_DIVIDER_POWER_OF_TWO_PS flag which was not added back to the
> rockchip clock driver.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: re-add rational best approximation algorithm to the fractional divider
      commit: 10b74af310735860510a533433b1d3ab2e05a138

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
