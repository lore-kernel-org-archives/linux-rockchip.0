Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264E6E77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P1ZZc6PcqvCnltXjfgZ+4ZyfhvQH7MycpHtI3Se4BM=; b=gix/0IVhGMoz1q
	qSVGuKR/qyGtzKkQ0AFQ6NucJGPEol1G8LgT+8UjMLKWn/VKwTJrzshU8WiWl4N5Kl30kwPN+n5yJ
	1QJbqeWDIB+VnJojAC6WrC/BM86hBXJjLoHhzsp1YJB8198iSKAncruaYf3PvAVyYqEpyA+URXJbi
	MVSLl77IliDpVgEFG8NNRLOkja5b4MMfStbl1g5ad4YX+pzVWGzreT7W/lhtpTQNgVEczQDiKSv1S
	9lU85CkExYAMHqkozFjOurKd0OcEmawAxIMMgt8hPYJbRuhqRvsFuCBRVQH6Nra97Um1QuOZQm8Xq
	ICcJ+7SIjoF/jXXsaoig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrxX-0000000Btzu-3mKh;
	Thu, 09 Jan 2025 12:48:23 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrxU-0000000BtxL-0Skr
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:48:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-3022484d4e4so8528071fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426898; x=1737031698; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h8hd6QQPe6WsmCvGJJcJ/fM8HdXFIRmyRc/10BLVlxA=;
        b=Q2aEe0/M+8uPRUD6G9wqEhE++uEnENYSUjAdYy9rB3/FqvmN+RDDzbi9NpBSHMQThX
         eTg2ijPBxL7dipEWnouqtb/J7JfLeLWbjM8hlBxmOugbZev+vyd4cYf8TFA8obEPmgsN
         AJKhTObOx702ZBf/0A5Nt+3VcGnHYAH04wsOzs6YovT9KyXZoW9xXqi16/8ENNE/FSmG
         ayCZsxEdR4/cFE5CkmSmPXmmruUSgnanlbZ3ac074HKAFlLBNyYGrtY7tCC+MvzjR35e
         IC+cP23rK/PGc/xvx4gR7QyR1QasBwm8Gq+Tcaw3zxaSUQyzSZwy3ZRf/7S8EpIzau8/
         YEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426898; x=1737031698;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8hd6QQPe6WsmCvGJJcJ/fM8HdXFIRmyRc/10BLVlxA=;
        b=eV8D+j6uiPPzK+57zyi3DwYdG7KNiu1PPG8KzMwFLmruNbBfEFnIaDxCZXejHbJsry
         k6e4OBsZU0a9g8a3bMNiq6V7M7BdwSiJUnW20Vwe+p24rKugiuimFfvn0n1zjZ0yXash
         nf23Ow/Bh1BdNkSKu98GDN/qo7fqHAm5G8FTNWqBnPYDqvYLhewh/8kSpUrPaNOlgZFC
         ++Vh6G0JQ5O8JRoUWli9Iu5mky+I5kXhxhWuZFNwl9P7BzDj+qs6S3VoC5xEg9+wAwWH
         aXjziyE0w1djpOw9f4XMSIQgC8P7WD6SU9Im3WEQkFXOntKIP+O6+wuSK0uqtuEYwEP3
         BkiA==
X-Forwarded-Encrypted: i=1; AJvYcCW/1T8BxzZZyirsjIcMCggZkSX54/zvT3evYvhDjkhOZP168miRbAGDDOP7HIYDiJx6S8jW0oPvxgvlurvEaw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/uzKxDeQ8aJZaTuANCIPE/bTRSOdMgn4L5Z7IPw7Bzx+ibt5b
	S9ojmKssnU8aQ3JcN1ewhvt/QShFw3+m3BTFjWhCSAFbXSVHVYJMmwijqbxEUlM=
X-Gm-Gg: ASbGncuee6/ctI8MHL54QXIpEpApvuOzxqNNGQhhr4eSd7IyvDn3m0PqwH1TVWeOc+l
	I98ndQf1ouxNEIU25sbOFuW7Of45EAKksiEN5zbiLD8XFrz//7OmgISbRDetPcolvqIc2KRL5xO
	6oNOai1uTO9CWvLB+FQg6EfEU4nH3gVYJVuqCPcg/TxKIkPHpAQCv4WMmM6gFdRigSKjDF2SZTs
	Q0zMonHHT2luYdnKjYN22eMJm3Efp1P/4i9FEoIOevWMhlZ6yKTY9ylcdGntVe6yuY1T7BTgNSs
	9smTPN24NoqnzEZ5DnUZZ6g1imyJmCsDOh/G
X-Google-Smtp-Source: AGHT+IFxJ3zGC3CDmY37DlIYBY9oRzAVUXgzKckNzpAHdg+Ck4ZfBSulYaV0hud+81kqukRgXfjP1g==
X-Received: by 2002:a2e:a7ca:0:b0:302:1c90:58ee with SMTP id 38308e7fff4ca-305f4571db2mr17630521fa.18.1736426898468;
        Thu, 09 Jan 2025 04:48:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1ec1a0sm1889261fa.105.2025.01.09.04.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:48:17 -0800 (PST)
Date: Thu, 9 Jan 2025 14:48:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-13-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044820_777528_CEF7CA1F 
X-CRM114-Status: GOOD (  21.74  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
> , which will be called before rockchip_dp_bind().
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
> 
> Changes in v5:
> - Use the functions exported by the Analogix side to get the pointers of
>   struct analogix_dp_plat_data and struct drm_dp_aux.
> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> 
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 0957d3c5d31d..3ae01b870f49 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>  
>  	ret = clk_prepare_enable(dp->pclk);
>  	if (ret < 0) {
> -		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> +		dev_err(dp->dev, "failed to enable pclk %d\n", ret);


why?

>  		return ret;
>  	}
>  
>  	ret = rockchip_dp_pre_init(dp);
>  	if (ret < 0) {
> -		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
> +		dev_err(dp->dev, "failed to dp pre init %d\n", ret);
>  		clk_disable_unprepare(dp->pclk);
>  		return ret;
>  	}

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
