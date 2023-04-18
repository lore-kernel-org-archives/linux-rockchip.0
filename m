Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06729C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 20:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BGpiH5Lvc8SUej28Wm7L4/ffrEKLsicJSpFgXb1GFQ=; b=jFuStXeBG8DWvD
	PBOcGVanYnTzxUSOOJju1j6WvcIsyhfopS5dLcp22yViFiiAk4q2lHosnFZVUQAdP+4h6/yaP2rbN
	E/ZNqnL6wIKrEnWsCxecvfKHo6Pzn/AgE2EgzDFHnRAWB8czF17lB6j31aTfWXSNwk2usUfTAj1qZ
	S2yZVdtlIMg06hmXe+h9/LwTRWjmAKBNmR0zwLwSnGlShDyejDnrbvgLLU7HbKzgvG6QWKqF4l/IY
	r1PePrREEbiHyJzm2iKTJ2n/iFcLhDdbCKDafomt3cNa8pn1GFH1Bd7XqdmCd1R4kyL0DKm28Nnls
	Ie6rvuPDvUEpViV4ZS8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pos6V-003J8k-0z;
	Tue, 18 Apr 2023 20:39:07 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pos6S-003J7L-1j;
	Tue, 18 Apr 2023 20:39:05 +0000
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6a5f602a8f7so837331a34.1;
        Tue, 18 Apr 2023 13:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681850341; x=1684442341;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNSKwxiPaQemfObF2ul/VmxpdAbWAVyWKmOYQFhwC18=;
        b=WsbqAPzi3S8HS+jR+KXln9Jt7M25LFauOUqwbd2RsJqfYlWFxx4gqQR/HZQF1hbS/y
         gqWGUoHLlungnc8C/F+Zy278VmS+I8GALMxmiB1+z2X2XY+TDOX6vlabWk7RfYcYQEKl
         Jqzt8OLxYbkZ0ot0PjHcH5e+A8w2dwvSqh0owHjzhgkaAe8c9fdQj+aPTw5P40e/wM+z
         xG6LliGMMhuFRpQkKZSOw4CCM5jeL5hHED+UZzqzmCAFbK4liannGo7YKif6D6j1+gBV
         iZmufDpTKgTTvUdZz1YGdiVREENIG/R2ktbBvza19uzeUL+Oh+2MWvlfdvbcslpwf7bz
         hA0w==
X-Gm-Message-State: AAQBX9eD+kHzye5QHXtU/2rg1/PGB4hdKysXMBtCGpV49IAsZsqBTbar
	kstO3yQYhFz7oFuurOLJdkekMKS/yA==
X-Google-Smtp-Source: AKy350aBCV4+vKm8iqRCNAc3k5H1+1Pir8HI4UDk6/fvkmSCmn8oAzXILt4B8baAlNK5aU9QQmB7EQ==
X-Received: by 2002:a05:6830:3a16:b0:694:38e2:c5f8 with SMTP id di22-20020a0568303a1600b0069438e2c5f8mr1401525otb.30.1681850340940;
        Tue, 18 Apr 2023 13:39:00 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f24-20020a9d7b58000000b006a5e0165d3esm2861011oto.19.2023.04.18.13.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 13:39:00 -0700 (PDT)
Received: (nullmailer pid 2298906 invoked by uid 1000);
	Tue, 18 Apr 2023 20:38:59 -0000
Date: Tue, 18 Apr 2023 15:38:59 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Damien Le Moal <damien.lemoal@opensource.wdc.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org
Subject: Re: [PATCHv1 1/5] dt-bindings: soc: rockchip: add rk3588 pipe-phy
 syscon
Message-ID: <168185033918.2298851.7201086421225409224.robh@kernel.org>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
 <20230413182345.92557-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413182345.92557-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_133904_570236_567750B2 
X-CRM114-Status: UNSURE (   9.50  )
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


On Thu, 13 Apr 2023 20:23:41 +0200, Sebastian Reichel wrote:
> The pipe-phy syscon is used by rockchip,rk3588-naneng-combphy,
> which in turn is the PHY for USB3, PCIe and SATA.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
