Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAFACFC5EC
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9gqa6xXMT0UsmKKUYq4Jo8I8R9fJm5CxpRkujcMtx0=; b=SwkbWmxA7/Qo5g
	diuNKyyfidj6Z4YY53q170G7cDdT+0poGISrBphKZx/GRMha06O+hQLbx300GkV8nEssFHAXWqvnR
	5/R9O0onJOE+Hu0i8Kv5z/lzViF/p00M+QWAXWwy4WadOlLK7M4gK53Z6MLTxiSjggxaTKFb6LXZZ
	rkIHLuJUHGuzaGwGMhQT/9WkhIRcZSgHOUnOd747nQabMcwL8eN0V6xYLGJHhmkJjw8jO74YZcDK5
	/bkfL9wwpfBPbHlsTTsE18+MK347brYZWOKt+rxOSLcodnBsFSlGluxnnXXrKdsjxm2nld6vil9rp
	NXjVYzSxpNmREqi1SGQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syyAz-0000000DyvX-48xT;
	Thu, 10 Oct 2024 18:46:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syx1b-0000000DgIT-2ErX;
	Thu, 10 Oct 2024 17:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=l0nMlLvviJmPYv2MjcZTCv3Irnh3bCL8aaXvUPWjA1g=; b=E4QuSaEectzwCmYku3vNRpZAvY
	EVpBLpPAt7zUthifjL13dAWFK+ct3K7jumBzeHDtWI0LD7sOJO9h8QjlTGZYWrpOxnzr+S9snfO4V
	ac9anatiCfQHVxqLwu10REmJ36mLWCiTJIFitwjEyBHZwA3XED+jTAcdCmxZSoHNdGrFk8dlP47oF
	vPdafO8jKK3f2O5RZA1U2vmEsRaPUxvdESngL71hcMJ8WARBSkuhAWl2ntEUw2BvIhxTpIeSO4ucX
	44pZlt6FQFz1UvfzLPemQRR15+4tNhsBARt9W+N6wyxsxEuzMtznW0S7N4bgzQsrMk0eZQrj6Qjy5
	SQdkRrDA==;
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syx1Y-00000005TGc-2KA7;
	Thu, 10 Oct 2024 17:32:30 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-6cbd12b38b4so9413196d6.2;
        Thu, 10 Oct 2024 10:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728581544; x=1729186344; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0nMlLvviJmPYv2MjcZTCv3Irnh3bCL8aaXvUPWjA1g=;
        b=JEx/NrJ4yyl9iqp2/ymlL9l6Z6k7Bm/NS64Dvkt9lgSkve8o6T2vFvb1YBsLyZha/H
         69SUdAuvb7V31NqS5NiIvKeWlFh/kUGELCwAXZQJhUj/xHMV7N2FzE7EOw+X1Sdqp+Oo
         goGd5ewJL0lI9qNyvJtBmBr6t73z2WbyJHJ0T2RZwF07Nt0LsnhHBuF47x4rW8s5E2d3
         B74ksWM+Hh4NnNL6BLNON0ialFKEX1bRditVqNJPChqhikGMvb9WKFgjdFie2Egim2vz
         ELQgL5MW/Bus9GzUK0JbQkv8wbVnsJeO2AHHore6cIQiLovrOPDRERFp3OrHsiv9EaI9
         PdDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728581544; x=1729186344;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0nMlLvviJmPYv2MjcZTCv3Irnh3bCL8aaXvUPWjA1g=;
        b=IeQP190EMQ2o88su6wisjvfRndSEI70cR992ykzmSYTLc4CeujsBsMc1SPO9bPKpxI
         nLuSz8Sh0TDgEIAkbQ2GxgVZTRTXV/2GlxybaZkqJa5IRMn3MgfSYeDovzfFpuGTsTvW
         01uByzbakT4pLDoOfV7f0/sFxNI8rR1QJTctGwj2tm6HbESHJVy9SPKSdsizv8M2Sdub
         Wymqk/YgrQFheNw63Jo5qwTrAZ4uqYDajB+gpjn0JemM+AEoNQBHNb56GWpV8nHLG23/
         sswCsxA0jv0KFHJoWjrx/Ws+7+rUrUoh7SmYHfe/HHI4KcYdtaj/qVaX2MQabuhu6IIF
         Cr2A==
X-Forwarded-Encrypted: i=1; AJvYcCWZgYzCBYaIupQtZymkoqPKXObaN9odM88HKTv6iDJ0+TIOVFEHlyJeH0bagDoC+y+iZVt3kb/DnSVQL8YyvDTN@lists.infradead.org
X-Gm-Message-State: AOJu0YwNL7GD29nuKysAH1vAslCE0R1O4ySTaIHMVx06MKRtQH+m2KuE
	RbwTESI5MqC6DgKSBbw/mM6IZfzh9HrcMCnAbH1enMymZZvreHVzKuGBRw==
X-Google-Smtp-Source: AGHT+IFRlhEVbo3tzXbvvXuvHuYvVHINoj93prdPjLq37t+ElASZTNRAmEMoAEOgjndfOlphLPpM6A==
X-Received: by 2002:a05:6214:3a07:b0:6cb:e632:a059 with SMTP id 6a1803df08f44-6cbe632c1f4mr44223376d6.49.1728581544094;
        Thu, 10 Oct 2024 10:32:24 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cbe862fe87sm7116246d6.106.2024.10.10.10.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 10:32:23 -0700 (PDT)
Date: Thu, 10 Oct 2024 13:32:21 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308
 SoC dtsi
Message-ID: <20241010173154.GA32479@localhost>
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_183228_668778_A579031C 
X-CRM114-Status: GOOD (  17.22  )
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

On Thu 2024-10-10 @ 12:19:41 PM, Dragan Simic wrote:
> Until the TSADC, thermal zones, thermal trips and cooling maps are defined
> in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may be
> enabled under any circumstances.  Allowing the DVFS to scale the CPU cores
> up without even just the critical CPU thermal trip in place can rather easily
> result in thermal runaways and damaged SoCs, which is bad.
> 
> Thus, leave only the lowest available CPU OPP enabled for now.
> 

It builds, it runs, it's been running on one of my rock-pi-s boards for ~3h
now. I can read my spi, i2c, and w1 sensors, so no issues for me.

# cat /sys/bus/cpu/devices/cpu*/cpufreq/stats/time_in_state
408000 1168942
408000 1168942
408000 1168942
408000 1168942

Tested-by: Trevor Woerner <twoerner@gmail.com>

> Fixes: 6913c45239fd ("arm64: dts: rockchip: Add core dts for RK3308 SOC")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 31c25de2d689..a7698e1f6b9e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -120,16 +120,19 @@ opp-600000000 {
>  			opp-hz = /bits/ 64 <600000000>;
>  			opp-microvolt = <950000 950000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-816000000 {
>  			opp-hz = /bits/ 64 <816000000>;
>  			opp-microvolt = <1025000 1025000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-1008000000 {
>  			opp-hz = /bits/ 64 <1008000000>;
>  			opp-microvolt = <1125000 1125000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  	};
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
