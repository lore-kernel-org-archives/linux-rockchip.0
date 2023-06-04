Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD741C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jun 2023 19:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvSAQjhoAuEskjRuvQ0ChkZzmt8ey/3uoFYl49PmKFM=; b=LB6T4lmigU1U8l
	JL0vaOZNg4Ir9Uu4bNHEfZARKOHnbxg+ZscBaHIovSlYhNqZ4NvrzxQhLw2LRoKl8d3urUmr5olh5
	1EqeF7Ojirnie7Q0LYZjf9CMeI5r0kX79jo5Q2fRM92ulkQNL+rQPTmL7EqA9aO2LHBChtHWX6VVp
	Nle4Bs97yHWPQiy4urIPqm4JIlg7v71gSS6UpeqRUDs4USKB4rQUe8HqSC2i789kMkRPaW6ONhrDO
	+i7z8eNkk/AatVzsYe3dDS5J09KVBpfQqyFDIhrNssPJGyns2FxcZLdSses85Q/nUdLUfo/oL9JoC
	QfaDbaIVLb7GfGdYnOaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5t8x-00Cr8u-0o;
	Sun, 04 Jun 2023 19:11:59 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5t8u-00Cr7c-0F;
	Sun, 04 Jun 2023 19:11:57 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f6255ad8aeso645329e87.2;
        Sun, 04 Jun 2023 12:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685905914; x=1688497914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=azAP3x1baPIF9TbZBZ/iwj9CaGYl4y3es7jb/ELOFIA=;
        b=pfxsmkbyB8/+7tGHKrqVx1tdPTcUyi0+pa7WFkwh1EiHwkuyD2wc7eD5CiOqwsGm4b
         TurgxvO4X0a6HuMdjVXV8ox/CEwfRpx98kXBdD9RgrY8reW9kFLDSdAvyv8ibz4g7JYf
         CVO2D9TnG02RfiUeAtsxYriCX/wXUFYA0Z1fm6aXJKAhnBKH0V8Y+9QRbq4vU9+/STBv
         C6GPK8TdLQDQPU2s3Mo2GeHFzYoCfneUDF4j80vgrCsMKTw3/4XOxN7tiEfAahuch+Fe
         upST+TcXK4FuIsCh2ECSIKLsiPa2UgvL8acXEmMCaYSZCuOsUpVOR7l7rB430YhAzUS+
         aUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685905914; x=1688497914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azAP3x1baPIF9TbZBZ/iwj9CaGYl4y3es7jb/ELOFIA=;
        b=giOo8kMIk8Y/LNkGsA8bSorFVNi4vhFacE26BuVJycWVuoknjk5XNdPnLkPFLdkrIs
         DS0kk7ZQmAJCWgLQIER5Klif01XDgqgdYnsV6o2b+DlcXIuSwYk8DBgmWOlSP6gH7rut
         CbaDqkg2JSGubKybqviyR9BaXoig+ybKzXRnS08cQebbTVwpXoq5oRwLq0uTOIyhh3zw
         9TaOTvWL40XeXs4YXbai1N/0pic92pQ4yOU5PasauOEHuLDOUOqW73Stz2C40tpSYLii
         Y05E+jxX+nSERwAW75DUgxiovM5jJT41GUORT0mTuupHNNAQXGpZlIFG6LPst09Oa6vM
         VaNw==
X-Gm-Message-State: AC+VfDxD6PKB+LurbjRw1BEncHywm1sxKBZGUOrBXMKklLuq2UMaRDl4
	rja9nlUT6fc4FjGZ7knPLwI=
X-Google-Smtp-Source: ACHHUZ4QX84YGTAap42xf8IcVLART9ckvKesrVoX2+oE65kP2pidl7JNsvozPo1y0LQJ9I7eRhD7QQ==
X-Received: by 2002:ac2:46f4:0:b0:4ee:e0c7:434d with SMTP id q20-20020ac246f4000000b004eee0c7434dmr4561954lfo.51.1685905913218;
        Sun, 04 Jun 2023 12:11:53 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id u8-20020ac25188000000b004f377f317d4sm858351lfi.285.2023.06.04.12.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 12:11:52 -0700 (PDT)
Date: Sun, 4 Jun 2023 22:11:50 +0300
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
Subject: Re: [PATCH v2 3/6] dt-bindings: ata: ahci: dwc: enforce rockchip
 clocks
Message-ID: <20230604191150.aqx4jewtifsknijt@mobilestation>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
 <20230522173423.64691-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522173423.64691-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_121156_117390_222EB83B 
X-CRM114-Status: GOOD (  18.41  )
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

On Mon, May 22, 2023 at 07:34:20PM +0200, Sebastian Reichel wrote:
> Provide a specific list of clocks allowed for RK3568 and RK3588
> based DWC AHCI controllers.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/ata/snps,dwc-ahci.yaml           | 34 +++++++++++++++++--
>  1 file changed, 31 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> index c6a0d6c8b62c..37830185b9b5 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> @@ -13,9 +13,6 @@ description:
>    This document defines device tree bindings for the generic Synopsys DWC
>    implementation of the AHCI SATA controller.
>  
> -allOf:
> -  - $ref: snps,dwc-ahci-common.yaml#
> -
>  properties:
>    compatible:
>      oneOf:
> @@ -41,6 +38,37 @@ required:
>    - reg
>    - interrupts
>  
> +allOf:
> +  - $ref: snps,dwc-ahci-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3588-dwc-ahci
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob
> +            - const: ref
> +            - const: asic
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3568-dwc-ahci
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: sata
> +            - const: pmalive
> +            - const: rxoob
> +

As I already suggested here
https://lore.kernel.org/all/20230421192822.yckihqlk2vlkueyc@mobilestation/
let's create a separate DT-schema for the Rockchip AHCI SATA
controllers. Please see the way it's done for Baikal-T1 AHCI SATA
here: Documentation/devicetree/bindings/ata/baikal,bt1-ahci.yaml
Your generic schema patch doesn't provide a full hardware constraints
(what about resets, number of ports, etc?), but makes the generic
DW AHCI SATA controller DT-schema harder to read.

* Don't forget to add the "select: ..." property to prevent your
DT-schema from being applied to all the "snps,dwc-ahci"-compatible
DT-nodes (see my comment to the previous patchset revision).
Alternatively you can just drop the generic DW AHCI compatible string
from the DT-files (but in this case you would need to add vendor-specific
compatible string to the driver).

-Serge(y)

>  unevaluatedProperties: false
>  
>  examples:
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
