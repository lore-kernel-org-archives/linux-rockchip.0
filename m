Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA38AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 17:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS3RaMUUk4LDeJicnTo9zhg5uGAu6WM9G/otfXEfBIE=; b=z1duD5pjUHo9LJ
	1jQegsyGccO8Jv+oPrdaa+o6Qtrzl6hFMDpFiK1/5W/VVZGNLXOYaqRyV0/7yQK4sDpxra7cVRlr8
	GSBy5JTfRqTqCVV/S0FQZ13wN+eq4dSPQdQpRCf8T1ToyhaPM6w0oPWG9cEHiBQq0t1IG6SF+7i0S
	FueaNdUiElwXhEA1LY4P2Gkud0BCHu6xON3wdtxrM4DL/TePZjXiN/pLaHbWA8eu5KlICagDphwnt
	zq5exvL/QDHDHnmROBnSmCmQ+obZwCrPikkczVmu9tG1UTq4KHqaAREJ7ECjEVsUq11QDqr+d1zaE
	MVarKRJ35KmXezrgX+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZc96-00GyIq-Lk; Wed, 30 Mar 2022 17:30:12 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZc8u-00GyF7-1y
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 17:30:01 +0000
Received: by mail-ej1-x631.google.com with SMTP id bq8so28993918ejb.10
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=8RYwAvBPCF9XywmD5fq7tSXm3lAPT2CAJaEKfYpH8zw=;
 b=LG/yMpN6NpgF4fravYALNyn8Z5WGt53sXTuV1PC+ngbiN/7ipmlqZ57lAquQSdkcIM
 uZPy4yJYSr65rs4n3AOH+xViW19g+HOydHiY67zDD0VXYCEO3M+WOomhAYyWQQfepSp8
 JqdeM1eF4oynMiKUeKFN7+1UoO+9fWwFb2Wrr/40W8zfuok9D/YZQ1nwxkgr1yobZYmb
 7Q+G7uMcYavkas+kglUE3rr8cXUAF7ZIXsN2+n+aR5mr9Zo9sBQDiqJ3Lplyv0fjxfJN
 67KHJFm4dXJFT3V4A3W8ot6EmAK+9Vuz1LhAppf5gyxJsAmx96GRsgYmYYtq9HCf9pRu
 /cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=8RYwAvBPCF9XywmD5fq7tSXm3lAPT2CAJaEKfYpH8zw=;
 b=vwcTm0WLZCUh5QTcY+M7Yd/sK218sosaL+M2cfA4ULAAGWNG4/klDUfwlVhsD7blU3
 IAfXYXJPI78KqttGINgQ+c0tRPT1F9GsX6hlMcDVOp+Fou21wVZswqcOQ99lOGzF0dWL
 KMbniGCiZqZIOc0uEG1dUj2qGBREge9lOdDH5J5qQuypbOBQMejJtc/C+VyVOCjmQZsh
 sQ1xSeM1OFSjDKAW4E8bqYZq3g1OaTH7HEQvZ2hrcA289jGBe8ThLIl1jz4AEJUPGmD9
 8PjDczzGO36jO5RkZ/sMeYh9ApT2OOmhEO+CueBGxXW+0G38VxwVkJD7cu5RE6Mz+2gL
 8Tng==
X-Gm-Message-State: AOAM533cZJn+41qYDFfm72zzUY7VGYTyKA10QCWx+c7msHmn04YDQ+7/
 2zUeLw74NRrlwecLU1HRF1F1RQ==
X-Google-Smtp-Source: ABdhPJzhS6l1JJpOIoK7pFJfry86N833UfxNZtRsxE3AFXcn0vHARsduaous2MKRJDLZHrwE7lnd4Q==
X-Received: by 2002:a17:907:c0c:b0:6d1:8c46:6415 with SMTP id
 ga12-20020a1709070c0c00b006d18c466415mr727138ejc.326.1648661398642; 
 Wed, 30 Mar 2022 10:29:58 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 s14-20020aa7cb0e000000b00410bf015567sm9809537edt.92.2022.03.30.10.29.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:29:58 -0700 (PDT)
Message-ID: <3ad8621e-7a67-d586-5ae7-020be4d35f7a@linaro.org>
Date: Wed, 30 Mar 2022 19:29:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036: use generic node name
 for dma
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330114847.18633-1-jbx6244@gmail.com>
 <20220330114847.18633-3-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330114847.18633-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_103000_120067_144E2BA9 
X-CRM114-Status: GOOD (  11.62  )
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

On 30/03/2022 13:48, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3036 dma node
> and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
