Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD20FC10F1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 16:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxnNjBwC65zRQ0PiWNzMf/U3WQd15/9naBM99Hdi6To=; b=FdvMX4JnNc1oqg
	+M8O9OHdWUQ85pr6MXPZ4TC8pLx/9Uvb4/IjCKUMw9024wDIHNaQrl6XPV5ULrvos6Z++Jp6Ch3+d
	xjRsB7NfuhiMcKMpi3PeatnpX4dV2MJLjvfX6P0wvCp/wlaT673K/zU3Gk0g+p+0QBZpLpQ7/TRFu
	Uq5ENpW5TiqVij43Ic2ANAVfIb3eBOwLut2oF04rK+MRh+BLLBSqKRooNqEJHvgo7Ov5PslmIWIzw
	wwE2ed/3xtC86FfV7dp5mttyQHgRg8+YdvXSy+wF2mf8hp3drrJFMIYKEuGE6iCSc42LCWSJBltx1
	Lr9ncpgg3G9TkJ7R3ElQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7f8S-000L7v-NP; Tue, 20 Dec 2022 16:06:32 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7f7z-000KgY-Bh; Tue, 20 Dec 2022 16:06:04 +0000
Received: by mail-ot1-f50.google.com with SMTP id x44-20020a05683040ac00b006707c74330eso7409002ott.10;
        Tue, 20 Dec 2022 08:06:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8YG3bJMRRAs+4R88/SEWWX5CeSnSiZ81eWgJ4ufJLU=;
        b=NCIhnpNfchr0XRXkusrDVBy6oY5YKIULXl17DedwfLhzpbIFwTbUx9R1mvB4dfYtCe
         xmfEYalztaiuffYUnVEZPAAzKqlt94tt4Cd62U80vEBafxXHsCsHTsh3RP7U9/o2Qpi0
         SjNC5fqoq60/OPFQsOKZxtI0ZXkMeGmBRkv/4cZNotHJofl48rK0ZWXWb1S7aun+BMqh
         GwhGJfTlJndmSAIZyHgaVoPxYhSnpRaMZl/bh95vi4UqK3AoiBmSnw4DL6PhbPkjVHbi
         S7LgooXj9+h2ps8bPoWkkOJxrKsnE1N65ka7Y5gysSWIuErIFkL62f6OGQi+dLLb/7YX
         br5w==
X-Gm-Message-State: ANoB5pk97Dhq9nml6SaOQI+Xbs2E0mGIPkp42OhrlHVwdxFz5JmXcU6T
	z9BMHw7/8/nZGVJykcdGkA==
X-Google-Smtp-Source: AA0mqf4tF/ZFxy5NOQx96hQL7bxwIeaLFezvzgFmcVU3atu70GP5RGx1Qg1PVYgEEW9vY6fEOhgs1Q==
X-Received: by 2002:a05:6830:4cd:b0:670:73fc:fa3c with SMTP id s13-20020a05683004cd00b0067073fcfa3cmr17408144otd.36.1671552360486;
        Tue, 20 Dec 2022 08:06:00 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v15-20020a05683018cf00b0066c3bbe927esm5798631ote.21.2022.12.20.08.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 08:05:59 -0800 (PST)
Received: (nullmailer pid 635046 invoked by uid 1000);
	Tue, 20 Dec 2022 16:05:58 -0000
Date: Tue, 20 Dec 2022 10:05:58 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: kishon@kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org, heiko@sntech.de, linux-phy@lists.infradead.org, airlied@gmail.com, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Message-ID: <167155235801.634980.18150426131189597701.robh@kernel.org>
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_080603_470250_F11858EC 
X-CRM114-Status: GOOD (  10.13  )
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


On Mon, 19 Dec 2022 17:54:16 +0100, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V3:
>   Filename matching compatible style
>   Drop "Regulator phandle for "
>   Specify properties and requirements per SoC
>   Sort order and restyle
> 
> Changed V2:
>   Fix title
> ---
>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>  2 files changed, 170 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
