Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28FFEE36A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 16:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRNLFen32AHKiUvKajvwEooQmZOKE2mn935ycsI+TD0=; b=FfGCKR+6fc/zSF
	U7z8hbIblWiveNwpzkpvCs/1HEaZ36K1SbZdPXz4azQH/Elk2CWFQM/l8WcyoEPPkwEzQQTEQDoEX
	qfrQoSGOgx90NvRW/lvbDW7/9N/J6RZO3qKYJvRiAnlBPbbII3sjbhzLAb0IS6r/6MBU5U0aMSCyM
	KrFaYEIA1kGGFRNodqZtI/BmNRWPPlsUF4tl54EJpo255vWRApyMJ3CKmp3L4Vd+pVpVsxz8KGnPl
	8LKvxp4DKBrFZmMhYNujnJppupsLdBRB9LR2Q+q6lY/mHNJ0K2JT8KHl3s3Z0jXdrW166d+dHHjs3
	tuUmhU4D2SXmILxi1I2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZyx-00000002PGz-2HwG;
	Thu, 12 Feb 2026 16:55:59 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZyt-00000002PEn-45WU
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 16:55:58 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4836fc075d2so52785e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Feb 2026 08:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770915354; x=1771520154; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=bqt9e6d8l0/6erekakBfnTsF1YwxJCcgo1vADajOPT5fpO9AAkdD6AkFveH4LTV79l
         x4O8+BrPP6RQ0072KU/lIGvYAgrjySDBtR4yNjgr7f2fD9vdQdoMpx0O1xDEf6mdcQC9
         dA4A1ATCqj2og64UpuV045UDHoXxou8lDPRGpeLyTmQFl8hY70YzIZWl+6mwXSmvSdVp
         km78M/kreNupTffUn7K2NVvEtB6tZHAo8vdsG5ikxTwthjyY2D4tP3/q171E5nEhYjoJ
         ksKW57M1sdb5hLE+H4w88ueMut0JtgV9HTdTF4YpKjJZWh46joHmvOyUSmaewg74jSa3
         tOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915354; x=1771520154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=fMG4xeC5hsGdzNMmDmJ9+y+V0zbio/3VfjZeiT6YXJ+pAP5zas475KIUZre38bbslp
         0Cprf3sSNMIG6hVURmu1j7wAPxyswBHOX6VGUJLmAuDicDU2Qs6BvTwCM4ZbYLwWmnlm
         4QXVNkRBCdXo7eI93/NKJaEOcgudQMXSXQVgZ/KFLLur9H99YOyzflLxKTzKyrtOMaGw
         FcmZLVdIX7O4nXPunppnRCoTXE9bojMa0oKQqRp20LzsWmEvdyU3+FUjDW/9eCCcActT
         YvjY79HshJo7M1uVNeaK91Qn9ReBTcHIM7Vow209Z1Y74DW7Jqimd2IK9Ro2mJrm6wVA
         tBiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUB9utY3BIpqtRiRp3d+5xiw8pO3L5/d1TNrALexZDTKfyS6DqUhK6kA5mVS8s7aFaFGmRB6agI2BCtpmMceA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxB8iaIbTNYmIepaCxFu1xc9xRq27r57ka918bAe78/HcjjB2IR
	8SZzrOT0/z25prkqY39rP6UReSq61r67OJHJ+f4NLMxrkh+gZ/cNm5Yw
X-Gm-Gg: AZuq6aIImVoe4VDaj72qn7VNqeOa4C1oka4Hog6tiTECZ+KOqBXDWZDTvtpOlNbO7hO
	pknMlV2oZlZmO/kWOUQiEuYzcp/kqP2ESM/xAlTJ6P6RGatj5jww7DiLecZroaykiKoYQKvCbR/
	Hjxgoy3zkicDtCmAWiYCDM9xVn8am9CQuretFQ6qMykgdrR0LT+H7dQv70jM/jGSbGGOwVundxb
	blKfyzyXEpkzUjmJgI6GGtHx/hn+lzhyauivmK+/3Yt6GZv9jd1PJueWMyxQPPSU/XLygIKqiFg
	RRv10tWprw9Ria7V6/ldraDDZq5/ynUpKETN2DJVW3U8ItWi5Yn6SHLmZYelZcOYUpLjFIJ3TZv
	lGHo0QiA+0SyjIV7bUALJngZs63o4MLieYN/oVXYEAcBvVCYWsCCfKECyDXikuHJjxuqm98aFLh
	xnHx9jMrekRZIc4Zo=
X-Received: by 2002:a05:600c:a09:b0:477:9fa8:bc99 with SMTP id 5b1f17b1804b1-4836570e260mr29901335e9.4.1770915353815;
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd20519sm222156105e9.15.2026.02.12.08.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Date: Thu, 12 Feb 2026 18:55:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add USB2.0 PHY for RK3368
Message-ID: <20260212165550.mju3377fvphdsqoe@skbuf>
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-3-cn.liweihao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909132958.26423-3-cn.liweihao@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_085556_065243_183E8933 
X-CRM114-Status: GOOD (  16.85  )
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

On Tue, Sep 09, 2025 at 09:29:56PM +0800, WeiHao Li wrote:
> RK3368 has one USB2.0 PHY with two ports, This adds device tree node for
> it.
> 
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 29 ++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 1b21787269..b09e431a64 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -766,11 +766,40 @@ cru: clock-controller@ff760000 {
>  	grf: syscon@ff770000 {
>  		compatible = "rockchip,rk3368-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xff770000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;

This introduces a device tree warning. You cannot mix nodes with no unit
address (io-domains) with nodes with a unit address (usb2-phy@700) on
the same hierarchical level. You have to pick a format and stick to it.

>  
>  		io_domains: io-domains {
>  			compatible = "rockchip,rk3368-io-voltage-domain";
>  			status = "disabled";
>  		};
> +
> +		u2phy: usb2-phy@700 {
> +			compatible = "rockchip,rk3368-usb2phy";
> +			reg = <0x700 0x2c>;
> +			clocks = <&cru SCLK_OTGPHY0>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy";
> +			#clock-cells = <0>;
> +			status = "disabled";
> +
> +			u2phy_otg: otg-port {
> +				interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "otg-bvalid", "otg-id",
> +						  "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			u2phy_host: host-port {
> +				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +		};
>  	};
>  
>  	wdt: watchdog@ff800000 {
> -- 
> 2.47.2
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
