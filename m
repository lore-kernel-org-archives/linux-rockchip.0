Return-Path: <SRS0=+p/r=DN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D307DC41604
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2020 09:52:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5109720674
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2020 09:52:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qzmMGrSC";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FCLx73mo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5109720674
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ecfo2LJbpmG7OzkuGhQDVy4OAN/UceEgEG3nZeZJFvk=; b=qzmMGrSCWViztLe3iddZDx/op
	yrI4LGyLQX2LzRJs9rU6WDg8A6wGjYpwSRg8x/wWguTfONTnfI1tgwhs8idHAFEuvNFAfI3PNN7Cq
	MuxghhIuQfAk8etw7Jm53TAIIkbd9CPRuOEDPbQKmWdTOlhmdsc6LPuFKJTVMJsl6Q7LfrauHciPZ
	ndb6AfNsHezc2ZBtN+4nakb1o3LjchL3TDM51TCSN80jS9KoD45OLkC98g+8UMNhlswEMyMR4jtgA
	q+HVoe0ZMb3i4MpabVJnbEFr1ZAfXQXODibm8dZlrNKxUTgnOZBUqxGV6cfdyuE8fBRGLeLqN+pQ3
	UkuxdxIHg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPjdg-00015f-Sm; Tue, 06 Oct 2020 09:52:08 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPjdb-00013U-Im; Tue, 06 Oct 2020 09:52:04 +0000
Received: by mail-ej1-x642.google.com with SMTP id p15so16705807ejm.7;
 Tue, 06 Oct 2020 02:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BpndHynjiFOuceItUVm+AOdG3zbe75h4joXfwYhnJAg=;
 b=FCLx73moQAXqeIjasaAw7nsZvnH+svOrYn1ReUOpR2YYnEdn1Rw93VfaRHuhiv3Pbs
 Y4re8crhbHyo6oGRSxVJeua10lYk+UaKKgBJ6bnVji7ZmoniVQkNdUMJcXhvXJXaVEew
 VM5tYxc5Vljyfa6N/QiUCH/671ZaxGlC5EP1Ig8aifLkuR1c4etMCzVL3nhjHt/e7zlM
 aBn86JYpPvC9kFy5JgSi4hL9yYuFNcGUBLcKB/fHU5R3FpKCOCB0pSx6h018XFZj2YbO
 nZV16RDQ6Lih66mujQgRUlu/fNYqzmSN+ByvQuzsejexVkQSW4G4dcT50VaFx59ZikyJ
 R5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BpndHynjiFOuceItUVm+AOdG3zbe75h4joXfwYhnJAg=;
 b=hMSXeInTMcbZxRjYvg5rK+XRQyhwcNBNN3yywEAAoZkq074wbBvQG/0l0lhOhOnESb
 3/6uaDgkcQWYJoOoH0P/fe0IfWT5UrHFGQeUMmYK8y1SchwuQ9FWTDCA/S2IS2cQcfKo
 HeVXGsMFrhgI4SoFK2Tnpu5jbfChSSghxm/CU/1X4inwkmpYGN44I2lYfVcGR8D22QaD
 yBR/DejLNIJDiKM1TBWOciHI49oxNjaA1gO2LI9N7p31eE0hDz9GrJCVC2qxSCxueVmh
 fHGc/H6jFUNmUkzIv42YXhYTHtjkUAyTSeXoQvnqYJQDRLmHeWDLwRT30hyqyp0WQJFr
 IShQ==
X-Gm-Message-State: AOAM530hNnxpmF8kciMX5xVSriF9E2HaEgawZQmvsYEN9qhQBfyPHhcq
 o/LYRq66fw9gkCIYr7aqG0dVUykt9Og=
X-Google-Smtp-Source: ABdhPJytDn5qeBQbaa/PyR2BMzIVAbfo2+hXQgKZxA3UE8zolJnnIZqwo0zBndyLTd1iD/j/syzE/w==
X-Received: by 2002:a17:906:f106:: with SMTP id
 gv6mr4379100ejb.411.1601977920680; 
 Tue, 06 Oct 2020 02:52:00 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 e9sm1969902edu.49.2020.10.06.02.51.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Oct 2020 02:52:00 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20201005140311.2507530-1-katsuhiro@katsuster.net>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com>
Date: Tue, 6 Oct 2020 11:51:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201005140311.2507530-1-katsuhiro@katsuster.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201006_055203_656827_ADE44AD0 
X-CRM114-Status: GOOD (  26.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Katsuhiro, Heiko,

Question for the maintainer:
Should we add a SPDIF node if the connector is not physical on a board,
only a header?

Thanks Katsuhiro for the "aplay -l" screen print.

**** List of PLAYBACK Hardware Devices ****
card 0: hdmisound [hdmi-sound], device 0: ff8a0000.i2s-i2s-hifi
i2s-hifi-0 [ff8a0000.i2s-i2s-hifi i2s-hifi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 1: rockchiprk3399 [rockchip,rk3399], device 0: ff890000.i2s-ES8316
HiFi ES8316 HiFi-0 [ff890000.i2s-ES8316 HiFi ES8316 HiFi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 2: rockchiprk339_1 [rockchip,rk3399], device 0:
ff870000.spdif-dit-hifi dit-hifi-0 [ff870000.spdif-dit-hifi dit-hifi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0


On 10/5/20 4:03 PM, Katsuhiro Suzuki wrote:
> This patch adds 'disabled' SPDIF sound node and related settings
> of SPDIF for rk3399-rockpro64.
> 
> RockPro64 has output pins for SPDIF Tx. But RK3399 does not have
> enough DMA channel for enabling SPDIF tx. Current settings are:
> 
>   - I2S0     (Req num 0, 1): Enabled : Output to 40pins header CON40
>   - I2S1     (Req num 2, 3): Enabled : Output to ES8316 on board
>   - I2S2     (Req num 4, 5): Enabled : Output to internal HDMI core
>   - SPDIF Tx (Req num 7)   : Disabled: Output to connector J10
> 
> If users want to enable ALL sound I/Os, we need 7 DMA channels for
> it. But unfortunately, RK3399 has only 6 DMA channels. So users have
> to choose from the following:
> 
>   - Disable one of I2S (Ex. I2S0) and enable SPDIF tx
>   - Keep enable I2S0/1/2 and disable SPDIF tx
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> ---
> 
> Changes in v3:
>   - Refine commit description why adding disabled node
> 
> Changes in v2:
>   - Remove redundant status property
> ---
>  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 6e553ff47534..58097245994a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -76,6 +76,23 @@ sound {
>  		dais = <&i2s1_p0>;
>  	};
>  


	hdmi_sound: hdmi-sound {
		compatible = "simple-audio-card";
		simple-audio-card,name = "hdmi-sound";

Maybe rename to "HDMI"?

[..]
	};

	sound {
		compatible = "audio-graph-card";
		label = "rockchip,rk3399";

Maybe change this to "ES8316" to prevent confusion?

		dais = <&i2s1_p0>;
	};


> +	sound-dit {
> +		compatible = "audio-graph-card"
> +		label = "rockchip,rk3399";

This would be the second sound card with the same label.
It seems that aplay/linux? adds "-1" to it and removes the comma, so we get:

hdmisound
rockchiprk3399
rockchiprk339_1

Shouldn't we label it with something that reflect the function/output.
Shouldn't we standardize to SPDIF, HDMI and Analog similar to rk3318/rk3328?
Make a shorter label without spaces or special chars, so that chars
don't get removed?

Proposal:

HDMI
ES8316
SPDIF

> +		dais = <&spdif_p0>;

Maybe disable too?

The "sound-dit" node is standard enabled and will start some process
with a dia in a node that is disabled.


> +	};
> +
> +	spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;

Maybe disable too?

> +
> +		port {
> +			dit_p0_0: endpoint {

> +				remote-endpoint = <&spdif_p0_0>;

This also points to something that's disabled.

> +			};
> +		};
> +	};
> +
>  	vcc12v_dcin: vcc12v-dcin {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -698,6 +715,16 @@ &sdhci {
>  	status = "okay";
>  };
>  
> +&spdif {
> +	pinctrl-0 = <&spdif_bus_1>;

This node is disabled.

> +
> +	spdif_p0: port {
> +		spdif_p0_0: endpoint {
> +			remote-endpoint = <&dit_p0_0>;
> +		};
> +	};
> +};
> +
>  &spi1 {
>  	status = "okay";
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
