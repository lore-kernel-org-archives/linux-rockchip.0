Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C07ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Sep 2022 13:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpCKWsEpbzvtZHXxfji/C9wGWGOQ7GmdiQJnYAAUrP0=; b=xi69eUCTPanGDr
	3rloC7Clf2wrnuZZU3CSxIwpcaoqg7nhXkPS2vbSWfF15pJkgqE/RikP43H7fIe3JGHFfzbBxITi/
	oWEj3TGnSGjfiYHW19FXFXO5vxS3nG4/0yE/cO6CO3NGzEwGdeBcIwoiCnzax7ciOKOHz4ViNL01Z
	2Oq1N43esd2e+lsGywFVsb0pL8v9rD2P/a1ACAXf0gQ1+/ELU00FSAzTTIxE5m+SVieBf8KmyVQfP
	iNIRV9wzmIeSwdFrq03KXK8tDG2beG2YKmggnbpmRWKSIUX8sJNha44pQNb4Lxkx5SEktQPTJkvE2
	wvT0OQlf5w4dpI99PWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXN5P-0026R4-6X; Sun, 11 Sep 2022 13:33:23 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXN5M-0026OY-3W
	for linux-rockchip@lists.infradead.org; Sun, 11 Sep 2022 13:33:21 +0000
Received: by mail-lj1-x22d.google.com with SMTP id x10so7620346ljq.4
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Sep 2022 06:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1sv+9GxZvTQ6143OU1z3a5G2/CCtID2mF5c13ibNQWk=;
        b=r4ivx5eUaC7hZcbI49hnJCtaTwlnzOAksk2x6q5NpjBXXyPnSbEKAo4qgQPEMQNGut
         Wh8iWJ84mLw+M0eURiyatCIrakY3JPIkiJQLpYQrr2z8XPIfs25m6iJ/rWJf3yhRUD1l
         HxixAOJ0nw+zWo0LpeacuEf2EMlGbDab76MT+RVS5ezYXWMb19ojwpCMGwY5skCEARXt
         eDZoMjE1Ql0mYpBfnHjVhW0Ed2KuNWGufSL38U8pceJjYsemya6xxEIj3EnxIE/fDH3c
         oA5+Ua1WEutIscLTz9YKEJLGaLy5qN+rTwxY7vX/mMu345C/ihDH7MRX9dR/VQ58txpI
         CqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1sv+9GxZvTQ6143OU1z3a5G2/CCtID2mF5c13ibNQWk=;
        b=S6PE569lQifgD+tqFGoqsQpYueuT2RIYuNeg90vEAmcAn3MPdmH++gSPpEpFk9IH+S
         IPd2F4O8v1IhfpKZUuLlaIpLaPvkpadQuJNa3d6RnHknrVqvjWaI20DP5lQgQzq3ABKS
         VKK3evZH9zGuydv0/xBpcp09eyQDJzE8HUq8rhT+MHW+/7KMoH3kra3bnDGORoHZ5JqS
         5aH3jQHUCbWU5fPfSAor7mPNuA+NOkKIByeZ1e3oaFDSzAT7QGl2kkDNSTUB2NgJ1aBM
         2j5mNT/xQEvbffDD1a0M0x1ls4law6DccC993hyDje+MlOYCC0WwPE5pSEBelXeilk0Q
         MUWg==
X-Gm-Message-State: ACgBeo1Qly7Dx06c5nP9gQaVG/xuVfwkNX/fZ8jIJNLk5i/Ro1M1xPGN
	dg80bRXOk1owCfykgEFBAmBoFA==
X-Google-Smtp-Source: AA6agR5Tp89RJwNg77XkaWI6yk1Ms0Wp2i4w7/5dpQXI9Ww266DQD8DU98lSjmZiJz5yPRHVlZZDXA==
X-Received: by 2002:a2e:7201:0:b0:26b:dd49:721b with SMTP id n1-20020a2e7201000000b0026bdd49721bmr4383261ljc.509.1662903196477;
        Sun, 11 Sep 2022 06:33:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b15-20020a2eb90f000000b00261e7244887sm653164ljb.60.2022.09.11.06.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 06:33:15 -0700 (PDT)
Message-ID: <94a1dbec-c59a-5feb-3df3-6f4fb90eefe1@linaro.org>
Date: Sun, 11 Sep 2022 15:33:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1] dt-bindings: spi: rockchip: add power-domains property
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <64d03f6e-c578-3155-e3fb-53dbe53573eb@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <64d03f6e-c578-3155-e3fb-53dbe53573eb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_063320_202879_5468F65B 
X-CRM114-Status: UNSURE (   6.54  )
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

On 10/09/2022 20:56, Johan Jonker wrote:
> The Rockchip rk3399 TRM mentions that pd_sdioaudio includes
> sdio, spi, i2s and spdif. Add a power-domains property to
> reduce notifications with spi-rockchip.yaml.

Drop the last sentence - there are no notifications. Just write bindings
to match reality (hardware).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
