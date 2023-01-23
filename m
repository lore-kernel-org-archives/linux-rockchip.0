Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99EEEC05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 08:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSm9MZ/7j+IY7F4pUyKZPpAtr1MDmwdHs1uPCuAk0q8=; b=p0BBTS7m/jzfxQ
	/j5wlADhHa10p0sZeTurR21HC78sjNxeE4YO7huygGBrs5z+YBX68SitqWcq5DXya36Wdo75gTOFG
	2Klao2+hCXP9+Lqi/tRMdzBK+60uPpRuVF4jR9ol/pXRXmkSL1KSTsQvX6diFRyI2SmLf31dQgqu8
	1Z7b34TYHXexPAs9ODimYUh6pw5U3FMYHEwD26MlIaprz3oHBRnucub7lU37VrjF4UZUof5MmPTZL
	KdO9W73vrfmfIMgVJjNqNryQO/k//UGRvfXEemi1si59zMXVO8h7U79b8lZIqMz3Op9kks1j3iyPL
	zABsDkCjdZTTdr+owMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJrkL-00GHWx-V0; Mon, 23 Jan 2023 08:00:05 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJrkB-00GHUh-OJ
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 07:59:57 +0000
Received: by mail-wr1-x431.google.com with SMTP id h12so5931928wrv.10
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 23:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idh6sx0e6uhCWn+KZqgehd2YjOqvGaInaktIuCtUf8g=;
        b=FBpZJvmEGnJZFPoSIBqK/DYJlDR5moUn8slQOcxtrkP/vC5b+rnXSmbtRr31ZVdn24
         JswmMyGTnaHHizXVPBqcgBk4CG3jm8u0e99tRYrtEENZYxmLcy6FXBR7E6AaHeELHTBP
         /UPh4vw+F2z2TutxmhwgVWiQCRbwhXnCfVvZ2MTHFoi53n635ty/kjHraf6G9Zey4PjP
         4Fq4HfBprgZFrgragb8sLD1A+zGveT16frO8v/6aLzrlP/L4VrbZ0SnoAwgrUTCyBhAH
         xRBrns1l65dcKTn0E1voIhfTfGjxuqPYe7zhHm9ogi6UCaQCrkV06cAy2qH0ECXpc6LA
         i+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idh6sx0e6uhCWn+KZqgehd2YjOqvGaInaktIuCtUf8g=;
        b=mX+cPYtsrOXMUx3oAaDRWKp905xu+NBL5BQ8rnK5ZEiE0BL06DlmZthw/q52cShFcw
         jNc36lt0VNiDczDCAkNj3QPn8fZufhvDcs2WeDL9yTCABtUAcJsj4Jiz1v8HiuOAqw5J
         vEoI4FjHspBrnWGNvsNGMgoXnrtvTkQ3MCkqvPLfbddAf+iM/ya7J43apsz8/49VLtZV
         jiZz3a/0t97lU7kpHNubphbswqZCoyzth1QpwylSkI1+MoFKFIkCwii1VHXDSk46AYtK
         VKb9UjxnSCw50rYp7pAS0eXysBEfsTkvDl47ptwFfhWlhwefunkCYzQyN2PZrk7E1VSY
         v2dg==
X-Gm-Message-State: AFqh2kqm6dNvqinxTjbLwGwpUXOVK3DiuHUqoXaiOVMU1ZkKAukYbdsy
	rl3X11JymIrkwkm6iYuysuAByg==
X-Google-Smtp-Source: AMrXdXshHBUNpPz/O/C/jW49E6Tp4olY81SmdIrKo/A9hQmADBvyCAT+q72/fo0mFOkX4M59F+/8SQ==
X-Received: by 2002:adf:fa88:0:b0:2bd:feb5:fb7b with SMTP id h8-20020adffa88000000b002bdfeb5fb7bmr19009713wrr.33.1674460793384;
        Sun, 22 Jan 2023 23:59:53 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m17-20020a056000025100b002b8fe58d6desm4153357wrz.62.2023.01.22.23.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 23:59:53 -0800 (PST)
Message-ID: <110befb9-090e-54e4-b669-ec81a89580e0@linaro.org>
Date: Mon, 23 Jan 2023 08:59:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_235955_818244_FA3557AD 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

On 23/01/2023 08:16, Jagan Teki wrote:
> The compatible string "radxa,radxa-cm3" referring the product name
> as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".
> 
> Fix the compatible strings.
> 
> Fixes: 24a28d3eb07d ("dt-bindings: arm: rockchip: Add Radxa Compute
> Module 3")
> Fixes: 7469ab529bca ("arm64: dts: rockchip: Add rk3566 based Radxa
> Compute Module 3")
> Fixes: 096ebfb74b19 ("arm64: dts: rockchip: Add Radxa Compute Module
> 3 IO board")
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Don't wrap the tags.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
