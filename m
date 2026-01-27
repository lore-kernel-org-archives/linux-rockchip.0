Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEE2CF65E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 00:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJSrRZMEBX+poV1PABlDh5/THFc2oOvGaY7uw7ueFgU=; b=tnZ59/AhFmTAxY
	wYq1zAsQAdXyktgDxX/TnMUqWt6Ge5/HAAnWgIh4dLebJewbhbOXDpG7ndhfezUhWOaKYTjM6jods
	auZlrWv3U1wH/F6WzKVwG8m/G0eFocJb/XaZJafgJP+rKtQrgMO8JqE3PlvzVzgL8TDWCHhzs5E5d
	JW8wy5UO/IT03FfVjpzpxRZmELZG9Q2hx9zS3lIHbI4GJZOSqLAeEjmNOEEf6Dm+F4JoA0cvfWedq
	PP1i8z7O0jVzEhhDkwMnM2lHUvs8QVeMUJOdZd4pZzfvI4mj41qzQJLBKY6J6dQj7YcM1G95G4wcX
	Kj1kPfsEI2liSkPMQoqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8u-0000000DODe-2nTq;
	Tue, 27 Jan 2026 00:41:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8h-0000000DO6z-2PBl;
	Tue, 27 Jan 2026 00:41:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B434644344;
	Tue, 27 Jan 2026 00:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 076F2C116C6;
	Tue, 27 Jan 2026 00:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769474461;
	bh=E6r83GJEejdqNv42ad0axn2xC3bNIulFB7d/X0R4UEw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VqvsPB4XnXGAUSGtfXM2BLjW83pb+dmu9z0syFGF8qUO1beyR72ZsCuSiTzwgd3Ph
	 k/7VdLhJE+r0StwGC8QI1B+2qrRCNui/70imSiNwX9P0x57syOIGjpqh4hfVhL6QKF
	 z/XHx/6+Qjat2sO/QsNbSQFvqLTTGg3R4BNuADKsmYLBiNHgIyciMtYcOMa6xDGAUz
	 AQxAT1AsH2Ee6O7npCq6v2jhv71XmkIm3vCTcPsh6i8Qaoomosfn9xvBNgr4Nm6Z56
	 D+TQiaN7q19e7krhexQtow5GAan+Ug4W839LIxc336jnecHq/ZgZeO+3FTxm4jBudz
	 7lZcUee/VmbsA==
From: Jakub Kicinski <kuba@kernel.org>
To: rmk+kernel@armlinux.org.uk
Cc: Jakub Kicinski <kuba@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	andrew+netdev@lunn.ch,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	pabeni@redhat.com,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	alexandre.torgue@foss.st.com,
	andrew@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com
Subject: Re: [net-next,v2,08/22] net: stmmac: rk: convert rk3588 to mask-based interface mode config
Date: Mon, 26 Jan 2026 16:41:00 -0800
Message-ID: <20260127004100.3785792-1-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <E1vkL2I-00000005usu-42Hy@rmk-PC.armlinux.org.uk>
References: <E1vkL2I-00000005usu-42Hy@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_164103_639929_1DB0C311 
X-CRM114-Status: GOOD (  13.13  )
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

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
net: stmmac: rk: convert rk3588 to mask-based interface mode config

This patch adds a gmac_grf_reg_in_php flag and a rk_write_gmac_grf_reg()
helper to write to either php_grf or grf depending on the SoC. It also
adds an init function for rk3588 to set up the interface mode mask.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 35836ffdfc1d..5bbdcc963430 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c

[ ... ]

> @@ -126,6 +127,18 @@ static u32 rk_encode_wm16(u16 val, u16 mask)
>  	return reg_val;
>  }
>
> +static int rk_write_gmac_grf_reg(struct rk_priv_data *bsp_priv, u32 val)
> +{
> +	struct regmap *regmap;
> +
> +	if (bsp_priv->ops->gmac_grf_reg_in_php)
> +		regmap = bsp_priv->php_grf;
> +	else
> +		regmap = bsp_priv->grf;
> +
> +	return regmap_write(bsp_priv->grf, bsp_priv->gmac_grf_reg, val);
                          ^^^^^^^^^^^^^^

The regmap variable is computed based on gmac_grf_reg_in_php but then not
used - the call always writes to bsp_priv->grf instead of regmap. For
rk3588 where gmac_grf_reg_in_php is true, this writes to the wrong
register bank. Should this be regmap_write(regmap, ...) instead?

> +}

[ ... ]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
