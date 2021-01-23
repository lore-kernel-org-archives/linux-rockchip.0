Return-Path: <SRS0=PiGL=G2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 036B8C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jan 2021 17:34:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8837423139
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jan 2021 17:34:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8837423139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XWn0aqx5E/XSJDh2LSZeU/qHbgN0OTMbz6jAbAeWtX4=; b=Ejgnd0AxE90k1HnL6F7PR/NPW
	c8u/1PAtOoLdN0G1Ewm0ckHsFUQqdkltVQDPCMxdScru4aGXxB29zI36cre6cqFxHY8+kYFnDe6gw
	vA8fMPQyDf8gzK6Q/566Tn2Q25Ws+xnVxLsFIQPD4oNrLCrey2RnGfIyBlrGtvt/nIyi6oFzyjLo2
	WHaBD5+vfmS70T7VjhIuSlsGr02Fk1/wNNDcy6Thd4NiaXHL1uyDeIcbTjpVRJI4i8jcp/eO9DwH4
	6Zfwne2CW1o5V6KE5NzperfMsGYXTr/8Y1bCcACdcLWvM7YQ5hzY4yYyGt603mFR6wMs/o0d1O0c3
	WJPZyey/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3MnZ-0000f7-Vl; Sat, 23 Jan 2021 17:34:10 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3MnV-0000d5-Sv; Sat, 23 Jan 2021 17:34:06 +0000
Received: by mail-oi1-x22d.google.com with SMTP id j25so4502866oii.0;
 Sat, 23 Jan 2021 09:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b4K5CQtBVamoURmPksyutnNAiwTza805g1N0hR+Tyog=;
 b=WQYZi8e2c26NusVxkq8YszXgFKXZagnXWL/hrebvsPdwtnEWVQ1M/E4/GOEXR4qVf6
 Z2Z+PSdS8+iOVVtKvMAMSQ/0eDulMqXe8VMyGs+4wprWhBRklgUk9uXfYmaR6asAmAfi
 ShAfzmZIYjVqe8A+im1PWkHd2SD+JnQg5k/BD0nklKzCrAOElud5UCu8o9sFR4vxcIpW
 LRDBou3xD3Hk4yheYKzxk3oRb4LsSYlT5xPxUU9PnxnL3QxZt6U61U0TvDSrDguuyyCd
 I/f73pEYb3pvGwCW7eMcnBzwhLKLgcFWqxWnNmC6iQvXH2T+eU0vMug7J+ha8SQnXdpz
 AJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=b4K5CQtBVamoURmPksyutnNAiwTza805g1N0hR+Tyog=;
 b=a/mPdprDBait1XxH1QQTqaDbEyVc24GteOU0oPLg+1kGRwUweJiNUF9YY0MqDuQ9/q
 pB7sOsGld8OQE3sZmN4vGs8GsfW8IQVaULAV14x38xZhBFGBFyE/eqf6iOfp5nsrI36Y
 eBpSUkuScSl/Id0jvrTc/qcUMK8ek+rytPrISdmSMwYQldD+tjWA7VNXGC7Xx1s8UQ0v
 rxxni0t3vPcBB5eWis5gUDCl48XDbqn4dOxJ3qMEvy4+XyTvsVGN0ZAYw9qnTaKqZ0yg
 8af3ghlvt/cMaBAtSZdZW56fgLPjz78YpxCbiT8s9LciJJHbnv12Q7+BLeG7JnRpkM6Z
 24mQ==
X-Gm-Message-State: AOAM533BlpZI3C/4HMdVbjOMyNhzoKOctI5LWM5vvgpbGvRE6N0evWY6
 yJQw6HglUoQvQ8e33a5xUdc=
X-Google-Smtp-Source: ABdhPJw9dgIKA1nn4BG+mGoYH+i220V0pOWwagtjlRLUeq9o1Y/h3LU06D2rFztt1BTRLUBRLYkt6A==
X-Received: by 2002:a05:6808:2d2:: with SMTP id
 a18mr6771655oid.139.1611423242888; 
 Sat, 23 Jan 2021 09:34:02 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id i9sm2460576oii.34.2021.01.23.09.34.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 23 Jan 2021 09:34:02 -0800 (PST)
Date: Sat, 23 Jan 2021 09:34:01 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/8] dt-binding: watchdog: add more Rockchip compatibles
 to snps,dw-wdt.yaml
Message-ID: <20210123173401.GA57343@roeck-us.net>
References: <20201218120534.13788-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210123_123405_967222_9FCD9325 
X-CRM114-Status: GOOD (  14.96  )
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

On Fri, Dec 18, 2020 at 01:05:27PM +0100, Johan Jonker wrote:
> The watchdog compatible strings are suppose to be SoC orientated.
> In the more recently added Rockchip SoC dtsi files only
> the fallback string "snps,dw-wdt" is used, so add the following
> compatible strings:
> 
> "rockchip,px30-wdt", "snps,dw-wdt"
> "rockchip,rk3228-wdt", "snps,dw-wdt"
> "rockchip,rk3308-wdt", "snps,dw-wdt"
> "rockchip,rk3328-wdt", "snps,dw-wdt"
> "rockchip,rk3399-wdt", "snps,dw-wdt"
> "rockchip,rv1108-wdt", "snps,dw-wdt"
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index f7ee9229c..b58596b18 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -18,10 +18,16 @@ properties:
>        - const: snps,dw-wdt
>        - items:
>            - enum:
> +              - rockchip,px30-wdt
>                - rockchip,rk3066-wdt
>                - rockchip,rk3188-wdt
> +              - rockchip,rk3228-wdt
>                - rockchip,rk3288-wdt
> +              - rockchip,rk3308-wdt
> +              - rockchip,rk3328-wdt
>                - rockchip,rk3368-wdt
> +              - rockchip,rk3399-wdt
> +              - rockchip,rv1108-wdt
>            - const: snps,dw-wdt
>  
>    reg:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
