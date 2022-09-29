Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65433C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 22:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ado2gPl3fj6O36b3UZIdxphIJWE9D4kGvd9V43BPIQ=; b=nJdQvv+YdhyYfI
	OSpcpTMm6Uslt9iPYND681VT67bC8cQfphdWvsHeh5pmV7fVKC2UBbC4nWrTHUeHagocrhEjdvS+4
	42qvIgckFjuZJY/561atqbFdt6F7we08TL3R7mSt5Ak7zT+99J4JgfZ0he8LH/huHhJzTh0l8ayJM
	fRrnbTeJ1J/JK2kKOx3DGiT5Y873ybOJrsT8mjywVb5YJpTGCmeLPTa1YbjtUOcbSZDIkzT1AZobX
	tpLvgCG+kRtC0am+/3c1V9Zcz+aHljhpz8RhQns7fwvDZOWBS3FJXD5xn9CMjnbR+SaOSURi0Xqh1
	li22WDMw5nz35F+7+Xaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe1oi-005eRW-N0; Thu, 29 Sep 2022 22:15:40 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe1of-005eQ9-J7; Thu, 29 Sep 2022 22:15:39 +0000
Received: by mail-oi1-f175.google.com with SMTP id t62so3005991oie.10;
        Thu, 29 Sep 2022 15:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=4BfKtAN74BiuLXzY75ghMuhJ1sBHsY4RPott4OBX9j8=;
        b=S3W0HnyAp8Xk5P+dCoMim2HDY2p5tsgiLy/qXQpCLWcW+1gFcE2VDjbm01MaKAJICX
         5odO5g9r/n1WtOrbJHdrmTPYvhQYmM/VJVfythLaJ/pz9rP79aVpe76fnYPCrHC2HyPq
         cB9Q3WCcHwPuo2P9YCXdu+rkceNK2NXl2HXM/CB6QVOdvmgVT11m/JnIGo7UaCtvdHAy
         zHNGhSSvC7lOwCPbtBkWwutKLIBC43Dz4zLpVqG3oqOEttjh9EZEniABebJVkzr+XPwz
         w24XmS6sKvykImunssnth0uC5nMTsxaY+D5AwsOBKA+0bLUfwiWDnTpEa43O/PF/4bW4
         M77w==
X-Gm-Message-State: ACrzQf3/hvTDL7JZHa495vQ6at9DDibHG4vaVIr0Cq1tMm1MkUBHQrx/
	iTfPsYPpKAmAvXogmXhduvQqzBTdxA==
X-Google-Smtp-Source: AMsMyM793Cd8u3q+sjWrpJjjLQ0fbvmUagt931/u0RIvCAWtOjG21n+skk3xFBtXE3Ry/fZOtKPL0Q==
X-Received: by 2002:a05:6808:d46:b0:350:cba9:1981 with SMTP id w6-20020a0568080d4600b00350cba91981mr7922656oik.130.1664489736371;
        Thu, 29 Sep 2022 15:15:36 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x65-20020a9d37c7000000b0065bf42c967fsm210418otb.19.2022.09.29.15.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 15:15:35 -0700 (PDT)
Received: (nullmailer pid 2863698 invoked by uid 1000);
	Thu, 29 Sep 2022 22:15:35 -0000
Date: Thu, 29 Sep 2022 17:15:35 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, herbert@gondor.apana.org.au, devicetree@vger.kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, davem@davemloft.net, linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Subject: Re: [PATCH RFT 2/5] dt-bindings: crypto: add support for
 rockchip,crypto-rk3588
Message-ID: <166448973449.2863631.5987990052207072258.robh@kernel.org>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
 <20220927080048.3151911-3-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927080048.3151911-3-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_151537_640876_357E8AE0 
X-CRM114-Status: UNSURE (   9.74  )
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

On Tue, 27 Sep 2022 08:00:45 +0000, Corentin Labbe wrote:
> Add device tree binding documentation for the Rockchip cryptographic
> offloader V2.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3588-crypto.yaml        | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
