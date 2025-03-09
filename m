Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC9F2C28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YT9raJ6Tw0eEE8fzRQBAY4xsmaXFpDzaTTcC4h1gPfM=; b=PDNtPd7eYIgZtu
	M6rEzWTOe+1WEfVqscvfR4gVxS59Naesf7+A1fJw5T9mkKgO9ay62f2ELbV5yUWCJ7Tjh3Qebc40K
	GH+sYZcNdaLFkqxSbDvZEJNk01Nb127tIpmYFQMHREvurxVW4IfJjjFZXq67NXh8tc5QSAjxuYcUX
	JKHOKZ1nFV7UVCivVwi4yCbRT39JqHP+peK/qCKAxNfJcPmgEeZKsRvXAFjC0QaxM1se7gTkBGh6C
	zHc5fuvqKXnuunomnHmHXFEZg50CK84zMHWiVmaGcMnxTIGJvFYoQZvo9TjdvdX+pW6YKdV6KJ5Sd
	PtXW7qNYLJl91JHMUorg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCva-00000000HQS-0ZFl;
	Sun, 09 Mar 2025 09:26:34 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCsA-00000000H1h-3D4t
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:23:04 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e609cff9927so2103589276.3
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512181; x=1742116981; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iMh3NDuLrSGAoXMlAYmObZJYcnKtSuzU7ys7GAZPNb4=;
        b=vHn/gaeBN//dmnUCpG3FEikob512z/WpJTdXL9MvxFWK51LBxmcbV0IhXgRzVFwsQL
         deCMBytuhS2For2X0DMReu/i5E4MegOoiNVx1B0NieCZEnDcWax7Ytw8mEh7mhtY2lhJ
         oY0g8rE6W43zSPjDmn0eAwkhVXiDmaIObyybsaKPPmJK8Z9vl3ajzRvULhnnMuFPXWUi
         MUOdwJj1qCS4fcPAEu4SPf0BULOHQ+DKpD5x1myGoCu3ae7X96hQIyDq4JRv0lcVhJxf
         G2g2e6qynZ30WgjazFWMjCr/Tiibm9T6h7+IX2wxaQUu1vyhUthIEPj8o70RFHoHUs+S
         yqGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512181; x=1742116981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMh3NDuLrSGAoXMlAYmObZJYcnKtSuzU7ys7GAZPNb4=;
        b=xEk/aUAZgys7b8sDGs8mnPpArgqtq5sVZslTeDYByr4kST506xVvXNx8MX6jdNFGUT
         GKNDQibutQXkC7aZ+GwB2Rt7P6HOPzMqa6UNMtvl2hKzxlAECnm4XElV8Jfs20BF/8X+
         Ltvc6DkT5MPTUgi5hrCWPpZ84Zr11uHJ6S2d6EnFhOLvoFSFXwPFe6MrPos8RWE0YDqO
         iiUMODrhG6YjpPfjfydcclzVEPwY2D+UtV3g4Bgip2vB+g0zCQj7ak7oC66itryoWJfx
         wIRTYD8PU9dk6Vup6blsZh1nPnvfM77vXF4pnIukOaO8LeCfr/MPmIAMW+i7M2kuiKlI
         DaJg==
X-Forwarded-Encrypted: i=1; AJvYcCXh190fBw5wWm9PHDpwHc1X3JrgjXu7l1uxa3JONP3r0Q1rFYY44DgG5cuiz8LdwfHZl9xRbyDZLnMtdSW+aA==@lists.infradead.org
X-Gm-Message-State: AOJu0YywYkU3d3QJ4mXS+TArxdEYms3MLd8dDGqMVKKVlIUMTDLKh2hd
	5Kt1mEZ+pmg1wWhJxZuQwtoQ2qPFi8as55uTH2wEo86nhQCIJD5h5jUuNMGrL3Sy8sl0SwL6bo0
	5Kq1v+NhBtSVc/GMtB/FhizTX2KKEZD/0Af5jXg==
X-Gm-Gg: ASbGncuMeDUgHXa5CxloR7nQijTQEuX8QxPd3D0G2I8u4aU3r7lLRJIQkw43YZVzWtL
	3M79BbRJQtYcRD0/9duw3Rju6913WI8e9uTVM9Tbuc+gkCElmkAvPErfSWWAMlAmNVattsrvcyI
	/YcxSnVJzx7UJnHQLfmIrDCrxkU5NgS/fNVeWcZmnJCbB7tOUkQS4=
X-Google-Smtp-Source: AGHT+IGwSjssMypxWMqlAgIxRqvqFw5zCtjXcKaNH8uFEv6oSpbLLZZrkI9ebpcft3vvy7bHOrWbWh76EUn4+31AvMw=
X-Received: by 2002:a05:6902:2702:b0:e5a:e897:2846 with SMTP id
 3f1490d57ef6-e635c13dc87mr11588234276.16.1741512181600; Sun, 09 Mar 2025
 01:23:01 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-7-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-7-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:22:50 +0200
X-Gm-Features: AQ5f1JoAeZL47fdNQ51_XRbhIwKgmeJzZ78g4SD2gNds-cV7TO45RQfFMkCcCBs
Message-ID: <CAA8EJpoQbvFbNXQ2RB1qY2gHnwZaU-PT-DMLnZkrxkqs2wkXqQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/12] phy: rockchip: samsung-hdptx: Avoid Hz<->hHz
 unit conversion overhead
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_012302_807336_F2DBA394 
X-CRM114-Status: GOOD (  16.81  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> The ropll_tmds_cfg table used to identify the configuration params for
> the supported rates expects the search key, i.e. bit_rate member of
> struct ropll_config, to be provided in hHz rather than Hz (1 hHz = 100
> Hz).  This requires multiple conversions between these units being
> performed at runtime.
>
> Improve implementation clarity and efficiency by consistently using the
> Hz unit throughout driver's internal data structures and functions.
> Also rename the rather misleading struct member.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 79 +++++++++++------------
>  1 file changed, 39 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 2bf525514c1991a1299265d12e1e85f66333c604..e58a01bdb3ce82d66acdcb02c06de2816288b574 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -330,7 +330,7 @@ enum dp_link_rate {
>  };
>
>  struct ropll_config {
> -       u32 bit_rate;
> +       u32 rate;

unsigned long long, please, to match the tmds_char_rate type.

>         u8 pms_mdiv;
>         u8 pms_mdiv_afc;
>         u8 pms_pdiv;
> @@ -410,45 +410,45 @@ struct rk_hdptx_phy {
>  };
>
>  static const struct ropll_config ropll_tmds_cfg[] = {
> -       { 5940000, 124, 124, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 594000000, 124, 124, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,

Use ULL suffix

>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 3712500, 155, 155, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 371250000, 155, 155, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 2970000, 124, 124, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 297000000, 124, 124, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1620000, 135, 135, 1, 1, 3, 1, 1, 0, 1, 1, 1, 1, 4, 0, 3, 5, 5, 0x10,
> +       { 162000000, 135, 135, 1, 1, 3, 1, 1, 0, 1, 1, 1, 1, 4, 0, 3, 5, 5, 0x10,
>           1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1856250, 155, 155, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 185625000, 155, 155, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1540000, 193, 193, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 193, 1, 32, 2, 1,
> +       { 154000000, 193, 193, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 193, 1, 32, 2, 1,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1485000, 0x7b, 0x7b, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 4, 0, 3, 5, 5,
> +       { 148500000, 0x7b, 0x7b, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 4, 0, 3, 5, 5,
>           0x10, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1462500, 122, 122, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 244, 1, 16, 2, 1, 1,
> +       { 146250000, 122, 122, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 244, 1, 16, 2, 1, 1,
>           1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1190000, 149, 149, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 149, 1, 16, 2, 1, 1,
> +       { 119000000, 149, 149, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 149, 1, 16, 2, 1, 1,
>           1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1065000, 89, 89, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 89, 1, 16, 1, 0, 1,
> +       { 106500000, 89, 89, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 89, 1, 16, 1, 0, 1,
>           1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 1080000, 135, 135, 1, 1, 5, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
> +       { 108000000, 135, 135, 1, 1, 5, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
>           0x14, 0x18, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 855000, 214, 214, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 214, 1, 16, 2, 1,
> +       { 85500000, 214, 214, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 214, 1, 16, 2, 1,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 835000, 105, 105, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 42, 1, 16, 1, 0,
> +       { 83500000, 105, 105, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 42, 1, 16, 1, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 928125, 155, 155, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 92812500, 155, 155, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 742500, 124, 124, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
> +       { 74250000, 124, 124, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 62, 1, 16, 5, 0,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
> +       { 65000000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
>           1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
> +       { 33750000, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
>           1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
> +       { 40000000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
>           0x14, 0x18, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 270000, 0x5a, 0x5a, 1, 1, 0xf, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
> +       { 27000000, 0x5a, 0x5a, 1, 1, 0xf, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
>           0x14, 0x18, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> -       { 251750, 84, 84, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 168, 1, 16, 4, 1, 1,
> +       { 25175000, 84, 84, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 168, 1, 16, 4, 1, 1,
>           1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  };
>
> @@ -894,10 +894,10 @@ static void rk_hdptx_phy_disable(struct rk_hdptx_phy *hdptx)
>         regmap_write(hdptx->grf, GRF_HDPTX_CON0, val);
>  }
>
> -static bool rk_hdptx_phy_clk_pll_calc(unsigned int data_rate,
> +static bool rk_hdptx_phy_clk_pll_calc(unsigned long rate,

here and further, unsigned long long
Also, is it tmds_char_rate?

>                                       struct ropll_config *cfg)
>  {
> -       const unsigned int fout = data_rate / 2, fref = 24000;
> +       const unsigned int fout = rate / 200, fref = 24000;
>         unsigned long k = 0, lc, k_sub, lc_sub;
>         unsigned int fvco, sdc;
>         u32 mdiv, sdiv, n = 8;

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
