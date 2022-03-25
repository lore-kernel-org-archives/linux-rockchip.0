Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11711C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 15:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REvXisvofKe+iW6n/a9LpsWQaZ76vocvzO1zgbKRWfg=; b=W8ZCRBTQn4DMUr
	GZuxtayrg8qW0WsaIzmfflkHcNbgA0VBLbZBMYtQu2ox2ORTOWbnkWOb6gCdIt7MsPqQWauSXcPEh
	CJxGIZdu+2exzXr6yFvKYX6/xZzOoc3O8QwsfxtlgW4WukQohKBUqiAbXq2UeAUgV88RhonKsDEiR
	J4xRRkKJxJOrENnzOpgCge1vRtWZe7Z86OgDPouQqx5UTtqf/c8OUsbZBwy1lD5FPt3rNcAXKUHm3
	140hKSECdIeXoZW76VVJkedHPuQbEij6fL8kA0udUGKUqd4b4VF5B6dhWcJNDXN+l5/yYai1DUYJI
	LaIWyzsgR81F7l0qMzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXm25-002VY4-VR; Fri, 25 Mar 2022 15:39:21 +0000
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXm1u-002VWt-D9; Fri, 25 Mar 2022 15:39:11 +0000
Received: by mail-ej1-f47.google.com with SMTP id lr4so7713005ejb.11;
 Fri, 25 Mar 2022 08:39:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=2vdz+4IsKGSl/VaCF7VHXVQKmTtRzfU3MmHP/EXqhjE=;
 b=VSNBTSJoAyo8DbAij3wmveIJwXv52nzlOYHi2GPnz6ik5Jq217TFD5b2gUuUjKjGlL
 6QKVN3sJDif0x/yW44sJQ9UN224fyvVeANcyJn7yCW1jPkzL8Y3ioxKgry4scqCDnstY
 5ahVfQwSpel1OmPno/QHXgHEINRxQXPPHzH4k7kUg3APXuU9JN9LdSHO33n8Jg1AgYf5
 lpOFqUodcJe0PjQJtoSmazoQSS0/DmO1eR39VyDl0brkDpsA9hYv34dhqwCrXi8MHq3V
 hk1bdHhd5jg6HprsPrEHzCvwyX3MNbFyzrgDXr3LheoF7W8hEMqd6POIK4HueD9+lhcG
 ACag==
X-Gm-Message-State: AOAM5304JTXgY/TgevCv61/OBmTQGRB634Eid+6oNMjmFOl314bOpBvw
 jpPjUu54oSysB8lICPuFmmc=
X-Google-Smtp-Source: ABdhPJzFcQ7dPxMRO1kZd0xEII3KM8S2HW7kJRS0lJCQxfRv8r/lHFSFTAIcwqb4fv7ynnjkOxTXHQ==
X-Received: by 2002:a17:907:9494:b0:6e0:ee8:4b29 with SMTP id
 dm20-20020a170907949400b006e00ee84b29mr12572625ejc.337.1648222747603; 
 Fri, 25 Mar 2022 08:39:07 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 n13-20020a170906724d00b006cedd6d7e24sm2435372ejk.119.2022.03.25.08.39.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Mar 2022 08:39:07 -0700 (PDT)
Message-ID: <c56c4bd2-e985-f8b3-80c9-4b75fa3dde23@kernel.org>
Date: Fri, 25 Mar 2022 16:39:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert
 rockchip,rk3188-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220325150146.18638-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325150146.18638-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_083910_485302_8B02CE9A 
X-CRM114-Status: GOOD (  11.34  )
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

On 25/03/2022 16:01, Johan Jonker wrote:
> Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3188-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   change clocks maxItems
>   add clock-names
>   use clock-controller node name
>   remove assigned-xxx
> ---
>  .../bindings/clock/rockchip,rk3188-cru.txt    | 61 ---------------
>  .../bindings/clock/rockchip,rk3188-cru.yaml   | 76 +++++++++++++++++++
>  2 files changed, 76 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
