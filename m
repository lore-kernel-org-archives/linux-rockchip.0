Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EAA4C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 13:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y39OGNNSiVA09wJ4PzoMT7y0JbaPaMdh44f4AiHDIV4=; b=OW2cUKXt535fZf
	0JR9iWogDMXRG+Vn+GpcLv17MxVSP+XuHrSCPh5fvraOL09rBZZDrbKvyIQ8VB14vcHdL7Ty8Fjg3
	nTvGwxjbjZ6E/uQxSEpqJtUl0MF18v0neCMNFCplYPtgt7NNxtYawrIRrlHzcSZm+CBM2S4H6gXay
	uKJvdHiroaY/hFSkfEW5H4hZlokiJi/kBZEyppcJCqNuxWqGEp7iNUnwYcpDikj2VfOwTxjQqqPeL
	QFX+dYDE6OC8S/fzQ4EO48b5ZR6PfOwOCdQvpbbt/UAj3luZS3ux6CG7NdJXNxeCPWBRLj5KvPspK
	lD7sKahXVQXqJeH+Lsrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJxM-00FPPs-0c;
	Mon, 03 Apr 2023 13:10:44 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJxJ-00FPMW-0T;
	Mon, 03 Apr 2023 13:10:42 +0000
Received: by mail-ot1-f45.google.com with SMTP id f19-20020a9d5f13000000b00693ce5a2f3eso15562492oti.8;
        Mon, 03 Apr 2023 06:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680527439;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0c6y0klJZIlR38JQvtzWomooCiiJ+Ub0Wtb8gTfWb6E=;
        b=QE1KacelVqWlKsTzp+5ASo0hSf8XU1vmAv04SfbiHfvtPF+1MINQ1AhIZRtyYxIy7j
         Ub4+miB7X2kcJVO2IKbxam/kwav5r0z1b2csXu808whJIQHlNAADj+tVi3BsHempaRYX
         xagu7ggBv7FaPKiON+ZPCkyqWOIACXWvoq+6L1C2ee2KzVlwbiC0vlHjktvPJ1ds+E+M
         9Tw8LU1wzmYaoWoA/a9emwaR/oYqYS1D8Reo8BCRPsGS2LBl51nVFFipOhEhscmfFkxf
         peMCVgsIJBBvRT81L2Wm7nVuW0y9RX85UTXwpBeDGmpzxlDOLEr3/lnnUTKaCYdsSBA7
         b+dQ==
X-Gm-Message-State: AO0yUKXFnio7wMmXro4GKvh4ndQpaHhVcJn9QXLdaWYjanHm6kUtrT5e
	MAIzJ8BBXLob3sG9c7GjBA==
X-Google-Smtp-Source: AK7set9uze4lqSyJ3xkKEcHa56jWK0pv1GNxAJixs2X/EkgOgvxyRgyidMAPmlj6kHkuggnQE4xfMw==
X-Received: by 2002:a05:6830:1bcf:b0:69b:7f5b:c657 with SMTP id v15-20020a0568301bcf00b0069b7f5bc657mr17464458ota.14.1680527434129;
        Mon, 03 Apr 2023 06:10:34 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x5-20020a056830114500b006a2fd720f82sm3067379otq.7.2023.04.03.06.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 06:10:33 -0700 (PDT)
Received: (nullmailer pid 522012 invoked by uid 1000);
	Mon, 03 Apr 2023 13:10:30 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
Message-Id: <168052514639.463695.9544022277060710805.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Date: Mon, 03 Apr 2023 08:10:30 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_061041_188808_72242BA5 
X-CRM114-Status: GOOD (  10.93  )
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


On Mon, 03 Apr 2023 13:50:51 +0300, Cristian Ciocaltea wrote:
> Convert the PWM fan bindings to DT schema format.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
>  .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
>  2 files changed, 110 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230403105052.426135-2-cristian.ciocaltea@collabora.com


pwm-fan: 'cooling-max-state', 'cooling-min-state' do not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dtb


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
