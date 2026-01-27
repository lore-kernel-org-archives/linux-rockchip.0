Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BD66CF65E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 00:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZXt5lhk/O87iLz9JBzBpEOgSnXbcq6Y2BE3gEwUZLo=; b=MnVyoeaHBGjTHR
	UTTcKlgIJMKYcaUicv+zIiCeKXY70umQ9h7e5pECD6/gpD4HzkCoidHdcftz3As17OD1Zvkgi0ASY
	OV0uvu8p6JDiwOpsjH7jbp3vmRB8Sk8HYmYCP/Zc/P3G/2asVFaXvycyWNVWWIJFPiCnGzKGFBj0b
	piWmZ/wCHxTmsgi2L8Vqr5WYfO3okZnA6/qlHHsxqZnvRbgSKCHSwoP6hn+eEvlTbCItBn4cFb/LU
	NN8diBKgn0bKK6rjJcwTxjmIompYMgweegWDFHPuo2OqB0KisWrZCVcTOYkB5wxRlDbnvwzWPXXO+
	XHeYXLoQW5UIfWoQvvNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8p-0000000DOAr-0HyB;
	Tue, 27 Jan 2026 00:41:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8i-0000000DO7d-0WuG;
	Tue, 27 Jan 2026 00:41:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8F0FA60141;
	Tue, 27 Jan 2026 00:41:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD50EC16AAE;
	Tue, 27 Jan 2026 00:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769474463;
	bh=dtMq2dGqlL8iuDbPHgE+yg8+ta+2jgFx0lXwCi1sJLE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=amHPgMvjw6CwyQLu+V9jsG5c7pyu4QX0j8a+GP9muiPRJrHh9GC60/6nHhoxtscU8
	 r+aZgdg2QHrCzivJsePMI03Nc05C4mCnROWb6TbdWxfnoNxfQgcdf6Dgz8lFNT4z0T
	 ftQCrrq9z50slvQFvpk6eTz6FBeFGbOTJWANIAUBLYl/cixixaO+Ri/lXuxbNYJZMQ
	 sI2iNg8uIHUInJ2vI3q2cm1c8/2HGbVrKt5tEcIPZHnwkUUVcygDqZfnWPWlAnN2/j
	 juq/C8lXafcN4elHhrQ0DztJc07jEMHfqF2jJ/fh/ZvswAnG3yger7LwVRf6KzZvsW
	 Zi01OPNwmXOrQ==
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
Subject: Re: [net-next,v2,21/22] net: stmmac: rk: use rk_encode_wm16() for clock selection
Date: Mon, 26 Jan 2026 16:41:01 -0800
Message-ID: <20260127004101.3785871-1-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <E1vkL3N-00000005uuA-2GnK@rmk-PC.armlinux.org.uk>
References: <E1vkL3N-00000005uuA-2GnK@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
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
net: stmmac: rk: use rk_encode_wm16() for clock selection

This commit refactors the per-SoC set_clock_selection() method into
unified helper functions using rk_encode_wm16(), with mask-based
configuration stored in struct rk_clock_fields.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 26fc93854cb0..443d3bd62cae 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c

[ ... ]

> @@ -1000,25 +991,23 @@ static const struct rk_gmac_ops rk3576_ops = {
>  #define RK3588_GMAC_CLK_RMII_MODE(id)		GRF_BIT(5 * (id))
>  #define RK3588_GMAC_CLK_RGMII_MODE(id)		GRF_CLR_BIT(5 * (id))
>
> -#define RK3588_GMAC_CLK_SELECT_CRU(id)		GRF_BIT(5 * (id) + 4)
> -#define RK3588_GMAC_CLK_SELECT_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
> -
> -#define RK3588_GMAC_CLK_RMII_GATE(id)		GRF_BIT(5 * (id) + 1)
> -#define RK3588_GMAC_CLK_RMII_NOGATE(id)		GRF_CLR_BIT(5 * (id) + 1)
> -
>  static int rk3588_init(struct rk_priv_data *bsp_priv)
>  {
>  	switch (bsp_priv->id) {
>  	case 0:
>  		bsp_priv->gmac_phy_intf_sel_mask = GENMASK_U16(5, 3);
> +		bsp_priv->clock.io_clksel_cru_mask = BIT_U16(4);
>  		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(3, 2);
>  		bsp_priv->clock.rmii_clk_sel_mask = BIT_U16(2);
> +		bsp_priv->clock.rmii_gate_en_mask = BIT_U16(1);
>  		return 0;
>
>  	case 1:
>  		bsp_priv->gmac_phy_intf_sel_mask = GENMASK_U16(11, 9);
> +		bsp_priv->clock.io_clksel_cru_mask = BIT_U16(10);
                                                        ^^

Should this be BIT_U16(9) instead of BIT_U16(10)?

The removed macro RK3588_GMAC_CLK_SELECT_CRU(id) used the formula
GRF_BIT(5 * (id) + 4), which for id=1 gives 5*1+4 = bit 9.

The other masks for id=1 follow the 5*(id) pattern correctly:
  - rmii_gate_en_mask = BIT_U16(6)  matches 5*1+1 = 6
  - gmii_clk_sel_mask = GENMASK_U16(8, 7)  matches 5*1+{2,3}
  - rmii_clk_sel_mask = BIT_U16(7)

But io_clksel_cru_mask = BIT_U16(10) does not match 5*1+4 = 9.

>  		bsp_priv->clock.gmii_clk_sel_mask = GENMASK_U16(8, 7);
>  		bsp_priv->clock.rmii_clk_sel_mask = BIT_U16(7);
> +		bsp_priv->clock.rmii_gate_en_mask = BIT_U16(6);
>  		return 0;

[ ... ]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
