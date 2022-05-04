Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EAB3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsqlLf/8e6K275/7QiOTfRk1IZXfyBOCF5MooInVUCM=; b=Edo8tCdx5vSyIQ
	lMzokUhCQ3DS+VWfWkXJo8d+zcfcF4jRVz++Rh276Uez7Z6wMKl2Op1pm/gjuKxyNTUC7nQWfb1Ba
	kHCPZkQnRoXqIGoPYELcdx5jgjkfjdEAUDoawbfRKLxJ6P1e5CXFM8WJ1OqpZNdo4Q2mOzEgPtwzb
	v2RN5VeJHRUrbHUP5OIj44+YEahuEZD7Lkt0QDufpCoTCrkqNXbwZi2Uszf1/xBzfXVsdyZTVR/XP
	adO6iyu0ElD3YCLh10m7ntkDQ5jrDTtaxsf0V/ghbLMr744LUxuaWlXh2l2FEIeQ4DuWjMZ5VuK9l
	b/3WpRYh/YBNQWUbKRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmCOI-00AHLl-2G; Wed, 04 May 2022 10:37:54 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmCOE-00AHJ3-S8
 for linux-rockchip@lists.infradead.org; Wed, 04 May 2022 10:37:52 +0000
Received: by mail-lj1-x231.google.com with SMTP id m23so1151786ljc.0
 for <linux-rockchip@lists.infradead.org>; Wed, 04 May 2022 03:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vb0NSe8ARzC5SmuUEMfvtdIbDeahcHfl+QMHR8M0UQk=;
 b=GZhSotbCyj7bjcQg3PRN5d5i3LNDLOHkeiEebj/4ACqHtK1YLDFsRK/0IrTHnfceOy
 UluKNPmhbjw9UWDe43i9hxj2A4wVNksLYrr0zgBRav0mWNt+O2TKGxOn39dduRc7hww+
 5IU4ZhRYef0ywjjxFhBviwDj1IhQ/Nlc9V0YgCTRVNC2ObNe9YAxdNsieXO9KNQ3Xn8b
 VrPx1e1Zk7/x4vnxDXFSvWv9wjxu51vfy8OhkXN4uzac4E34FHOJKbE4GhWrNkMTmO/t
 mGyVZzFppdwPpbLeK03k3r0Eai14LTxLKjON1JLWRun+EEVT4Uc4/FB7XksuWfvM/MEH
 5vKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vb0NSe8ARzC5SmuUEMfvtdIbDeahcHfl+QMHR8M0UQk=;
 b=sH6ka00lQYkT42ZOtE9pKEJvrUagWnoOvi5Hxnk6d/GcnF639DaQ9f7b8GLtgq9LhB
 0sQOaFFq75pYmN5HlgSvykD3ZuK1R55XE1rKO67LhAeJN0Iyvqb64rEPxepdxevKNxfk
 Qvcx6uzE8d6/2++Wm4ZJs1WRwixGYP+jMzIECRK7iu9MzwGDxtziezGIgy47hILQZrdr
 T6ApmKfQgCZvV57We/U4jYJfUr29DkTNoXhLLGDg1xtaUHeSSIPuUQkHMdkriQovOr2/
 9HO+lMpxwgIbPfczvGpKzF50/q5t9mJINlWlE3j8mPvANHJ2gTcYojred4WDRXetidQv
 dc2Q==
X-Gm-Message-State: AOAM533Q46jygPS9Od+6BmmINbKw+tHTmz9nNHXIJ4kapjcyXtWacWPH
 eBLh6jkAfpI7QgoWWBTRr/JPQsexXqEXGxVWXldBzA==
X-Google-Smtp-Source: ABdhPJy3RP8ApTLWFeuOxSaDmP+bk9p4uPaAGqlNoJA31itRj3U0AHz4xNk4wOpq4ed3AV5juy2VAtEjHIHTWQOiNls=
X-Received: by 2002:a05:651c:1783:b0:249:43a8:b6f9 with SMTP id
 bn3-20020a05651c178300b0024943a8b6f9mr11878078ljb.273.1651660666042; Wed, 04
 May 2022 03:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-8-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-8-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 May 2022 12:37:09 +0200
Message-ID: <CAPDyKFpCa6xqQfpBj9e8E92_WyK_tEESgSMuRm9_CNRuMgFbQw@mail.gmail.com>
Subject: Re: [PATCHv1 07/19] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rk3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter <adrian.hunter@intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
 kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_033750_968297_440808C4 
X-CRM114-Status: GOOD (  13.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 22 Apr 2022 at 19:09, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add compatible value for the Rockchip rk3588 dwcmshc controller.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Applied for next, thanks!

Note that, I am expecting a new version of the other mmc patches that
is a part of the series.

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index f300ced4cdf3..71f8e726d641 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - rockchip,rk3568-dwcmshc
> +      - rockchip,rk3588-dwcmshc
>        - snps,dwcmshc-sdhci
>
>    reg:
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
