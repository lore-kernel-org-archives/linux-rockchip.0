Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78D73C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 17:56:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CA04610A6
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 17:56:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CA04610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l3uOSSPaWUInuZIP9WbWy2PkJmx1p5X8g9ka+ntNXxQ=; b=BafrXe6lGdRy/xmNcZsImkaTP
	8IXXRAJRASQDqSCMQyuVHAEda1x/IVixQGi9X9FvOuk9Q0RhGBefl9w3gTJjnLeK8uWhTdQCwQS0N
	kDAa+HaoPiJz+dxDJqZP9ORnCSA8pFLT20+7ic5TYWjN3tOAJKTQFunGgZJq8Ucm9YGG3Gcc9p448
	jYYkG8SU7GjQi/sT7ngIlLBGy+9JXzTXECSX+/gqbbkhjOLBtxO0wBmv0sfb6YlNF0e7Qu1aC0W5n
	Gw3zRubgizII2WatKcq7zZV5gKY3pefZzNxxemJcjBX/hf5PgZy/L1WOphssb8jgxf19Uf6TyM5eG
	mah2RGAiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUvMZ-001Eh7-2b; Fri, 09 Apr 2021 17:56:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvML-001Ef0-9T; Fri, 09 Apr 2021 17:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zqg2ntuQS/pbpLD9rz68eK+afesnc4sLjzCW0hn6Dis=; b=jsCvq8ah8FuPNVhqA0iqFbbX/O
 1AqVi/jOrjW05NlNwCfViuB71JKRrMjIAHIiXDNKvmAURafcwJNAlpbKAgSduU+UZZ3nRjm0K6gIC
 pKv0q5Nv5ddy0gG1Xfb6X3yBtpHpDeiWSVmQTOUzJIMsYvsQyOdi6HaL0BcUO7ku2fuO+otkvIm60
 2OyXb7Rx5hLg8Zcn6MIlnsmNTG7OL/GJfBFOchX3JnQZaU1peTureH9qpCDi5PMIOq4DOT8toEA6U
 w9HFP1av02WUkjDNdgVnCNqe60c/xDcrqZ2cRMDggIbEdunCdUWlZnK1FKyGmZHWXmw5icqTKprFw
 Zqnl4r7g==;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvMI-004hlc-Bb; Fri, 09 Apr 2021 17:55:55 +0000
Received: by mail-oi1-f169.google.com with SMTP id n8so6572628oie.10;
 Fri, 09 Apr 2021 10:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zqg2ntuQS/pbpLD9rz68eK+afesnc4sLjzCW0hn6Dis=;
 b=kk3Qfc6x9WA3L8scAnfc+e9sPRSMTZ38Kc8wQGkI+2XPAzRPw7D/exiN2ePPzvnAmh
 ipLSPYZUUx4RxibZqG5mkd4SeOxYfC9PpCjbWgkKjEQ0nxgLr92dWVFyiVh4fssEfN74
 ZUBfpt/Aivgswo/cg7yMom0TsIweRN4iHZizOFJ8/ZFW+j5e9mp+lqcTILkA0HSpIQTC
 anKhLuuZQKZn7uHOAiTpYxqWpOOlqC5CK4CcOKxYQbfuw00+cMKuBfK3UtQ7By/on8HW
 LYTV6DNHKMUThitpKvu9VdGnPdelTvzNYv9kK0x68dm4JNxZYtCNbD6IPyL+90meo0TM
 Dh7w==
X-Gm-Message-State: AOAM530QYhjLILATSQmOg72DCFVJ7MrYXrx/F6J8m7vehFtwhfYxLjCH
 E2YqQQAADzMXxUesrF6JXw==
X-Google-Smtp-Source: ABdhPJz/4Ts1DrnoKYDSpqBA4EDAwkmQl+k0y2knHSDgabWoxRV2WFwqJtmQTIhpRQM8x/yMKgFlig==
X-Received: by 2002:a54:4703:: with SMTP id k3mr10658741oik.26.1617990952733; 
 Fri, 09 Apr 2021 10:55:52 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p22sm782536otf.25.2021.04.09.10.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 10:55:52 -0700 (PDT)
Received: (nullmailer pid 3876842 invoked by uid 1000);
 Fri, 09 Apr 2021 17:55:51 -0000
Date: Fri, 9 Apr 2021 12:55:51 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <20210409175551.GA3769113@robh.at.kernel.org>
References: <20210406155053.29101-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210406155053.29101-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_105554_420757_24D01353 
X-CRM114-Status: GOOD (  25.50  )
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

On Tue, Apr 06, 2021 at 05:50:52PM +0200, Johan Jonker wrote:
> Current dts files with 'pwm' nodes are manually verified.
> In order to automate this process pwm-rockchip.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 ---------
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt b/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
> deleted file mode 100644
> index f70956dea..000000000
> --- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Rockchip PWM controller
> -
> -Required properties:
> - - compatible: should be "rockchip,<name>-pwm"
> -   "rockchip,rk2928-pwm": found on RK29XX,RK3066 and RK3188 SoCs
> -   "rockchip,rk3288-pwm": found on RK3288 SOC
> -   "rockchip,rv1108-pwm", "rockchip,rk3288-pwm": found on RV1108 SoC
> -   "rockchip,vop-pwm": found integrated in VOP on RK3288 SoC
> - - reg: physical base address and length of the controller's registers
> - - clocks: See ../clock/clock-bindings.txt
> -   - For older hardware (rk2928, rk3066, rk3188, rk3228, rk3288, rk3399):
> -     - There is one clock that's used both to derive the functional clock
> -       for the device and as the bus clock.
> -   - For newer hardware (rk3328 and future socs): specified by name
> -     - "pwm": This is used to derive the functional clock.
> -     - "pclk": This is the APB bus clock.
> - - #pwm-cells: must be 2 (rk2928) or 3 (rk3288). See pwm.yaml in this directory
> -   for a description of the cell format.
> -
> -Example:
> -
> -	pwm0: pwm@20030000 {
> -		compatible = "rockchip,rk2928-pwm";
> -		reg = <0x20030000 0x10>;
> -		clocks = <&cru PCLK_PWM01>;
> -		#pwm-cells = <2>;
> -	};
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> new file mode 100644
> index 000000000..cfd637d3e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-rockchip.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PWM controller
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk2928-pwm
> +      - const: rockchip,rk3288-pwm
> +      - const: rockchip,vop-pwm
> +      - items:
> +          - enum:
> +              - rockchip,rv1108-pwm
> +          - const: rockchip,rk3288-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      For older hardware (rk2928, rk3066, rk3188, rk3228, rk3288, rk3399)
> +        There is one clock that is used both to derive the functional clock
> +        for the device and as the bus clock.
> +      For newer hardware (rk3328 and future SoCs) that is also specified

Can you express this with a schema.

> +      with clock names.
> +        "pwm" is used to derive the functional clock for the device.
> +        "pclk" is used as the APB bus clock.

Let's not document the names twice.

> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: pwm
> +      - const: pclk
> +
> +  "#pwm-cells":
> +    enum: [2, 3]
> +    description:
> +      Must be 2 (rk2928) or 3 (rk3288).
> +      See pwm.yaml for a description of the cell format.
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - "#pwm-cells"
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3188-cru-common.h>
> +    pwm0: pwm@20030000 {
> +      compatible = "rockchip,rk2928-pwm";
> +      reg = <0x20030000 0x10>;
> +      clocks = <&cru PCLK_PWM01>;
> +      #pwm-cells = <2>;
> +    };
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
