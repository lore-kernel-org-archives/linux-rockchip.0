Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7217C05027
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 13:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aVFX5lRsoR2RaWDcNocQwG/BAaskzuLY1Tp24N7yaM=; b=HkDbY6mgFzX3lW
	b7DjCEAyzHrYKyL94tsAfOK7zt4lVPSUq9xYFMTtN+fy9r0cADT3YWfCb2TasINaZxo7Ib5j1FL/y
	2RwuuBLTFfJS2eeK0Co2tv1jrN3SO/N9rpMH5a1dkpaNJpXpO5+T9YExk8AyVp5lgPQLFaw8BR8P2
	UBXbNncdO3OalBPEOtl1GpjjxWyTMTSDr/lpM7PuDCf9uu5F8MsJLNs0lgfOBZdqLksWGL71KUUMH
	mC5DCFGTNa5hwAIuFaMSC0vUtjIyTYGR5UID10PNlqqXJkMfVdxHB1KLUtpOW35LyptVq8TB41qGb
	rWwwf9Sk0siKlGQGJX4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkCZ-00FhCD-Cp; Wed, 08 Feb 2023 13:09:31 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkCV-00FhBZ-De; Wed, 08 Feb 2023 13:09:30 +0000
Received: by mail-oo1-f49.google.com with SMTP id h12-20020a4a940c000000b004fa81915b1cso1715633ooi.4;
        Wed, 08 Feb 2023 05:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sKctfRFevEGzylkJxSTY3VRpoj1hZvHSm640h9Em5z4=;
        b=ujDqtrKZx/h5lzN7GBsPvtDVnKG0yzLzTweVf1R2aNzDPZGfy8OQdK2ZUokmmqQh3H
         U0AawpgynE7ZMvoTTEm0EeRceo+LpFb5H3G4kMW6fYq7/BvbnRim+TFK+eCEHm5d8RMo
         Y9Ud4F8IGYd+GKr+4Gv+saznY+b8xg/VwzzIR2xbG7gw/6DY+EYeaVhWes1s1GZi+HsR
         o6zWrSoMTIxmy7ZaEmEDRsoj2v+5HFzcD7/7beuh8xRBNsmN7877HUFoZwqD6Hc6i8NF
         S4Kz4dxzKu5qKa/Tm1q2tTnirVEnmGP96FYM5Pas/pEMLB0xso4AX7Dl54g+0g3JEyg3
         PYOA==
X-Gm-Message-State: AO0yUKVRohPODjqCXkCmJZ+6QkUCQjL+nNljoTjhxIanZO9940Fhrrtd
	BKGhSrhl4GV4nYlPsqwlSQ==
X-Google-Smtp-Source: AK7set92nRxfqLhEo6VH3xIGRC1voySix/Y+GAklX6sGfkt1mG8OhseTlmNN7FZBChOHr6TFaCdmIw==
X-Received: by 2002:a4a:e091:0:b0:51a:4c5d:fd1e with SMTP id w17-20020a4ae091000000b0051a4c5dfd1emr3445841oos.9.1675861765298;
        Wed, 08 Feb 2023 05:09:25 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m14-20020a9d6ace000000b0068bce0cd4e1sm8000848otq.9.2023.02.08.05.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 05:09:24 -0800 (PST)
Received: (nullmailer pid 1735857 invoked by uid 1000);
	Wed, 08 Feb 2023 13:09:24 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>, Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>
In-Reply-To: <20230208093830.143284-19-s.hauer@pengutronix.de>
References: <20230208093830.143284-1-s.hauer@pengutronix.de>
 <20230208093830.143284-19-s.hauer@pengutronix.de>
Message-Id: <167586156991.1727589.15971216744751237430.robh@kernel.org>
Subject: Re: [PATCH v2 18/19] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Date: Wed, 08 Feb 2023 07:09:24 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_050927_475852_5C0B38E6 
X-CRM114-Status: GOOD (  13.15  )
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


On Wed, 08 Feb 2023 10:38:29 +0100, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml  | 61 +++++++++++++++++++
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ------
>  2 files changed, 61 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml: Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230208093830.143284-19-s.hauer@pengutronix.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
