Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38165C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlHKWbDd/9uo9qjJ9XW3Y+HqjJmVVS18QNAUsDqHdso=; b=cBYR0s9zGpOnZU
	D29waXqnCrZ930Qowm8rnSFJtHvLSjiYVeIiwfAepj3RDiHZLFQBTFAPwXT2x/rFqUzdMQh/PGe11
	3fZkkpsZOVvBFLTD53kqranLYS3PNLkF0405wMUvCpFpNasBU6gxGswO/lXhsobiCzPEIJXRxX4HO
	JL03itzOgwUhwciG7t5lE3UxC7+ReRqwZ+MdLwNn7D5f1LXsfcScGfbVirWoC5V2nr0uMviIeSI3j
	HxAqKYKrlXYuNeSQEsjnrSJSQGc2u1mIhXXL8qVrq8KcmWc0DQQokv/GXa1GtNNzMVHb/JdNC412h
	9dULQieRk31AKK3wwBcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPllJ-006WzO-97; Thu, 03 Mar 2022 13:44:57 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPll8-006WvI-OX
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 13:44:48 +0000
Received: by mail-oi1-f172.google.com with SMTP id j24so4788683oii.11
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 05:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=LVNw/ls/eRTKLlhsyPvmLuEhSjvK3qoiS6H5MeDHqG8=;
 b=YXSym9xz/gUQ/dX2NystIR+6EIKzLF8EnTUrs4yhapzhtDY4ISsHo06OMCH8pC+qT0
 ANQ2vWorJK+1vK1DvjRHfbam8B9I4yetggZQnfhiGG82tlCgO0Nlm8cRCLw5uuicCWFY
 WjqWLkFOSUnGH1KExfw23Rgb3nZkswkxZsI3YOWCa33IH50h46Nx+zJX+thF4izTaWW4
 BfKz6Fvy+V4+2Gbbuod3NYYJE1hX5iaoBCdxcbOIQWfEA6mEZqgFU6fmOmaThsCCTke4
 59dJNmGo/FuJinEm2lT3kywxZ6IlYBbtU5ScaxGeA7x2M//WQiBDycTtaqeWiMtjRHAW
 l/5w==
X-Gm-Message-State: AOAM530S1LNYXgeb707AAuuf/nmM4JZhOkEkkapT8zRKu1xMFZ4w1ec8
 a+TecjXYkzsWQKq0DFKcgg==
X-Google-Smtp-Source: ABdhPJx0CQYL45E+PUGvxlwfgLWgVgDXqpMXflVyMKx2X8GxGOtkUMWtghvxFxrOusZN0vqOERPaXw==
X-Received: by 2002:a05:6808:1804:b0:2d4:c904:a83f with SMTP id
 bh4-20020a056808180400b002d4c904a83fmr4513034oib.103.1646315083234; 
 Thu, 03 Mar 2022 05:44:43 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 s14-20020a05680810ce00b002ca4eddde1esm1089063ois.11.2022.03.03.05.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 05:44:42 -0800 (PST)
Received: (nullmailer pid 1495434 invoked by uid 1000);
 Thu, 03 Mar 2022 13:44:38 -0000
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: mbrugger@suse.com, lee.jones@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
 strit@manjaro.org, Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
 arnaud.ferraris@collabora.com
In-Reply-To: <20220302232612.25455-4-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-4-macroalpha82@gmail.com>
Subject: Re: [PATCH 3/3 v4] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Thu, 03 Mar 2022 07:44:38 -0600
Message-Id: <1646315078.984067.1495433.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_054446_824753_35C5A94F 
X-CRM114-Status: GOOD (  14.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 02 Mar 2022 17:26:12 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. clock-output-names varies
> in maxItems depending on whether or not the clock-cells is 0 or 1. For
> the rk805, rk809, and rk817. This preserves behavior with the existing
> driver handling setting the clock for these specific PMICs. When this
> driver is corrected and the devicetrees updated this logic can be
> removed (since the rk805, rk808, and rk817 only have one actual clock).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
>  6 files changed, 1372 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.example.dt.yaml: pmic@1c: regulators: Unevaluated properties are not allowed ('DCDC_BOOST' was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt

See https://patchwork.ozlabs.org/patch/1600127

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
