Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DABAECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 19:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obg4RJzXpHwXLmHHeRt0tT02DJBDAiAo0ll8FRj8/WQ=; b=sFVYNdZY21QOMX
	x6x+fXLbdwetOF1m+gGTGE7xewYia4YecsL9zLhxbEZvzw6C1TkiPrCC5pZG2vYphN2m9Wn2g8jvI
	o/8SgbAPORm3ZXJxGiO9Wp32nq0VCZhBk/YUNq8Ytrzl9PthjH2TK7gNjgHI7LQSSLyBJcQe42vfh
	r41/1JeZHj21/yQRjCsAEmc+CCK9mqNQssjPxlQf3hlPlLsBwJVr8c3pmxFkwgRBstYX/v/6oRDoK
	3VFbCUbFmcbJhcbqU3KgDs6Qy2WLWyGqRFnejxLlu4k9A2D6+1OMQhtyfqXnUU+lPj2kFrQ/oL2Oe
	plAbjSsGlMZ6UN7vvRmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHzo-009XXy-SA; Mon, 05 Sep 2022 19:43:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHb4-0096Br-5S; Mon, 05 Sep 2022 19:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=/GD81JF7pL2R4UyZLlVW0P95SJKUeyKZuMbYv44gxw0=; b=BwUnaHCif8J38bAMSKPf7NORuj
	xnx9x7oFma2vwjJl0sd6PLtcetti9N9h/SMsgZHWXf8XHBo6tx7tKusUQT698GBe6qXy2lRQoV2qc
	jBvsGMNAj5ZjUyqHUjrIDfwkBXBwyIbfq1q7dtKvT8Th0TmIBIFS4H2aStjQD700N9+TMldr2dHc1
	hB3CFsTygh+c+xRkpqx8bhC6OBc01BiG0BhZBZ4ZeOFpfoYq080s17/qY6LBOkRw2wFNvfv6S8VU/
	n9B341WAubrmTPWZgGnCUAqHzljy7ThWAy3T/wslplHkFL+Jrw8JKQX4FWlfEhqAV2mKbzBdSUYSv
	hLOriruA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHO0-009w1I-4q; Mon, 05 Sep 2022 19:03:58 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oVHNy-0001Ct-As; Mon, 05 Sep 2022 21:03:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, lee@kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date: Mon, 05 Sep 2022 21:03:53 +0200
Message-ID: <4707456.3daJWjYHZt@diego>
In-Reply-To: <20220831182629.79255-5-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com> <20220831182629.79255-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_200357_062024_A2EF7BDB 
X-CRM114-Status: GOOD (  13.51  )
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

Hi Sebastian,

Am Mittwoch, 31. August 2022, 20:26:27 CEST schrieb Sebastian Reichel:
> Document rk3588 compatible for QoS registers.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

change looks good, but this is a mfd-binding. So while the rest is for me
to apply, for the mfd syscon we need either Lee to apply it, or an Ack
from him for me to pick it up.


Heiko


> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index c10f0b577268..5369a56b8be1 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -59,6 +59,7 @@ properties:
>                - rockchip,rk3368-qos
>                - rockchip,rk3399-qos
>                - rockchip,rk3568-qos
> +              - rockchip,rk3588-qos
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
>                - samsung,exynos5-sysreg
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
