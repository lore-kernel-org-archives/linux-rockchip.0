Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A26C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 23:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjmDxTIw7GedwBkcQp8wpO067TbByxTY8NoHWAjPy/g=; b=RIHvQ69zVw1Iwf
	8F6oLw0Bd4V6vH3LH5ne+mXHwYdIt6k1mBnxl03hqBBCGq8j4Z28LB13IU/X5AZHbEURr/atfTkXk
	38vqpD+qiBNdxRZfoUh4AOkBNYAYNmGazHU/eMCj1gkXJqJYD6AsTKR6rb5ubNxKeQEIRKV0HtUZo
	6tXRjueKvVEc1i6MiK4YP4/qcVyUx6Tp72luBP+ydZ2J8kuk0tF8Qwa4Hx+G5pV5X788fTFWur7DW
	wFnT09SpEJu5hCiy2jbzzKViO/ETmu8g/tNVrj37/8seliNEF9+rbsejaYseQNhs3pz+7QBHUW6v+
	CPcStjZCEDsaIW6IjgUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rId5x-00Fex2-2U;
	Wed, 27 Dec 2023 23:13:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rId5u-00Fewg-2v
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 23:13:48 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rId5t-0000x7-Kj; Thu, 28 Dec 2023 00:13:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com, Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: media: rockchip-vpu: Add RK3588 compatible
Date: Thu, 28 Dec 2023 00:13:45 +0100
Message-ID: <2755716.n0HT0TaD9V@diego>
In-Reply-To: <20231227173911.3295410-4-liujianfeng1994@gmail.com>
References: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
 <20231227173911.3295410-4-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_151346_949061_EBCAE908 
X-CRM114-Status: GOOD (  15.90  )
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

Am Mittwoch, 27. Dezember 2023, 18:39:11 CET schrieb Jianfeng Liu:
> This patch adds RK3588 compatible in rockchip-vpu dt-bindings.
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index c57e1f488..600ad351e 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -24,6 +24,7 @@ properties:
>            - rockchip,rk3399-vpu
>            - rockchip,px30-vpu
>            - rockchip,rk3568-vpu
> +          - rockchip,rk3588-vpu
>            - rockchip,rk3588-av1-vpu

Same thing about the alphabetical ordering and including dt-people
as mentioned in patch1.

Thanks
Heiko


>        - items:
>            - const: rockchip,rk3188-vpu
> --
> 2.34.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
