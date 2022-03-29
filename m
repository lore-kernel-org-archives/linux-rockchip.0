Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 387A1C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT9i/XjbYvLpGPe34pOVNmlPG7cNcnRPSLDM5zAP+70=; b=FLmxr8JMrHaVh4
	D/Qr0yrRac2hAgtTrr55wmsC6f1XT4huZCjCWLpDdj7UIUVLXSPfvdoS/wjqX/WWnLTN4Oh93vpSA
	f+/3tCntekCGiIqbIQcowr8k0JTLBYapEZ9C9+jQog+X5l+Y4dJI0g6F+ONjdE95ioljKvRKu2/Bs
	a3Gt5dso2sdB9OWVpnGIMOHxx85uvJPdicfUZdvX2D9Lq/fWYUPSnyNvRCpp0C0m0jwqMQ7INJvDn
	nLQM4t7qK85DEQ/lkLgeAEGNAkexCcEVLqzE20JM7Ea7elNlQ4CHFF1e04RW8fwtpv/QdWrGNVu0O
	i60wyDufL9GzmGfOMDqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFbW-00D4IH-Ve; Tue, 29 Mar 2022 17:26:02 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFbU-00D4HE-EM
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 17:26:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id lr4so28113338ejb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 10:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=16O1OMAfhlCbCfBLXhj0uiBE7+Ph4Xzv5BL186nDdEE=;
 b=Iz0gFt6SkMM/Tc1oKY+iWeHB+ZZzVCBhie9aFJTmGMcAo9i/HuFW8csLVXQUFouF7i
 sODn1lkzn7fEu9q/GWTsROihZlk1uPShwi0QMfkhbopw6GToZht6UVCbVifHRhRZJ7NB
 pslFxBjNnSP7HSaOmFfJGSTrQfUU+bs3n4vS+S7HDqxOlIwthiEQnI3UKTF319vYLHmo
 weXVxF9pkizeGsEBh71hKzQz20MJ/aHwGGypCtIjcE018sPWX4agTh5FLy0ed2PZmEPn
 U6ngoOrUZBCJPLjvHna3xjRPh0QQZfMUzSS6HSLs4yBE+Ej6pMMiZiDebkc0cr/N41+7
 COsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=16O1OMAfhlCbCfBLXhj0uiBE7+Ph4Xzv5BL186nDdEE=;
 b=X4AKgjXyAypq9CaRTtmzkAI6CUmk4QMevlVFB0jEqHqf+tHCU0xtBlXSHCxNBh2sye
 IMbt2XAmweCUmkufbEfcKrcGVCJwLN1j0STrI++LPpkbtnAeKQgtmaG4D2BBMnemudv+
 xiGx1J0OEqjLFP7ZGkv+/sUk04toefHABeQp+18XvXK6N959OR4u9yC8jPZOShh4EClH
 ZD3doeilU4t1FIp18F/f5GjDIXBZamS179LldJmhq8NzuK0X52uwbiQfjJA4lZ5GZ0Rf
 P4aj/EUFjsV2Yg7Eegd6eitT/f0RS8vr4KGxdwI9EZqJcT+cH6B4BgPNjBtO+f6VsVnp
 a6MA==
X-Gm-Message-State: AOAM531aiKtiIW++cYkBimhgMk5E5/v+Wt1kRk/eltzvrL5wwXZat6Qt
 7hhwre4L/LSPBA+SUYvB2BMgJYYj1NNfyU5M
X-Google-Smtp-Source: ABdhPJwO9YuESjI9rToeZW+DG0b2tF5pOXo1HOsOCjNQL+mrVjMKAMiXxYXUoYj7xy0+X+N5MP2kCQ==
X-Received: by 2002:a17:907:1b20:b0:6da:649b:d99e with SMTP id
 mp32-20020a1709071b2000b006da649bd99emr35881835ejc.712.1648574759076; 
 Tue, 29 Mar 2022 10:25:59 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 k3-20020a05640212c300b0041605b2d9c1sm8772042edx.58.2022.03.29.10.25.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 10:25:58 -0700 (PDT)
Message-ID: <403f831c-6a19-8ede-9dfe-6b033d1292b4@linaro.org>
Date: Tue, 29 Mar 2022 19:25:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329172120.30328-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329172120.30328-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_102600_520496_F583F014 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 29/03/2022 19:21, Johan Jonker wrote:
> Current dts files with RK3368 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3368-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:

I see you are on a conversion spree. :) Thanks for the work. Please
shorten the subject as I proposed for 3328. Also this "Changed" and
"notifications" are confusing. There are no notifications here.

This could be something like:
Changes against original bindings:
 - Add clocks and clock-names because the device has at least one input
clocks.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
