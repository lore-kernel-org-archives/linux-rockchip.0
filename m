Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23864C28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvXl3NEcqigedx5KgI3g2AJ16KdsCDEO9eGV1d0X5zE=; b=qFyULafzXENFdP
	gVbdx1/RRrWKKjFBIHdMITnOgHrvJJCxfLjDtyoWNk9btO57mG3xfR5E9wbaHqhZ8sii9gm1irKmf
	2X5Y+idNohgF3V0cxlXvcTRfQ23WtoFI4AoFWTQ/S+7ofFNyT02mEGu8C8NowfekyVj2G6Lo5UsiN
	I7hMFzsCUsmgrYvcqwDf1eqrsnSjKhukR/jrxX31je1N/Oy4iuKssPy601u/cnNqaw97qv8qayh1O
	vRYIJHbMs1y3SmZjGNna9qNmm7oSBOspe/HVOlhGNrRIMShbnG6+Sf7kXmPm6sqLGO4PRbQXUWDDu
	HgQ4wDwR79fJpQNwY02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCvo-00000000HVd-3sDU;
	Sun, 09 Mar 2025 09:26:48 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCvk-00000000HT5-0wj2
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:26:45 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-e63961ec440so94355276.0
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512403; x=1742117203; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y+UfwYvKoniH4ediByf7+QM/x5ez72G5r941EDLOy/s=;
        b=AqvhRbn7wDK2aqAMbm+xhibCRlVEYXUrsP1mHKEAvCCZM6sajRqMXfBIoZ/IxFTo2c
         +GA8k1xw2zM40xYo/+YaNe7/1OW9lpeubr+mGLDY83ley+UNyj6vrLstc+tAKkTjZSu4
         NOLInddsdiViKbrGzxWl9QBqxY0VyNfXnl3iIvK+qi/oiVlCPcSMZ1c2xKh6x5wCRX9d
         f6i/nCvHfRy+YTqdOT6oyiRyCG3GqGMXeOacC8LcAyLvmYi5XtVqLieKoDCa1BeLBoBU
         4UoufUN0JxO1n8gsKpqjwr7i7xo5tM0C2XFCXszWqUjjYt7oSPpF2QL9eKVBJFNOQrNj
         qBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512403; x=1742117203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y+UfwYvKoniH4ediByf7+QM/x5ez72G5r941EDLOy/s=;
        b=pxKaHzOMw94iFNL1qIrUeAROT7rTpl7LknVNz8BoWU7F3H/fM96IE1Jh3EvnMdmVRd
         LBScZUWX1b0/KPzJYvlid/KSWo2tDbUT/kwDBvu/typLv2qFrNRyjSmr4ILgr59F9z9b
         9Axo9KHXG7Od11E7LUigaCdWSFzAGlhW5U6V98RZ2TQnrVYBNib1b6F9neSeYhI1FIkO
         2h4lFXxVgq9AntlS2+ghiUAv+gx+H3nmO1nca2TNCXEDp54DLVIBVEOq3MRPpqVa+Ny9
         IsjWZj9AFGdsGJ/TRRV8rZ67Lh5mTOm9AqglyMrHf1q812UVmnpVY7tn5zYgZKPiYA4h
         ZW8g==
X-Forwarded-Encrypted: i=1; AJvYcCUch1Fdd8+HjirWNXC9rTvI41Y7Eop1Pp1GQu8iDkEiaJISfW1R/HWjOrDKwlzyLu4fUnu1lBcPOjkdyTH1cQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxJMzBqyHl6iS5X65aSeFG56ZFfSwhmyTOzZRWSod2ZYmNmlWn
	YYoCrk+X/JkFWtgjz51KN4S2t2Igd7oPz66+TRcs3O5bGssnGBUEV4wqIiRta9PSEI01ACntpGH
	3Jb9lVA+hXmcvicIaMECBmueDhkPl99XnbAeU9w==
X-Gm-Gg: ASbGncvubfOY6PM0w27voHcAKNjNVmUOxu4sp63eSKjC9LWosl95xM6jAe4GHY6TObA
	rapFDhVdR01So70EDNDENprIZxpUc6U4+LS+u6eLm7ww1BgWicyy4Ny1ys3NcqFmxZl4vl2qzFD
	ptEI3aIHT5bG8vYBAjc0t8X+lMEZu9oCQf6PHrHmhC
X-Google-Smtp-Source: AGHT+IEN3V2OLC8hZDOELnAVWI6ww13m5GBnJ8YaCGEl0AbmzOskx9R9Se1xuJeZm/tmBc9JT8v5uFIi9nlaU4PorAA=
X-Received: by 2002:a05:6902:2683:b0:e60:b17c:423f with SMTP id
 3f1490d57ef6-e635c17bdb5mr13660886276.28.1741512403353; Sun, 09 Mar 2025
 01:26:43 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-8-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-8-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:26:32 +0200
X-Gm-Features: AQ5f1JqfxNZ22KnfkCh9BmlsU97_eUwp8gZfAiDHoYY-EuyqHBEuJ0Y2Zcaf2N0
Message-ID: <CAA8EJpoGu4Tq-wt09Jj+b+=eJ3dNXhPWVOg4DyCQxrJbFNFfYw@mail.gmail.com>
Subject: Re: [PATCH v5 08/12] phy: rockchip: samsung-hdptx: Setup TMDS char
 rate via phy_configure_opts_hdmi
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_012644_276386_D5073D9A 
X-CRM114-Status: GOOD (  19.16  )
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
> The current workaround to setup the TMDS character rate relies on the
> unconventional usage of phy_set_bus_width().
>
> Make use of the recently introduced HDMI PHY configuration API to
> properly handle the setup.  The workaround will be dropped as soon as
> the switch has been completed on both ends.
>
> Rename rk_hdptx_phy_verify_config() to rk_hdptx_phy_verify_dp_config()
> and introduce the rk_hdptx_phy_verify_hdmi_config() helper to check the
> HDMI parameters during phy_configure().
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++++++++++------
>  1 file changed, 47 insertions(+), 17 deletions(-)
>

> @@ -1469,8 +1474,27 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
>         return rk_hdptx_phy_consumer_put(hdptx, false);
>  }
>
> -static int rk_hdptx_phy_verify_config(struct rk_hdptx_phy *hdptx,
> -                                     struct phy_configure_opts_dp *dp)
> +static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
> +                                          struct phy_configure_opts_hdmi *hdmi)
> +{
> +       int i;
> +
> +       if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
> +               return -EINVAL;
> +
> +       for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
> +               if (hdmi->tmds_char_rate == ropll_tmds_cfg[i].rate)
> +                       break;

return 0;

> +
> +       if (i == ARRAY_SIZE(ropll_tmds_cfg) &&

Then you can drop the first clause in the if

> +           !rk_hdptx_phy_clk_pll_calc(hdmi->tmds_char_rate, NULL))
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int rk_hdptx_phy_verify_dp_config(struct rk_hdptx_phy *hdptx,
> +                                        struct phy_configure_opts_dp *dp)
>  {
>         int i;
>



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
