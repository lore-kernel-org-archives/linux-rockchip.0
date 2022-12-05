Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99803C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 20:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwkO+EQjKiypU3eAOreY2H4ww7xcCD37cx6qaiX+iyU=; b=3Y9XgEgGci/iT9
	y7kmoRNKkjOJugUucgspduqFYDLYP8u9OC0r2ygxzTCfzyAMvAuhUpxqPCvbClp9JLcJpeA2CErxl
	J/I3uI044SpmcwSy8xm2aay/Cp6JpT1o2FnpzvFk/XPEHJ8LIAyU6XacT4vuCapS7dOzYJXXludxn
	XwK4Hkwt3Ba73bZdqdrUwQ93a/Uf3ZdmEh/TwfNz6uss/xFIJwopctasEem2QySqUQ2gerQ3waKx/
	goLulOweMx9vue6uDIb210TeiOc/ezxtMu3i0xgaHu1iXk6AFlBauXHqajsGXPUd4VS0Xc2jZcTLH
	cnvCOAcZ6Et40fWnomug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2I2L-00AHKa-TA; Mon, 05 Dec 2022 20:26:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2I29-00AHGM-S8; Mon, 05 Dec 2022 20:25:51 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p2I25-0006MH-6e; Mon, 05 Dec 2022 21:25:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jagan Teki <jagan@edgeble.ai>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date: Mon, 05 Dec 2022 21:25:44 +0100
Message-ID: <21697853.EfDdHjke4D@diego>
In-Reply-To: <20221129075424.189655-7-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai> <20221129075424.189655-7-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_122549_959176_78FF9C1D 
X-CRM114-Status: GOOD (  18.13  )
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

Am Dienstag, 29. November 2022, 08:54:22 CET schrieb Jagan Teki:
> Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
> based on Rockchip RV1126 from Edgeble AI.
> 
> Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu2 needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 2(Neu2) IO platform.
> 
> Add dt-bindings for it.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Heiko Stuebner <heiko@sntech.de>

@Daniel: do you want to pick this patch into the clocksource tree?

[together with the similar rk3128 one?]

> ---
> Changes for v9, v8:
> - none
> Changes for v7:
> - collect Rob Ack
> Changes for v6:
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..26fdd205a899 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -85,6 +85,12 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
> +        items:
> +          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
> +          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
> +          - const: rockchip,rv1126
> +
>        - description: Elgin RV1108 R1
>          items:
>            - const: elgin,rv1108-r1
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
