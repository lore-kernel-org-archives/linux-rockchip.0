Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12438C05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 12:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwPmt5HDEH1AnBK29bmpSjvrR+KhB+Y4OMAgSCDG0UQ=; b=FfOeeWXhyaX0Vb
	sDlRStPzncZ5xI2bSMaJZ7i7V9GI4xChG7ZG5fbsL8OMTQ1Y/qEng6AbDma5ftB+Vf74U8PKtR7jk
	NB+2AY6dwKxO8XHUCnL+fQYtTcxkRY6X+Wb1PCYIWcPrE0JoNaWEbgMqo98X7dOaDNwgEGhESJaEB
	MILSiMweE2WTqsUwzCi04RmCcCWxMcUSvGTbFHwDdRIS8eeJZHtZVNLEd527R5XQLHItpPcMnRyCw
	qs1ijR5XBFB3rsRHCVZaQfYfn29tpCXwXZlRWtZ97wBxJwcZHOs+ZeMYxiGrrmmT3sqhOfCdBXQhU
	Ztp7x8GTTRxuhetFNmhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRuHS-001XxC-AB; Tue, 14 Feb 2023 12:19:30 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRuHG-001Xr7-Js
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 12:19:19 +0000
Received: by mail-pg1-x530.google.com with SMTP id n2so10119246pgb.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 04:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VitTC1VuJJTYQdu/YxVhewyoRuLfVR95SI/0DF3Rtkk=;
        b=zSMZ0SAQRHkrq2J59pKTUyRm/EgW7A96+q56OMg53CqV3DKUCQ2nM3YFYiMUKNDg/G
         a7cpwNCer1XRfIyJaxmIoRTahJxemkW8/e01lZSNkFQV2GaVuVb7N4fLQB+9EqJ+w6sx
         BiCqjflfoFNsTEM6tWqPKH08sHvXNSXsG/okCOA3UqLEPiuOz02PV8vV9wWn031UD1wA
         xlDynBpHDfnlDtJa+fYX2nYUjJ/mZJ4gKkLMyhLvJVOeg4lDrw9c+bEpVPMXEUhkCnpG
         5i9TmK8v1b/Iukd+OYCzdwLr0J+C2S+NDflvEALPWV2k/06+4Gf5g8rHJNA9tsUQOdwk
         rvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VitTC1VuJJTYQdu/YxVhewyoRuLfVR95SI/0DF3Rtkk=;
        b=Iz+ZVtioEjiip4q9RTT+GZU1276gRZmAh7QV9blHiIWOFt/kQgPsArWWJoQ28Kr4+f
         4/24tA3C5q09F7MEkVdiJQYfbIgRFYz1kBTf1fuKCQRL1kPXmlZ0DLoeMPNj8WOXVAAv
         bnQZFOqfbe0O/F//RvylAbyyTQEyKX6AyWhkmUWMpSR+a/ktn/gZXzLdIQZiDTljZFth
         +zfNYk+oGxkm7Uf5cjwV1qjuqONqln2TTWMSlcZl/agd3jfuqd31urhLfQta49TIyPIs
         z4V8nFgn+XfSvNMr6CiT2xoILLoS5ruG4piq6ItUCcmtJ4+BiuYa0sbjt5+sLzZDDsOe
         1Fmg==
X-Gm-Message-State: AO0yUKW6UFlFVMXm7RjzkvR3IOKmaOQYskjVxw1OaMzDvhpcX4KX/pqv
	+len05HVl1dIFGaVPPHFlUvAIc0Ftir/m5FITZKumw==
X-Google-Smtp-Source: AK7set8JIgqTFRd+MPjZCDMEsWGRo7JvDEgDNe76d7sr74vRhR4GnDIpaRE1zD+ANtND83e7m5npa+uI9v2YUR+e89o=
X-Received: by 2002:a63:7b5a:0:b0:4fb:949d:72 with SMTP id k26-20020a637b5a000000b004fb949d0072mr312698pgn.8.1676377155136;
 Tue, 14 Feb 2023 04:19:15 -0800 (PST)
MIME-Version: 1.0
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 Feb 2023 13:18:38 +0100
Message-ID: <CAPDyKFoQ5Eucevs7H4c8CfH_2yFF5Xp0sCPq7QOY066GB6_nig@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: rockchip-dw-mshc: Add RK3588
 compatible string
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_041918_664195_CA5328AF 
X-CRM114-Status: GOOD (  12.26  )
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

On Mon, 13 Feb 2023 at 16:27, Lucas Tanure <lucas.tanure@collabora.com> wrote:
>
> Add RK3588 compatible string for SD interface.
>
> Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 67d7223f74da..211cd0b0bc5f 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
> +              - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
> --
> 2.39.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
