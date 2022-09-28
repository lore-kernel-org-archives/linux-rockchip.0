Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D383C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/HMvHoG4T15hrBAacG9sX5bdO19bL7okpmuD7OkARc=; b=X74+s5794KxwNS
	A0oOngda9Al20m9iah1d6QIZuouIhlDIbkIf5BQ6H2x7uDgXUOdCBqNZsMJlD/tlBM9jdWM27qjJ5
	NFwTsWIoiWDxYlXYXcS1yI3i7haSfWQxsT7o1c2lIRYX2N1qdKIMQqGF/UX66oJHDrLf/IDWrpcoR
	5tY24DBERBSt8U4i/dGS6ZJNhgke1TdN/zC1LljSkqTJzjeOnU75QyK3/y5jOrzTElHgMs2rBnb8t
	JeL17uuKXCa7XyDAzX2O3duLYDRM4HOf0oWqPkXOXWmO7Jvvz4YHwvj9fnx92utKOAQjqPhy2QzHq
	T8iKnTm9JyURfu+GtIDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRbQ-00EYwj-Kg; Wed, 28 Sep 2022 07:35:32 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRa7-00EYB6-Ny
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 07:34:13 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bu25so17198880lfb.3
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 00:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W84wrHvVvAgWhyh1WS/eLy6/o7Le2iFXNrohu7GUsCk=;
        b=NBAnH1KSEUqlchKnxRsgUvFEv9abO5xjXfHwbhygSEOQVMkUlrbPqLu4kzyW/v5vkT
         hf9Z/UL6un8qpptuEiDHQmkzduE+XekrebEoYp6CwU3pQJKQ7M0jx33VZbjgBeUHWUlO
         xqwQ9yoNjMehBIQhzakLFglLgdkpNM8LJy24ygJ964lTnbV/OzJJEKPdi0oy8esg5M9q
         S7JJXnwOrxJS438SXJcPp+wyiqg88B4HjbwO2OZQjQUu3hTzfxxMU5ehFmZmv30IOjaX
         xwBUIa6xYf32/K2WPRsKOKlejej5lml/aDenDWAtLAt1xcpRhp4I+E/HfzLRAwmn8nFk
         O3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W84wrHvVvAgWhyh1WS/eLy6/o7Le2iFXNrohu7GUsCk=;
        b=B7TtN8ReSQPmIsYeK+joi6zHCmSG9UMVmAvitDcElosMkR2VkZp1nWl1oJiYW1ejJw
         h/slc66Fuwn0PSR5XJ0wTekPdzGwUuoBuChjwdxxm9s1rVycCSO5xzLwkPzHExR0mkjG
         u6TY4JwZ703tGOBPMZU5yzY297S/jHRMihDj0L28csVebtQJH+SaGHcSIUswD6EgjVU6
         jGAoxwyJ8zb71+GCaCysYe1FXMWzZTrWDUGSn2ViX8bfXPDsZozTF2I1Yxl7GXhc4Xkg
         31quDJ2JH5iTghjU0iU/RHtw6AX5stXIxo1sCFKytRjJSTBoW0mhYQHGd/aVpribwwKF
         q0PA==
X-Gm-Message-State: ACrzQf2qAEYWpxRC0TU7xOoJ69XAMGEqljxtcsKgFfR4n1a+jcRCxOoK
	n3ESyhZAiQiXjWva4RPz36xfIg==
X-Google-Smtp-Source: AMsMyM4s9FD4pbLqo1tYHW7wHCeJO/EhwQuexdGfirp3jEWQdNrKBFwJ9RvGgx9b18FtcGBH/PMTlw==
X-Received: by 2002:a05:6512:1325:b0:4a1:d80e:1cd5 with SMTP id x37-20020a056512132500b004a1d80e1cd5mr5194661lfu.497.1664350447109;
        Wed, 28 Sep 2022 00:34:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v9-20020a056512348900b0049465afdd38sm395786lfr.108.2022.09.28.00.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:34:06 -0700 (PDT)
Message-ID: <0e53c7c8-e04c-5a87-9703-02748b64e491@linaro.org>
Date: Wed, 28 Sep 2022 09:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 02/13] arm64: dts: rockchip: Add Hardkernel ODROID-M1
 board
Content-Language: en-US
To: Aurelien Jarno <aurelien@aurel32.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
 <20220926183727.1893566-3-aurelien@aurel32.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220926183727.1893566-3-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_003411_830691_DECD8F01 
X-CRM114-Status: GOOD (  16.26  )
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

On 26/09/2022 20:37, Aurelien Jarno wrote:
> From: Dongjin Kim <tobetter@gmail.com>
> 
> This patch is to add a device tree for new board Hardkernel ODROID-M1
> based on Rockchip RK3568, includes basic peripherals -
> uart/eMMC/uSD/i2c and on-board ethernet.

Thank you for your patch. There is something to discuss/improve.


> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> [aurelien@aurel32.net: addressed issues from initial review]
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 414 ++++++++++++++++++
>  2 files changed, 415 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..12e2ef73fe80 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -66,3 +66,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb

Mismatched order.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
