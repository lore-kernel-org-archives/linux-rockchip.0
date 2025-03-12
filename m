Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B032C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 12:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elXLsyfYc1J/d+UPD2RDYp8WQTCJb5Opt33zF4Ki1kA=; b=cJYRmsf4SuvGca
	L2LfJqE8Inw6742W8HxQ12oCQXUVSmRp3jjoFhLf7vFIXNYqxcg3Smgd2QUns2EvgHEeyBGwiMdf0
	RUOKXlYMTGi2yMHtojtn4+6qjv2izFN/ZeAVeu2KMW8PxK+9R8V+erFH122/io6yh+tfog7vJLVZa
	EtZ3oug5QWS8b8BCAYrokK53FCdrXmgaHR8ZlnnHtx9cA4ZQQZxVgnb64YrFG+cRmPm8JwQfYodjY
	2lt/q2Rm+bLn/2yUseMi8xF0mdBM1lnDZ6xUi7tMEWOY9EVpbWiz4gaSLm3qu4/Uxz85Vbwd1z6GV
	ZEx+MNXaJRxlLzpeYc2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL5g-00000008OAZ-0Fh6;
	Wed, 12 Mar 2025 12:21:40 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKDM-00000008FRV-3Tg1
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 11:25:34 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6f6ae4846c7so61937837b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 04:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778732; x=1742383532; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6/mrslkYIqtp2+mq8p2Qz5J6MxbjiXwBJqUTb8Ezm9o=;
        b=YZk7l0ULx8AuNIsI5VjPywmH8lymcbVdxUDOgkPhQoIXy8D/JxfigHQQvZ8K/lN7Eq
         KvXip9t0l6rN04QLMxLTjTJD2hhTxVYwgO1ildGFvQhvxYegDKs0OyI3pdCBAqf3J7CY
         PIl7ZsfRsPmmNt14bzgVl2JxHVPCX5O1K3LSvW2z7J3fTjgVTNz/KtJ8OnZfooZEZqB5
         gO+PKhDhF8EM2/29Lt22zeKDy4EggIiMK022mtZWoZBBHjibrul6o2u7SWZ0ArgS/v69
         Do5z4mJBEvW5ww4dK/svoa9aVZnQlbaG5+GDCPBV94mX1yybktdxJzgJl4tR3SAvnyKF
         hmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778732; x=1742383532;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6/mrslkYIqtp2+mq8p2Qz5J6MxbjiXwBJqUTb8Ezm9o=;
        b=KrnyKYO7o8/y5AEi1P69XtvTDoVZsh0SaoVizub3Z7eelWJrZrSqUiAMQQd1ytbCK9
         a1g9zxSEm4YrkIDrh6YlznnCnsdYwDOXrImcKVYGfyr0CXXtiQ8llrnq8Gj1cPF29lTy
         WHVaibd7sXiHT7t/vQwP3QLpRE1BmRHWjN9Cec7/vcMZ4v/TIvdUkYmocj8l11gfcUex
         hv5JYF1J0XaWAQytHKNjOcHdeEbK4itgrn9Lca9U36Mxq03XMq1B7MxfjKV42QbZa83+
         rs2KBVb7xp8v7DCpba2FVMUjIRO0hEKgC5aqcrvNnTV5pjAUO7a5+9ry67Nc3gfcLG7u
         16vw==
X-Forwarded-Encrypted: i=1; AJvYcCUTRSWNCdwCbi9iUA2zkq7FrxuteO/7Qn8wR32VdDtc8bPzJik/qPLZYJkPrGvgfzJ0Y8AiDqtcsJk4gs8cXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHa5Ucnn4+jEIWOI+V4tGehda+yBsRsQ4K9avBdvo5AfOSiI6w
	Mcf9e3N7lNHIXxf4yRm+VuN9/qClwaIZAuTvZ1v6GkNOUDhviJkerCmKM6DVOOcDzqWoSFhdf53
	Ek5jcqVuDxRzmUqXZ+tivL77vqp0OoIETdYFg0QvORJCI9ruX
X-Gm-Gg: ASbGncuMbWzhGl/b3ZLSVxq1Hl39pJCznKkKxRt7XRBOYVpswjkXLYyh+97B18JWjxX
	4wR3eAZI9WjHzfHqWjidoZ2Vul81iFLKGF57iHREIaHF652aTdVJfhcBF8jdSNPkYOXUg7WyRYX
	rc8AuQMZgbTvV3+3g2Mk42hnTR3I2Cv0YRs3Gbkw==
X-Google-Smtp-Source: AGHT+IFk3gFp/cUReNnM9kzAsWOkTCM5MEQl/tCtb/z5liDbrUseKz74jkUx34wnEgejhu/lLK5rCnP3CIxzHqyLHXc=
X-Received: by 2002:a05:690c:4c02:b0:6ef:652b:91cf with SMTP id
 00721157ae682-6ff0927951fmr104983367b3.27.1741778731810; Wed, 12 Mar 2025
 04:25:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250305214108.1327208-1-jonas@kwiboo.se> <20250305214108.1327208-2-jonas@kwiboo.se>
In-Reply-To: <20250305214108.1327208-2-jonas@kwiboo.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:56 +0100
X-Gm-Features: AQ5f1JqH2hRXUwfz_vQkPX8i5gK9j7RB0dP4G_O77fuesZmjypeV_Lu2vr_DSTs
Message-ID: <CAPDyKFqY+0MGsdZDBJ1AoDaDGrnXN=Gu3JNjuK0LoHfjT9JxiA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible
 string for RK3528
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042532_870972_30282209 
X-CRM114-Status: GOOD (  15.41  )
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

On Wed, 5 Mar 2025 at 22:41, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The SDHCI controller in Rockchip RK3528 is similar to the one included
> in RK3588.
>
> Add compatible string for the SDHCI controller in RK3528.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index c3d5e0230af1..fb2115e805f5 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -14,7 +14,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: rockchip,rk3576-dwcmshc
> +          - enum:
> +              - rockchip,rk3528-dwcmshc
> +              - rockchip,rk3576-dwcmshc
>            - const: rockchip,rk3588-dwcmshc
>        - enum:
>            - rockchip,rk3568-dwcmshc
> --
> 2.48.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
