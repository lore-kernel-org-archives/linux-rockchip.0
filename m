Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95BE6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 23:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ai7KTzB33PJzCAb04/tBr+GO2cPOz5pUuAiRUHujec=; b=XzsTZWjC9Hbk5Y
	YSxxivicoNQukfPBQs54ST5rSCcbVfKtjS5OfTm3PrNPVApOZhRQSicoCg7dHrhQsMhPhI19gMcrl
	6zKWL9BGO+F7t3X4nLORcPirn+HXeuLS1EFzwqxxR0PpSL7HoT9PhC6GDXQBi/tSjydYvUQu07nO6
	Yus9ZnrEsidZE7co0ytaEM4b07054ltdTDcguqNGr0+LN3N/C6/53pyW6REkdgaVZHlFjHzWe/ENT
	dEgQrGRtaJ2xItbmNB1xyPBQhWG5cnKz9w5H3WCV9SDaj0fALBuKOKV43zB977oRXg+Bw/hNjeYBC
	hPC0asGBmL8Of/8UMi4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQH7I-00CJAk-Uw; Fri, 04 Mar 2022 23:13:44 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQH73-00CJ4b-Gp; Fri, 04 Mar 2022 23:13:30 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 j9-20020a9d7d89000000b005ad5525ba09so8563171otn.10; 
 Fri, 04 Mar 2022 15:13:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8tXT4S0piSpQICQpgP+9oA4HWrt9IUaGgLMB7vO8b84=;
 b=Z3R/hm3yKhkY7ycV+EytfbFvhKoyMMkC6cwLhgZeqJBjoZW/ZAte2p0g+8hnDCyL8z
 bbRQy/PoqXYVTSf9/BvS8yW2+EUaThPM4p0CNOpdGnu15B4aTxcpSfFta7gXQE4CIsu8
 55ggMiHwFKa52LfCyU6fNVRhIeGWAKg/AEYIp2C4U9X7kBPUiLNDY3Z+lVE12zAdB8q8
 wp1bV8JMiO2oijHUktAsYjdmdQRRK75PXrmUgBKTKRpBlkJ7TAUvNhCfS+9IA1ZMJ6pI
 lgSUTgkUW4+g4PmOJ/3NFrhB09klvyekQxiCFr6wCaT9K+ii2pzCQJKme8nKDo06CfIF
 OT3A==
X-Gm-Message-State: AOAM5314xAK0dPTi3sfXMmbLpVa2EjXicrHVsAGk2EsWuefg1yBQoAhl
 p2m/Hv7FOtV9Pp85eKJfig==
X-Google-Smtp-Source: ABdhPJwj+VuafiICwCgnIKimWglwgIZWkpcyb5FEymTdjCHIYmSjfCFoLcu3YupK4D8uOWJ8G4jcig==
X-Received: by 2002:a9d:7306:0:b0:5af:91d8:875f with SMTP id
 e6-20020a9d7306000000b005af91d8875fmr458801otk.144.1646435607274; 
 Fri, 04 Mar 2022 15:13:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 x25-20020a056830409900b005af164235b4sm2835755ott.2.2022.03.04.15.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Mar 2022 15:13:26 -0800 (PST)
Received: (nullmailer pid 640205 invoked by uid 1000);
 Fri, 04 Mar 2022 23:13:25 -0000
Date: Fri, 4 Mar 2022 17:13:25 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: michael.riesch@wolfvision.net, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 03/11] dt-bindings: usb: dwc3: add description for
 rk3568
Message-ID: <YiKdFdYtTS+KKCvP@robh.at.kernel.org>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
 <20220226184147.769964-4-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220226184147.769964-4-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_151329_595692_1356B212 
X-CRM114-Status: GOOD (  11.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 26 Feb 2022 13:41:39 -0500, Peter Geis wrote:
> The rk3568 dwc3 controllers are backwards compatible with the rk3399.
> Add the device tree description for it.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
