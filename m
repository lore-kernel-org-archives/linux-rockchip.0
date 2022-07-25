Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675F7C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcXu6rlmTtpIZT99xn1+TgoZaBllK1VbOwUL860p+Cg=; b=odmoRX42qQ17Nn
	h/4igTE5p9Z1PNSRW6kcqEzwGXZhWN4n4I7ARDcTxAEOrs3WaFP+jxbgfYg2NsgiwmPdJuFjaFp5o
	GXRJPst5mpJYOpQ74Xn2O45IqXoFajHFVXGQnQoo7EZbqP3IokrPVfLC8WMaoS7gF43i/VNkWBC8y
	6la6d7E8qRFrf3BpDI7Z7XnxLrAGjGmwZ1PrKCtGqNJUWR6KKIeRLlmIQRPJHx6AnXJRbZ3TuD9Tv
	0ql9Mh0m2blKnks3HCA+AHMQ9A/1tORjgieLyQU7FWvmZQ/uMA1Ap/vGcnGC5s0yckF+fhBPvkj+u
	CDXea7GXMcgEsn1DQjHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7VM-004H1x-PW; Mon, 25 Jul 2022 23:28:52 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7UO-004GIT-9o; Mon, 25 Jul 2022 23:27:53 +0000
Received: by mail-oi1-f172.google.com with SMTP id w204so15284320oie.7;
        Mon, 25 Jul 2022 16:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8oYhKynfWx9NaWSzEsCx30+DB/6sdfscG0yAYQujutM=;
        b=La9TV+rY+/dom/PN160ZCtDemKT9lfb8nJeN+BvmTCSHNZ8E8mX5dqc5ys3/fqkpZD
         h1OJ8SK2IrSLxxevD+a/75FXDotW6eUMW0lq6sfn5I9SZf7bOyx3x0e5Cz3rKM10jw9N
         UDyD36FLbAvlYg8tdI6AKvrDIzlh0CnBGEpFNG5uy25t5nqegVHE5rTBO5k1li9VWGwj
         RCQxsQXlb5J6cYyuoRoF+Dp5YNKCyFOrznqAe4s9X5Dvwgc5KgNjo4MxdCuVh2f1WPN8
         P56yxvVQZPDke25OhXg9+0lHCCYjdHaAREWszqsso4m5ILCl3hEQjN+ZSXRTQSxlJEKK
         5fbA==
X-Gm-Message-State: AJIora82NDQ16RNr1TeoNBu1+tKiVupkPH/WgiyTbm6E06ynUOMCP0RO
	55P4GPQ1kPA3nF5kLY5hCA==
X-Google-Smtp-Source: AGRyM1uh5OpQAd0GsCkxOIOFynCg6VcdXBYFUig50InQ0YE5u3xh9AY3IaGE90zvNca5mYBDnaQQfw==
X-Received: by 2002:a05:6808:bcb:b0:33a:ce5d:be58 with SMTP id o11-20020a0568080bcb00b0033ace5dbe58mr5318505oik.223.1658791669015;
        Mon, 25 Jul 2022 16:27:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id g5-20020a056870c14500b0010c0d04eb00sm7310434oad.2.2022.07.25.16.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:27:48 -0700 (PDT)
Received: (nullmailer pid 2955529 invoked by uid 1000);
	Mon, 25 Jul 2022 23:27:47 -0000
Date: Mon, 25 Jul 2022 17:27:47 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 19/22] dt-bindings: arm: rockchip: Add Edgeble AI Edge
 Compute Module 0 Carrier
Message-ID: <20220725232747.GA2955495-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-20-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-20-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162752_657992_623AFF34 
X-CRM114-Status: GOOD (  13.13  )
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

On Sun, 24 Jul 2022 02:13:32 +0530, Jagan Teki wrote:
> Edge Compute Module 0 is a 96boards SoM-CB compute module based
> on Rockchip RV1126 from Edgeble AI.
> 
> Edge Compute Module 0 Carrier board is an industrial form factor
> evaluation board from Edgeble AI.
> 
> Edge Compute Module 0 needs to mount on top of this evaluation board
> for creating complete Edge Compute Module 0 Carrier board.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
