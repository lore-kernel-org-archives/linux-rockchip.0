Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A51C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:36:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8F0B6054F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:36:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8F0B6054F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aANNbT77CzTNgM6xVH1qVV7CU6tcLdf5vGu6f7H17dI=; b=ovoVISjoTLLl3bPT+8FvWKplSh
	hElprvSsslDHOpZJuGDknocRm+5F1is/LsVxwhU5hnOa+mBPN654RXICsVUWluuED3pOmY6QZH1Qk
	1ie9pIM48qmchjV7SKbhiQGr0Z37v0mlLcUn0hAEKm3fyO4/RVrnnXSE1dUAFUUtIflWJVS7878Os
	N9/xWHKMeOdWigXg9BkBL8Xtb8597iHxSzfzJwqeGFLmnVruBkFSGFX7AsA0LmZ6PeZ+D3TpQO23P
	dwCHeyufRX3q78nvZ6HQhKLiDkW3yXkaCg0QjwS5GV0B54ctmwSVyc27rV4yUOBNFVk5GszyUyVg7
	GzRXcqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kfY-0016qB-U7; Wed, 28 Jul 2021 14:36:24 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kfW-0016p2-EQ; Wed, 28 Jul 2021 14:36:23 +0000
Received: by mail-ej1-x630.google.com with SMTP id qk33so4918950ejc.12;
 Wed, 28 Jul 2021 07:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=U9j1VUNwpLjqthf/lcX140LSEyF9Vm2SDMFtz8UeK9Y=;
 b=ixMvR3uPmTOI3ig8cTK9p5JW7g3ktbkYGZ0HehamKHLaBqiINRUHlhYy73M4g7A9is
 1Cu0CmpA+wzXN5soyIOXxj2Vqu0JsVnRWp/DqnsIm0Mkws9Oa+kkYHsVV3cB4y6+mWET
 Zn2kwkjHIr5uzbXqp4iu/vxI4Edy7M2A9//1eWsHxvp6YWTzoAjRVXXqBG9r0xhaeg+i
 4ejMOhlBzsH4+4uID0mJlXifXaUUTad7xnfvueNsXlUwW59YTEw6H+9PvGFOJWtbNXl9
 DKiXSHzjAYdGqNlU/oxXs3Ghy+K0P8tXULQnrgGaUD967oM1y7vdcHclAOVIwKgMG6YC
 VOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U9j1VUNwpLjqthf/lcX140LSEyF9Vm2SDMFtz8UeK9Y=;
 b=Du2bnb6lX1Jj6aoooPEMbeNpVedHf3hiCdQMplW0+pIPReD9GXpDtKgTiO5eGENord
 gRfIBokqwGR/wMC1CR9yiRb7eBsjgGQm5OUdm0zORQCLywIWEaHN7LKLGlcco8+FPaNx
 Gb/I72gFK6cikg6tW/UuicXeqW3k620yEHkfOPxz04fw+xWnqOLYD6csEhfhEC2e6pUj
 em/VaWTPH3tu1iAtuA/ZBt8O2SFhKsdSUWGzzpko5w5/sUlr3bzUp5jaJQ2+3NxYOI4z
 yijZK7fWisrIeGXk3BykTimK/0V9jW/sFwUyvuvd/k4oFMmnv7NIaw02kcJxykf9ykdD
 eWyA==
X-Gm-Message-State: AOAM532SBkFCTfKDnVKZHDxOvgNw5qmwwt9Z9u9zNd53LeQ/kpOm4J6b
 gg7JuX893xQa0BZerk1+QcfLeYChqyI=
X-Google-Smtp-Source: ABdhPJyye5fMTzpPnUMWlW9dAlR8976//YpdeSHIGDi6TZPSCNQnHfH4Nr2GmoUJyASCfmHJGq9rEQ==
X-Received: by 2002:a17:906:c087:: with SMTP id
 f7mr26707500ejz.487.1627482980043; 
 Wed, 28 Jul 2021 07:36:20 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 og35sm2151108ejc.28.2021.07.28.07.36.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 07:36:19 -0700 (PDT)
Subject: Re: [RFC PATCH 1/9] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20210728122606.697619-1-pgwipeout@gmail.com>
 <20210728122606.697619-2-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <fc6d5b02-707b-aa0e-9ef0-2984bbb1f5b8@gmail.com>
Date: Wed, 28 Jul 2021 16:36:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728122606.697619-2-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_073622_548707_A6400E87 
X-CRM114-Status: GOOD (  16.22  )
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

Hi Peter,

On 7/28/21 2:25 PM, Peter Geis wrote:
> Add the documentation for the rk3568-usb2phy-grf node, which is separate
> from the usb2phy node on this chip.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index fa010df51a5c..3b0e06b6ea61 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -16,6 +16,7 @@ properties:
>            - enum:
>                - rockchip,rk3288-sgrf

>                - rockchip,rv1108-usbgrf
> +              - rockchip,rk3568-usb2phy-grf

Could you sort this in alphabetical order?

>            - const: syscon
>        - items:
>            - enum:
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
