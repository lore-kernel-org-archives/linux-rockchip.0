Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 183BFC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 21:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpR423tv5Rn74qMDnXi/rKCu0VwpxmU1e8Dn1iRQh6o=; b=L0YGFJsxLmbwTA
	0YeHwZEYvWOL2CcE0/nGvOUmwnTJ+O/R9H4/xj1JA6sKooGnaF0xjQhXv0Gt/Ch5vw+M/7eOLHE3a
	O+paUqtYrg7N8c1Q/ehYiBpfRA7D61DJNc+ryAcDD4w5PaijSjPHnElC24cQdyLnbh46by4lG4GH+
	a3ELlyEusEMNfJdvVgql6zOsuu5h4+nt/ojY101tNzhk1yi0NW3tyNnqVSV/IJKx7XkrZD/I+Rr/H
	kXGwBWTF8gl3fZHsa53cBwt5FsuPNYmoQqQiAK83L+H4toThGplamiC0/4cYhCE/++ysNKVdtwObV
	bd142/yJX1+UK6rfLNRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4e3-005H3u-Ed; Fri, 04 Nov 2022 21:54:35 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4e0-005H2p-Gj; Fri, 04 Nov 2022 21:54:34 +0000
Received: by mail-oi1-f171.google.com with SMTP id l127so6523947oia.8;
        Fri, 04 Nov 2022 14:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npGaVAwUn8c2ti1bCfTH5Q6nfCxHujNBUhBWckDN3Rw=;
        b=IElWxDXkaob8mvzkldFnGw7eUT/ZuPmVSHnjqMLBWRXJVYJ0EN3FTWE1pNXg+sW/O3
         9pgy/SPXZ4Wx3ZBRFuekaEWMQXsYcPcv0rTCiDwUWdUhh1v3IfNYORtuXEKHrblf25Wx
         aHbwSeVSU+q+lmFZh9k8w/jBkm2dSINrpwkf5mJg3Yyede0ha6L9OjGUViYQMUpsN5Wd
         eOFckZCLkE+6f6+gCfkIAlNwVo+AV/iyAMgkOufXlZ1mtj0IGHWdnqzyuB5El5EdzYbr
         7iuVyZH8TO5j83jVaL4y2VBXu9OZcclFUrz0VOmh/6s8HUGgoJYCiKggsvbu7kXje5vQ
         k4kw==
X-Gm-Message-State: ACrzQf0l6+wNQeyatG5zP+KJ7PN86ZXfssoRHkuKylpmTnJgTILn1eQT
	pIP5FEtG5i43n1EL4Siv4A==
X-Google-Smtp-Source: AMsMyM4quzX/kOKQolKqucQ/vJpGWoaG3f+zw89mXBu3/+4PZouFb7sbgETZqEgzLf3rmj2Lbw17BA==
X-Received: by 2002:a05:6808:f93:b0:355:4d84:c802 with SMTP id o19-20020a0568080f9300b003554d84c802mr20407096oiw.187.1667598870615;
        Fri, 04 Nov 2022 14:54:30 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n3-20020a056870348300b0012d6f3d370bsm60379oah.55.2022.11.04.14.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 14:54:30 -0700 (PDT)
Received: (nullmailer pid 2893922 invoked by uid 1000);
	Fri, 04 Nov 2022 21:54:31 -0000
Date: Fri, 4 Nov 2022 16:54:31 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, Markus Laine <markus.laine@fi.rohmeurope.com>, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Chris Zhong <zyw@rock-chips.com>, 
	"Andrew F. Davis" <afd@ti.com>, Artur Rojek <contact@artur-rojek.eu>, linux-kernel@vger.kernel.org, 
	Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>, Hans de Goede <hdegoede@redhat.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Sebastian Reichel <sre@kernel.org>, Dmitry Osipenko <digetx@gmail.com>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Purism Kernel Team <kernel@puri.sm>, Orson Zhai <orsonzhai@gmail.com>, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: power: supply: define
 monitored-battery in common place
Message-ID: <166759887101.2893866.8476609318769745646.robh@kernel.org>
References: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_145432_576978_ACF2F818 
X-CRM114-Status: GOOD (  12.73  )
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


On Wed, 02 Nov 2022 14:44:59 -0400, Krzysztof Kozlowski wrote:
> Define the type of monitored-battery in power-supply.yaml common schema.
> Reference the schema where applicable to enforce the above in bindings
> which have monitored-battery property.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes since v1:
> 1. Re-work the patch - define the type in power-supply.yaml.
> ---
>  Documentation/devicetree/bindings/mfd/ene-kb930.yaml        | 6 +++---
>  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml   | 2 ++
>  Documentation/devicetree/bindings/power/supply/bq27xxx.yaml | 2 --
>  .../devicetree/bindings/power/supply/ingenic,battery.yaml   | 4 ++--
>  .../devicetree/bindings/power/supply/power-supply.yaml      | 6 ++++++
>  .../devicetree/bindings/power/supply/rohm,bd99954.yaml      | 1 +
>  .../devicetree/bindings/power/supply/sc2731-charger.yaml    | 1 -
>  7 files changed, 14 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
