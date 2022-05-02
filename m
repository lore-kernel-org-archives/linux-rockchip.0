Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EE3C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnw6JxEGGPjI8eqp2ecBXU1iVJXKm4i1MgZqx+U4dqc=; b=VNtmCJouRYt3ye
	J4PScEHA6VtJIw7dqVNbFkm3n0xX7aqW23RAM37C0O0pGIP82FDQBP3itbyr2bIgU1lzo8jfoE61Z
	GLcEZxd5P/ZH9P6eHKVTdeSoN134vSJbFspoGJbDJ2dRhJQ+pT1ch1DHxLxM3jYH7Bj+vbK1WR/0Q
	EaoZKojak8g4AhTEltcvDn5L1AkG2UjtgFiFZ0n/xkJuRHNe3/2/qKlLNmMPqW7ejiJxPBwBxQ2me
	kqUZMHMr6VEw8rg7EGdV+MAuGlJRTWgvFhk48J06HpoYUpngUNo7+DJYOk6FYM1a27JHEO/tytM36
	oWszZRs37DZ8K6521SYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlePF-002tXK-DK; Mon, 02 May 2022 22:20:37 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleP3-002tUY-HU; Mon, 02 May 2022 22:20:27 +0000
Received: by mail-oi1-f182.google.com with SMTP id 12so16546465oix.12;
 Mon, 02 May 2022 15:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VR6aQATCwdPyj2a2nSMH6aYl4mUSCVGJN91iqP+EUDc=;
 b=Dj23Gr6ps8j7OUkQKkz+kQ0RQvHPncb3BDXvPKLVxVB081vuaRWNk31K9lm7vWCNib
 LMmqq8OhHazsy+lbFb+HZ+ha5ITuJHRXXkwupcdmm0ZR7K5H8wIC6c3A1rhaSCgRVsmO
 uP4edFAFg3WIa1PZgrPU8Trm/Oke8SiMmnd+x87/K5sJfqo8hZvNQdP/wZmnRYrEPmIG
 DtDux4gAyt/ap4JFN8+oAAbQSyTIDDfSfczRLDF3FdMq9nL2GEjYP7TUwSnFY2y699uC
 kqcQjlDdGTh3ImGIuQV7rjYKjv1zPSmH56KQttFfSM2z859hQkFLh+ILpiexG3XL13SE
 LkfA==
X-Gm-Message-State: AOAM531X/zfpDg0Adjd6ZTinImu5OwtjeHSvWb/anC8ZVWd+J8EufpOf
 LLnwGeetqJKXZXHUWK+1qw==
X-Google-Smtp-Source: ABdhPJx8V52EJ5MZQdiCVJ7+iHueY+QIxBxyN68rDX9lMZGqh4wHsvqRFvMWHd4cNinWBJjPJ6PZNg==
X-Received: by 2002:a54:4e92:0:b0:325:224c:8ff7 with SMTP id
 c18-20020a544e92000000b00325224c8ff7mr586298oiy.154.1651530023456; 
 Mon, 02 May 2022 15:20:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 dw40-20020a056870772800b000e686d1387csm6287149oab.22.2022.05.02.15.20.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 15:20:23 -0700 (PDT)
Received: (nullmailer pid 1896541 invoked by uid 1000);
 Mon, 02 May 2022 22:20:21 -0000
Date: Mon, 2 May 2022 17:20:21 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCHv1 18/19] arm64: dts: rockchip: Add base DT for rk3588 SoC
Message-ID: <YnBZJa/dCKnGRF3n@robh.at.kernel.org>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-19-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422170920.401914-19-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152025_621012_2A6379CF 
X-CRM114-Status: GOOD (  15.78  )
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

On Fri, Apr 22, 2022 at 07:09:19PM +0200, Sebastian Reichel wrote:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> This initial version supports (single core) CPU, dma, interrupts, timers,
> UART and SDHCI. In short - everything necessary to boot Linux on this
> system on chip.
> 
> The DT is split into rk3588 and rk3588s, which is a reduced version
> (i.e. with less peripherals) of the former.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

[...]

> diff --git a/include/dt-bindings/clock/rk3588-cru.h b/include/dt-bindings/clock/rk3588-cru.h
> index d51e6ed939b3..2f046f048a83 100644
> --- a/include/dt-bindings/clock/rk3588-cru.h
> +++ b/include/dt-bindings/clock/rk3588-cru.h
> @@ -1451,6 +1451,7 @@
>  #define SCMI_CRYPTO_CORE		20
>  #define SCMI_CRYPTO_PKA			21
>  #define SCMI_SPLL			22
> +#define SCMI_HCLK_SD			23

Belongs in the header patch?

>  
>  /********Name=SECURE_SOFTRST_CON00,Offset=0xA00********/
>  #define SRST_A_SECURE_NS_BIU		10
> -- 
> 2.35.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
