Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDA4C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 15:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuY1lga4nAPj8RIEuZHGjH2+rgHj6FMofAq/UNHAOb4=; b=XFTvPp0xiaMeH7
	VL2szRIOXjlXmDqSIlPBvHtlcfMRJhUpuje3y2uU/K46NCzP6+T9zN1ch9KCy2FqqW4QwOKbk/Ac2
	N4u2Si3g1KjbifVXlouz+Os+6J3YS18tNtYngP6Jzk4RExIZEfGwL7vMQRbYByD+uLIyfsJj97bv+
	JnC3mTxQfHx5kcd8Dz8X4qCq8nhypYgGfmiHTO/LO1V3h+GzLiP2lQ8FW7g1Fhy41oG5IWNZIR+wL
	Ighhge2tGGjpiKvlOeFC++rvtkn7D2wcM5RmFmjNe9erRAEVqBwT+ajmb/Mw7SR4z0fF3nqmgzCbY
	OX+3O0MpZUWzAUR9VbSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7S6-00C8BX-O4; Tue, 13 Sep 2022 15:03:54 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY73c-00BjuL-Fw; Tue, 13 Sep 2022 14:38:38 +0000
Received: by mail-ej1-x631.google.com with SMTP id lc7so28113485ejb.0;
        Tue, 13 Sep 2022 07:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=MgOl5Ps7/2BViAuks7F+2zguUGoKnsho7d41gsbe7gU=;
        b=phI1mDsJ91Ezqe+J9QSI4gKmWBYFwLv3a4vgdotqIDXesK/xAcMRrInv1BxehcSiNn
         iO4wEx62cNKtkhxm3LUUkgHKwWoD8+oL3CoKCCkGIJSmzyHoC60ESSeM8AnlpBoUESO9
         PW/02GNVA7Jnp9RjsxA3tQ0y95Ub4Y/MY2lKLzvkdi8lJLmVa40SE4Lvzh315cSvt0jO
         Vvo1c9LtMxEsqrOtLjIQyftz3hTn9QuMuhlMaJGbfS91mRgeHiIfHHhxVnjB8sRjvghW
         pPge+mK0EuTEpiPznBIHcLW3Nc9ZehX/WvuH6hXva4oBfGLrd/0jZlhQhttIzxmIEG8C
         uVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MgOl5Ps7/2BViAuks7F+2zguUGoKnsho7d41gsbe7gU=;
        b=mzUVicqb4bOfout96B7jJocVC1P3eJ632q4isCSSB1IfRBPsjNyPxvM/sHI2CPDGBs
         0S7pyfBrHGJ4pORzEJ49DGbgxf0WynytYThBzmC5mTPZvRVrIbNbHhI0TZDP4aqmYpRC
         v7rH9FzsjavzS6AnAXE7U8sK63AEGCAluN5iHy3EzvjDWQDDsTzVyclSz1HgNSk3FsPW
         LOKIpgY/pwwUIUInJCDVKOqBBqV7X3c20ei3MLv4G6SryHTd5Lej8sW3ypuHGh6u1AFS
         VpfUl7nzuaNC+8vUfZtAc+5Gv3wGXLmW3gleS9cW8C3UX9Z4Sl3pv9mZH6TVlm3lOU6w
         zl6g==
X-Gm-Message-State: ACgBeo0YcQj4W4CJA4/lmPSo8StXN9qYorGp5w0gpK/DP1JTJphOSMjH
	qiM1XUtA7zSF2CDnNOmTY6GTfJLMFaQ=
X-Google-Smtp-Source: AA6agR7OqLSlYti2bg9ewEBW2lVZRnfEoBgDi0E0GHMdwoZmfrnb33kN60z1XTcfTWmSe4rdpS3fMw==
X-Received: by 2002:a17:906:6a03:b0:779:e97d:9a94 with SMTP id qw3-20020a1709066a0300b00779e97d9a94mr14384553ejc.507.1663079914209;
        Tue, 13 Sep 2022 07:38:34 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id dk9-20020a0564021d8900b0044ea683d04csm7964177edb.14.2022.09.13.07.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 07:38:33 -0700 (PDT)
Message-ID: <37fd8d4b-3a66-bc51-c2dc-76c9e756fed8@gmail.com>
Date: Tue, 13 Sep 2022 16:38:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add
 rockchip,rk3128-pwm
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-rockchip@lists.infradead.org, philipp.tomsich@vrull.eu,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 kever.yang@rock-chips.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, heiko@sntech.de
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
 <1662821635.180247.34700.nullmailer@robh.at.kernel.org>
 <1c13181b-8421-69d8-21ee-9742dd5f55dd@gmail.com>
 <20220912162159.GA1397560-robh@kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220912162159.GA1397560-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_073836_593163_477DC9F9 
X-CRM114-Status: GOOD (  16.52  )
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



On 9/12/22 18:21, Rob Herring wrote:
> On Sat, Sep 10, 2022 at 09:48:04PM +0200, Johan Jonker wrote:
>> Reduced CC.
>>
>> Hi Rob,
>>
> 
> Seemed like a simple enough warning to fix...

Some examples for comment.
Let us know what would be the better solution?

===========================================================================

option1:

	combpwm0: combpwm0 {
		compatible = "rockchip,rv1108-combpwm";
		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
		#address-cells = <2>;
		#size-cells = <2>;

		pwm0: pwm@20040000 {
			compatible = "rockchip,rv1108-pwm";
			reg = <0x20040000 0x10>;
		};

		pwm1: pwm@20040010 {
			compatible = "rockchip,rv1108-pwm";
			reg = <0x20040010 0x10>;
		};

		pwm2: pwm@20040020 {
			compatible = "rockchip,rv1108-pwm";
			reg = <0x20040020 0x10>;
		};

		pwm3: pwm@20040030 {
			compatible = "rockchip,rv1108-pwm";
			reg = <0x20040030 0x10>;
		};
	};

PRO:
- Existing driver might still work.
CON:
- New compatible needed to service the combined interrupts.
- Driver change needed.

===========================================================================
option 2:

	combpwm0: pwm@10280000 {
		compatible = "rockchip,rv1108-pwm";
		reg = <0x10280000 0x40>;
		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
		#address-cells = <1>;
		#size-cells = <0>;

		pwm4: pwm-4@0 {
			reg = <0x0>;
		};

		pwm5: pwm-5@10 {
			reg = <0x10>;
		};

		pwm6: pwm-6@20 {
			reg = <0x20>;
		};

		pwm7: pwm-7@30 {
			reg = <0x30>;
		};
	};

CON:
- Driver change needed.
- Not compatible with current drivers.

===========================================================================

Current situation:

	pwm0: pwm@20040000 {
		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
		reg = <0x20040000 0x10>;
		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
	};

	pwm1: pwm@20040010 {
		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
		reg = <0x20040010 0x10>;
		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
	};

	pwm2: pwm@20040020 {
		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
		reg = <0x20040020 0x10>;
		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
	};

	pwm3: pwm@20040030 {
		compatible = "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
		reg = <0x20040030 0x10>;
		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
	};

CON:
- The property "interrupts 39" can only be claimed ones by one probe function at the time.
- Has a fall-back string for rk3288, but unknown identical behavior for interrupts ???


> 
>> The rk3328 and rv1108 PWM interrupt is chaired between blocks I think.
>> For rv1108 the same interrupt is used for all PWM nodes.
>> For rk3328 only added to one PWM node.
>> Currently not in use in a Linux drivers??
> 
> How is that relevant to the binding? It's used in dts files.
> 
>>
>> No consensus yet...on removing or parent node, so it stays as it is...
>> Maybe if you have ideas things will change. ;)
> 
> Only that existing issues should be addressed before adding new 
> platforms especially if the binding might change in an incompatible way 
> (splitting nodes).
> 
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
