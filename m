Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 072DCECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 19:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ousZcYOqQRtXmsub4PAUlZxCGAmR9Z0/J7Hn4fz8jqI=; b=MCLN9hqw3u3h2F
	MiPJ7LV+gVQjEvE9zmu7q5/eevVXDzCwTT6Cl8abX9Qmp11QNqiE7aBj/+Pa0lrJ5vHdSM1nd6toL
	4cD38UZ6kbpkFIZAdF96gZO2aQzo3Mq9wUsc9zuQF/uwE4sZFBXp7+nPfbZve8e7dUHGsPNQMfhNF
	4TBiyVpRqykiVSM8zrjQMY652uAwyPDorqWNeMFawkbs6+0diQPbXlTg3p3YIJYV0KHDNl3lPU+ld
	f0jc5AWZl0rCd5WXud8zCh0nZEu/LX2ydHgDvuYF8HIgZ4QnLflN6S+kIWPNUlajh72U2PrcE4a7C
	dh67kjTK/8nraF/sx6Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX6Zg-00Cm3N-T6; Sat, 10 Sep 2022 19:55:32 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX6SW-00Ci2k-Sz; Sat, 10 Sep 2022 19:48:10 +0000
Received: by mail-ej1-x62e.google.com with SMTP id lc7so11638029ejb.0;
        Sat, 10 Sep 2022 12:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=0gpqeUaUdq1jgASkshCgKRmA+Q1+uZQMqt4GLBoHHR4=;
        b=SwwucSHlXm0YPfeeC4lZlFZ0Z+dOmRGPQkOla56HWKeyOlplorH3zvOV9tOGT3pmgF
         kvpEpOd9jdcY25oRmAec19MKAehbtwqF4/ycOuVjaXqSGUzfJjVbCgHtOEu8FWujUIjs
         /+Ivfh5ZGXeZ49lkWrMCSrY4sTUIgDrBmCrCD6IxYuOi59VWv+BNdWe1YHSTBkGmJFlB
         2KyDVNOxbX4/G+lsR/g5/JKfn3SO7sjiVWxOB9kWgl5iX8/MwMUDSNolWdwZRplv3cFY
         Gm+wmG0ZHynL0mG0Hp8Zb+4VDdU3o9bt1dTGa74Gp8Mvghr7eTk8gV9x+g2zYihY4txV
         ibhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0gpqeUaUdq1jgASkshCgKRmA+Q1+uZQMqt4GLBoHHR4=;
        b=tVO03i8PFBfGv9gLE4tYLPWXytfUza2hcyPK6AblhMmj3G14PdYnaxnKqPmmYmKw0N
         7Da5id1oelW5N3IJgL8N58y2Hq8UmEIIPQqRXFjjbkoFud7aCVWUcKOrHabz4o5xVrQ7
         0aCJzYv5+e8UKUdiUV4AvHf2y5vizmsnCVOvKfLsTT04fyAHfGcnYGyQzuvHN3d5AI5Q
         a8r9I1dOMvI1mDjAm0M+0MoNdiL6Vg/PLvZp7ExTXBcqi6MDXip7aDO93Zfk/nRGCI7y
         pbIUQO+SNOltot9PA5B/HBE08bcf44AaNMKMyWp8yC+uorMTAvGIeDOTJb1USt70gpwD
         RlEw==
X-Gm-Message-State: ACgBeo0guhyT1cnbF2udq60v5I/74SwEZeeBwQ/RbCFm024CNrTDxKWk
	cz5LAOypLNC37RzqgSnNWXY=
X-Google-Smtp-Source: AA6agR7X+LQPt9/yXz/e+j2Vs+LXI3PFWRHgchsO6YkfGoeC9fg48fhlEHAuSGAbjlI8W1ZTcSuhuA==
X-Received: by 2002:a17:907:728c:b0:730:c005:5d93 with SMTP id dt12-20020a170907728c00b00730c0055d93mr14059967ejc.265.1662839286227;
        Sat, 10 Sep 2022 12:48:06 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ly9-20020a170906af4900b0073dde62713asm2090628ejb.89.2022.09.10.12.48.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 12:48:05 -0700 (PDT)
Message-ID: <1c13181b-8421-69d8-21ee-9742dd5f55dd@gmail.com>
Date: Sat, 10 Sep 2022 21:48:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add
 rockchip,rk3128-pwm
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de
Cc: linux-rockchip@lists.infradead.org, philipp.tomsich@vrull.eu,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 kever.yang@rock-chips.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, heiko@sntech.de
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
 <1662821635.180247.34700.nullmailer@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <1662821635.180247.34700.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_124808_986585_1061AF60 
X-CRM114-Status: GOOD (  15.91  )
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

Reduced CC.

Hi Rob,

The rk3328 and rv1108 PWM interrupt is chaired between blocks I think.
For rv1108 the same interrupt is used for all PWM nodes.
For rk3328 only added to one PWM node.
Currently not in use in a Linux drivers??

No consensus yet...on removing or parent node, so it stays as it is...
Maybe if you have ideas things will change. ;)

Johan

===

See discussion:
https://lore.kernel.org/linux-rockchip/20b7c702-9412-93b4-3174-e8633bc413d7@gmail.com/ 

On 9/10/22 16:53, Rob Herring wrote:
> On Sat, 10 Sep 2022 00:02:22 +0200, Johan Jonker wrote:
>> Add rockchip,rk3128-pwm compatible string.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/
> 
> 
> pwm@10280000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@10280010: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@10280020: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@10280030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@20040000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@20040010: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@20040020: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@20040030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rv1108-elgin-r1.dtb
> 	arch/arm/boot/dts/rv1108-evb.dtb
> 
> pwm@ff1b0030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-a1.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-evb.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-rock64.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtb
> 	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dtb
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
