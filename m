Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C472C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:47:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1129C6023C
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:47:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1129C6023C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLxG/YFjrPyTZkG2teO5pybAgdLWahdjGfRfY4XKcJc=; b=H80ZtQylmP1rKr
	Ffvv53bxNWeC0ySYjfV54FyG5fQYkKz6VxCT3o6Fu1W3tRo6tDD1ZRG3dwgO1itBe73BmsN/dAVHh
	Rv8k6vPcmDhRIOVu8oB2r0uVublQ+FVz+UQFEMN2lpBD2PdA2D3sw3oCT3ybwfp5clIzpGHcOEJP6
	87pmRl811h1vQHdrGqUnNII2Cg/WiQZfH5srGm/w2BtOJot2asWZE4MwmfHBjZc15/5Zrbh0Mcu4u
	0aQ1ORjQSyW3jxguxbsHtx6ZQE0m1QYRdSdqWc5iYMD7vLjUN/uzzrd4pd1ayOzun5TRbgaHByEKj
	lRFOYgMOxRrFhDuauIIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltImf-003xyc-GK; Tue, 15 Jun 2021 23:47:53 +0000
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltIYN-003tA1-4u; Tue, 15 Jun 2021 23:33:08 +0000
Received: by mail-il1-f182.google.com with SMTP id b14so679273ilq.7;
 Tue, 15 Jun 2021 16:33:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8Fz3AetKQEA77r3UIPjWBZbJ1RgLcNWRZBS0z/pKRfo=;
 b=poX0QOUf9n6UqotwKhYtvQOf8GvVFe4vkJh8WXQ9UeCXKW5iZz3WLFD6yb2rTRkX5h
 IBe2AvjQ7erqr4GWlMZ3rV9yltGDOaTcbEF9h507hfSOwo8NdLZVvJmq+Zrg33WCzAv9
 MbqrvBChLttXE4wj4Hl+g9O7leG+HaS7EtGN2JMIj1HBUdAWFtgxN4M3SA2qzQQDuiWN
 HYS5TfhEzIiakUAbE9Csq1t+4fvEFBcn2tlesiFqku22O0fIYPSTDj7YdGu6R6C4tuav
 9AhulwYqQwRTIVBR3A01GEmPRReIYL6clAkdJ+68Qyv+GlvLT9VIEaim2S2FW+LGIvmk
 pHbA==
X-Gm-Message-State: AOAM530pUMTSkCVZRMGOdcP7wZDQMA6yqfgWqG5uY2svk6ElU5FDPxVn
 pEdS2KiUx87YNU3v2PwBnO05BI2c1w==
X-Google-Smtp-Source: ABdhPJwFYf76OVEZ+HNaaZsult7XHiKTmBkAHWs/gW1dtLaCbWM+Jk97PUvUZRACQLTXkJThIg+EGg==
X-Received: by 2002:a92:5404:: with SMTP id i4mr1340945ilb.226.1623799985851; 
 Tue, 15 Jun 2021 16:33:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id m5sm251953iov.31.2021.06.15.16.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 16:33:05 -0700 (PDT)
Received: (nullmailer pid 1624214 invoked by uid 1000);
 Tue, 15 Jun 2021 23:33:03 -0000
Date: Tue, 15 Jun 2021 17:33:03 -0600
From: Rob Herring <robh@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126
Message-ID: <20210615233303.GA1623889@robh.at.kernel.org>
References: <20210615033213.14241-1-jon.lin@rock-chips.com>
 <20210615033213.14241-2-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615033213.14241-2-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_163307_286009_B84A523C 
X-CRM114-Status: GOOD (  15.93  )
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

On Tue, 15 Jun 2021 11:32:08 +0800, Jon Lin wrote:
> The description below will be used for rv1126.dtsi or compatible one in
> the future
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
> 
> Changes in v8:
> - There is a problem with the version 7 mail format. resend it
> 
> Changes in v7:
> - Fall back "rockchip,rv1126-spi" to "rockchip,rk3066-spi"
> 
> Changes in v6:
> - Consider to compatibility, the "rockchip,rk3568-spi" is removed in
>   Series-changes v5, so the commit massage should also remove the
>   corresponding information
> 
> Changes in v5:
> - Change to leave one compatible id rv1126, and rk3568 is compatible
>   with rv1126
> 
> Changes in v4:
> - Adjust the order patches
> - Simply commit massage like redundancy "application" content
> 
> Changes in v3:
> - Fix compile error which is find by Sascha in [v2,2/8]
> 
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
