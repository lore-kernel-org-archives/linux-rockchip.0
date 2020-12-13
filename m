Return-Path: <SRS0=qXuv=FR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF96C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 16:16:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D04C2335A
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 16:16:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D04C2335A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cC4pT+OCRoGR+YMlFyzdlHZKZ/+4oe8n1P/MDhON1cY=; b=IubKa34f2tS5fx+ohMxaARZlK
	kgdTol8ei5SI1/ynr+kxmk8+NR8V1mQDuwCgJRcgw+vDkd0q1l/cPDwwfHoTh/f4jzksuKJKOL6TZ
	fIUXcTAQbDf3AW/fKiocXZmKZplOaKrY5aUQP5Q/r6Y82iEutkSZWYtkiV0m0SQuzJ1EOYK2m9YVH
	fDIRVcTD4ojN/8Is+HEDZvJSs7aM04c4Jsaju9JepMTg37JK5ASbB1xZCj568XW82at7WsObO67vX
	Fzm5pNvV2ywV8U/2F9N0qNaxWRXOmMLdFtT7gd58gN7p2BfrHTqXinx6XI5F8Moy++DsMquaqD+LG
	KjflufK+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koU3A-0008JU-I9; Sun, 13 Dec 2020 16:16:44 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koU36-0008Ic-Lm; Sun, 13 Dec 2020 16:16:41 +0000
Received: by mail-oi1-x243.google.com with SMTP id l207so16406144oib.4;
 Sun, 13 Dec 2020 08:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wn3kZ9eoiz2kfwwRpuyMg/j17oBtSySw24zP5dlXSfI=;
 b=qooO/KV5EjNcitWHFP/0gcFvFLwMLFBM24mZ2h0icy1TDAuOA5x8QR1oxR3LPBfQAJ
 PUXL3SdMGXEdtvVFM0m5POCU5gi2b3FGsEyCNvWf5XaS1JBiOxXjo2tIplLYx24664n6
 FgGrVU6o6IdmjjyM/mybtmKchUJnbBdaDn7vMmOHCfBS9neOlwAkD5Aso4bmAS8S1ZGs
 wZjVsSMct1mwyfNNXaOVM/LELQphf5ipME9yifPTLGxcsyi1vkmk3fhCctiEwmKRVCST
 7NmE0g6t2GGRBESY69T3UdUuV0XnFHdu8nrhdFvkGwLNX0Iv3T7BK+NEhquXmpGZO8qt
 6LAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=wn3kZ9eoiz2kfwwRpuyMg/j17oBtSySw24zP5dlXSfI=;
 b=I8rknPIEnRP2pknaQ0SQs+lC3Vgfe7xqXdAJb86r1j1LrLl2VsncSAFr2Y18TgWy8m
 ASioCxGHNF42DaaziyyHGivzBvlQhzMX9t+FgZWqKCJQZVRygWBV74mNWn+ZC40ZnSMq
 c1JpG5UuC9Y7i/Vp6NDRoMWFKlVBace0O8zgRmglILeNvVlWadkP3RVWwMfOaNc+vPJW
 Hq4dLIW+2goDv8nRSDNSgl3cXyfgazoBE6MQRXCG34F8FAfHmmTo2KXfXkm01h/ZuALb
 /GrB/4kK+rS0Z4e6naAaFA2BbDU6ge1pd5uUbEYWNn/DRbDzo4r2/NR7ObA2dgjP21Nr
 nrMg==
X-Gm-Message-State: AOAM532Sh8GCKouzvFqNqYn9vOOwSnYKcu3SOcfMGt9rlEGEJ34JVcz8
 zra/ls3REC4mkREWII9cxjUyWa9nZMg=
X-Google-Smtp-Source: ABdhPJzCUnsh2yzJjDGf2Ifk+qHTgOCfGhjh87nCxzS2MMtIDKjLjscKkMo+yuxozRdN4S6HI/jZhA==
X-Received: by 2002:a05:6808:3b8:: with SMTP id
 n24mr15263083oie.89.1607876195391; 
 Sun, 13 Dec 2020 08:16:35 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m10sm3644548oig.27.2020.12.13.08.16.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 13 Dec 2020 08:16:34 -0800 (PST)
Date: Sun, 13 Dec 2020 08:16:33 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-binding: watchdog: add Rockchip compatibles to
 snps,dw-wdt.yaml
Message-ID: <20201213161633.GA44820@roeck-us.net>
References: <20201116142539.12377-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116142539.12377-1-jbx6244@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_111640_742309_99453952 
X-CRM114-Status: GOOD (  17.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 16, 2020 at 03:25:39PM +0100, Johan Jonker wrote:
> The Rockchip watchdog compatibles below are already in use,
> but somehow never added to a document,
> so add them to the snps,dw-wdt.yaml file.
> 
> "rockchip,rk3066-wdt", "snps,dw-wdt"
> "rockchip,rk3188-wdt", "snps,dw-wdt"
> "rockchip,rk3288-wdt", "snps,dw-wdt"
> "rockchip,rk3368-wdt", "snps,dw-wdt"
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index d9fc7bb85..f7ee9229c 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -14,7 +14,15 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: snps,dw-wdt
> +    oneOf:
> +      - const: snps,dw-wdt
> +      - items:
> +          - enum:
> +              - rockchip,rk3066-wdt
> +              - rockchip,rk3188-wdt
> +              - rockchip,rk3288-wdt
> +              - rockchip,rk3368-wdt
> +          - const: snps,dw-wdt
>  
>    reg:
>      maxItems: 1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
