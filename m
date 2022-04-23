Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 192D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 17:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xnNO30G74XdhkULLCN+0wEmIe7mMk3+06jgTkmhWso=; b=fFS/bqsCk67A4q
	sTvbKJisKwEAbAWTGPesfEuXNpjAPLwtLgSB8PLpbOXn0qEnF5KKt0qGnacrgiw+DEd/YMEr0V2zg
	nOsvSyo3dkHTau1l8B5NmlARqR14iPVKWEpd1Bq7y+WgqFuZwADJENZZSLRjhdcsBz3RlxCdN9hMd
	+BhpnG0+g3u4jtKfSWI2Z/0ttVqWAqYMUGOJbZ4zM1kK5C+Yy385n9u2ScYPJDDMt9XeWIhGVh4ZC
	sQaAvrQyUkUC540w3FwWwgBYYqYGJKIfqIUeFHh7YgThSGfLQmMa2imYn7wJlwjqKixev8ZlJWN/K
	kBPsJ1uJUX8Hi2WUbGrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niJds-004kHj-SD; Sat, 23 Apr 2022 17:33:56 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niJdq-004kGU-KG
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 17:33:55 +0000
Received: by mail-ej1-x632.google.com with SMTP id i27so21992524ejd.9
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 10:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=FPklBFUlmlWqLuVXy6B+3oKrHAPe2W9KYrCbAlopSxY=;
 b=Zuuez3XAG2sU2i49PzW0etiCIynSqpbW3ktuqETkfLxBpXyIiXUrXiySHh6pUPgGyM
 GmBuLANXqoDcyR3ohe5bGooD+QYC79g1wUODctvs8FwQNzdWYVLNXgvJ11xC0bGOE5/S
 AUIaoaIceXAoEhdJx7ZkD2+lYtQs9jhGgN1WjSXCtgP9Y1+6RyaSt+7/+GTs2WXYyKmN
 x3Yyky6bF2Iux6CzpZyL/LYOmbDoIQco1JR80MEo8v8XR6+JcZy7kbQVDHf4rB77BLde
 Tque5KqfFReQpNf01t39lCrERDCKR6xSgMqpssRHbJsT/wMURpiJhiSL/3BBh/yj0TRF
 p5BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FPklBFUlmlWqLuVXy6B+3oKrHAPe2W9KYrCbAlopSxY=;
 b=KH9AwZS0tCurRV72ETekR1dL1zwAjr6n2Y/fkOolNDT9eKUWwZc8J7Wh0pSnf8CK8T
 EMEmFOrNmR2jCBaPmnZqcu8GMCDnAYWnCb7nniYQOKi9o/JRBsO/apOxf78vzfHB0jnH
 WDfLmZWnK+VRPnZ+B/kH1gMor0wiPWDbvrPXbKIRn0QZmPEBo8Q9g9bLs2RoicfGh6MT
 ziYokBF2NWF5HVIdzel/O59RPqJJG3urjc+rqD/qSwTh4kUrvy7UntvjVmq7b2+XVSA5
 lSG8YTfCgeZHOSepJzgsWk3V8inIo/wDpUcFlRJL6v9Jy1RZPH0co1nW/K+P1GuS4H4b
 fYFA==
X-Gm-Message-State: AOAM533lqlb2QgQbC8979mdJGDYwVkeH4ndKrvlHxEMeGw7O2Igdf6pB
 RTTQhKZz19M+1qHn7i1Wz+eVvg==
X-Google-Smtp-Source: ABdhPJzX1ijLSyZOHOK2ZNoevNPGU8n24ZXLdosWH8eUXrGskF80qQ+kEgwgsJzoxOJwjbMFW0Sh4A==
X-Received: by 2002:a17:906:99c5:b0:6df:8215:4ccd with SMTP id
 s5-20020a17090699c500b006df82154ccdmr9278893ejn.684.1650735231609; 
 Sat, 23 Apr 2022 10:33:51 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm1882903ejj.142.2022.04.23.10.33.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 10:33:51 -0700 (PDT)
Message-ID: <10d5f3c7-28a0-4337-76d5-b99795b9de9e@linaro.org>
Date: Sat, 23 Apr 2022 19:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add vdec support for RK3328
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-4-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422133803.989256-4-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_103354_718583_B0109CDB 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

On 22/04/2022 15:38, Christopher Obbard wrote:
> The RK3328 has an vdec device with dedicated iommu.
> Describe the device and required power-domains in the
> devicetree.

(...)

> @@ -660,6 +664,25 @@ vpu_mmu: iommu@ff350800 {
>  		power-domains = <&power RK3328_PD_VPU>;
>  	};
>  
> +	vdec: video-codec@ff360000 {
> +		compatible = "rockchip,rk3328-vdec", "rockchip,rk3399-vdec";

This does not match your bindings (according to bindings is incorrect)
Did you test them with dtbs_check?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
