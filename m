Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F899C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 12:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKkilbWtlhVf/gGeZa2dWy3NjpaCdFir/QIxIXtFxto=; b=J/KXr8qory9tpN
	iwtTuwgOTa50VFS3T0OxqnNi3WLbCAGZOuNcwv5togBWv21mynUbg04QLJVHIQOztERDlV43PVGzu
	6MJXyMe1VVMVYQ7bWcWhXSkVbezNjs+e6318ERRP1I/W+VmZKsVcLII2hxsZvoBjTmciAo0ZBZKHu
	BIfL+Tc58ITKhnn1jfJzmftp2/ZLSGOUEMjRhrxOexRfGcfcblVbucevmU7LcKfW9K4y0XjYEAXWi
	qSBDLudMJ+hUw9LpSQMX4iUJBwErT9SNeo2HSdnINzuuXLYLed0xmkbSPJHtUFDKsnaTp2qQDhLbQ
	UFU5myRRmg/zHJk4EZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVu76-0064qS-Da; Wed, 07 Sep 2022 12:25:04 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVu74-0064nS-72
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 12:25:03 +0000
Received: by mail-lf1-x12f.google.com with SMTP id f11so8144905lfa.6
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 05:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=E2pT4odo6msVCFiBbsbwvyP9vmPfqCiwzxLpHRkjPYM=;
        b=SoJPMjFm1nUngdJKsZo6R74ErZZVSLhUTFdVPyI22UExnaAv0xjLfmiA+74HpRy4yl
         ZpW/EhYmjMU/7ke3aIVO2+dzFG/4IiScASJOO+SYeTWT6axgKLOsEKZ7MjVB61G9Xtsl
         mlTawNJBSL+rf8EjRRkXfGJl6osMtW+YT9MsAJvmvyKQHkwG1bf1325r27jrmTZOM2CW
         virR4+Q09haaiEosBh8Dsicaf4/JvHMV3tR2kOB0/UqPw/XlKUbLw+AGBkS9U2p1R3uU
         4usf3t0jKmycOVZU4ExBRWckQZ+IXu/n6E/1eG/vPBm5kHu9AN6yYL5Pa8ljUw24WB2I
         cViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=E2pT4odo6msVCFiBbsbwvyP9vmPfqCiwzxLpHRkjPYM=;
        b=xArmdcVBCyPg+Gy/vo5RxlWyl75/6sUYGIV6SAMleY94NGhq6NZfrfIIOeO7f+lBzi
         jEE+wio7qa9VE41eEzRJ0kuVgyChaMT6kzn+Tq0Aa9pp6Zd0nm70nlkzx5e41B/bagYC
         a3WvtL3apNbfuKL5TuxMirH2R7TFFqz5osrS5QU/VSld/nPyGzaEhusE0ZboR0eDv5BU
         lAOFIYdel1RdOqkHc2b6PrSS0mpluPhVmeU/3fJQ+CFY8FKayZBZhih/1f6N2Y9LmjZ/
         x0Ed8dw8V0Eh6GsxCYXKa7pvzP1mqb3duZaMsz8EL3436fi4Z7ZxJ+6SyriADPa2s/7g
         mX0g==
X-Gm-Message-State: ACgBeo0TJHh3ltXHydsUhDu0K/CEyf69l9kQ4N70zNz+0zCa5IgWUfeU
	T0UXUVysduAcaQv8793uV/+w/w==
X-Google-Smtp-Source: AA6agR7sRSdXN8IO/gCJjSavuucCA2q3Oud2U6duP0DjI7M8CqbyCZHInxPQlOW5yDAPWQzSAiQOmg==
X-Received: by 2002:a05:6512:ad0:b0:497:a620:157d with SMTP id n16-20020a0565120ad000b00497a620157dmr1116655lfu.643.1662553494421;
        Wed, 07 Sep 2022 05:24:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i5-20020a056512318500b004947887d0acsm2444567lfe.174.2022.09.07.05.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 05:24:53 -0700 (PDT)
Message-ID: <123a9a03-e1d1-cf0f-8d09-b90f75b1050d@linaro.org>
Date: Wed, 7 Sep 2022 14:24:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add clock-names
Content-Language: en-US
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220902060426.2980951-1-jay.xu@rock-chips.com>
 <20220902060426.2980951-2-jay.xu@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902060426.2980951-2-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_052502_306956_2BA17870 
X-CRM114-Status: UNSURE (   9.69  )
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

On 02/09/2022 08:04, Jianqun Xu wrote:
> Add 'clock-names' to the gpio dt node. so the driver could get clocks by
> a const char id, this patch names the clock-names as
>   - 'bus': the apb clock for cpu to access the gpio controller
>   - 'db': the debounce clock for cpu to set debounce clock rate
> 
> Since the old dt nodes may have no clock-names, this patch not make them
> as part of 'required properties'.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
