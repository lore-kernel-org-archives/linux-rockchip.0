Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D8C0C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 10:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miSIcl0x2e9W62u16dCVZ0pG+awxGj6Hv09WKqMDk/Y=; b=oJ68xtcax/PXMl
	tYl1c74yW2BHko2I8EaWpft4NTvL3gbivbDIEZphpmKcLsi+ynSvrqYdn0RsUvf2FyAIobyxgpm9/
	SmyJuXFJi7yHFvGFQZ0xnJVqlgRm01G9N1kRXkJ38qo9U6HttR0Fiwq3elhJC7GS/dHEV5M1HUM6I
	De7gLNLdu1vL6w4DeQG+v6Vu1iNxUsYCYKY/kONrgdih0n9j4ACf2caeU8QbvpW1KQCbjvHJESgV3
	fFD2rswpg5DMWK1oRUaMHuI4RJmsEfB3wWzuFm5Y6WsmgbuxdmZ/8niYhpujvGXzt9C4Xq0UzI/PQ
	c6aVyy0J3EzoXy9Km8tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxmXD-00EHem-2G;
	Sat, 13 May 2023 10:31:31 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxlNu-00E8aO-0Q
	for linux-rockchip@lists.infradead.org;
	Sat, 13 May 2023 09:17:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50db91640d3so8505062a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 13 May 2023 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683969454; x=1686561454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FTLR4PogscnMBTZBkvB7RGFYHJau0v0cejPxr/vN9k8=;
        b=StPt+MtEzgE5Q8M2lOFB3Er2TMWEqx4KfeOdtDAUYjtT9/k4rgqiTSVV1ba/6QuYbu
         2Xr09qU3NLLFt08knExgPcAsTYogsmhfkZW2U8oIj4QGUXZIomsL7/ZCJFLLnEVuA9F4
         BmS34G1IZDRW+KJ0HP5tA2qlP7Z04DT5g46ySaDtFX+VpHFcNxZpMwbqePrdJms7Pyng
         2t2BYa/0FYWtcxf39Be18R578rsIJqv3Es4+hNOvaJbTyjVirsRFODY8M+nyakgXzT1B
         baQ2Qfe4KspsHaYEEtOPF7VPhdcG4tDPntwWCUnlg/HGEqun0SSKXSQp8k9EHQeyKPUB
         Pbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683969454; x=1686561454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FTLR4PogscnMBTZBkvB7RGFYHJau0v0cejPxr/vN9k8=;
        b=a8xUjJSUU1J2B7HEmvG46JkJq+zcdkLz+wxpU4AVOLp0P490DUN86lVKf2iHYf2m7o
         jEl8+C9vPHBUqhMyA6IkBGquK5mfAZNyQE++jfgnpHaAdd+hkN6ObjBEcV5du0LdAwTt
         Yl9gA5XP99sfhpSsof58Car6ZiMTk6tREfRJ9Xx2uHUvVd9t3BGrG5vjR5QqVtuz++A4
         aiW44apJdbz070RbHDhjaUpFErnEXBHZGFocz8sIKjU9rd8RfTyTXaJR9Mtx9K67y2XS
         0FHpD1sM5TJAMxVYvT2/VYm/U5GmkmuYOkEfWC3CxOdpcJf73kMlvzedrsjtZS0KThNO
         WX2g==
X-Gm-Message-State: AC+VfDx68ThsxU6ckGrvLEAARX/2tnIofgNGLkgyzKoC7LgFPnfQDxFe
	QUP3opE0zLa4X8SeeqU3nlVlyA==
X-Google-Smtp-Source: ACHHUZ69QEjwE+BynXYVDyAFSfxIlXaZcKvg5b1ZrXCXlBQoNPvTXq66y08Oz9VquhUbC3bpukcr5Q==
X-Received: by 2002:a50:ec8a:0:b0:50b:c275:6c56 with SMTP id e10-20020a50ec8a000000b0050bc2756c56mr22337584edr.16.1683969448948;
        Sat, 13 May 2023 02:17:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1d0:810a:586c:c5ba? ([2a02:810d:15c0:828:1d0:810a:586c:c5ba])
        by smtp.gmail.com with ESMTPSA id f8-20020a056402068800b0050bc9c38fb4sm4634967edy.69.2023.05.13.02.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 02:17:28 -0700 (PDT)
Message-ID: <ff7aa7b6-dc45-25ba-9636-058c2bb73a6d@linaro.org>
Date: Sat, 13 May 2023 11:17:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2C Plus
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Maya Matuszczyk <maccraft123mc@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Powers-Holmes <aholmes@omnom.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230513065228.25971-1-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230513065228.25971-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_021750_175682_D28214D0 
X-CRM114-Status: UNSURE (   8.34  )
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

On 13/05/2023 08:52, Tianling Shen wrote:
> Add devicetree binding documentation for the NanoPi R2C Plus.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>

subject: missing prefixes (arm: rockchip:)

Drop "doc for"

Subject: drop second/last, redundant "doc". The "dt-bindings" prefix is
already stating that these are bindings and it is documentation.
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
