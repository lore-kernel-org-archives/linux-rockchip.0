Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75D8BC04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 16:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BnCBYG4Pk+14sdW8vF12txmCZFskT/WGm4qfFm6IOQ=; b=B5xLlwFbwTc6H8
	XW1cVuhbZZPmtvtxykSxmURxbofhlFCiiRf8Pplk9GqkwNsxgGbY1umDyYUq7mbLjTTRgOslOo55M
	EOX4eicokuw9yEWcPFDiUY3GvcV8dcAEAAZPY1OH6MdEhhBh8NvfUofM7BIGrwA+75NnGn2SD9DMl
	AfFsT/eA0a+ne/fWQGV7t97WtySMN7E/keL667pvBa5yCYuztWByjtp1kMrdO0G7hpmi6qXeTkeIT
	C8n5ixrYNfjl68n3OnSgRFSWmOjpn0+xvonQyA0Q1Egi7CTkKg3L8uNJQ1C5K95nQuSNTmjEA9tDO
	lqBkBCuSs6hgfnL37DyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH3j-00DBrV-2h; Sat, 22 Oct 2022 16:09:15 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH3g-00DBq9-ME
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 16:09:13 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id ml12so2852040qvb.0
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 09:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eGwq4mTX+Jyhw/AulcJVeuFBhkqv+kuR8AmKOxA4g1Y=;
        b=crGI2grvfuGSaC1Jaj5m3B54vfeagFND39Y95Ji6+QRaCWIYaSvKM3MX7LqGVhAmFE
         TQAmjXu5hP+J3ecalMT2XDxoYVQEG737PhirvzvD4rjZT9SOfzB2MOuW9ZEDQHzikTkO
         eMDaQausgqqEghYiAYnpPypu2ScO+eX25kpHXcqEqHp3rLjVmgP1Nr9kVNw8pm32ElsV
         JsuGpz6TRY6UG9Um1i9xHWVr/ygg4yDXJSRu8MUaoB88U+7fpFM5LrL3QKPUrrjB0Q4z
         C0ZzgI05hj9jU1VXdJNokjwoRl/XTzES0BZeiGhGl9o9UoFDxVGMRB+T+NFzdSH456Po
         181g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eGwq4mTX+Jyhw/AulcJVeuFBhkqv+kuR8AmKOxA4g1Y=;
        b=jAjJiPSlCZL/uMyeKMrMLoCA/M7eOjmm1GFbqYAqSvoqCLwQp/0tHgiBS0Uj8nXY8r
         yNBqVdnexc5Dr98c3yTKED3KDcAeWzCV8oXzzyUG2B4GrvilNMLGBqTgfawiBw49cct9
         /TjkyI3gf5HaZKxQU6WojrtdlFVh3Egtrwh79+8Aeq3JYi1ye+qR3/RLPwXxLa/1vV0N
         Qc7ViJrlog/OALlXKtMhe/9+S+GShxwnzPUZ7ZPI3EwGPqN9KCWhLL65LVgy5KWlEQ9B
         IPTYcSk/97tDCOqYDhu4uC2zJvumxhwLE97p9qa+5e0TrS3Igi9AHiJ9BRcXpfPLclqN
         U6wg==
X-Gm-Message-State: ACrzQf1MPYSuEQlGUJSDE9+bZ6Lx3mItx9JyBmdd7udJ0tZAZzrm9Bfu
	JwO0gwWZ6egc8idvRAu+NyqU8A==
X-Google-Smtp-Source: AMsMyM4ljkHEqnzzLpxZ+mQ1vXCLGqeVVJF7Fq6+dWT+UIpDKaGCbakQy2u37OmYs48bPc6GWCUH+A==
X-Received: by 2002:a05:6214:2349:b0:4b4:11bf:a743 with SMTP id hu9-20020a056214234900b004b411bfa743mr21915486qvb.95.1666454949573;
        Sat, 22 Oct 2022 09:09:09 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id bz12-20020a05622a1e8c00b0039a1146e0e1sm9892269qtb.33.2022.10.22.09.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:09:08 -0700 (PDT)
Message-ID: <122af550-f565-32eb-524b-b4ecfa96c3a2@linaro.org>
Date: Sat, 22 Oct 2022 12:09:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/1] dt-bindings: pinctrl: rockchip: further increase max
 amount of device functions
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20221021172012.87954-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021172012.87954-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_090912_756993_5A129586 
X-CRM114-Status: GOOD (  11.57  )
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

On 21/10/2022 13:20, Sebastian Reichel wrote:
> Apparently RK3588 pinctrl has 13 different device functions, but dt-validate
> only checks for pin configuration being referenced so I did not notice.

I think the "but ..." part can be skipped, as it is not really relevant
to the issue being fixed here.

> 
> Fixes: ed1f77b78322 ("dt-bindings: pinctrl: rockchip: increase max amount of device functions")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)



Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
