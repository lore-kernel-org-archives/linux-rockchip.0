Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28EDEC77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 11:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UUKm7wuYQ/wyXYez+p+WvYZMUfjIuY4cpb/Wi+JRRA=; b=NB1ZUTfp1nUWNz
	NH7+XOv7Q1z4gc/6xQjekgEg9uhzxh6c/GjCNz93WJHj9eqnv+A1BR0PO6beM3EtHyV8WiPzRgnU3
	HWrAn00G3MLgOODssBvOwjZ5Icr96aURnc4po6tXRc1n2Btwe0jBQyxaJO2BA5tEVOTow6s89Gomx
	4E2VmvLJ0/HtaUDegOcgnH0W3qzAeHpbOnMaIbsCUGGvaU25OHjJQ1r+wyqur9HaDwX4pvp/2f7gq
	ePwKwMkvCFRWFXtPOCOQe8Y49T6ZxFzRlhKVj0JgltxHLC0ril3k3ge1+azarsZF5hy7GWgo1Pa5y
	sSYEqJ0N0wJeplzQW6LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4K79-00HFYm-1T;
	Wed, 31 May 2023 11:35:39 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4K77-00HFXT-0R;
	Wed, 31 May 2023 11:35:38 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4effb818c37so6371943e87.3;
        Wed, 31 May 2023 04:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685532934; x=1688124934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YtaeayrxwnpVa64jGqwH3nylPnKgLH9664Qace/gSBA=;
        b=aMaqn41hzNWiWfn+hx37ZzesODgofhDklubUC+rUH4M6gg6wyKrv92npnIYfoC61vR
         3Ihs6LKRRZJdJwayqXPndJrJR8qpHwHyomoNocsKwxaxQ5Bl78XqIV5kJEi+klUfLg+W
         NzlvX1s7P02BY1VD2YyHdn/dJSjCh75pHOpm49UzWR4v7ojAyrBVAc27ZIu5KwAZzgHa
         WGX+c8wxbz/WIFpiu2bVMnaY7VBnxunWk2xGRr1X5xYdP0UhC+NaAzoLgQ+kQXpV62Gu
         WZqL28ooj1Qtj9mVi5chfNG5lY8s43HoxjNNIxAp+Ak+kQPgHbd8OuS2MjaW2vv83h1z
         z5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685532934; x=1688124934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtaeayrxwnpVa64jGqwH3nylPnKgLH9664Qace/gSBA=;
        b=CS0BUIMu1W1vKfn/9xq/EnQWiutB4v7M9XjCNlgHDMziDjMZxG7pRYwcBvncaVnm5q
         /Bba3LuUDWY+oZQM6tLSGryGJDIOp9BNSN630s62wn9Ch9v6yDyF7RkAuqp7O+3d4yqG
         vmtftp0MTF/9ACXxh/nwwAGh5B0Eso/uFZmDpGZUb6wLK4Y5TIEHS4EL9suZAjZ82OE/
         bcWCxVrLHI7k50jXJJbRv5m33CdWLSOye1ewaT0GbNiTBQbqEHS9jIm2rOIH93r2UAJY
         Dkmy76g7QWyWk4I3Y10iZNxtWqN6H11vQtOz426u0YDVvG1CQKD4FhdksJX7288wnFPa
         2U2Q==
X-Gm-Message-State: AC+VfDzEVD/ibzhjMv2Drfl74+dbTDQPStvDYC7mkRFFjko2NQyOLsB/
	lpOjeYbh4lHGgdwIgIZ2D1A6orApq/z/qA==
X-Google-Smtp-Source: ACHHUZ4fnjb/mV3OvhnIK8X+bfU3M2FICrmkQDNJ91GcVsSM8BddGMIpS9+xFyVk2jpKrqeR3DnntQ==
X-Received: by 2002:ac2:4859:0:b0:4f3:9930:5b8c with SMTP id 25-20020ac24859000000b004f399305b8cmr2382226lfy.25.1685532933569;
        Wed, 31 May 2023 04:35:33 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id c15-20020a19760f000000b004f24e797c58sm675740lff.217.2023.05.31.04.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 04:35:33 -0700 (PDT)
Date: Wed, 31 May 2023 14:35:31 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 0/6] Add RK3588 SATA support
Message-ID: <20230531113531.rxmupa2mbx4tn2re@mobilestation>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522173423.64691-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_043537_179151_47E3C098 
X-CRM114-Status: GOOD (  16.35  )
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

Hello Sebastian

On Mon, May 22, 2023 at 07:34:17PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> This enables SATA support for RK3588.

Thanks for the updated series. I'll have a look at the DW AHCI SATA
part of it on this week.

-Serge(y)

> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20230413182345.92557-1-sebastian.reichel@collabora.com/
>  * Rebase to v6.4-rc1
>  * Collect Acked-by for syscon DT binding update
>  * Use ASIC clock description suggested by Serge Semin
>  * Also add RBC clock (not used by RK3588)
>  * Add extra patch narrowing down the allowed clocks for RK356x and RK3588
> 
> -- Sebastian
> 
> Sebastian Reichel (6):
>   dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
>   dt-bindings: ata: ahci: add RK3588 AHCI controller
>   dt-bindings: ata: ahci: dwc: enforce rockchip clocks
>   dt-bindings: phy: rockchip: rk3588 has two reset lines
>   arm64: dts: rockchip: rk3588: add combo PHYs
>   arm64: dts: rockchip: rk3588: add SATA support
> 
>  .../bindings/ata/snps,dwc-ahci-common.yaml    |  8 +-
>  .../bindings/ata/snps,dwc-ahci.yaml           | 40 +++++++--
>  .../phy/phy-rockchip-naneng-combphy.yaml      |  8 +-
>  .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 44 +++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 90 +++++++++++++++++++
>  6 files changed, 183 insertions(+), 8 deletions(-)
> 
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
