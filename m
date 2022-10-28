Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3CACFA3743
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 19:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUjdbp7qrJdAYJGwlnZb/sZ1CZK4kif/3r/G3HoY+Io=; b=su1JoT1ALG702C
	LQ9rITHUoVSVP3y0Rf3aTetF6cPPUe1OL8ACJurTkIAYSiMmZN4iqEKB1mzWNVhdZfyAd1HUZL7DR
	2SCSURHTLOEu0SEVrw7CvcDA5dHAbqpDT70LkRvSyyGwtYATZesPEok82mT3v5aXH3odzlGSdykbA
	Hi2iFbYCPE7ayIjpYydgAIZI/Iz2cO3sbqQhZsBjoX2D33PhDTYizmYzU2TZPrWPvp/7AhxG1MOQf
	Zxbn+jXWf3G7JjPvHekdstj9nSlr3JpEFtX4KWKqEyUOnBJ8fcCcu1k9J3RzqVEzSywOMJEVSRTVV
	xueTrGSopgJ64uafgAnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooVOn-0022EN-7O; Fri, 28 Oct 2022 19:52:13 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooVOk-0022C1-Bp
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 19:52:11 +0000
Received: by mail-qk1-x72a.google.com with SMTP id k4so1256716qkj.8
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 12:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CsD9s1yvz639ptfKfuBHdoorUpS4Rm79rq4T8AYZWSU=;
        b=i4klOO3g+5sHwqNlxCA/zCDOf09j3n3rdI0YsZaBjt3KKeNdKuKpksJ4tQ3/zh1Zpj
         +JqWZcj6htHQRG/hEKqXveWXHGGQ7f1kvv/III+A802AsQx1FN9PU0PjxUffR2f9V7HX
         IaazjiMzB/sUOnrCRaiBV2+QXXDHjnyBRcsmYdznQFzA8hYDq8q7qEe6NLCneTdLdb61
         /3hxCQHTr6TAqXjcvRsRvIj4/BVuxlnYBzVIwQ6KMWJioXtFEz6U1qJ8z1lqaI6UvWvS
         M1dzGJAtjUPxHbIZZM0zSV6aDbQ/HpHkBhtge7VHgNTgegz6m6wjpYmGVwWgHXUZLpdZ
         u07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CsD9s1yvz639ptfKfuBHdoorUpS4Rm79rq4T8AYZWSU=;
        b=DbMEI/+Y09XJQoX7fivX+Lvpily3i3kY02rV0jPQ0KXVtYWhhCrNObwY1oKzrFJHOb
         g5dlUQMB4DqpcGlK7bUOnc+fDVoXKqftrQ+oipYH+le/ZHaa9RlPNGqk4CA9Ptn16nQJ
         RwHx1CYl4rRRQgw1LQ+Oc5GGuo/X/l4Cjj2Zc0+m2O+XTfNjU+52tvxWLiVcAlD99YKf
         MKVO+9eJTFJ4n8ce/dlphMfaoGNAC2eaq6bmoOQP7ljLXlzKtVUj5WuUZcmYGMhhyU2z
         lUntKhjpxnVcnapyT2zTrSt+UgG3imQ4OYSqH/Spe0DslWZZfLUnH7p9F566GTLvyPGg
         yRiQ==
X-Gm-Message-State: ACrzQf1jgwyHlVU37JYVm2kaBotaXsrk/GnZVhi2l8vcNBUQ2v2MGHEe
	PH2O5s26gbCKZHRR8oER7Z6JUw==
X-Google-Smtp-Source: AMsMyM6NvkY9RwSA9ZQAQcXVqzQ7ep7mS6/5StIor3UEUXnGRCCtPj/cxgTUo3gRq6WHzNCvlcOeuw==
X-Received: by 2002:a37:308:0:b0:6f9:389a:3a49 with SMTP id 8-20020a370308000000b006f9389a3a49mr730869qkd.301.1666986727188;
        Fri, 28 Oct 2022 12:52:07 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id i16-20020a05620a405000b006eeb25369e9sm3604337qko.25.2022.10.28.12.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 12:52:06 -0700 (PDT)
Message-ID: <7e3b3e91-386b-a6aa-6247-42600248a8cb@linaro.org>
Date: Fri, 28 Oct 2022 15:52:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and
 RG353VS
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
 jagan@amarulasolutions.com, Chris Morgan <macromorgan@hotmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
 <20221028184045.13113-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028184045.13113-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_125210_460967_1ABB4E97 
X-CRM114-Status: UNSURE (   7.79  )
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

On 28/10/2022 14:40, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add entry for the Anbernic RG353V and RG353VS handheld devices.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
