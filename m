Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075A3FA3741
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 14:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aIK1qHGBUAEwZO6vDTSV1tFN/ZDEWmiRau/F+Vr2j4=; b=sLTzyipoNW1IJ8
	A62q/6Pappdgzb/VkwuNmUM/kabOiZcmBLPX5f9bNoYyUpcICxW00epCOaX0xxpzTZiUwUMJBkIjX
	HKTA58y8ohyyp57wUOAfE8T3Kl8m2X+32WfxONsLxHY0bgVo0ovJpiQmDC6SG2+BODcrKM2f78b8G
	RBHitWrMmvv0+fdzhOVL/+1vxPBszY4BI0n8FanbWmz5xwXfMRF/7el8mss4fWS1UBxLKu9l+4TwQ
	rBpP3mfhMN59LKleSBLBXIPE1lmr7QqEiLWEhuqE7xrrVvp/3bXnMZjIv/Qm/HbSG5bLh+TqdV3nq
	MeV/Ke/S2QIdJle9HboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4Hc-00DuBj-Sa; Thu, 27 Oct 2022 14:55:00 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo4H6-00DtyI-D7
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 14:54:34 +0000
Received: by mail-qk1-x729.google.com with SMTP id j21so1069165qkk.9
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 07:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nfbp8pspODEp+xRWH3kwW0z3nJyD6n0aVJFt78h3zaQ=;
        b=fSojX1LB55TUNsmuvX/srESk17bNDXREqM56f4nZb0T4+9OPmC75XPLFnWY3Rkqqf2
         hZJY5f51Y57FVj2WPAM1Ad1Wm4KoVcpPJ6mAGTcA8EtsoFDNTt46u4Ord36f7zLR+6DZ
         7a/Pnmjn8qUi2WqQUgNOfkmv7erH+HiwWz1oUp8Kgyby992HZsnsfUqVzcBczhhxgH3Y
         cGtL8xOrXK3i2O3x+Hs2+eMbz2eaNqnDFrw5wT+gCZ5jOQIsZ7aEv51UqMxensCgE3lG
         MR9QzIP58v4+ftlCoGCd+vXCcfvVTqKW0ZRVJy6/CPGJbXysJFn+RWmqfYROhFq4TEbA
         vbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nfbp8pspODEp+xRWH3kwW0z3nJyD6n0aVJFt78h3zaQ=;
        b=d3ElxTxzl4e2x80gmXxpNeJNqMVYFIjU6pQgsm7won+YVuC0WyCOaY6oVfiLcwMCov
         7oOZw/llqD9cEY9GCJL8uqRxOO2gb9sZhiFzHyuTXikb8G+dfzb31lymsUyzR9bcTKHQ
         Oix8juDYj4i94J70G6Z7a6uc9ZVUpoWEXB11tCKpg6hisxD5F1q1A/HQHHE5z0Z0dY3h
         2dl5p2zIOgLFJTIM2jI/b3LcCRtL5mnX8KVWFjBJQoIu64uuMI27oKQNZgC99bYFg27o
         iDHIbgsSprHIDGft61pjOZEt58A4/MkY9npWvBYX8+/6jL5ugdcGtmLJ1oRWIX2ZflvQ
         //EA==
X-Gm-Message-State: ACrzQf06W0CaxDdgDy6KwcBqaRY9ZjiC9IgFlhwh4t5G3NCj1anNXiJA
	H6fYZ9C4J9Qy0Bb67P4WRSiAnA==
X-Google-Smtp-Source: AMsMyM4DLzuxFqJwhZ46bXuWKN9iZ8lXhey8EdTFtw+NyLQ3GG4BP4qXN0IZ8R2Zt0qhU1YQijwceA==
X-Received: by 2002:a05:620a:4245:b0:6d7:6d51:f66e with SMTP id w5-20020a05620a424500b006d76d51f66emr34344135qko.617.1666882466686;
        Thu, 27 Oct 2022 07:54:26 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bs15-20020a05620a470f00b006ec09d7d357sm1125319qkb.47.2022.10.27.07.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 07:54:26 -0700 (PDT)
Message-ID: <4b32310e-2f93-66ea-aa94-ceff3f0523d9@linaro.org>
Date: Thu, 27 Oct 2022 10:54:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/4] dt-bindings: timer: rockchip: add
 rockchip,rk3128-timer
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com,
 heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
 <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_075428_515555_ADC41DD8 
X-CRM114-Status: UNSURE (   5.64  )
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

On 26/10/2022 20:52, Johan Jonker wrote:
> Add rockchip,rk3128-timer compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
