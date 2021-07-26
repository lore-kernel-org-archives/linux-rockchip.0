Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39BE2C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 09:08:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1CEB60F52
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 09:08:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B1CEB60F52
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIhWqMxwgHkLnczwzjJtH5sgvFBpn6nw/aalLyRPoXM=; b=GnWU+dGB8GL8vO
	eVqrVuJEaOTXf4Py9s+EJgegknF9CkiXhMlD0gBVV4yraId8lQY+lwv8W7m6eWxwgaLy5nYXsTV3T
	AqXojAQYXTB93FEw0LXYX6P224Nm7qLGR0S2utdTy6nSJ39cW3VnDrdgOARQUIdykMZPozmIiugTU
	muinSvFbKGeOH0tcAKf2BxViFb1/CJAjDznctb/cim9xNUX5XXguVXJ1AYnbVEzwoZ5aV04uLZQr0
	X/SomS+vc/YVzJV6y1kpKwwUCROQuS12wsNxtKHvaeoW4TtrE6/lVxzEq69oQuZbWdg+QaOdMPZq7
	B0FhpPqxgVSrNuE08DTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7wbN-00AMah-Vx; Mon, 26 Jul 2021 09:08:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m7wbB-00AMXi-AC; Mon, 26 Jul 2021 09:08:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m7wb8-0001Nq-Qe; Mon, 26 Jul 2021 11:08:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: thierry.reding@gmail.com, lee.jones@linaro.org
Cc: u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, cl@rock-chips.com,
 pgwipeout@gmail.com, xxm@rock-chips.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pwm: rockchip: add description for rk3568
Date: Mon, 26 Jul 2021 11:08:29 +0200
Message-ID: <5607670.PIDvDuAF1L@diego>
In-Reply-To: <20210726090355.1548483-1-heiko@sntech.de>
References: <20210726090355.1548483-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_020833_401152_31FFDC80 
X-CRM114-Status: GOOD (  17.54  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 26. Juli 2021, 11:03:54 CEST schrieb Heiko Stuebner:
> From: Liang Chen <cl@rock-chips.com>
> =

> add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> a rk3568 platform to pwm-rockchip.yaml.
> =

> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Sorry, forgot to read the slightly longer original reply thread.
The binding is already:

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>


And I guess the pwm maintainers would be responsible for picking
up the binding addition and I will pick the devicetree addition after that.


Heiko


> ---
> The core rk3568 support was mostly applied, leaving out the pwm
> parts. So I've separated the binding and dtsi patch out
> into its owm series, so it can be better reviewed.
> =

>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Do=
cumentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> index 5596bee70509..81a54a4e8e3e 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> @@ -29,6 +29,7 @@ properties:
>            - enum:
>                - rockchip,px30-pwm
>                - rockchip,rk3308-pwm
> +              - rockchip,rk3568-pwm
>            - const: rockchip,rk3328-pwm
>  =

>    reg:
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
