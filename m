Return-Path: <SRS0=pTeD=EM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E83C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 11:11:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E245A20735
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 11:11:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Bhv9iQ+c";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EMe3OMLo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E245A20735
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dYAtvN7YtFsjDyFhAXugKUENtfkfFBU5mzDFVBYC0RY=; b=Bhv9iQ+cNczSaDnWr50h+CWfb
	hWsdBD5g704eD/ZMvKjkm75lRReZRfr6YZlCMJQX0bOYOdIqhcA1AqqlwAQOa+IryC5r3JRUgI+LO
	aC23dLSyZQI+TNZ9Ont3cJ6mjBAlMNz9emwwV6f44eOff2vkBrtXfXAbFs6wT+FlpRaMvQJQdfRwY
	h7GCDhO1uem+Wt8N5HdC0/KR3lcFGnY2lA8+UalJkaX0JU6SXeKifTZ11l+td//OjldD+rjQZMb3u
	Hn7L59Dak/1GZyIK8zZSLFVx7mdVix7MjIZm5QF6abdpC0aHQuKY1dmX3MmxcW6YVI0QTp4XGTRc8
	5CHNBXUDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kayzo-0002YR-1g; Fri, 06 Nov 2020 10:29:28 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kayzY-0002PB-K3; Fri, 06 Nov 2020 10:29:14 +0000
Received: by mail-ej1-x642.google.com with SMTP id o9so1223637ejg.1;
 Fri, 06 Nov 2020 02:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6KO3tpZd9fabNVI7knO854DR7pkC+nbJTMXJxRywBRA=;
 b=EMe3OMLoP1liYhjqmesTIm2OlSPEBZKFgyagolt5SDpky7xC2UVQ2bapJPCmi+Kjfk
 mkzYOS5nVmK8O6uv8ECa16gBtIxF/bt1YbWleozvTfWMQwdmqtuYYRNJAl3UnEopwhJK
 g26Zo2I7/PF8WPxGs96/n7IpzZWdOFycfw3faWxDO+MHdu0i5/jsQd6sMUZFhWVxkRmR
 fALhhgHAAWNafZUQkqPTSFfCQEGk0c3aLL383IhONAQmlj+uA2Zb7t9E4R8BjuXU8IMJ
 O0000TWi980w1YbmEGGbaEY+I4pkgfBGlFVu5lB4g8Ys9CkW0KgN0G+vOVjorrfmrMKy
 zkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6KO3tpZd9fabNVI7knO854DR7pkC+nbJTMXJxRywBRA=;
 b=Yso3NawfD37TBnUpy1CrbKaLAT3vV5vXRn7twxh288WD1f1zL3myddlujlVxM/RyXc
 78hHgBZXMpHFXKPQm6MXQRvYrGiXl4N5EBwWOuyJhZ1MQVFKdNut3Ma3KaXZqaJfM2q9
 4ZgpPWon/eyeLTmOb5yWBDLZT26vaQBovHlHh/O9e+YHrg+oSj+mnXpnSUCDrzIkulul
 p90zWUXUiTJXbe/8f7LgKpL4WTIzpdKSkwOeuYm8SD0GZCW55BETI2YHIKo5njnrlDmI
 U6NtVkvxotJt0DYe7RAYTqh3GMcXxKPVv301VhbX9JB5F/Wb6D+88N3QRzEluZ42iF3o
 8WdA==
X-Gm-Message-State: AOAM530qyCeqkzNaSBDRiXWEiPW2231X9Qa4YuyYIGFc7clKYSa0kM9x
 fhK1ROrfZVmb0g5MLjR9iPs=
X-Google-Smtp-Source: ABdhPJwaSNRdkwLPT5rKEBe1a0MIvWVbRI5fFAFSNm5F00QScRXq83ByBFNMbNKBobP+3nuKRcdVTg==
X-Received: by 2002:a17:906:4bc2:: with SMTP id
 x2mr1352791ejv.525.1604658549486; 
 Fri, 06 Nov 2020 02:29:09 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h4sm691028edj.1.2020.11.06.02.29.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 02:29:08 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Reorder LED triggers from mmc
 devices on rk3399-roc-pc.
To: Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20201104192933.1001-1-m.reichl@fivetechno.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <db3986ed-e572-bdd1-6f04-3bb2d04d49fa@gmail.com>
Date: Fri, 6 Nov 2020 11:29:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201104192933.1001-1-m.reichl@fivetechno.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_052912_860286_81EFF5D1 
X-CRM114-Status: GOOD (  19.07  )
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
Cc: devicetree@vger.kernel.org, dianders@chromium.org,
 linux-kernel@vger.kernel.org, wens@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Markus,

On 11/4/20 8:29 PM, Markus Reichl wrote:
> After patch [1] SD-card becomes mmc1 and eMMC becomes mmc2.
> Correct trigger of LEDs accordingly.
> 
> [1]
> https://patchwork.kernel.org/patch/11881427
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index e7a459fa4322..20309076dbac 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -74,14 +74,14 @@ diy_led: led-1 {
>  			label = "red:diy";
>  			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
> -			linux,default-trigger = "mmc1";

> +			linux,default-trigger = "mmc2";

remove
>  		};
>  
>  		yellow_led: led-2 {
>  			label = "yellow:yellow-led";
>  			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
> -			linux,default-trigger = "mmc0";

> +			linux,default-trigger = "mmc1";

remove

>  		};
>  	};
>  
> 

The "mmc1" and "mmc2" options are custom values and invalid to the
automated dt check in the mainline kernel.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml


  linux,default-trigger:
    description:
      This parameter, if present, is a string defining the trigger
assigned to
      the LED.
    $ref: /schemas/types.yaml#definitions/string

    enum:
        # LED will act as a back-light, controlled by the framebuffer system
      - backlight
        # LED will turn on (but for leds-gpio see "default-state"
property in
        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
      - default-on
        # LED "double" flashes at a load average based rate
      - heartbeat
        # LED indicates disk activity
      - disk-activity
        # LED indicates IDE disk activity (deprecated), in new
implementations
        # use "disk-activity"
      - ide-disk
        # LED flashes at a fixed, configurable rate
      - timer
        # LED alters the brightness for the specified duration with one
software
        # timer (requires "led-pattern" property)
      - pattern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
