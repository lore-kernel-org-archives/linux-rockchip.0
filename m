Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7780C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEAOsDOmA6/d6+dPr0VNcKftGRWELWuRfs76ZHXY/so=; b=rxTLFwkeBvVQCX
	7Lirmhr7SnolghXXw9Qi79Gj2dKp1+40Il4mMlXhBiWumx41Tc70t6eKkp9C2vDVKYOnwBN/u0ax3
	n0f5wAUuhqBAf8+u6DdALR3CHggOkdPLGE852b5BDJH0QLSk0iMolLBzAsLjesnd4n0evHl5IcE7P
	xRxPhihHyUcim1+hNDxbn3fAGNkA3zejzDHBWRNwYSmyzFMBQ6I+IgRkX1GdqFobScxpNzuhZtXJ3
	tScN/OrNXdAJqLGKQQZiSP0AICYOOqN8qxLJKijfDL5nn39MwyQd8uLA0s/Ttq92DxF3eLqTr/hUu
	QFBfo9l+wIY0PHAi+83A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndarN-0059GK-P0; Sun, 10 Apr 2022 16:56:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndarC-0059EG-9h; Sun, 10 Apr 2022 16:56:11 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndar9-0006dP-LS; Sun, 10 Apr 2022 18:56:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl: add rockchip,
 rk3036-pinctrl compatible string
Date: Sun, 10 Apr 2022 18:56:06 +0200
Message-ID: <1890974.PYKUYFuaPT@phil>
In-Reply-To: <20220330133952.1949-1-jbx6244@gmail.com>
References: <20220330133952.1949-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_095610_370897_DCFDF2F4 
X-CRM114-Status: GOOD (  13.60  )
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

Am Mittwoch, 30. M=E4rz 2022, 15:39:51 CEST schrieb Johan Jonker:
> Add the compatible string "rockchip,rk3036-pinctrl" in already
> in use in rk3036.dtsi to rockchip,pinctrl.yaml.
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Linus, I guess this patch should go through the pinctrl tree :-)

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.y=
aml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index b0eae3a67..9e90faf9b 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -33,6 +33,7 @@ properties:
>      enum:
>        - rockchip,px30-pinctrl
>        - rockchip,rk2928-pinctrl
> +      - rockchip,rk3036-pinctrl
>        - rockchip,rk3066a-pinctrl
>        - rockchip,rk3066b-pinctrl
>        - rockchip,rk3128-pinctrl
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
