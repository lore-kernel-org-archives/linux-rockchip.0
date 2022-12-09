Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB20C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Dec 2022 21:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfGZRm8XMG9l2kfHHqzkKssquUJqoo3D/keEkFZ4Dr4=; b=nbc2wVZeA2G8W/
	9jbQG30NbLb6wsfnELmszigQiCBZGhADvim9/eJv5m8a2RCpHhaVJn24Yxa+5G2qa7RCPjRPmRckQ
	EDRZzNpISYDx1kOMrRO1/Znv2kOjz7FBe4SvTxM473zWcs61L8j1M1vHR9Crg4/hdpQiWdubtNcoZ
	vxvEJroqW0S2oM2zEeK7CZY/Jao1R4ngctlmW8wyW/Ob5td3AViJPMDNE7fWjOkp2jP0aigNodzN9
	MPBaH2VEbRM49TVmPEEwLP2pN2w16hAQg/WAB3WtQYM5s4g2urWjwUzjAaBfD8TsC4UZiSheuoHwN
	ROAw4En8OJfvdujq6MyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3l6f-00BZqR-Uv; Fri, 09 Dec 2022 21:40:33 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3l6U-00BZnZ-Ji; Fri, 09 Dec 2022 21:40:23 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-14449b7814bso1316960fac.3;
        Fri, 09 Dec 2022 13:40:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQNLNwb7egvKzdyQwetZ99ju3LT/N1ETMdh7cmYXrrI=;
        b=cN4vYh84tBktenyLg02z3zRBb8bYfMR+qisKvY4QHoTIlDuf2Zgv6163LssXtiOgrK
         z0E+XRlOdDvfWygTzJFqJTUtAapNeeoZh8TaApJplIXPCs1U5haZgnLlzJg9E8d8GQbZ
         /7MLX5iS6ZzEqfIi1pQAl7kzPwrUCYyyXZQeJK2oiVdJTZ0pEW5sX/leOhQtl3OHlCEg
         8i+7TC2YanDpWK+/YJkNnPrleVHHvdj2iWlAdqo+O2BJYkwMKF+Ndx9gB7cGkwh2YRya
         SijrH0PhLQdDJVs5lJKIoWFQc4AWX9/Ou48bm8NMCXd/yxdGdIQlJvaj5kbdN86QrhY6
         N5TQ==
X-Gm-Message-State: ANoB5pm5ozCSH6ruK6qfY19wKfwsOL7C1LtqUoMelubQI4FMBwwiNzQC
	8ctv+KhZgSBWLmpfZ9jTIQ==
X-Google-Smtp-Source: AA0mqf7lwDrbenyYhLWCRr+uwf9A/1TS2dZQejWfTzGivAycybUvW/jQnBmc9p97uk9mjPhgpxrqpg==
X-Received: by 2002:a05:6871:4592:b0:143:84e0:ac18 with SMTP id nl18-20020a056871459200b0014384e0ac18mr3687567oab.33.1670622021171;
        Fri, 09 Dec 2022 13:40:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u6-20020a056871058600b0013b92b3ac64sm1405499oan.3.2022.12.09.13.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 13:40:20 -0800 (PST)
Received: (nullmailer pid 3892918 invoked by uid 1000);
	Fri, 09 Dec 2022 21:40:20 -0000
Date: Fri, 9 Dec 2022 15:40:20 -0600
From: Rob Herring <robh@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Peter Geis <pgwipeout@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add Radxa CM3I E25
Message-ID: <167062201942.3892855.2015967991620130082.robh@kernel.org>
References: <20221209102524.129367-1-amadeus@jmu.edu.cn>
 <20221209102524.129367-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221209102524.129367-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_134022_687364_40575C96 
X-CRM114-Status: GOOD (  10.93  )
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


On Fri, 09 Dec 2022 18:25:23 +0800, Chukun Pan wrote:
> Radxa CM3 Industrial (CM3I) is an System on Module made by Radxa
> based on the Rockchip RK3568 SoC. The first carrier board supported
> is the Radxa E25. Add devicetree binding documentation for it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
