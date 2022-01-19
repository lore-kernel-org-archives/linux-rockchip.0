Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 436DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 07:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlpelG+bdgwaNX9xSLu/SF9rEOEu2lvMtMmLMNNNas4=; b=dQh+8a/wMnvlSs
	f4CUFRuAdh/EQWBxv1BmFpUdG7kk8pOqmjQ1airMzMBvoZCVWx2KJDGiwiLJyBAdEx0WCK55yRbyN
	S406Pu3UCUhk9Zd/i0gGXGGbfCIyNMFGpay/FUMQ5tai03+I9szhOk/FSe1UOvpPVctlR/1zhHo2r
	j5Go63ppGZNOCAeR5yfnHdLRxMUYhgnm58ZUG/PmlUAISKIRHc81yEedlpsE+teR90D+FV6fqVQxo
	DSxRh/q1q9KEtzde5s6fjSPhpu2Hi0kqAebgi7t+e6awGeBqtLPvXZFx8H4wN6HICMah4a1lEGede
	BooFl+TYLh8SX1CZFB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA5Vd-004Bpr-5Y; Wed, 19 Jan 2022 07:35:57 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA5VZ-004Bof-8r
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 07:35:55 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9561140050
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 07:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1642577745;
 bh=ov9egi5r5E4XVL9ynR9hw1P76CtrpDcSLc1Oc2aKDbw=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=gxLylVZri5t+kiY0MNzi0fhQ8Dl/PG54f5u9ZZcsY628Q/6i+R64bBocxz65P7+vl
 VNxRJUMyFasYobCA3ZS8bYm15EF2VXHOIH7B2714u4BVzRK3cIRzc/Da1MILNdqfq3
 bfEj6dlhcCz3JeF+AwEf0fNY0VVpwaSOgUAAEHQ+ePTPnWVW8I19kCn2rLCTyiS5UZ
 vSTxd8pGkb/qxMQA5KG95pmfC9KufIfWCIh+l+EVz5pqR08qNDU4+OdL+5kPkUOMcq
 gxqAa5PWcR4Rfh5MfUPPbOk+R4tZL+ENpuveMWlnd8cKgI3eTOAt4UvJLpKgavUm69
 sguu60/4Uxr4Q==
Received: by mail-ed1-f71.google.com with SMTP id
 t11-20020aa7d70b000000b004017521782dso1409633edq.19
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jan 2022 23:35:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ov9egi5r5E4XVL9ynR9hw1P76CtrpDcSLc1Oc2aKDbw=;
 b=tXm2cK0YxkiIjeNLLaOFha8D0jBd0pU1Lv/usCt1m27aU6sxFmgq4EqO6vSaOk1u5N
 afTkUA3ODnLi/axdrB7NU4Jqahlim0rRnFlQZak8dzDriiB1Y9EdCpGNkKMVg9r9u+SM
 NiRYHMrhxfbXjLcXf3IvHFnKXm7TgFMpuaYJrz8fUyuXD4vjijhgEqkY3+vJW5u9HOju
 vYyxucSATOyCVvqD5W+gt+q/jtGNPr7FWtSKEpty+XMMjOfoSGnQ/N3SFCZWVjH58AI3
 OSSSlI9IJq2Aykg7QeLdo1pDsyN6kRwT0YfvSXXypciyJbFsz0WS/VDlzSNWF4u53NA5
 Jknw==
X-Gm-Message-State: AOAM530LLVW4ddFZF9g4tr1RFPhg7P9GVEEvSm7agGg/mUhE3a1jgDPW
 ZjaLIPXi2CbEAkzIwQ5xWyyw72T2Ix82/5AA2IZSi0nQEOJQG7xwi55YHpkwPaXMWJNt4L0ET0F
 eRm9PUVssl920SENnqqPNDr7tSxDNY8rQISZdoFadJEP8ajr6rw==
X-Received: by 2002:a05:6402:214b:: with SMTP id
 bq11mr21727247edb.380.1642577745119; 
 Tue, 18 Jan 2022 23:35:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzGlkI4a+0j+FDYNuwrTHdaztz/FiAtsum5k959TJvtVGlwEMpbTA7l76r5zGrSraIO2PK8xw==
X-Received: by 2002:a05:6402:214b:: with SMTP id
 bq11mr21727224edb.380.1642577744928; 
 Tue, 18 Jan 2022 23:35:44 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t25sm779819edr.90.2022.01.18.23.35.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jan 2022 23:35:44 -0800 (PST)
Message-ID: <b303e38e-109b-e049-f536-c5b00830249b@canonical.com>
Date: Wed, 19 Jan 2022 08:35:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH] dt-bindings: Drop unnecessary pinctrl properties
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 - <patches@opensource.cirrus.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
 alsa-devel@alsa-project.org
References: <20220119015325.2438277-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220119015325.2438277-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_233553_559497_349EC224 
X-CRM114-Status: GOOD (  12.74  )
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

On 19/01/2022 02:53, Rob Herring wrote:
> For a single pinctrl mode, it is not necessary to define pinctrl
> properties as the tools always allow pinctrl properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../display/rockchip/rockchip,rk3066-hdmi.yaml         |  8 --------
>  Documentation/devicetree/bindings/input/gpio-keys.yaml |  6 ------
>  .../devicetree/bindings/pinctrl/cirrus,lochnagar.yaml  |  9 ---------
>  .../devicetree/bindings/pinctrl/cirrus,madera.yaml     | 10 ----------
>  .../devicetree/bindings/sound/samsung-i2s.yaml         |  6 ------
>  5 files changed, 39 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
