Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34937C4743D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:24:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 062D161242
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:24:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 062D161242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVlKxxhtVIPiBIpZjIrUv7V9s3IbVuG9j7cNV6ttCZc=; b=GX3GZAvq7DTb+z
	MIxZp82bMc7UExzpNxDRlYw3wVe1kNCquxOgfZyXu58gbLwH/IQU6rvWHBiFj27Ng7U4IJAck5nyR
	54uw1FfDTS//i59MpnqbixjWPti+t1zIf/Ekfy77w3Q0658JTM5KaYPfnezhE1uc1sF/E6CDyNIV8
	yhX+KO8oYtqpo/tCIN72fE+EsfaCUM5iwNqqwj1AZbzlvDK3ea4xPNPNzVnMH81xh47ezoRmQWh3T
	wQb6ZI+HBvhX1pRHjDgRFs4XzQ03TriocCAG3r/v3A96B+wJk+idvOsypK6Hyn3WzI45jsCxHkL6j
	77LZXQpIlB5d7z+jQPLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpGMT-00F6Dz-Me; Fri, 04 Jun 2021 20:24:09 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpGMR-00F6CF-Cm; Fri, 04 Jun 2021 20:24:08 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 w23-20020a9d5a970000b02903d0ef989477so5868372oth.9; 
 Fri, 04 Jun 2021 13:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G0QHStQ4MeKyA5yTSpuMKVPFHqDwVDi3XzL9FYi2HRo=;
 b=pAXbprxthS50uYDzV+L90hmOHBnsGInDAXMDJr4i9osOX10HatDpT+4Bdx//FkH0PE
 7n5C5syvD/49us5qVWERJMi5L9oZaKQo8WkYr9W6LVFO95KRinrHTeJIX9JrtaH3D/It
 weeuuNuhINCs0xc/1tWOhUPgDfXDrBqogkxRA8GjCLrDmwvQvaMXBMPCeUVtBPYytyen
 vbL7MrcFw+uqxc8Q+aZvcyL7gmTouS1cy/PdJExlzmb/OjldWKrrLQM5Ci45OCT372Iy
 s9KlM5Tefda8AYMPjjA7gV/SmUkactNGeeBjogSwGHpNzd/Ri7jOmTxBokVA5UrA8Z3v
 p3IQ==
X-Gm-Message-State: AOAM532fHmz8/IDX9P9B3GCM1rwn+0kioysCnbo09OjfE3m/QqCWGf03
 +ijhArZDpUGusiFz/+U+EQ==
X-Google-Smtp-Source: ABdhPJyDRq8Forpnhpj29V25n4Eu8aizEobJWojsmd+maF+OG8QNBlFlx8255tS9a4i+ZtmpghHtEg==
X-Received: by 2002:a9d:6016:: with SMTP id h22mr4944272otj.158.1622838246117; 
 Fri, 04 Jun 2021 13:24:06 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t26sm705154otc.23.2021.06.04.13.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 13:24:05 -0700 (PDT)
Received: (nullmailer pid 3852121 invoked by uid 1000);
 Fri, 04 Jun 2021 20:24:04 -0000
Date: Fri, 4 Jun 2021 15:24:04 -0500
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-media@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
Message-ID: <20210604202404.GA3852087@robh.at.kernel.org>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527154455.358869-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_132407_441577_B818E3C4 
X-CRM114-Status: GOOD (  10.20  )
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

On Thu, 27 May 2021 17:44:44 +0200, Alex Bee wrote:
> Document Rockchip RK3036/RK3228 qos compatibles
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> 
>  Changes in v2:
>  - collect Reviewed tag
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
