Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 279D4C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 23:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lKDrXqrtomFrdEv+SR+PGt7pqb9ztS5PHPaTE+RsJ8=; b=VXlYgcRk8lBAbn
	HDcrVJE+05FLgJ5zd10sQhLDF3HMmyUhsaor3Egt955BjT7JBJk44jN/wzQcznfv1L96ggSTaxYx8
	fMroF6zu7IHfUG1BYx4iQDoP+RwwLYwlSczrjoFkFnxyPt6HDDzlHFONUKRqTIiVIfqXnyil5D9n+
	yaLQDAgwAD2VMxqAVWvk7WmWI/vfi0g5GrhS+NDWI1qZ9Mc9tXcc2leROuzQpnWH41Qq4UsFaevXe
	2R+kUP93kasL43LlIGOE6JhpmCnB7NfATGNlCTeUgScdJ2XZnS4VmqQvKLz8an2l2PKoc0X1XXH/k
	5I+ubwL4cr81HJQxNdog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcwub-000Ihz-17;
	Thu, 16 Mar 2023 23:21:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcwuY-000IhC-1I
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 23:21:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6FD7562160;
	Thu, 16 Mar 2023 23:21:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B27C433D2;
	Thu, 16 Mar 2023 23:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679008888;
	bh=3Oui75984P2dEQ09SAAqFYPA7I0ywfps+4tuLUL6s5I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=eKvZ3xfxssXXsEZv1JYx9bh2g9vo0NqPIAnxSRHcKoK8Ld7bv1+VX9h+6RA2iF4g6
	 kl3IqiX+whbFZDIoQ6QbFFT5Z8GPKmEkcLd42aftfL1IjgFffIAeLNiDY7gfWfw1Wt
	 7LtfXNAlpFXaJRG9y/IZ2Qn1gXbDBgQUW+HFmAkWlcQmg409x7Np7kcqYQKhnaabJ9
	 0+uodqEFP6AlrPDERW/oKvggmM32IT3BmaLSPrZBYiCPNwmXNv1okjeW7TZdJGeJ5U
	 j1EGbqE7Y+wqgS/fgZyG7UtrjvUeVd5fUzXTE2pEC7/lB4U788ukUpEhqI/KorLU4X
	 8PYShIgCVG11Q==
Message-ID: <2f5f469817d637883c73e49a924530ac.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230307153617.643260-2-sebastian.reichel@collabora.com>
References: <20230307153617.643260-1-sebastian.reichel@collabora.com> <20230307153617.643260-2-sebastian.reichel@collabora.com>
Subject: Re: [PATCHv7 01/11] clk: RK808: reduce 'struct rk808' usage
From: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
To: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 16 Mar 2023 16:21:26 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_162130_477163_4A073F9D 
X-CRM114-Status: UNSURE (   9.85  )
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

Quoting Sebastian Reichel (2023-03-07 07:36:07)
> Reduce usage of 'struct rk808' (driver data of the parent MFD), so
> that only the chip variant field is still being accessed directly.
> This allows restructuring the MFD driver to support SPI based
> PMICs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
