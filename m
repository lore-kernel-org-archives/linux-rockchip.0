Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A54C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMeemVuCmbaND9pLuuEZjtMHRaAxsoxx657f+czl7NQ=; b=B3VgmhM4hcRhp3
	AG1VIJBcGpbS0lkehSUho/Wtc2VRxDYRfvxVJBj6WATcYVPK7/OZg2YvdEYUQiiclaIfZXfQHnLIU
	W38h/wjHH2RZ0HvG5zAaPickSjy8CESjUuO750xUr74hQ9UsVyUnN4Un31nVxjM+L3lozYIuYCXA6
	sB/XzVJPsmA/Ljbtmlu4m9psZJ4BRv791J2xO/giv155+O/rMM8FKCPbCC6UOhD/BiuC72HS+LiNk
	EXC2MxWyjqeyPTWMWhTfdYz/vwMQVvRDXvxbuzaxQ/0cfWDro+WgNjO4f6vbrLFaZQ/h2Clqdjov2
	D+2+NIV8y6LNe5ct/A2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVAr-0000000H4Qp-2XZr;
	Fri, 23 Aug 2024 14:21:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVA1-0000000H4Bd-47fD;
	Fri, 23 Aug 2024 14:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bQZmzBWz/CL6j0TwrrcEFPo250vjCJnNPzSnDONQR+Q=; b=o7tgunipyF+hYaNzNp7UZ+DjdN
	lr/1wgmFiCtGvzou+9dQ+rFXLkrO0RLyYTg4mrGX9Pt2sMsXtNqFgtfaMBvhdKM0Y9mvjbgD0W5Yu
	Dsd12mO2zfVbIKgjuA1AsPFMaFkNcw3oOB/PHR5YqvIWrTii84c0LgBexCRuCFoPYqUJ27D9WNbIw
	gTr9MVvzkRUnKafxmTAXYK7R67XfS3I6ny2GmucRzWx31oLz2oy9OfsP4dNq9EOLh249XTbhFIcjK
	vnvgJqIk2SG3StOrhSptUZptaESD8rskRpd4Ori6j7VkvT0OYJ70P6E2M6929fyBNlp4aDdqjwjz7
	ROUngT9w==;
Received: from i53875ae2.versanet.de ([83.135.90.226] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shV9d-0005sc-Qs; Fri, 23 Aug 2024 16:20:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 David Wu <david.wu@rock-chips.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@collabora.com, Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 1/3] ethernet: stmmac: dwmac-rk: Fix typo for RK3588 code
Date: Fri, 23 Aug 2024 16:21:25 +0200
Message-ID: <2564871.TLnPLrj5Ze@diego>
In-Reply-To: <20240823141318.51201-2-detlev.casanova@collabora.com>
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
 <20240823141318.51201-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_072106_170829_3E6F11B9 
X-CRM114-Status: GOOD (  15.87  )
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

Am Freitag, 23. August 2024, 16:11:13 CEST schrieb Detlev Casanova:
> Fix SELET -> SELECT in RK3588_GMAC_CLK_SELET_CRU and
> RK3588_GMAC_CLK_SELET_IO
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 7ae04d8d291c8..9cf0aa58d13bf 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -1141,8 +1141,8 @@ static const struct rk_gmac_ops rk3568_ops = {
>  #define RK3588_GMAC_CLK_RMII_MODE(id)		GRF_BIT(5 * (id))
>  #define RK3588_GMAC_CLK_RGMII_MODE(id)		GRF_CLR_BIT(5 * (id))
>  
> -#define RK3588_GMAC_CLK_SELET_CRU(id)		GRF_BIT(5 * (id) + 4)
> -#define RK3588_GMAC_CLK_SELET_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
> +#define RK3588_GMAC_CLK_SELECT_CRU(id)		GRF_BIT(5 * (id) + 4)
> +#define RK3588_GMAC_CLK_SELECT_IO(id)		GRF_CLR_BIT(5 * (id) + 4)
>  
>  #define RK3588_GMA_CLK_RMII_DIV2(id)		GRF_BIT(5 * (id) + 2)
>  #define RK3588_GMA_CLK_RMII_DIV20(id)		GRF_CLR_BIT(5 * (id) + 2)
> @@ -1240,8 +1240,8 @@ static void rk3588_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
>  static void rk3588_set_clock_selection(struct rk_priv_data *bsp_priv, bool input,
>  				       bool enable)
>  {
> -	unsigned int val = input ? RK3588_GMAC_CLK_SELET_IO(bsp_priv->id) :
> -				   RK3588_GMAC_CLK_SELET_CRU(bsp_priv->id);
> +	unsigned int val = input ? RK3588_GMAC_CLK_SELECT_IO(bsp_priv->id) :
> +				   RK3588_GMAC_CLK_SELECT_CRU(bsp_priv->id);
>  
>  	val |= enable ? RK3588_GMAC_CLK_RMII_NOGATE(bsp_priv->id) :
>  			RK3588_GMAC_CLK_RMII_GATE(bsp_priv->id);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
