Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4149FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 17:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnjcwxmCVTmwRNAGB/ZBSlAmFXC7kpSEd9YnY6BSWHM=; b=ZhHpcFRSL9P1Me
	cwRcyN5/5BBqji77oRCNRDhqFuf91L7vanLOSVswI7r0nQxxu5OuvdBPlaK7Uni+XFMA5Ve7ETrVH
	vUhAttOgUB7pferEYhKwv2dVAE+r+ahPo5wvYlyqfL+CQAYHGRiZPjncCC+gu/ebKtpSCzaIGQJ2r
	f2ddJTL50IBNW37xRNvnTPkQ5BujVDe1d6+UWtaWd2+gMcMoRQv3un+LT0PD09SNOml09uUiK36Av
	3WIwE/ANShY8Ej0En2sRCYeJtehNINUMxv293brrZWBagjywDaOA715GF3o0ICRN8+EUcUqTyjtM7
	6X/G5VGbY0z56qxF8SNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZcG3-00H0Ea-Pw; Wed, 30 Mar 2022 17:37:23 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZcG1-00H0DX-DN
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 17:37:22 +0000
Received: by mail-ed1-x533.google.com with SMTP id g20so25296938edw.6
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 10:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=37nZjpO60xxhw+JhGH6lR+UcPHceWR6JokhRQOsZJzc=;
 b=Y9OImyp0CCzDW/sTETs6Oeh2Q8dOngiPcTEP4MIS7vr96udYAzC8rHKECvJDt9Eqzl
 4iukmxPudcgcFH0/jRiF2Q7fGJuzrWddCoVl5lEdBWbtZ6raVW08IvYiThZ3+PJ6lBCW
 5Lwz0bIWijGZ/1V4jIy8BFVXf6M8XSkrl4NrOf/uBcQ1fL+StwDXfNPnoOz25WnKKavD
 eVuIaibiVjpIICWqLyuGzG1WxP3PhlOjDWgbTTmGpbX/fubtIR1AfA4Nzdk1h8aIgA3j
 egKxhxYEMU6YyRo5jnrAroMzW0mT8otY02piLFs7NdeAdHpFFss8nCbWEmUbpxBKR9Wb
 kbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=37nZjpO60xxhw+JhGH6lR+UcPHceWR6JokhRQOsZJzc=;
 b=hzcx7Xb+5u6f6w7K5hy9KatGrHZlQoAA34mLVNymYp7RoU1U0lz1zT+4xMKYgmav0l
 +VhmzmmGPuLaYKZ9iJwDKMvueNGKzFBgilPzaT57D/B1Wk81sL/ePymFXoVJU5JKyIF5
 oDYdTLv2jjXfTMBSt4cT3kJYGDrUU/m7FDQvZDqeWWkM0phocSqXJyBT5k6GKynLznmb
 RfY5BmNlKjGCtFmmzmmXGlbr+ft/Trdh36rcCyRCEfZSGLRbaltIlfws/U15SoirTf1d
 1QAP/Z0dy9RDiJWyJnkrpKKYzxIWD2hvI0w1u+SPa2hZ7ZNn3VnxwWsPBR8Y9frUG+dl
 jyig==
X-Gm-Message-State: AOAM532YbftVBiZE66BBOqb32G9g5W4mY9/LvfEQ4SA7HQ2w5Q9wuAK5
 nAq+w34p2x/Wj4/cb969FHhyhQ==
X-Google-Smtp-Source: ABdhPJz7vZ9tC2lfdY7bX8RqCZsPKm+v2cUMHBva3FJdit23w5ftndodH19y545GvEWK2Lzj6vutNg==
X-Received: by 2002:a50:ff02:0:b0:418:e736:e003 with SMTP id
 a2-20020a50ff02000000b00418e736e003mr12208703edu.370.1648661839135; 
 Wed, 30 Mar 2022 10:37:19 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 bx5-20020a0564020b4500b00418fca53406sm9911169edb.27.2022.03.30.10.37.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:37:18 -0700 (PDT)
Message-ID: <569026b9-b73d-b8fb-c32f-8ed920bb73f4@linaro.org>
Date: Wed, 30 Mar 2022 19:37:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert
 rockchip,rk3228-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330121923.24240-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330121923.24240-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_103721_486864_0C35D598 
X-CRM114-Status: GOOD (  10.32  )
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

On 30/03/2022 14:19, Johan Jonker wrote:
> Convert rockchip,rk3228-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3228-cru.txt    | 58 ---------------
>  .../bindings/clock/rockchip,rk3228-cru.yaml   | 74 +++++++++++++++++++
>  2 files changed, 74 insertions(+), 58 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
