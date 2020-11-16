Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F896C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:07:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C492B20729
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:07:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MAn8iG6C";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F0UYXh68"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C492B20729
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lfV1XddK8jasGeeLrxCTahHCiXeGyOdrTDW2OXsMnNc=; b=MAn8iG6CzX2O32dPlIvnjyUqf
	J63OFffotz5ExZRZ/9OdAlxnnqPk0eLUByYj4tY+jww0JWNvGVVoqRvGrLdYU6O+ru9D6x6sFWsAC
	TLcaKJfaZgnv6HMBbxYymDm8KKjc7DH6e54aKNC229vJO2Qakxv+pJg26m1gjvLr9kMh38zeUJ6fM
	18QkL1Az7t5UJBELbPGvXrTU6dqcXGGuPtok2Z5fktuxtbLkxcfkzHveMn9p3iHrp4ZSyUQr5qd/O
	DLOuWS4yt5RLmexY+g5fDQCl9VA++DcKnKiTH7aNTVIv7Mj2sYybUMWDa6H8ENl+2GuYlli0H6V0m
	1n0CBMk1g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keh2g-0004v0-JH; Mon, 16 Nov 2020 16:07:46 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keh2b-0004sw-1r; Mon, 16 Nov 2020 16:07:42 +0000
Received: by mail-ej1-x643.google.com with SMTP id cw8so25150982ejb.8;
 Mon, 16 Nov 2020 08:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8dpEnSlFlWYbP7x6fMlJnz9EZT4+x6lyJMRgAnR9Ya4=;
 b=F0UYXh68NyUqlfHt7dvr1w+ZAfaJVSKUo28fO9Wnyf5f3PZ9a7FjGo4YWXNZ8/KvHs
 B4qnkH+h0WqMlANUd9eqgDXSXgefGpljFlC6Ja3P115Wmcwm0N/7Uyal5ZHL4B7TMvid
 LaTIhwspJQVVO4PyolplaXOUrXqvuw3g5GUVainQ5wNQWXmLHmdZAM4edCurtzF6Ezr4
 XPLsS9FzcLGEtR0s+9T3xqRhucIzIhXiPjFfV2Z9rgNGh52YojJMgCewU1EE63oCdsKB
 vqHB7Koyw1p7h+LMWRb4Vs0iDuQQGg5qkt1fAVeerZQisVAFPNByC2dSIBPd5r8CP47s
 mVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8dpEnSlFlWYbP7x6fMlJnz9EZT4+x6lyJMRgAnR9Ya4=;
 b=KrtunJHpF8Ol0g0T9luNoUOndg7JiYyp50EZzpL9PUV9SCnik39Tk9zKcFNrVH6lL5
 F50OJ6fPhGiOo/2cIA/tPU66ucG+KBbLoVd8eHC+Ei5G+nZld6ljJCVzk84PrL1jpv+g
 aoYehN64NmIR3WQvdCZ3F+uDlxwipxMVobaYQTWZlPaGiMf/7MLcBxSJrAnvO3zbVNfi
 KDCdlLBUuZPSpC9WTur6u1mdsTegEVacgQ5HySJbRcgJbokIlsDkVByrsj6z55m3NIZa
 58g/jrXo03+cff1Y9G7iLX2/jOCpzqGW8a3zMQZPj1kZbpjIAV37jOrtLuACtRDzDfqt
 tAWw==
X-Gm-Message-State: AOAM531BdJXQHjBg+rmcgGGHcAk143dVkKH8ipXHguG2bxglNE/Rq7kR
 xXfmnU4IwTvHTueIA6sOEQAu17kaQNtCSg==
X-Google-Smtp-Source: ABdhPJyiJwv9kqgM4+Hd+k+Xzf7xsYEmt1eFg0Awdg9NIJpD9XT1UMzbirYygdI9cePYUUmTqqmhSQ==
X-Received: by 2002:a17:906:1989:: with SMTP id
 g9mr14286464ejd.62.1605542859466; 
 Mon, 16 Nov 2020 08:07:39 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 a9sm11055104eds.50.2020.11.16.08.07.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Nov 2020 08:07:38 -0800 (PST)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rk3328 usb3 and usb3phy
 nodes
To: Peter Geis <pgwipeout@gmail.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20201116151735.178737-1-pgwipeout@gmail.com>
 <20201116151735.178737-4-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ce2217b9-3627-df09-04d9-e47bef6c3572@gmail.com>
Date: Mon, 16 Nov 2020 17:07:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201116151735.178737-4-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_110741_171145_58BB49F8 
X-CRM114-Status: GOOD (  20.25  )
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
Cc: linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com,
 linux-usb@vger.kernel.org, kever.yang@rock-chips.com,
 william.wu@rock-chips.com, zyw@rock-chips.com, wulf@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peter,

Just some comments...

The compatible "rockchip,rk3328-dwc3" is currently under test in:

https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git/

I think we should let it go in mainline first
(if the maintainers agree?) and then you can base your serie on that.

The compatible "rockchip,rk3328-usb3phy" needs to be added to a document
as well.

Add increase version number after previous series.

Is there any change in code or on how you detect?

On 11/16/20 4:17 PM, Peter Geis wrote:
> Add the usb3 controller and usb3 phy nodes to the rk3328.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 65 ++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index bbdb19a3e85d..9fea9203d114 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -853,6 +853,40 @@ u2phy_host: host-port {
>  		};
>  	};
>  
> +	usb3phy: usb3-phy@ff470000 {
> +		compatible = "rockchip,rk3328-usb3phy";
> +		reg = <0x0 0xff460000 0x0 0x10000>;
> +		clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> +		clock-names = "usb3phy-otg", "usb3phy-pipe";
> +		resets = <&cru SRST_USB3PHY_U2>,
> +			 <&cru SRST_USB3PHY_U3>,
> +			 <&cru SRST_USB3PHY_PIPE>,
> +			 <&cru SRST_USB3OTG_UTMI>,
> +			 <&cru SRST_USB3PHY_OTG_P>,
> +			 <&cru SRST_USB3PHY_PIPE_P>;
> +		reset-names = "usb3phy-u2-por", "usb3phy-u3-por",
> +			      "usb3phy-pipe-mac", "usb3phy-utmi-mac",
> +			      "usb3phy-utmi-apb", "usb3phy-pipe-apb";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		status = "disabled";
> +
> +		usb3phy_utmi: utmi@ff470000 {
> +			compatible = "rockchip,rk3328-usb3phy-utmi";
> +			reg = <0x0 0xff470000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		usb3phy_pipe: pipe@ff478000 {
> +			compatible = "rockchip,rk3328-usb3phy-pipe";
> +			reg = <0x0 0xff478000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +	};
> +
>  	sdmmc: mmc@ff500000 {
>  		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xff500000 0x0 0x4000>;
> @@ -983,6 +1017,37 @@ usb_host0_ohci: usb@ff5d0000 {
>  		status = "disabled";
>  	};
>  
> +       usbdrd3: usb@ff600000 {
> +		compatible = "rockchip,rk3328-dwc3";
> +		clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> +			 <&cru SCLK_USB3OTG_SUSPEND>;
> +		clock-names = "ref", "bus_early", "suspend";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		status = "disabled";
> +
> +		usbdrd_dwc3: dwc3@ff600000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x0 0xff600000 0x0 0x100000>;
> +			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> +				 <&cru SCLK_USB3OTG_SUSPEND>;
> +			clock-names = "ref", "bus_early", "suspend";
> +			dr_mode = "host";
> +			usb-phy = <&usb3phy_utmi>, <&usb3phy_pipe>;
> +			phy_type = "utmi_wide";
> +			snps,dis_enblslpm_quirk;
> +			snps,dis-u2-freeclk-exists-quirk;
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,dis-del-phy-power-chg-quirk;
> +			snps,dis-tx-ipgap-linecheck-quirk;
> +			snps,xhci-trb-ent-quirk;
> +			status = "disabled";
> +		};
> +	};
> +
>  	gic: interrupt-controller@ff811000 {
>  		compatible = "arm,gic-400";
>  		#interrupt-cells = <3>;
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
