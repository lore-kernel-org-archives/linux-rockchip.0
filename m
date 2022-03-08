Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5B6BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 18:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2vScKS9v1ookmv1nuWN0umdbnKB65pidXpETzcw/OY=; b=VggRo9BlWZvcqk
	oFhLveKQ6NPKNw42da50r+Edp77SS1+bLCWdPC9PWwgBaXfBLpzNVoNRKWpU+3ZB1tU3V3FjoAyZC
	mzecf9XgCJ3d7feuTGgwgcR8CoFwkmcsSHQlegSAaMjQbeGjzt8IEee8wfQEX0ptb6SMlaA/ey0vG
	eprwHX9zySZRLEukElZEhyHgUuemtaZJZxnGIOx6G2JgEFJq1568w0iUrR8Peumbwd31WmulTFZe+
	aIieCxSNf/w5u8AFRzu5dGV6fh2HH/V7w0mEHUou3mvEntNawIs3hS+mHHTSikuHkYWq440cP04bN
	1swg166VyounkcTlIkqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nReDj-005iRQ-IO; Tue, 08 Mar 2022 18:06:03 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nReDV-005iME-P6
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 18:05:51 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 351633F61F
 for <linux-rockchip@lists.infradead.org>; Tue,  8 Mar 2022 18:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646762748;
 bh=fxacC+X8vGcG34HtZ40W460Prid6yVdnSvuBB2MttQg=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=KtWGQb3j5DR2k6y0Ib7v6XVXq5P4j2ACXXTWJY7woCQXOTik0JWywl2sn36SRXBHx
 e0CuJTsf5kJ0QFr9+8MwY/CPfxbFQrbNxv8DTNwPl+WRic468vvgb9sqXyqc64l70f
 YzgJd6X/SpjVbg17i3ExLfbPDPJqnYJtljgd7it/RIgvBfzpPDZRIHHOXFaEapNV2x
 c8zjeLcLhZoXIFDKPmWySIMHwwTMxWy10urzXndeVgRQmSS0eLiJda4SqXp+N87f/I
 S/WxfWCZh8y0f7B0qIsd0dJ2xJ/Ofei6xsS9vDiWTE25hYZAUgsI2unSq6hZ1EGEVh
 CiVfyV/pae7MA==
Received: by mail-ej1-f70.google.com with SMTP id
 og24-20020a1709071dd800b006dab87bec4fso5643827ejc.0
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 10:05:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fxacC+X8vGcG34HtZ40W460Prid6yVdnSvuBB2MttQg=;
 b=as3RfqLZTKD8fJnRdPo4jo9S/ewkE3ez7uziK9I5yOuZASWKTbmFxDMU6j0l+yFbr4
 hU9pUAClftVEEmtXiK2qqrzJA0C0CeGNy+jJfwZXJyt1bs5PJ6ERsJKQAxOhGvYQYdH0
 uZKz9r9F/j5fbagBOzQW/N7zYHDHN0h+6e41iuUDoCVw3rSkaOeOvkXepM+hWxvhvx1D
 sdX3umnOgTWxYktLkPeFHmlxKulQAm7U9NnCgp0Sw9t3/UyFa/dYbj6prqi/hL8wLxy7
 FWMH7IkVBvfOGRhNIXdp+jxBI0rif5tjUhpvXn4hCF5XLXvqIpeDj9NgNb6snTZZXXlm
 XIGg==
X-Gm-Message-State: AOAM531cRZ4HwWknKVeWgWf239g2NsaGgo9ayR3FcVqzJbFE+QfPZciE
 3jbUpBX/Maf6qO+ENtk80KtGppdShEpRgVuvFA2P7KZzlmtmAM5GF0kHIILgcu8rmE/ucBju4Xn
 8f07IaMffUPta54wQ9Jg39mvgziWsvfdgDrJTwti/eCK0d9qnrQ==
X-Received: by 2002:a05:6402:27c9:b0:416:70e5:d655 with SMTP id
 c9-20020a05640227c900b0041670e5d655mr3923428ede.410.1646762747488; 
 Tue, 08 Mar 2022 10:05:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5d/d+xm6Ot6fJtpnZgQ+JM9cB5VCZXtwrRwiowWcRB4VNvhr/RyYIAAt3oB9t0PwptC3WOw==
X-Received: by 2002:a05:6402:27c9:b0:416:70e5:d655 with SMTP id
 c9-20020a05640227c900b0041670e5d655mr3923256ede.410.1646762745914; 
 Tue, 08 Mar 2022 10:05:45 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 n13-20020a1709062bcd00b006cf71d46a1csm6092052ejg.136.2022.03.08.10.05.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 10:05:45 -0800 (PST)
Message-ID: <c767eeb0-07d1-f6d5-4c63-969105194455@canonical.com>
Date: Tue, 8 Mar 2022 19:05:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 03/15] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
 <20220307160918.v3.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307160918.v3.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_100549_957950_53F498CC 
X-CRM114-Status: GOOD (  14.52  )
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

On 08/03/2022 01:09, Brian Norris wrote:
> The driver and all downstream device trees [1] are using Hz units, but
> the document claims MHz. DRAM frequency for these systems can't possibly
> exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.
> 
> Rather than add unnecessary risk in getting the units wrong, let's just
> go with the unofficial convention and make the docs match reality.
> 
> A sub-1MHz frequency is extremely unlikely, so include a minimum in the
> schema, to help catch anybody who might have believed this was MHz.
> 
> [1] And notably, also those trying to upstream them:
> https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
> 
> Changes in v3:
>  * Add Reviewed-by, Acked-by
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
