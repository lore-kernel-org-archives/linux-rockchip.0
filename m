Return-Path: <SRS0=eBH9=E3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22CCC5519F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2020 01:10:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2225A24101
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2020 01:10:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="npCEV8/E";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ggwu2Cfw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2225A24101
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dQ6wLigy8F3iQZFIi1/Tjl+8lsDR5PZqsma/pk2szB8=; b=npCEV8/EX0VHRJ04b6YNmMhx/
	xCQPjOUNIZ5TSrTclwft7yyJu4NFvpwAb0DzekgUVf2PjMdHZJIS36XFHoDxN0p9wGURM8wu4Lzf2
	BndiKo+d2LpNdWu6m/+xh7ca4FN0Q9Smmkxtjxx+Ol+FyWp4R+uBVtUfBFo1+Z5VJL+XO9ukeNZSN
	V3pp5fvpp89XaWpTDeIbVvBLwnFy+kkwFgrajJDNRnEhE5rDpt0I4N8bb7eKKEOUrqLUgjqmAZgcj
	ZWt9Ij0tH2znUA8hO/KHKPGCYxMhnERc5SBEKkEJ7k31TrBeTb9pPw+VVZd2DhWAVCAxYwWeRR0+5
	g/SzAKz4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kgHPi-0003MH-Pb; Sat, 21 Nov 2020 01:10:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kgHPf-0003LW-5b; Sat, 21 Nov 2020 01:10:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id w6so9565490pfu.1;
 Fri, 20 Nov 2020 17:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ezw1GwCVc9UDYhrFeJBWYlueoLdPkQ8+bJt4wUsxqBQ=;
 b=Ggwu2CfwDHEEuto5V8D65StX/IdBUI5UgrKJKAPTLUfTGB+SYLjtejxkAE/ED45xhj
 BLb5seW14MhfeTjjCdrtd+OEoZmd8Oyn+baHslgEZWr9ENyTKf1pbkXkfjiFI7pn9QRl
 GI3u3zZMviM/x4mekes9KOZ0earTWsVLokMsE8hDo7pl1t6CKs9zKA2WqliXrhS10hEE
 qqzwTcwPj5eaca+E09/zHs83gA/I+leNxe7NbWVWQlEauhH/5LwrR6MJtYoHAGRDHQIy
 K7jjbI+RznrOMlRzyIUqKVRKnA/klw0jWJtIcYEFafewfToiklKYA2iqExrpeA5lUdfw
 9NLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ezw1GwCVc9UDYhrFeJBWYlueoLdPkQ8+bJt4wUsxqBQ=;
 b=Wwjo4sJ5DeRB0AghuTavu7GyINfNIOrPldseyZp4zNMQdoKx0bnMD00TtCpID0xOmi
 oWUfP83PxQxpQ64HcIml345q0blbqHuwjgT+jo1mW6YL+K/1RvY4R1lmOF6QqaUmCtjp
 wsQPOwEZ4/epBaEipCauVsTGSYugymj1Pn6z9JsX5xRnDLCgmGgsUDggrGOILsKW4s6k
 LkIXPPcod+5x1pPqR4CAICdYeu2/i2aFLeKf1d3nd5xDTdZaYeyGlZQA0uKmbZJs9e8i
 JJQ0rMotiENLv4AAEtzxvt2G5vU5ADztqm4WyTi7wb4WA0Z5fbu/Qkn5KkMVm/kR6xjq
 UV7A==
X-Gm-Message-State: AOAM530oDbQAtWmtUaJPlEuDw7KJWafrkTiqsnmwMkKvzAyz85Zizcyc
 KA44bT0erv09QRkLpZ5GhGg=
X-Google-Smtp-Source: ABdhPJzQagWVawHi9ir4pR0X0TUQOrbMyOYjw40H8oqjG+OxjUJL9FfdQv+0LjfBh2Avnn+M59eFSA==
X-Received: by 2002:a17:90a:d495:: with SMTP id
 s21mr12892498pju.42.1605920999620; 
 Fri, 20 Nov 2020 17:09:59 -0800 (PST)
Received: from zen.local ([71.212.189.78])
 by smtp.gmail.com with ESMTPSA id v191sm5060557pfc.19.2020.11.20.17.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Nov 2020 17:09:58 -0800 (PST)
From: Trent Piepho <tpiepho@gmail.com>
To: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, heiko@sntech.de, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] pwm: rockchip: Keep enabled PWMs running while probing
Date: Fri, 20 Nov 2020 17:09:58 -0800
Message-ID: <2177360.ElGaqSPkdT@zen.local>
In-Reply-To: <20200919193306.1023-1-simon@simonsouth.net>
References: <20200919193306.1023-1-simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201120_201003_299070_037CAEFE 
X-CRM114-Status: GOOD (  18.26  )
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
Cc: Simon South <simon@simonsouth.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Saturday, September 19, 2020 12:33:06 PM PST Simon South wrote:
> Following commit cfc4c189bc70 ("pwm: Read initial hardware state at
> request time") the Rockchip PWM driver can no longer assume a device's
> pwm_state structure has been populated after a call to pwmchip_add().
> Consequently, the test in rockchip_pwm_probe() intended to prevent the

> 
> @@ -362,7 +363,9 @@ static int rockchip_pwm_probe(struct platform_device 
*pdev)
...
        ret = pwmchip_add(&pc->chip);
...
>  	}
>  
>  	/* Keep the PWM clk enabled if the PWM appears to be up and 
running. */
> -	if (!pwm_is_enabled(pc->chip.pwms))
> +	enable_conf = pc->data->enable_conf;
> +	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
> +	if ((ctrl & enable_conf) != enable_conf)
>  		clk_disable(pc->clk);
>  

I came across this while trying to get a PBP working better.  It seems like 
the issue is the driver was calling pwm_is_enabled() without first requesting 
the pwm with pwm_get().  Which wouldn't even be possible normally, how would 
one get the pwm_chip to call pwm_is_enabled on, but the driver already has the 
pointer.

Anyway, it seems like this solution has a race.  Isn't the pwm live and 
requestable as soon as pwmchip_add() returns?  Which would mean that disabling 
the clock here could race with other code requesting and enabling the pwm.

Seems like it would be safer to check the initial state and turn off the clock 
before calling pwmchip_add.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
