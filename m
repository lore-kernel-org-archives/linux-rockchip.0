Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572A8C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:12:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B002D6143B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:12:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B002D6143B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=meyjJfWFopsv6FWoPuXHDYQVQZtqXY8HpX4M/DmbIGg=; b=FnK9ocSYYE8RcxC1f6BkwSFEz
	JWKfokpDiTrioDmPHxeSFA7BBZeW0PXu/JRlP+SO/uCd58MepvVZZuh67FDLpKVQbexsh/JGqwVNj
	HHgeVFA3jqmkTFU9OXNz9PoxlP6B9ASetoT11L5WsiBkuBtQYjaQPaUsSJxyYIOtLyV7BwH9TydP8
	wos4o9XZWMTVVW0HAQ00mNTMHUctxhB1NWdP75GKQuA6ZWZK91HbB/T1NjidYbxqHZSZEZ5lW8NB2
	3c+Z+7B0Gg6iKqrqQZAeFanbF5FmyDuFU6xWbBks6pA8dsjXNz7m0qPfwmf+8yyOt2HbTmX0biR+N
	bN+QmhzSw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8uQ-00E5Nf-Bx; Wed, 21 Apr 2021 09:12:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8tO-00E4sB-9T; Wed, 21 Apr 2021 09:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2Q0QOgBFAHEX6JOMcIulNXzdx8L/HYfeVOnvhHwPTHk=; b=o6HisLH6afe1OqkzBSRN+6Rv6d
 2VkGbRwV9F+QOJIdik5si8VlwjPN9la7P/m+dw52vvKB0Pv9dj8d7WLoG6s6wRaHScU1Y8unNW9gQ
 +tbSL/gj/uMTueB9mgJvZTOZdTGOjxmgGS43yot4gWNjl6qA5E2My3zN1RnbA+j+gZ45tRfXJ/Fm2
 SOwYzQJJmMtbfD2ygHrFcWC4CKy+YUShPtm2TVuxPSabPyHtl6LsOVq9CjEyFhLkHkWQDRNP2Yt2T
 dpz7HwmNm5N2D4FQJ5AL7quOsFwg1xsOukQ+0rIDMZjrDtkCc1LRXjC3JimN5FOGbDWBMSSfHjTAg
 gCp73nKw==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8tL-00Ck2q-DF; Wed, 21 Apr 2021 09:11:28 +0000
Received: by mail-ed1-x535.google.com with SMTP id g17so47781281edm.6;
 Wed, 21 Apr 2021 02:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2Q0QOgBFAHEX6JOMcIulNXzdx8L/HYfeVOnvhHwPTHk=;
 b=BpQwADd0LfkthEA9rTpDz7MyHVsNL7HKb6Vo72I6JZ1WqquBul3E114txhXpDCH5+J
 RdyKHlRW98AryXY8987m1M8SWjoUXUQfeTBj4C38NjNwzaJO/Qs4ldTgUMJZ+XGpXPZn
 udC18gY/vZBAT3SY82lDo3f50aBPRi7mBu7tmsFYSkp+uTCJwFRAk5XKS6MOAOnuV7Z2
 x1blOC2+6U6kYV73GRCPne42IZvkyWBWOapBkYoyzvTc7gqAxO4kQU2BKBaugSSjC5UG
 Hhs6SLJzG2/dDJJadx2EB88+3bQ22c3OI8SJw+8mLhxaqxhzOYn+iJykTmw1PZPXwZGI
 1SeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2Q0QOgBFAHEX6JOMcIulNXzdx8L/HYfeVOnvhHwPTHk=;
 b=WpUi4i5axFTwOvFwsfTUHCwhGskgDEmVFqZwAUJHhOBidaoAfFHeaPhYkheGcblKT6
 JOCw4fmCEO3UswJQyqxDwC7oQYpH0Qn1pGIKOdcGbgkSBcI0DrwOHaD+EcbRp5YsWyFb
 qKlrQwH0oPFkM0e9IXie2nh7BX/bYQYYxV3g81H+PcCoG9vccF59Hvsd8gUpPPDAhR5f
 SjSGK6lQvVIFVmJ7vcefmjj/6RpB9BKQswY5p9GFRhIe7KnysMWv0/UVf2tx+h53wrT5
 U06IFQJp5Q8qG+IAY+yByDst7L8cvqBMC4TqPfL2gNU7/hApQSmyBKDc8TweCP6Oc4Ru
 CSeA==
X-Gm-Message-State: AOAM532njEyCSh5w8Y80UfCd0p94L3bIPI6Lyy42HXwSqq5hEBaFa7UX
 +yBEVBIpd6iDDWM989iBHSOnY+ZsDBWHY4u8
X-Google-Smtp-Source: ABdhPJy3z1cKSNS7BjPEFsBpeZdR1m/tRdpWeLixQFDvBD8w/AaxyB3CPX0KyTGhe+yLWUjp6WQZEQ==
X-Received: by 2002:aa7:d94c:: with SMTP id l12mr31508473eds.290.1618996285880; 
 Wed, 21 Apr 2021 02:11:25 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 s11sm2487783edt.27.2021.04.21.02.11.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 02:11:25 -0700 (PDT)
Subject: Re: [PATCH v1 2/5] dt-bindings: serial: snps-dw-apb-uart: add
 description for rk3568
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-3-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <b5e0b661-7dfd-1456-f8a9-0f23539fbae1@gmail.com>
Date: Wed, 21 Apr 2021 11:11:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210421065921.23917-3-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_021127_495712_BE9C4BFE 
X-CRM114-Status: GOOD (  14.62  )
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

On 4/21/21 8:59 AM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-uart", "snps,dw-apb-uart" for uart nodes on
> a rk3568 platform to snps-dw-apb-uart.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 87ef1e218152..9bbe4afc26a4 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -30,6 +30,7 @@ properties:
>                - rockchip,rk3308-uart
>                - rockchip,rk3328-uart
>                - rockchip,rk3368-uart

> +              - rockchip,rk3568-uart

Sort this below rockchip,rk3399-uart

>                - rockchip,rk3399-uart
>                - rockchip,rv1108-uart
>            - const: snps,dw-apb-uart
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
