Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2565C55172
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 07:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jR6hSG614HfLsOXN7JI8OfKCTlZTWk8RU7tXPRTnLqM=; b=qFQz1Wq83bIFP3
	hlbgIuOKU7fDEJDOuri07ANpjmn3f5i4Ab49iSKCw5JuabXgWVDoLQy8QrkDZel1+Wze5C9crSKEZ
	iSfmHgWrwO/I79PjtYjEsMF2w2kiB+BrEvLwvrOO34lG9uMMOOdYhUhqnkWkbI5PQgQmEi9w8gkwr
	Rv9MbrP3a5uS5KBvtTjrGR01LsNjQMd9yw7+KDzVRdIubzB/eCwxh+T7tZMMC7qnFbKyJrw7Rp6Xz
	HNveaAk3/TkzOPNdF79ClCK4K7/SvCoY83/L4E2b3PW9ccG/FQkBWHDhWO/EAMXO5jU4D76tsgYY9
	3eeW8gZMlvjJ1Bd3kWjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9gL-00000001FUe-0MXg;
	Tue, 04 Aug 2026 07:35:25 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr9gG-00000001FSe-46bu;
	Tue, 04 Aug 2026 07:35:23 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 66CDF1A13F3;
	Tue,  4 Aug 2026 07:35:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2F9F66029E;
	Tue,  4 Aug 2026 07:35:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 87C3011C3243E;
	Tue,  4 Aug 2026 09:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1785828911; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=AFfzA1yEpz98WSrUzXTIRfHYsrqeBVjjHGrLZ3rUQuw=;
	b=I2tZ+bNA0vzRFhmdyuin09lXj1zvdD7zwq/21TRtxvJAS28BdjiQqtpbzj/qkdu/zExPwL
	oPHZkLSwWK7Dx2acBZLJ3QnuU/EDBoTZFMxbEjiFUTJ/yEmg+lalZTFlB80ZIQYnAl2rQn
	dyJJccTFoqBivc6fofHC4q6t2/NO5siAIF7G79RfCow7oKPOhMOmFOaTNlaI2ARxjtMoWy
	6rcQtZiaPuta6OTGCRVld6D3B/e+eV6zHVjG3tif4H2eVPfj+pvBHDo+unxSNXCTHmKpeN
	VsQC+5ssJaQf9L7NrC/mZB4niI02oyvoAxeK7+OLrLr6hgKl9szAWq7bS0ZKZw==
Message-ID: <28ca553c-59ce-4608-b63a-6e8c4dfb6020@bootlin.com>
Date: Tue, 4 Aug 2026 09:35:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for SGMII
 link recovery
To: Coia Prant <coiaprant@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, Jiawen Wu <jiawenwu@trustnetic.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-8-coiaprant@gmail.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260801142244.679437-8-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_003521_152868_0D911253 
X-CRM114-Status: GOOD (  19.56  )
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

Hi Coia,

On 8/1/26 16:22, Coia Prant wrote:
> On some hardware using the DesignWare XPCS IP (e.g., RK3568 MAC side
> SGMII), the PCS does not automatically restart auto-negotiation when the
> link goes down and comes back up. Without an explicit ANRESTART, the link
> stays down forever.
> 
> Add BMCR_ANRESTART in two places:
> 1. In xpcs_config_aneg_c37_sgmii(), when starting AN, set ANRESTART
>    alongside ANENABLE to initiate a fresh negotiation.
> 2. In xpcs_get_state_c37_sgmii(), when link is down and AN completion is
>    detected, clear the interrupt and trigger ANRESTART to restart the
>    negotiation process.
> 
> This change has been verified on:
> - RK3568 (Photonicat board)
> - Wangxun NICs (no regression)
> 
> Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

KSZ9477's old XPCS doesn't break with that code, tested in SGMII
mode :)

Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime

> ---
>  drivers/net/pcs/pcs-xpcs.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
> index 0337e2bcc0125..28e98449e8ac2 100644
> --- a/drivers/net/pcs/pcs-xpcs.c
> +++ b/drivers/net/pcs/pcs-xpcs.c
> @@ -816,9 +816,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
>  	if (ret < 0)
>  		return ret;
>  
> +	/* Clear CL37 AN complete status */
> +	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
> +	if (ret < 0)
> +		return ret;
> +
>  	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
>  		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
> -				 mdio_ctrl | BMCR_ANENABLE);
> +				 mdio_ctrl | BMCR_ANENABLE | BMCR_ANRESTART);
>  
>  	return ret;
>  }
> @@ -1089,14 +1094,18 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
>  			state->duplex = DUPLEX_FULL;
>  		else
>  			state->duplex = DUPLEX_HALF;
> -
>  		return 0;
>  	}
>  
> -	/* Clear AN complete status or interrupt */
> -	if (state->an_complete)
> +	if (state->an_complete) {
> +		/* Clear AN complete status or interrupt */
>  		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
>  
> +		/* Initiate the next round of AN */
> +		xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
> +				    BMCR_ANRESTART);
> +	}
> +
>  	return 0;
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
