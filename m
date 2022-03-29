Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6971C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbdQ4rXOi0Gjx3Fakgf/L0U2966448YbG6wFfGMNF/Y=; b=lGqWmmpBhU3iT9
	XNDwnhCoEcg63RR0X/KwCCZPO8r3tc7vPWqEtRNbb46uoU76mPAK+DsaH62NIIHp2Zhel34cq/h7p
	+R0EKOsgb23QhThlE3e7Tr3ykx/9XV6GMUIaWsVWVRcTqHxui8cYMeaCNJdKiahfQEAstAO31e0K6
	BWMK+relXsZ2ZskgSXyA+vQ0Q0MS06C+ujk4laQje/k70oM6NBvEOvexegz4EzmXyHNsM+l7I6QS8
	vTGooBcIgTTqZxd8bVEQDyXCmIclK9a+AIrAEv1V1mDBCLfff8L2E3Szj/XLW+TYXFPWM3PjgA+gn
	jauuIHsz6tGnZBdmG5sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFWC-00D2ra-MP; Tue, 29 Mar 2022 17:20:32 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFW0-00D2oY-AH
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 17:20:21 +0000
Received: by mail-ej1-x634.google.com with SMTP id a8so36373628ejc.8
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 10:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ROsQcUJTGNxUVGtLXxEiy/5+m8Zgw5SGAV2688lVg4g=;
 b=o/5vMuNiIBEAuZd0SjplKcjp4d+racjVgUESBlfA7iYult41e/OVKGwOCEAy0g7c/z
 +c4TtwYJM7xxJXIPEGKsjG2JI/W60wL58H1Ex3ebbr5vicEqqSeSRUqXK6i8F+7PnxCr
 XA+25ysr6U44Tp3sL0L8TMGMwO31zYmhOvetAvrGt/1NjtqLE49OUBtpw5G2bxUyg3rH
 cA2m5BVCkFXY4DtvCZ5oerGtLJ9Oo00/ByywRHHYmgL6t46w0NByYO+clPjtup72Vdr2
 GpdC+9GdcFUdCotzU2JNFHyJt+Ere370OakHWs5NR9tyAdWCdxd2egttVqvgHPmb9dJw
 aU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ROsQcUJTGNxUVGtLXxEiy/5+m8Zgw5SGAV2688lVg4g=;
 b=eZuJU3qadgOOoyOwnyurq5mjr7tY6MXqq+sfph9gE/9ArC6VkB1e3YEGREsX8FlDYG
 PtWY2jp4bG/Ynf7lcQkbTx3mEISvOlU6QFY2Q71rsAuW4tHKIook0ku7SLdpecKGvtLq
 s8JJ3ygIfPwID7AWfrijRWkGpO6NWZePsSudndoNiKm2kIQ8j43LuNA3hzlXtWpw5hmS
 GKON+pPU72L496dbSvfzQMhUXcRgs70OOvH2EgKxUZYRGw7+16s01UjbKR7gdvbk9bqo
 AKL4OftsbwNfxlFdez7aClCCIIzT3Yg82rk3milD7WAUuS3+Ext05DRjDoJROC4/8BkO
 MV2A==
X-Gm-Message-State: AOAM532vs5LzJnde4wagUoF8ZjKNbP5mYEz7acSTv+U8eUt3A+Rqrz0W
 sklLPbsIwMicbxTHJ4dl9XkuPfJPc+NutZFO
X-Google-Smtp-Source: ABdhPJxkbDZq562GC5mkdl0Wlt68amgyNMSrc+Yo4YTeVWsfVfweU8TsmgnU6j66uTFhrh1FbFO/8g==
X-Received: by 2002:a17:906:c110:b0:6e0:dc2a:3393 with SMTP id
 do16-20020a170906c11000b006e0dc2a3393mr20631113ejc.512.1648574418760; 
 Tue, 29 Mar 2022 10:20:18 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 z21-20020a1709063a1500b006da6436819dsm7295462eje.173.2022.03.29.10.20.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 10:20:18 -0700 (PDT)
Message-ID: <5e3ef437-82d3-ae4e-f8bb-0b508b45050d@linaro.org>
Date: Tue, 29 Mar 2022 19:20:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3328-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329163016.27458-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329163016.27458-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_102020_462188_4408174C 
X-CRM114-Status: GOOD (  10.50  )
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

On 29/03/2022 18:30, Johan Jonker wrote:
> Current dts files with RK3328 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3328-cru.txt has to be
> converted to YAML.

You know that this can be one or two lines max?
"Convert RK3328 clock controller bindings to DT schema"

It's equal, because we all know the benefits of DT schema. :)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3328-cru.txt    | 58 ---------------
>  .../bindings/clock/rockchip,rk3328-cru.yaml   | 74 +++++++++++++++++++
>  2 files changed, 74 insertions(+), 58 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
> 

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
