Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FCA7ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ5w/Y93CjAkShgLopHyx3TJS7KIphusp1ABBcQQN9Q=; b=0mOySl8zy429S1
	SRkNQYj2Vw0ESGIl6coQZcaBL2KiDdBoMDf3CYi5B38XIWJKqeRmqQCQfPlZOsqtPBGyiRRPAz8Wa
	ylgMoOgj+sbIezC3wcWm+hwpBjfZvQgdoJhkXRKt6uF9EZDxhmEnS0yEhNUJWTYuc/zlBi5uClkqq
	IYeyOyzGlBnBog6c+5xRF9AUqg6GCfsDt/Zhb9vLket39u8E45CByqfNSX8oUIZM8aBXV0LPJP+JZ
	yOSc3m9s4tsHtuj9pGwbz1Bz8Bc/5JMu9AMxxtSJYdHZqgfMAEyGZnQd/M568cUIugMo6roWS5mKH
	W2QxjSKNdMtz1jIyIr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRrc2-006Gwx-TO; Sat, 27 Aug 2022 08:56:18 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRrbz-006GnA-Fq
	for linux-rockchip@lists.infradead.org; Sat, 27 Aug 2022 08:56:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id q18so3559410ljg.12
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Aug 2022 01:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=QJ4HT0he87HIgYoNNPjNZYpebuQrG8KDl61t9yCXsaY=;
        b=BaWqQvP4at07HKbZdqtc0L8oDdEaQYPfd7KBR+mYZ/CisEiBqIcJ8kzbcAY2g2tYpZ
         jHbuE8F56jVyhmXF3ZjAmh5frvuiJEj9ruNZ+R7Re30akwJLgkyZaaFhNCReoJ0zQnqE
         c6QURcK7vm1ofxsR4SZTKRJfxQPJchPhBaikT8MV9E7QdtmjnVowN/tH3cspjNnyH3zT
         n+rECFpc95h6++tIo/KGObvUOBkXmwlEh7Z9ya8k0ZfrYOImfWvcH6QL4ODDidNyS+vg
         alkBLFySZiDrf151hSSbeO8v/KExGY1SZBxdhNDnlPYHb3H1RjXG1/bl+hhAg3vaRLac
         RFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=QJ4HT0he87HIgYoNNPjNZYpebuQrG8KDl61t9yCXsaY=;
        b=VskZ9FQ8np3d0ollQvz5xmHELDel2pvSEqV2JCo9gpWj0k7jBWasuO+Kev4WL8X6ib
         IG4MxQPzkUk71NztEruMsAR1ck/UWVdWKf62ZgS30nNjrYlEJ57YZhb2O5pv+yoRgGfb
         J+SJSwQz9KItkRXHD3QxcKt2rg/26nE78hlRlKtcomMxqrA6q1P2k5c6cUH6rRM1w6e6
         MdHC6ddntcgFKUtNpkarlzSCrgtjzaFNeH/O80mfomBSykg8zlfYdRvHxkMVZ5f2D973
         bxqHDqSKbFw+ruj72YBVNekl+LTGTaObCfSuKaIX5z8024nJucZd1kfhKdBk4nLxvojt
         lTRg==
X-Gm-Message-State: ACgBeo3zwMwtn/4d3/0WjzcZgLr0mlubfL7jPvr7Y1dUXUpLqBMkNpZd
	+3Cx8mCFsZHgwvm7XZaOpKQWow==
X-Google-Smtp-Source: AA6agR5Gf2HiB0PYqIOyopTJHVHjtmH8tqD3JHxMYot9zAwjH2AhyPPMzu27/HBBbMawPBnpWAwh0Q==
X-Received: by 2002:a2e:a78e:0:b0:261:d661:14b8 with SMTP id c14-20020a2ea78e000000b00261d66114b8mr3384038ljf.452.1661590572347;
        Sat, 27 Aug 2022 01:56:12 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id u16-20020a056512129000b00492c2394ea5sm41760lfs.165.2022.08.27.01.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 01:56:11 -0700 (PDT)
Message-ID: <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org>
Date: Sat, 27 Aug 2022 11:56:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: Aw: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3 nodes to
 BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-6-linux@fw-web.de>
 <cae915f6-c951-ba97-346d-00922c85067d@linaro.org>
 <trinity-88fbbdbe-de76-4479-9580-70edc34a4181-1661590200169@3c-app-gmx-bs16>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-88fbbdbe-de76-4479-9580-70edc34a4181-1661590200169@3c-app-gmx-bs16>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220827_015615_606245_B5932643 
X-CRM114-Status: GOOD (  13.68  )
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

On 27/08/2022 11:50, Frank Wunderlich wrote:
> Hi
> 
>> Gesendet: Freitag, 26. August 2022 um 08:50 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>> On 25/08/2022 22:38, Frank Wunderlich wrote:
>>> From: Frank Wunderlich <frank-w@public-files.de>
> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>> index 93d383b8be87..40b90c052634 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
>>>  		vin-supply = <&dc_12v>;
>>>  	};
>>>
>>> +	pcie30_avdd0v9: pcie30-avdd0v9 {
>>
>> Use consistent naming, so if other nodes have "regulator" suffix, use it
>> here as well.
> 
> only these 3 new have the suffix:
> 
> vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator
> vcc3v3_minipcie: vcc3v3-minipcie-regulator
> vcc3v3_ngff: vcc3v3-ngff-regulator
> 
> so i would drop it there...
> 
> so i end up with (including existing ones to compare):
> 
> vcc3v3_sys: vcc3v3-sys
> vcc5v0_sys: vcc5v0-sys
> pcie30_avdd0v9: pcie30-avdd0v9
> pcie30_avdd1v8: pcie30-avdd1v8
> vcc3v3_pi6c_05: vcc3v3-pi6c-05
> vcc3v3_minipcie: vcc3v3-minipcie
> vcc3v3_ngff: vcc3v3-ngff
> vcc5v0_usb: vcc5v0_usb
> vcc5v0_usb_host: vcc5v0-usb-host
> vcc5v0_usb_otg: vcc5v0-usb-otg
> 
> is this ok?
> 
> maybe swap avdd* and pcie30 part to have voltage in front of function.
> 

I prefer all of them have regulator suffix. I think reasonable is also
to rename the old ones and then add new ones with suffix.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
