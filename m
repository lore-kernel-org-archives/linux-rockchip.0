Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E41CE7B11
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 09:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHqH+xehtif8OUor6E37Lrxjt2ZOXdsCJXlTT8lz9lg=; b=ahN6DWffc6pNHs
	LfNPlBT8FPrxew0NFuI/8zW3oxRiigI7SIDwLa7JsrLHPcPgzXo5xvcxdTYDgQCOd1H0jTVNrrbav
	UlHz3EI1wxjxPfFR2UOgrvhVAZc5Nw6bEgw6UPDgz9tL/f+319oTRabz2hzesLtYsSTElJEUq/Tix
	8c64G1yD4P1AR0adgl6qY4YnJr3Fc14jrEQzte3R5w5j9dG8ZYqFUVcIwqZ42mHBRn0VZQiV8JAOV
	F0AjoR3FchJqbsQZeO9729kcIIFbh9AefQnyG0O/mPFGOu5b7ZDJr8GPNxLivmDj6fzHURB/ci5nO
	QwGilpavQ66yTz+9AMiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlnLK-002jxL-1y;
	Thu, 28 Sep 2023 09:29:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlnLH-002jwe-1G;
	Thu, 28 Sep 2023 09:29:56 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9TfQg119815;
	Thu, 28 Sep 2023 04:29:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893381;
	bh=g+Okr5QpQDgpPh2snfByuM6vFuk+PcZyuirCEPx3X6I=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=axMTn5C+we8O2X+PBwJ72/Y4ROFypb8WMOgjsAlwGunpnBRFHs1V1RGLNLYjP6bCW
	 EsvCd5GVNxAAzq2nyJzJVCAAwbOKMQT+oHlz7BuSppTAAFekTpVPCoxRvStUnNlL/H
	 62JSbodfpyHW2dnK/juyahOTihvVH6ZJQd0sW2rE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9TfDQ015673
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:29:41 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:29:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:29:41 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9TeCA093668;
	Thu, 28 Sep 2023 04:29:40 -0500
Date: Thu, 28 Sep 2023 14:59:39 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <heiko@sntech.de>,
        <sebastian.reichel@collabora.com>, <jonas@kwiboo.se>, <megi@xff.cz>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Message-ID: <20230928092939.lfvfqqiii43hrmyg@dhruva>
References: <cover.1692632346.git.efectn@6tel.net>
 <0281d757b4cbcf2092167bdcf3d112e330fe6b92.1692632346.git.efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0281d757b4cbcf2092167bdcf3d112e330fe6b92.1692632346.git.efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_022955_510309_B3E3BD54 
X-CRM114-Status: GOOD (  12.90  )
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

On Aug 21, 2023 at 18:47:57 +0300, Muhammed Efe Cetin wrote:
> Add Orange Pi 5 SBC from Xunlong.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ca5389862887..b9649e27bc82 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -877,6 +877,11 @@ properties:
>                - xunlong,orangepi-r1-plus-lts
>            - const: rockchip,rk3328
>  
> +      - description: Xunlong Orange Pi 5
> +        items:
> +          - const: xunlong,orangepi-5
> +          - const: rockchip,rk3588s
> +

Reviewed-by: Dhruva Gole <d-gole@ti.com>

>        - description: Zkmagic A95X Z2
>          items:
>            - const: zkmagic,a95x-z2
> -- 
> 2.41.0
> 
> 

-- 
Best regards,
Dhruva Gole <d-gole@ti.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
