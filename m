Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBD8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:To:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ebt2mW1CJ31iEwafVqueVfEJG9TBFVMWWzyp6tn/ULw=; b=MealQHjxQi9k5hMDz3WAYDD50V
	YcPcJE+WwROH3JWnK0WuYQjko6IasPuOnP5tRtrsvfu8mIgG1jOxAM2HehO9eW9yJ1S7fcUsyMAwp
	x7sMDopNyw7nGetLsMZ8+ng0fz3bcYSRgHQL7S7Bx7RBcxw096Vx1zPpq1UCAcvSqjIeS+qcIYO5f
	FXEJFxh0oJZiCcWzbqhX3zOW+dLPygwXpNfQYdeJPO2I06lfd5yAACQr97uqSv6wbt7Flc4FkJPwp
	yXrvE5hDgPdDkbFNeBmTizEBoZa9UfU0jeLLlSQVJ/ldTKKt4obEtavXD4ngTTuO3kXpIEGyoEhSl
	/7oW097g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYmuv-008ExO-21; Mon, 28 Mar 2022 10:48:09 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYmuc-008ErT-Tt; Mon, 28 Mar 2022 10:47:52 +0000
Received: by mail-wr1-x431.google.com with SMTP id m30so19772559wrb.1;
 Mon, 28 Mar 2022 03:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=S4BUcd6hJObrfpqKxdRcJRoKACX0pcH5PLnHV9ghRjU=;
 b=B9rhYXNFCJG8FVrCwa5K+POuffvNj9XzTQKCajpz8pCCAe58zDB/aU9DL5fqtqJWAI
 ky54WS/d9TWKJ7aQI2ZqzXMkcPHxKAbOnYADOVDTZRl4K4EZ6nKuXHMRMOUlTa3pZvcK
 Y8cetVauSkzbUxvUnWzmQRJ7x7hfdMpVLYHTE3/Ae2k2izID9wHS/jw5EaXtUzwHEHAR
 K1L5smUPkm9azb41ja7r0hy1dRp/X4/xrOgLDr5HfLY+yO2hJuHnUmcoNrEBPPoA5ZAp
 n8/SKRsojeJxYPxX0tjb6jEnopKhJ1kNHYloxuyu3SfO3NpPdbAhGWlCkOMUqOnXfwdd
 bWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=S4BUcd6hJObrfpqKxdRcJRoKACX0pcH5PLnHV9ghRjU=;
 b=mGa7It90BhnznYGTUYgZoi4KZ6E6zbvCo35rStmGHLt0h7BCYuMvx0LUuAJBtkaaN5
 7JWZfGDwiZBkzbwQWM6g5lD8ZO6qOBYZqkeg7UdLYDhKOJKQ7v+CSLWd/ej3tzj2ndHL
 gZrwYxtU3BgklTLxpoEuo240zt6TonVMFKA1TShrhLSWhF4lRwt1YhtZrf14MprZVpBP
 sYCBLb5sLY5JTOy3aHT9cMPegj3JRyCZ3+lP3FV7JSkXHFRSctK+SmjKLo4u51dv2cZj
 aYFIFrAZlCk2z9ymmkCRW1yiA73WEijksHwB7GbriTiNb9D+AjFZuA7zra3y4Y6tIbVN
 qGVg==
X-Gm-Message-State: AOAM531POArGPy/vX8J0+sBl+Y5k5OYdM0JSJ96vONxeWaV26K/lyljv
 +aDGIT3zSGLbOQRS/9orR2PaTIzvsmOsMQ==
X-Google-Smtp-Source: ABdhPJxpNsUPF4FVDfJw3TgkeBx1g5iROwUOuCmVKrZ2Kp8QiOuC95uyQZ19znx7Kf29FzrQ8qx3og==
X-Received: by 2002:a5d:404c:0:b0:203:ea4e:3c07 with SMTP id
 w12-20020a5d404c000000b00203ea4e3c07mr22646484wrp.597.1648464468913; 
 Mon, 28 Mar 2022 03:47:48 -0700 (PDT)
Received: from [192.168.0.32] ([137.101.87.65])
 by smtp.gmail.com with ESMTPSA id
 l19-20020a05600c4f1300b0038cb924c3d7sm11665275wmq.45.2022.03.28.03.47.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 03:47:48 -0700 (PDT)
Message-ID: <c5eeca79-38b6-eb9f-1d78-1685aa1cca6c@gmail.com>
Date: Mon, 28 Mar 2022 12:47:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ansuel Smith <ansuelsmth@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-oxnas@groups.io, linux-arm-msm@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <20220328000915.15041-2-ansuelsmth@gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [RFC PATCH 1/1] ARM/arm64: categorize dts in arm dir and fix
 dependency in arm64
In-Reply-To: <20220328000915.15041-2-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_034751_006050_3071915F 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 28/03/2022 02:09, Ansuel Smith wrote:
> - Categorize every dts in arm directory in subdirectory
> - Fix Makefile to address for the arm subdirectory
> - Fix any arm64 dependency
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
[...]
>   arch/arm/boot/dts/mediatek/Makefile           |   14 +
>   .../boot/dts/{ => mediatek}/mt2701-evb.dts    |    0
>   .../boot/dts/{ => mediatek}/mt2701-pinfunc.h  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt2701.dtsi  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt6323.dtsi  |    0
>   .../boot/dts/{ => mediatek}/mt6580-evbp1.dts  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt6580.dtsi  |    0
>   .../mt6582-prestigio-pmt5008-3g.dts           |    0
>   arch/arm/boot/dts/{ => mediatek}/mt6582.dtsi  |    0
>   .../dts/{ => mediatek}/mt6589-aquaris5.dts    |    0
>   .../{ => mediatek}/mt6589-fairphone-fp1.dts   |    0
>   arch/arm/boot/dts/{ => mediatek}/mt6589.dtsi  |    0
>   .../boot/dts/{ => mediatek}/mt6592-evb.dts    |    0
>   arch/arm/boot/dts/{ => mediatek}/mt6592.dtsi  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt7623.dtsi  |    0
>   .../dts/{ => mediatek}/mt7623a-rfb-emmc.dts   |    0
>   .../dts/{ => mediatek}/mt7623a-rfb-nand.dts   |    0
>   arch/arm/boot/dts/{ => mediatek}/mt7623a.dtsi |    0
>   .../mt7623n-bananapi-bpi-r2.dts               |    0
>   .../dts/{ => mediatek}/mt7623n-rfb-emmc.dts   |    0
>   arch/arm/boot/dts/{ => mediatek}/mt7623n.dtsi |    0
>   .../boot/dts/{ => mediatek}/mt7629-rfb.dts    |    0
>   arch/arm/boot/dts/{ => mediatek}/mt7629.dtsi  |    0
>   .../boot/dts/{ => mediatek}/mt8127-moose.dts  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt8127.dtsi  |    0
>   .../boot/dts/{ => mediatek}/mt8135-evbp1.dts  |    0
>   arch/arm/boot/dts/{ => mediatek}/mt8135.dtsi  |    0

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

Would it be possible to also script a fix for the MAINTAINERS file?

$ git grep "arch\/arm\/boot\/dts" MAINTAINERS |wc -l

101


Regards,
Matthias

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
