Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9116EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 22:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRgp1DsSxuUH/g79HEc5XM4u5ZVhTfCgZPLvHA4SRhs=; b=Cj1Nfno/MRielY
	K11IJYXy3rrHdJ5Vfy/4gHPavk54Q0CGNtjmlasv/zJRSp8cDv4832w9YHcQT6dkvj21m1oHv21xd
	PlyEjbnNSog6yma1srB6Zrb+Uc/YbkftLwzBsfkSGErkjUpEYr3Q327tPrS8DJMk84M6awfn7EqhR
	5uKpVM2UtmPnBOPushQT3sEf0F5YI4iYSUBJbutc/b9TvGBn1mqPvW25XC0jDYX6yuxhs6hxXC8fV
	D9R42A0KpbgqH0ILaUNu0HTBT5R90d3rA+cKAn2Wovdjp9XJahrMASvSU8s5rOw1H4Dc2WVeN9pjY
	za0n5kUJSlQVvHGekDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nsBP7-00Epai-DF; Fri, 20 May 2022 22:47:29 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nsBP4-00EpZX-Jd; Fri, 20 May 2022 22:47:27 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-edf3b6b0f2so11854893fac.9; 
 Fri, 20 May 2022 15:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=u4R4HL1CccLMyjJa3KDF9+5IZQqrErKeOe9qyzr40zI=;
 b=UFmFM/g3m/L2kySsLybEbn2ugVjRCSCsjYwu1dW23KkJP5gFbS+KQlLHon3H6xZ96T
 WFrww97x4HAD6tPoIfsNg/9Ffo57auFhkiKcSmR3zvREFatOz9J2EDtazIyX63eHnF5I
 1MNcHWJYzw6D+HAilIFKcEnZMHKsm74fS3EnRD5X1hzccayiBWcCoFOE3DaJlSJBT7Yb
 R3KHJbhMUdMijIIdUlA7Hi5QSo6ex/41ffxlf1L9tXrld1B2B75vx7mdwvkF2K/ocLmT
 JLg6O60vvNTbTKx2/JCToXoE0FKKiWX1YVtDYNEHNL4drAW4hwqUiJGnwGSogzYvA5Nu
 VxfQ==
X-Gm-Message-State: AOAM533NL/jh54Weoj11RWFNMSstjBcKKyslp02stZtFuSzpfBrZoDDk
 SCAug6RAEkNr/e0NmQBV5CmqARq/1A==
X-Google-Smtp-Source: ABdhPJwdW+Tdz65h6ry0Oq7eN1HrHtplP8oRV3Q6PNvZ3m9WMfgL/C+eJKxxwfuac94FX1DXNrpTbQ==
X-Received: by 2002:a05:6871:554:b0:f1:7f92:7e67 with SMTP id
 t20-20020a056871055400b000f17f927e67mr7044878oal.124.1653086844501; 
 Fri, 20 May 2022 15:47:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 t187-20020aca5fc4000000b00325cda1ffb4sm1575818oib.51.2022.05.20.15.47.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 May 2022 15:47:23 -0700 (PDT)
Received: (nullmailer pid 395300 invoked by uid 1000);
 Fri, 20 May 2022 22:47:22 -0000
Date: Fri, 20 May 2022 17:47:22 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, lee.jones@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, sre@kernel.org,
 jon.lin@rock-chips.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [RESEND 1/4 v7] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20220520224722.GA389075-robh@kernel.org>
References: <20220520183037.2566-1-macroalpha82@gmail.com>
 <20220520183037.2566-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220520183037.2566-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_154726_685896_B8D632F4 
X-CRM114-Status: GOOD (  11.53  )
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

On Fri, May 20, 2022 at 01:30:34PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Note that this patch requires the following commit (still pending):
> https://lore.kernel.org/linux-rockchip/20220519161731.1168-1-macroalpha82@gmail.com/

And so the checks still won't run... :(

Looks like it should be fine to me though.

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
