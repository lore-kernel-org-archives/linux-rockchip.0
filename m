Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EA45C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 20:13:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0749610CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 20:13:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D0749610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WFs0rNO+zjg/XCjLeduxSxCqK2jpOblaJdcNMIFV+Zo=; b=mBboWKaPBKJaU5jv++H3Mhpc2
	HaPHr0WGAFYuFSOduL8ur3FssnAsDN9/G64QXhr1YEqvLHcyoqveQtwYZoqRa46to+IVyWcZEIJ21
	wL+R7l+RgegYE71jlokGYBJGZLEeQMJkkBAeO79YiWHWmBj3d6XIU7NVZbl5RSUSNnx+70m0uZChX
	1pM3IrFWzlRCl5Jj2O8ExEhmQfKHEP7CXoQae+n9EnhhvP2ejDzeghvIz4PXYgoHZXLv7o8NTfD6V
	JgQeX9IX0NfoCrr8GxM071HHk/ZA8JeAKq+pUUpTqRBiOelKS0kHqO1zYQnObiqWbCBRwYX0spDqJ
	8GagNyU4g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYwkp-00Czwr-NL; Tue, 20 Apr 2021 20:13:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYwkm-00Czwe-Q0
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 20:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=QFrC520JQ1ojn/pWlk/4WZUz0DW4+7IiUxD2LOmPLSg=; b=zRB0nTbVbzxnTgMWwnOvAEzG1F
 fDo8JLT6tG/auiN99TOUr4lrZviP4SkO6M9F9gjbQtRB00K+YEod28gLXE5RGAXcSC6pZfiC+3ZQ1
 dw+Mg7qL3nWDP8rHg2mIA3mq5/VNBU99gC36lBbTITdQ7Z8u9cy0M9lReiwFJiuY0zrvqDf0v29S7
 QQm7YJjtPUzSLNWb4UGAbYBS0z5WauT7RZPAoSfAsNcj8/uhusZfHOSe4F1VbOXDecO+6cA/6G9SH
 cwllrB/i2Nx1A6DPQL3fMa7x+WHZjLLkxehaMJrqvwmW/4FzK0uFqS6dZR967VaNNkBrZ4N/M6NuY
 gv4E0Cpw==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYwkh-00COs5-7f
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 20:13:47 +0000
Received: by mail-ej1-x62b.google.com with SMTP id u17so60209890ejk.2
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Apr 2021 13:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QFrC520JQ1ojn/pWlk/4WZUz0DW4+7IiUxD2LOmPLSg=;
 b=aeOeaB4a79E6c81cvWS9JWwWuHFEIjmL0fj2RP4Ck0PrZp84JrHCYbXy7gfsDCkpdk
 RPkRX16Lc9vmHXDoRFiH1BBiUevx4qmK6voku3KP9I2d+OmcrWKdEBYGN1yBJ308Sslt
 2WXvJYsULcaJDbj3zLhwB3BhTciIkQW/SUZRBsEpcBr/gT1UFsxkfjQLYAJp4B7dgIqP
 HMgt/llA/0Tg1LCSHbcsv3GCYDK1JFULsxdTquK8u67sK2Q4dbomG2BZMmwBsPkpTO+k
 VCiP3x/FyCN84pAn4NiElzANt0k8S5QM+XzUXgff+nTUIOxH34Czs76K6rW/miAim+ho
 NW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QFrC520JQ1ojn/pWlk/4WZUz0DW4+7IiUxD2LOmPLSg=;
 b=QyeJZoEfKbQPeBQ2IZXC/t9Ui8yylKLFeptBGHjU5ZYodgi1bkVhTMtN6QXYj3UjOJ
 35x+0yHWcgS2fJMAMHL90K4mgVeCabXcyEljzqo8HAiMJFgyz8rUm1CrZlXbQHC6JyWS
 wrUhyeqQn4ET6IXBnPY+74N/5j8YIi7RGdGoG1o3UpJyZpm93jKQlT15E8BEHowOQ0qB
 l1am8B9qAvo2RcKfUfOJ8e1unJqTm3dEJ4kDHSeZhhSQpi16gLAgX21Gnsc4SQj3CZZQ
 GYgGPA35zPaoJ82K+Oq9bw2LwvAfK5rhvBabhvJsmcNfzSrwK2EkvJeNmCj5k9BDPvb7
 vWyw==
X-Gm-Message-State: AOAM531lA4ixD5X/yw2GqVCk7kxx29CjihNmVXU0ouJ7Jc1bePSnNuGp
 uiRoVsr/JpKaYnQdtvsFlyI=
X-Google-Smtp-Source: ABdhPJy2TfLzBToNxVjZp4Cc6Q8vH3dqbmaGHiEG/NfHZDEZZ/t7N84PBX2d2+MilOhXCJCln2WAyA==
X-Received: by 2002:a17:906:2512:: with SMTP id
 i18mr29833762ejb.86.1618949621602; 
 Tue, 20 Apr 2021 13:13:41 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 a24sm13615472ejr.58.2021.04.20.13.13.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 13:13:41 -0700 (PDT)
Subject: Re: [v7 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
To: Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-4-macroalpha82@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c31c3417-0ded-3274-6879-bbd56f26a2aa@gmail.com>
Date: Tue, 20 Apr 2021 22:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210420160747.22942-4-macroalpha82@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_131343_333698_D309AFD7 
X-CRM114-Status: GOOD (  22.79  )
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

On 4/20/21 6:07 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the new rk817 codec driver to the Odroid Go Advance.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
>  1 file changed, 34 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> index 97fb93e1cc00..5356bcf6d99c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -161,6 +161,29 @@ blue_led: led-0 {
>  		};
>  	};
>  
> +	rk817-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";

> +		simple-audio-card,name = "rockchip,rk817-codec";

"simple-audio-card,name" is an exception to the Heiko's sort rules.
Move above all other "simple-audio-card" properties.

===

"rockchip,rk817-codec" is too long for the "aplay -l" command.
Maybe keep it in line with other boards

?? "Analog" ??


> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"MICL", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker", "SPKO";
> +		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;

Add empty line between nodes.

> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_2ch>;
> +		};

Add empty line between nodes.

> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +	};
> +
>  	vccsys: vccsys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v8_sys";
> @@ -265,11 +288,14 @@ rk817: pmic@20 {
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-names = "mclk";
> +		clocks = <&cru SCLK_I2S1_OUT>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int>;
> +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
>  		wakeup-source;
>  		#clock-cells = <1>;
> -		clock-output-names = "rk808-clkout1", "xin32k";
> +		#sound-dai-cells = <0>;
>  
>  		vcc1-supply = <&vccsys>;
>  		vcc2-supply = <&vccsys>;
> @@ -428,6 +454,10 @@ regulator-state-mem {
>  				};
>  			};
>  		};
> +
> +		rk817_codec: codec {

> +			mic-in-differential;

This property name might have to change.

> +		};
>  	};
>  };
>  
> @@ -439,6 +469,8 @@ &i2c1 {
>  
>  /* I2S 1 Channel Used */
>  &i2s1_2ch {

> +	resets = <&cru SRST_I2S1>, <&cru SRST_I2S1_H>;
> +	reset-names = "reset-m", "reset-h";

Remove.
"resets" and "reset-names" have no support in mainline.
See rockchip-i2s.yaml

>  	status = "okay";
>  };
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
