Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A3AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 00:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cTV5r+dHc0VmUQSmxleLy4Vp34x3nXnyBTpOY07Osg=; b=28r5ywjKWpNmn8
	9XrPtZWAjI0ILBraZcT8W8d/QX2dBHIcUC+TXZJdH+xZOTyNxwS69NfeTIYGXgUqiW70FeE01/zOM
	EZlPf/objKjPXbxsadExRC0r2FQmR6VfDmR6rh+zurk5LmkLSGQChLwGxm9CkBfF1xIswaYVG3bEl
	ycMTuXsBE7afZ/uuEyGqpHjyEfMeGDVCsrZv1qayF7tGADqlW4CDF6p4KENJySAHPnfVyMQpAutYY
	2CPcE76Cz2Avvtq0t0JILj/0PWmEVJVRhNtIXZN8MF0+iVKMu6lRMaRKpGOCghm1uHDcp+EQquQig
	6syx6TNGKneZAtf/eYWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXY1K-000kFM-Oy; Fri, 25 Mar 2022 00:41:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXY19-000kDf-Hs; Fri, 25 Mar 2022 00:41:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 74584617FB;
 Fri, 25 Mar 2022 00:41:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C80FDC340EC;
 Fri, 25 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648168885;
 bh=FbOzwJQ3VItTPiRwVL0i6iYEw4wn48XltfsXSq3Gp0I=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=heQg+oDa7Y6hrV9cfifoxjjs109z+q36R8eT3+BFw4M0zUjooFDcroS4+WlBhFu8P
 GeyTbIPNwH8DN4D5L87WCjB6fsExxxYylolVtUVdqMnWNZLSXMI0bt77o83lwoDqsf
 U1V//fakJzWSm9GAFDn51NoPEQr2Xd/B88ALmkyf10pi8RjLf/6XnUHqOXwnRd6dx/
 Hbgm258ar/AEJ/RMB7grT+bdeR48/HT9+1RBcl9MaqOquU/xj0rDw4URq56v8wncNP
 Pk4HrDByhLh2ixpsORYTVluAGEBpP2gInzE4wN2G4QWvXSfZO8sZ6SsS+OisfXWtjV
 tR3pLBOcq+IAw==
MIME-Version: 1.0
In-Reply-To: <20220321200739.3572792-18-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-18-clabbe@baylibre.com>
Subject: Re: [PATCH v3 17/26] clk: rk3399: use proper crypto0 name
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org
Date: Thu, 24 Mar 2022 17:41:23 -0700
User-Agent: alot/0.10
Message-Id: <20220325004125.C80FDC340EC@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_174127_679184_011E02BD 
X-CRM114-Status: GOOD (  14.45  )
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

Quoting Corentin Labbe (2022-03-21 13:07:30)
> rk3399 has 2 crypto instance, reset for crypto1 is correctly named, but
> crypto0 not.
> Add a 0 to be consistent.

This is OK because nothing is using the define today?

> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  include/dt-bindings/clock/rk3399-cru.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
> index 44e0a319f077..39169d94a44e 100644
> --- a/include/dt-bindings/clock/rk3399-cru.h
> +++ b/include/dt-bindings/clock/rk3399-cru.h
> @@ -547,8 +547,8 @@
>  #define SRST_H_PERILP0                 171
>  #define SRST_H_PERILP0_NOC             172
>  #define SRST_ROM                       173
> -#define SRST_CRYPTO_S                  174
> -#define SRST_CRYPTO_M                  175
> +#define SRST_CRYPTO0_S                 174
> +#define SRST_CRYPTO0_M                 175
>  
>  /* cru_softrst_con11 */
>  #define SRST_P_DCF                     176
> @@ -556,7 +556,7 @@
>  #define SRST_CM0S                      178
>  #define SRST_CM0S_DBG                  179
>  #define SRST_CM0S_PO                   180
> -#define SRST_CRYPTO                    181
> +#define SRST_CRYPTO0                   181

$ git grep SRST_CRYPTO
Documentation/devicetree/bindings/crypto/rockchip-crypto.txt:           resets = <&cru SRST_CRYPTO>;
arch/arm/boot/dts/rk3288.dtsi:          resets = <&cru SRST_CRYPTO>;

Uh oh. Just don't change it and think about something else when it
starts to feel inconsistent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
