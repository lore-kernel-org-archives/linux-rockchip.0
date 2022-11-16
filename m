Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E05BC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 12:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwIsgCYGLRYt4R5S+xkND3p8Pr9M5Gsnd4V/sxgB3vg=; b=Mx2npcngSIqDaN
	L3xIemC18ghh/yMpYP7tIsO1/SoFm4/yedILAzNWGPfy/F8QA9EgtrYHGmgCKTnP5Di6OHkbKanqE
	xj0Vtp1ZTZkMvWbsT/j6UL3FOkaJmymVWdgRFe0SeQP2ZoIVnfKUW2jy6wFy1qNjqpsAJpnjHUbVR
	crq93ziLI2vQZgErxUbKaM9f/NJEwBh3lUNruaV9qLucyaKPccClWrZQJntitM279xB5TOIFbO90+
	THfXJBPkyJPHQF32jGlYoCQYdQWENXaAJsMt5IEIX45e0i0o4xXrk8p6hDAqP/PCNw4hDDvq7vBE5
	DGaipG66DV515G/Imwcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHqN-003ZQf-SN; Wed, 16 Nov 2022 12:48:43 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHpX-003YsU-86
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 12:47:54 +0000
Received: by mail-lj1-x230.google.com with SMTP id t10so21715722ljj.0
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Nov 2022 04:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ApBIfEwo885xQmDpuBZQZ4uu/5xCkclin3S53sCvBW0=;
        b=lYKfDA6BG2sTTpH7gEBNo4cGkODqXpIzDwGoglpxZDVc5BpDyaNBj20ihPyKjg5E8K
         JxVUw6D8O1Gc3dj0TYqv03DiDRf2bN88xe2SCGVMZf86/2F/jM5ixaiaexYwju2gobUt
         sgdUqhxoNUzIRfp0ga2mzDRuAkjfv0FocGZQsdlc/MrDXZqUxZ7BGNArZJUPUJKqf21M
         0OZMUOjSrpcfXoE46qsWzW85ORqL8Rjr7oajM135h9W8vbDU1KaexCyEBj+PwQU11HnX
         3hUUZO6Wa/Bflef4xmf2tDWYq53v5KpVkziA2lhlMFIOXOMuaU6Es5DtQ8ylDArgzwFM
         +dHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ApBIfEwo885xQmDpuBZQZ4uu/5xCkclin3S53sCvBW0=;
        b=TZCQsGXOZHzSj1I08p83vtv99IXDKuCrE0CFp/uN5Z7zs6q9umyqiI1ZfXJpalN24N
         V/9Uka2ejXy/p6x13F5KaiFAAZABc2Of9ieqBXToGrRnOpuuEXvf85MJ4I3NO7Cjv2PT
         zuI6jxWf4hvH7vHMJQr+t0QljrXAZaaI/NcBgZGNCdLvrwqt77wm4oH16C7qViBAccjB
         5PkzXXroTletxFHgi29VgrwJulpXXmK/3X7ci61pE+ZhjfdNUbncvY5WiIL3pr59cW/E
         F7s0MpF6I/b00VGeix+O/05Fm/GVdXT+otck+9714zEJMf0vmjuDuuxS8RyMbYWXbdHL
         9KMA==
X-Gm-Message-State: ANoB5pmd6zBVdL1kF91u5rJmngiGLULdPpZ46EbaI4aNv5/FZJs/C/78
	LanjuVOGoqWp3k/Hs54JnqPEJg==
X-Google-Smtp-Source: AA0mqf44eCR7hbsG78OJeZYWtRWIaFn9x1lu0KtuyV6erCUj4leLCb3kXt25JP97j/F6tV7KQq3ozA==
X-Received: by 2002:a05:651c:198c:b0:26f:be44:5349 with SMTP id bx12-20020a05651c198c00b0026fbe445349mr7433580ljb.348.1668602865849;
        Wed, 16 Nov 2022 04:47:45 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o14-20020ac24e8e000000b004a93b8508edsm2584064lfr.181.2022.11.16.04.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 04:47:45 -0800 (PST)
Message-ID: <b98026c7-4e54-025d-cf90-61054e887dd3@linaro.org>
Date: Wed, 16 Nov 2022 13:47:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: rockchip: Add SOQuartz Model A
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
 <20221116115337.541601-4-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116115337.541601-4-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_044751_368335_B7161D72 
X-CRM114-Status: GOOD (  10.77  )
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

On 16/11/2022 12:53, Nicolas Frattaroli wrote:
> The SOQuartz Model A base board is a carrier board for the CM4
> form factor, designed around the PINE64 SOQuartz CM4 SoM.
> 
> The board sports "Model A" dimensions like the Quartz64 Model A,
> but is not to be confused with that.
> 
> As for I/O, it features USB 2 ports, Gigabit Ethernet, a PCIe 2
> x1 slot, HDMI, a 40-pin GPIO header, CSI/DSI connectors, an eDP
> flat-flex cable connector, a 12V DC barrel jack for power input
> and power/reset buttons as well as a microSD card slot.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
