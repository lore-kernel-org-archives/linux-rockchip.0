Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25133E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 13:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYqc8PjUQQHdXG7sto30jBJITkyrpOqCSp5kgdRFiZ8=; b=hww7miVgbsnVpz
	R8IM9rF0UUGQ+b9IpVWIDvOlhnxNRGeiMkhF/0qQ+iXN1us1b7hm1qVM9VX3d5Sx6jv22m7xQjcOL
	DrfYcIU46Wu2uVpq4pz7Pr1umml0Q60U1lqxOpQvxhRsTHKSy4q6KULAJvvh9uoj86fccjTjSEJaP
	2OgxfJ7CQdJugCfj9IgBQu0UzXRkgz/t9+TW26ZL7pUiSmYZ6d65bMpCCz86ucVwpf/oiVTILCOPW
	pvPbsmMvsOvvw7PPkSDVN+0b87AoCz88tD+8nCy+H1feHGwdXO5/Wtk2tT8jmGglb79vcsA2MFIxL
	NdmYrTElNrwTCIsJRpww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFvq-00000005HTm-03X3;
	Mon, 30 Dec 2024 13:35:42 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFvn-00000005HSk-1rcA
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 13:35:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-53e384e3481so8845786e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 05:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735565738; x=1736170538; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=DcwZyxZ+t3kDotT68wIz0t2E6Ko9xPxX9SZDhBCayv05E92Y4mAgyLz3RihW2ur42L
         jKyai7DAJbbB7UY8Nr54SHJv6F2xr9Z06Uiae8asJC4DiI751ylVFqvgQkaNvlcje+kn
         CQ4NUa3QKlTknhgMy4BmRsT77hCyRPwWOZTUqVDXTIi40pNV5J+sjTot7vLMT6EdXkIe
         Ahb/RBTn9XZwyQlAnp7GFW1LuVWe8S7pIpgtGvQGLrd8Ig0wynMTaIP/VqDzlQl3VnHK
         cd7o5owsi9hCEx36nIe3HbYHNGkuzi1Fa9i/+hAObk5AfEZRTr0R2PA2F/Ravm+rA6ci
         rnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735565738; x=1736170538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=mok2mTR7cyqKq84vCzoOz89bA7qfpqj7GAR8T1PKIiQJrE+1+U5bfU1663JmLb0nR/
         gq6SV0BG8T5mHayWV3Ekmt8ynYM5X6PNGaN40xVS663qnRHOBnDiQVdtXXk9yUR7iig+
         uSltDND32fXxGNsEh96ndQ2G3iNdrfD2byRVtXyT2T0i3B7VGeO0UrjWYznRS/C2R/w0
         PDlFHepMYnxThEiRq6n85guaCppovGZrK4bjq3xW81sF+K02wJlw/fN9aKG9Lzcz1hqi
         Vq8VZPN312ePpZiCg+K62ryi36kPJUhLzyRiXWuCZlJuTHDZh7laOmn42bTs1NzOlE2k
         yKaA==
X-Forwarded-Encrypted: i=1; AJvYcCUTzhdNVidnz/mDwq/hiYtBWGN+eGJO10a0gA4gUS2YJ3f/9hO6vfpSL8darazVNWhw6kbvcxWXJVuMVywqSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvDBKKcVL9VFlwdaDARdYWQTsjirVi3O67BJd/ksOeE8SZW4VF
	x/l5jflvVvToNfR50q9fKGM6Oxl7qOXLqjgrH4c8duFZAQBi4YleqNTMfCC7BuQ=
X-Gm-Gg: ASbGncvsnPqNxuIC3I2KR9WnVO8Jir2dF+RUDzzcgJ7PNCl3c/aRXIzP41zASGW2yiF
	pNzzd1CI6ry5d8uV8XI3V6UiyesNrCY5KYgLWsdnF9J83Ec3ELSMmz59j/dPaJZwIs2p3wgXjr5
	a9Bj9oS0iBnRps3S3i+hXxRSa0axK5Mskf2V3+ByS8CIKTRSZdkVNeHmI/jfnj1jWRG09f7JXXP
	Yn/BV0O83exH1CdsmPwm/pJf+nq/O5gsVEdS6Twlulj7wBzlG7wpbburGKrntlnJQNMpsyFjxHK
	1/3PFOmQ42/O5fiumFTMrJK/JUcOYTeoW6Yi
X-Google-Smtp-Source: AGHT+IGYRhZnLXNmLM+FMzz0ZpamPsZkQchJSYMBUnIzcz5KdEvg8k8tQLs0cvWfBZIvHDrkMU6Dow==
X-Received: by 2002:a05:6512:3ca8:b0:542:2a20:e694 with SMTP id 2adb3069b0e04-5422a20e73dmr10688219e87.20.1735565737587;
        Mon, 30 Dec 2024 05:35:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423e0662e3sm1661166e87.188.2024.12.30.05.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 05:35:36 -0800 (PST)
Date: Mon, 30 Dec 2024 15:35:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
Message-ID: <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-14-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_053539_498588_B3706FDC 
X-CRM114-Status: GOOD (  19.35  )
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

On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> With the previous patch related to the support of getting panel from
> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> &analogix_dp_plat_data.aux.
> 
> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> intended to obtain the pointer of struct analogix_dp_device within the
> analogix_dpaux_transfer() function.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
>  .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
>  3 files changed, 50 insertions(+), 46 deletions(-)
> 

[...]

> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
>  
>  	if (!dp->plat_data->skip_connector) {
>  		connector = &dp->connector;
> +		dp->plat_data->connector = &dp->connector;
>  		connector->polled = DRM_CONNECTOR_POLL_HPD;
>  
>  		ret = drm_connector_init(dp->drm_dev, connector,
> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>  static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  				       struct drm_dp_aux_msg *msg)
>  {
> -	struct analogix_dp_device *dp = to_dp(aux);
> +	struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> +	struct drm_connector *connector = plat_data->connector;
> +	struct analogix_dp_device *dp = to_dp(connector);

I see that Analogix DP driver doesn't support
DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
is the step in the right direction. Instead please keep the AUX bus on
the Analogix side and add an API to go from struct drm_dp_aux to struct
analogix_dp_plat_data. Then your done_probing() callback can use that
function.

>  	int ret;
>  
>  	pm_runtime_get_sync(dp->dev);
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
