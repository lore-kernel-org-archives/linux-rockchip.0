Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BF6C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAjGArSuLgYfL0VknBflIbinvRvSyZtbyYJO2tWnn+Q=; b=RArcM8W+7BC0iB
	sc4I2aFK5czjqi5rdtQeebIjopj2RQjaA+tbFM/6gulkCrSW3Yr1NG7Z+9rdzAeLifv8XvwIIo9SN
	POE6VSRgMYtqOKerqwy6P65BYXzDMid9HZkJFTiMkC1TT6ctukolLfE9DvTH6XI1ut/VtvRLQ2Te7
	a1mGwsXqr/Uha6ifrVFkr/JkwYo9trm3WumtuGHO4IcvxMUyw0rrd62D20gE7lQtxAqr6dtDvFijn
	WJ7+hM40XswaqB5dcxQJVfgo0acmIYrFUAhY6/C0pEl3WAdr95PF4JcNcqAqiH2kwvx5SP+1y4Ldy
	+kuX4L98+B67+n1EqgvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG7ef-00HXr7-Eh; Fri, 13 Jan 2023 00:10:45 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG7ec-00HXqh-1R
	for linux-rockchip@lists.infradead.org; Fri, 13 Jan 2023 00:10:43 +0000
Received: by mail-ot1-f47.google.com with SMTP id k44-20020a9d19af000000b00683e176ab01so11463753otk.13
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 16:10:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fa4bJd4FpH5J8PcBXntkqApcXjG667hIZgm37d7PnJs=;
        b=ac7nhJM68PyC0X34vtKxkRz38bbSuWnCDn2tWm+/lNL3J9jtk4GjpMSUCkH7i6Zu9L
         /aWN62Uqd6pY7qO1zrz8ZO4fUwnmMaM7qk2Vw+JzwWlr6Z4jiBdnxiC0PCOia4fiLJQC
         JoRAw+CJ7Gw1Bfh5ugBbhXAjnGd9K73Wla60cfHMpcGQcp8yCevHCX6TAp8GANju7OFY
         IbrRWKkw08o2LH44eHiv7hhH3qJhOYMfFLrBFEpnN4TCBkQ1/OswyysU80ATiDiTnDRq
         hGS7zw6UQOKes2sSo11ssAXCstp9hysgd8mixnfRVVW6d/L4o6M5UWp1phMe+aN0Oc5K
         TWPw==
X-Gm-Message-State: AFqh2kpBRLQD37dFDPMdNyHUeSwCXQO583QV7QdplMjP0RpBhI6lZZK3
	ZcGE46j6ERRdeF074jIHPw==
X-Google-Smtp-Source: AMrXdXsCm+dOf8HVHiGAZD0eySI8muKiDK59xiObAtl+2yolg7B9eZifleapRpBiiS57/n3VNls3Og==
X-Received: by 2002:a05:6830:388c:b0:671:7bc7:dabe with SMTP id bq12-20020a056830388c00b006717bc7dabemr49626972otb.21.1673568640879;
        Thu, 12 Jan 2023 16:10:40 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e26-20020a0568301f3a00b006770e855c61sm439545oth.31.2023.01.12.16.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 16:10:40 -0800 (PST)
Received: (nullmailer pid 501210 invoked by uid 1000);
	Fri, 13 Jan 2023 00:10:39 -0000
Date: Thu, 12 Jan 2023 18:10:39 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Stephen Boyd <sboyd@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Michael Turquette <mturquette@baylibre.com>, kernel@collabora.com, Rob Herring <robh+dt@kernel.org>, Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>
Subject: Re: [PATCHv5 06/10] dt-bindings: mfd: add rk806 binding
Message-ID: <167356863889.501159.246967021598779982.robh@kernel.org>
References: <20230109172723.60304-1-sebastian.reichel@collabora.com>
 <20230109172723.60304-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109172723.60304-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_161042_097698_1626C446 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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


On Mon, 09 Jan 2023 18:27:19 +0100, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/mfd/rockchip,rk806.yaml          | 406 ++++++++++++++++++
>  1 file changed, 406 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
