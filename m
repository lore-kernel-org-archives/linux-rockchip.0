Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 873C7D3CC88
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 01:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRJwKkp7MJhTYzd0DhvdTjprEPam/947YchM5gudkCE=; b=xZeqY7k9OdwXrz
	UeuDLdxbrV5yxbuczanyVSt4zS2rBevDfF8vQsG+qSq/mMB6SbxeA977dHRYtOKe4StvLqy6qdUVS
	qDQbepot2rjDyLX/yDiwRFA7To7014F2fnezngA/b/3Dvou2msTmwM0OrjTwYV4gWUDdcPaCcYRPX
	EznSi5CX9pBw8XcVIGJiuaNpkbTb6Tz7e3NWmgIjpfbPbOiodAYi9O2LKaFMZucyguLvuqb0D5Rvh
	iMdEsqK0lxb+bw/Zonwu+nw4s6NnsZeLx0nkhrDV7voIjqvrptTd8SY/nMot4y5qF51h/yTVcb6uL
	9JN0Z67wTYJdNsz5bJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCXN-0000000BSln-0AQV;
	Thu, 15 Jan 2026 01:52:37 +0000
Received: from mail-dl1-x1231.google.com ([2607:f8b0:4864:20::1231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCXK-0000000BSjf-0FcS
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 01:52:35 +0000
Received: by mail-dl1-x1231.google.com with SMTP id a92af1059eb24-1220154725fso308774c88.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 17:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768441953; x=1769046753; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eaGsIuvEkZT/0ZxJsJ40cQ270Lj1PGkWPT1RajGBoys=;
        b=ZhQGrokn7lvmQv1LHWn4SUdZjMRtJKCUzuTdDxFiuS9EystM8OCvx4qw3vdOauAdAu
         H6ooL6LqGeijo/tyMtXp9VIJgKJj2MHh2MqVKbYbNG1MCNzizwwfb9IuIbkRF5GyH1cc
         ADFMgRT4R4gloLs/MH/OIEP6mW3P3ij7vCUgJEtdV5CFeqngpBU4a7kDikZbun67SZYj
         m01TDYn7xGt01HLk3JMdfL6X++C8e4A86Oh4i3P9NATSUNp7E6I3mkn0QTEIhi/d9021
         h19q3x4kiS6NWq8aiNhbu2vI0sJKgTyu2H0GJa0UXKQesZ4v3WfFuIYGveraHXJlEU2/
         j97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768441953; x=1769046753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eaGsIuvEkZT/0ZxJsJ40cQ270Lj1PGkWPT1RajGBoys=;
        b=ign3WYl3Ez2MALciXWI/rUO52Ivmf/i2nGqg4BVqveBKQcCc2XKfuhGdpyZnQ0itlF
         /XOuXvmkYW8agjku376h03aRy4RXmr6T/nMlL5QkLcBQgWlBr2XjpyQq+qoWbsLSQKOc
         d7WSoAi6vVE7Im9sSzEbwKCilBIgcbYePHw93YxnfM0h2V88cjZ8w6AFrtk15vOtnZ59
         YvVXXQzuAVi8slL0sd6qh0gbpnxBX8f56F+xpI2PTA283LO9NkCoS9BWZFKtk3m+cFYv
         tFgm22JrbYJv8iqa4NTk3na3NVqjxe7ktUrY8o4S3YDGR1NPGSjCOwHC0iP659BrB4dj
         ZSYA==
X-Forwarded-Encrypted: i=1; AJvYcCVDs1w6F7SHNDkHILsoRvLcCCJFwPlp/slXjTFOb8R+v4l1/MNF12SKIwvmEdLI0b7C+36vdg441MxgA71cFw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx54PlXcyzGR2UWqIQp3GlzAu7OnqB1Y6A2r1rzdRaC9YQh2bKO
	1VXTwsD+NoBBTh9sSLQnNoeMPTowhm3loxO7t6WYLKNUTB5AR5LBlynngj1oIJgptTo=
X-Gm-Gg: AY/fxX7MYdK+9D3c69T0Ix8/WGOG3gZR4nBZ1uRRHzD0nTahLMykgaHVePafzFIB4el
	XnIjk1ti8lsSanClqRoiMPDMz3ZfsibR5YfWzY0D7bkgDAaddwOIQucloTZqXHodcHa9Zwfoe6Y
	MHZukgPuPUoitlMrOmuVOeJGlTMQOJWNWvQSppardZOYQcUSHsP0cGOOWZOTLO7iCLF2MwaplEP
	kU2ptwQqLmuwseFSduAaqRc+AxKaFTf/WLiPk5KvtOzmHkPSbqFMvfUDBiLGxxEM2JMXinbUbUq
	oqlggAIAEbXLOWqysj7n4d/xPwjjALCjSghIU7a1eM29pMq5ehuWsNq7CdnOG8LZP5oPT7rmoZ3
	NIbjrschoo0wtEjnzdcyuwxqUCJrGMylwMgx/pV7n1RgafFfbUPtWG5myJvEkMNW+LIJ0rkB+5v
	p2hTKiEJrCHQ==
X-Received: by 2002:a05:7022:6708:b0:11b:9386:a38f with SMTP id a92af1059eb24-1233d10f432mr1505698c88.22.1768441952848;
        Wed, 14 Jan 2026 17:52:32 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248c246sm32727140c88.11.2026.01.14.17.52.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 17:52:32 -0800 (PST)
Date: Thu, 15 Jan 2026 09:52:28 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Emil Renner Berthing <kernel@esmil.dk>, Hal Feng <hal.feng@starfivetech.com>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Basavaraj Natikar <Basavaraj.Natikar@amd.com>, Shyam Sundar S K <Shyam-sundar.S-k@amd.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Heiko Stuebner <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 03/11] pinctrl: sophgo: Cleanup header includes
Message-ID: <aWhIOYIWnJy7mhkc@inochi.infowork>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
 <20260114-pinctrl-cleanup-guard-v1-3-a14572685cd3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-3-a14572685cd3@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_175234_099782_9E903675 
X-CRM114-Status: GOOD (  13.15  )
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

On Wed, Jan 14, 2026 at 04:30:04PM +0100, Krzysztof Kozlowski wrote:
> Remove unused includes from internal headers, because they do not have
> following: bit manipulations, mutexes, spinlocks and struct devices.
> These headers are included by actual C files, which seem to have all
> necessary includes.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/pinctrl/sophgo/pinctrl-cv18xx.h | 4 ----
>  drivers/pinctrl/sophgo/pinctrl-sg2042.h | 6 ------
>  2 files changed, 10 deletions(-)
> 
> diff --git a/drivers/pinctrl/sophgo/pinctrl-cv18xx.h b/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
> index 759c0e604acf..973ab9a38fcf 100644
> --- a/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
> +++ b/drivers/pinctrl/sophgo/pinctrl-cv18xx.h
> @@ -6,11 +6,7 @@
>  #ifndef _PINCTRL_SOPHGO_CV18XX_H
>  #define _PINCTRL_SOPHGO_CV18XX_H
>  
> -#include <linux/bits.h>
>  #include <linux/bitfield.h>
> -#include <linux/mutex.h>
> -#include <linux/spinlock.h>
> -#include <linux/platform_device.h>
>  #include <linux/pinctrl/pinctrl.h>
>  #include <linux/pinctrl/pinconf.h>
>  
> diff --git a/drivers/pinctrl/sophgo/pinctrl-sg2042.h b/drivers/pinctrl/sophgo/pinctrl-sg2042.h
> index d481973fcf97..1a2b00dde1fa 100644
> --- a/drivers/pinctrl/sophgo/pinctrl-sg2042.h
> +++ b/drivers/pinctrl/sophgo/pinctrl-sg2042.h
> @@ -6,12 +6,6 @@
>  #ifndef _PINCTRL_SOPHGO_SG2042_H
>  #define _PINCTRL_SOPHGO_SG2042_H
>  
> -#include <linux/bits.h>
> -#include <linux/bitfield.h>
> -#include <linux/device.h>
> -#include <linux/mutex.h>
> -#include <linux/spinlock.h>
> -#include <linux/platform_device.h>
>  #include <linux/pinctrl/pinctrl.h>
>  #include <linux/pinctrl/pinconf.h>
>  
> 
> -- 
> 2.51.0
> 

Thanks.

Reviewed-by: Inochi Amaoto <inochiama@gmail.com>

Regards,
Inochi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
