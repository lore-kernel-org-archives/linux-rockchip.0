Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2D4FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Mar 2022 08:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jsOy9Vu/HBT8F1tW04HOXu9gMVPkHi0vJ/F4EJN4Mg=; b=L8nH2Pez8bqUui
	ssw0XEvCesKhsk+r6AKspHMOi6AOSFFP8+4DCrjgWEor/ioqBhYnuQlMoB/KLuSFK0RVjjXgPV+ya
	ul+8iuNpCyqCmpbmuQe4t2eIdU/nBjonck7tqcdHo9I7BqzYY9DJ1IR9HGezmxqKJudBYORMYvNu3
	nzgtQHONH7/Z4xSAG+/92RK9lpusEYUd0gcHby2+epWT04mzrIoA3UieHJNBoqx9dusBfy6UqBTa0
	6du9apaWmPIocxtZ2boRdU6V4V3xBR1HM+Jcb2dhL7gzALH/iWSLLpPin7dN8BYEaThvqEykh9w2T
	t2yjUK8pAF0wD/4Khe1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYNp5-005IRA-Ag; Sun, 27 Mar 2022 08:00:27 +0000
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYNot-005IOH-9B; Sun, 27 Mar 2022 08:00:16 +0000
Received: by mail-wr1-f48.google.com with SMTP id a1so16142563wrh.10;
 Sun, 27 Mar 2022 01:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=8q2PEyctEYcJQQuX1kcjiYZtUrzQ1TsH7qQAnCPe3ho=;
 b=6/tLoU2cwGDdqjUYdvwFJ9q7777h1vvPppzJUo9xEusxEBN093ODcLmomyoc6xcvdJ
 wQPrIcwRXy2wjpPWwUPPMhBpMtJTjkKIUkRIg7n0F41knKEtq3FLczt53vdVRG6kN9QY
 7YTzOGm0cwx8RxgTC6tXv8FvseFEwuKgi99vqoZP4474gaBuwIqYMV8Z5E17X5pWCC8l
 yY3tj7832+Xl/yLq/QQzop6rWCEuSHusZWDc/RfsEYLlDGjIGzrt+ZpV3LCAUIICdUua
 jijnClap68IVhjyhTd6a6uqbKeOCWsDl+GqXyxBsHbaHlanNQ2kuVTd5LE+KkqnkKySe
 D+qg==
X-Gm-Message-State: AOAM53311hLy6liqTjiYbocXQooIrIhJpSLtXyMmSiImEba3dw/qG6oL
 /dZcVHpwCtTmRkPQrHadfWY=
X-Google-Smtp-Source: ABdhPJzTB1G5vWt2XzAl1FM9J93U3f4r1YgUAAVvI8L/4ZAAqbVrbM1adGbma+x2m2UlsfAok7H+rg==
X-Received: by 2002:adf:d1e5:0:b0:205:85f5:656c with SMTP id
 g5-20020adfd1e5000000b0020585f5656cmr16397217wrd.65.1648368012012; 
 Sun, 27 Mar 2022 01:00:12 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 j8-20020a05600c404800b0038cc9c7670bsm8857789wmm.3.2022.03.27.01.00.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Mar 2022 01:00:11 -0700 (PDT)
Message-ID: <237a1e6a-7e0f-21b6-f8f4-045142f86712@kernel.org>
Date: Sun, 27 Mar 2022 10:00:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: fix some conversion issues for
 rockchip,rk3399-cru.yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220326102712.20906-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220326102712.20906-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_010015_354364_28B551B1 
X-CRM114-Status: GOOD (  12.50  )
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

On 26/03/2022 11:27, Johan Jonker wrote:
> With the conversion of rockchip,rk3399-cru.txt some issues were added,
> so fix them:
> 
> Changed:
>   Align the table with external clocks.
>   Remove the original author in 2016 as maintainer.

This requires explanation.

>   Change clocks maxItems.

This requires explanation. There is no maxItems in clocks.

>   Add clock-names.
>   Use clock-controller node name in example.

Why?

>   Remove assigned-xxx.
>   Remove ">" from description.

All this should be around two or three commits, so you need to split
changes which are cleanups to changes affecting functionality (adding
new properties, changing values).

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3399-cru.yaml   | 32 +++++++------------
>  1 file changed, 11 insertions(+), 21 deletions(-)
> 


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
