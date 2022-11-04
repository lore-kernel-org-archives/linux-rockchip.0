Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74657C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 13:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfMT+JXGviep9HDWf9p/wh5IwDDh6WMHWYfMdBpY06U=; b=vxiZ3QxlsCFC+F
	XVy534b8YRTnortQbkVDiysEAZZaNU7J/LkmDPJ3t6d0QsDEEdiz8LmL0wLbkNI+1xwKcluIfiJNx
	vKrc8ESzk4ItYRQo1Rrwkuk8r/RSvJJ5gxePkyNzMOdrlVk1cb2mEerkEEa8eV2kdtSLRPqWtHSIQ
	MqN8sU16z86zMpqezbzJPcxFAC9DSM9Cv/a/AkkaDJZpcCCQrE4FsJU0YbBvBtqBtXqA0YXIhmg7C
	73NhcQTZ79QRKPz2ZmFTmq70i8GihLk5XKq5E0AfMq094c09g9DiNF6kPIZURET+E3/onW2ibc+l0
	YQILtXryBGGqu12q7bUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwW7-003bBv-Ip; Fri, 04 Nov 2022 13:13:51 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwVr-003b4p-CZ
	for linux-rockchip@lists.infradead.org; Fri, 04 Nov 2022 13:13:37 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id mi9so3135871qvb.8
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Nov 2022 06:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1bnFZ7o4kg+fqVaSO5UqWHHFD2jpODXgYxhzkNtuqlI=;
        b=JvpieB1N3npmqXZHfwJWhY4LJava9QpaBTNT7a2mHKoJ70YY6k5LfpbanjxCvuYO+D
         g0jEvvkfF7CDgXwSEFv+i90DfNHG8nLCD25sBGbhIQ4S2MLBha/6bJM/RPs4lfsVYI+6
         o3P4T3LCNt4Uz/0jBJ7L/CRhloZWhqkBx82aIF+zqqQxZkzq6CWlqAparkH+m3AHi94p
         zaADUzIwmh5uvVeYXzLwsl78W6DGYjtlhZKpU89JtAegedn1xmwjRIfmWP53U/5zaHqF
         NUgjF4VFUqKFO25c6vFtuLBahQQ8BQ7rJrEZTYWa3i8j2NR+vNU5q/kY0bVa/2R1ng/v
         +2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bnFZ7o4kg+fqVaSO5UqWHHFD2jpODXgYxhzkNtuqlI=;
        b=vIAnohxMX0f/muR7FjvZrresCknouMOSqU+Uqvj3vNbeAz00eZxGiJEIaH0RTiz4Do
         wbe9+z2ZZ1BYrOleTO4PeCRdYLsujgA/AAvb9y2M00VvlOhjkqN/P89DiKid8zZ3Sb1M
         xMocbbhR8grtolCcGRliIU1xMcgFHaAZmqAyNntopv+y1A3sVyo8pcsqZQ1zIGiQzJZz
         W8c6xQZk4EyzrGoZfN7GnmNTY3VR9on+PDmHUfWmaOx1MJldfmloN5px68Fhzw7q05wj
         c7GLEy6U/HSQjxaoHM5//lTaTsE5BwYtaXxkTP8702sUWhPkBrW+aNAM8J8pkb03MvpV
         2mGA==
X-Gm-Message-State: ACrzQf2JjkdsvT/csRzEEO1sPLGdXtM7ICRaQBJeCayYlM9XgN/MxyWf
	bafHUn+QPgWCNPibmv7VnUJ1zQ==
X-Google-Smtp-Source: AMsMyM5X4IARocSixuDRx2dMkgmzWDzfdHur9P5jdQq+TlTDZVwjOV+Mu0q+kTJafF0mq1aPZzUhAg==
X-Received: by 2002:a05:6214:202b:b0:4bb:56b0:4979 with SMTP id 11-20020a056214202b00b004bb56b04979mr30734499qvf.94.1667567612401;
        Fri, 04 Nov 2022 06:13:32 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id u23-20020ac87517000000b0039a372fbaa5sm2377669qtq.69.2022.11.04.06.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:13:32 -0700 (PDT)
Message-ID: <73ce512d-1d2b-5e0f-86da-dffef06423fe@linaro.org>
Date: Fri, 4 Nov 2022 09:13:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo
 board
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Cc: krzysztof.kozlowski+dt@linaro.org, pgwipeout@gmail.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221104123804.484109-1-andyshrk@163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104123804.484109-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_061335_511936_42111D55 
X-CRM114-Status: GOOD (  12.15  )
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

On 04/11/2022 08:38, Andy Yan wrote:
> Add device tree binding for Rockchip rk3566 box demo board.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..618c78fb9d5e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -754,6 +754,11 @@ properties:
>            - const: rockchip,rk3568-evb1-v10
>            - const: rockchip,rk3568
>  
> +      - description: Rockchip RK3566 BOX Evaluation Demo board

This does not look ordered by name or SoC number.

> +        items:
> +          - const: rockchip,rk3566-box-demo
> +          - const: rockchip,rk3566
> +
>        - description: Rockchip RK3568 Banana Pi R2 Pro
>          items:
>            - const: rockchip,rk3568-bpi-r2pro

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
