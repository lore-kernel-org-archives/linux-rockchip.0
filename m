Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAECFECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 20:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YItlbsmhEnQIA40cSmTki3XUj2lOUzM54ZlsvE5TsKM=; b=e2KB2svi1vJS/L
	brM40oVU9e0mn0CfSK7dnH7JgEhqgCbjF/eCg/PGNfCdzo1m2BmS9Lx/QONFz+oh1gGDRULpkzKnV
	u2wueJZD6qgsT47ovIrjkIVFp8x7LSLvGily9glCSAWfaov1WdNjtuA22Ij6bj7mLsATVmOPKhU7r
	N1rFvFtK/GQlIZ6pere1J3kS4RTj90JGSM8E2xnXOXfDzA8Z+R+ppSHOzUjAXctichhPq6FJXHO66
	gB2Ye10BW9KzDEt46dYOMubFhNAxj5d4a0u/R7FHgOc/Zq4/bHxn8lKsCd+w46tXykHiUHNkngAE8
	ytgP/TEgOqAfxRLFmH7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo9Gr-00ElrO-Uv; Thu, 27 Oct 2022 20:14:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo9Gf-00Elpc-KO; Thu, 27 Oct 2022 20:14:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oo9GT-000329-74; Thu, 27 Oct 2022 22:14:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kever.yang@rock-chips.com, Johan Jonker <jbx6244@gmail.com>
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com, hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de, olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/4] dt-bindings: timer: rockchip: add rockchip,rk3128-timer
Date: Thu, 27 Oct 2022 22:14:08 +0200
Message-ID: <4123966.kQq0lBPeGt@diego>
In-Reply-To: <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com> <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_131421_716977_F1CF0D13 
X-CRM114-Status: GOOD (  12.80  )
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

Am Donnerstag, 27. Oktober 2022, 02:52:35 CEST schrieb Johan Jonker:
> Add rockchip,rk3128-timer compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> index dc3bc1e62..b61ed1a43 100644
> --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> @@ -18,6 +18,7 @@ properties:
>            - enum:
>                - rockchip,rv1108-timer
>                - rockchip,rk3036-timer
> +              - rockchip,rk3128-timer
>                - rockchip,rk3188-timer
>                - rockchip,rk3228-timer
>                - rockchip,rk3229-timer
> --
> 2.20.1
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
