Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A54C1C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 20:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5S5ecw3knHdlVgHBxEZO0zVzRQstdAR95cxILxWOfpo=; b=E0eJVKLZad4bzp
	SgsKD+tC/kKMl7j/h4hHHA590mD5eNxZFCbt9CNHIJkKYAeYbCLf+rYRt/7IWxEtoEcuUFcPZfzap
	lPVOtI/ZxrjCqFFN1GIjd1bhRXDxzVNbQFnRa0DB8EiU/XTDVFr6rGUkQGi9puhR9SYnWfCdLWI46
	UmE6Y/pkteC/kJll/KHpuOgUEN9myOR2rLR9fj2ALR0G7+uakRjrn6VqDiIzFT32F4jyr6oWHTvIv
	5ZAWR4N0IDO/AUaBqBiLQ+CyYKrApP4VgmpPvQq0H4IN8JQW8j8nf/D9ag5Ck6u6nra2FtPC0fDYg
	d+wWiru6ReP7bK0Svadg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7N65-006m0T-9O; Fri, 01 Jul 2022 20:18:37 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7N62-006lz4-Q8
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 20:18:35 +0000
Received: by mail-il1-f174.google.com with SMTP id i17so2057605ils.12
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Jul 2022 13:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fgJRz1NWGx56o1D31onhsKXBJtBCYQvphds1/6lixkg=;
        b=AgmXLwzgIntiS//qvUu/li94GczN5Awfu2nczL/wo1Wldv+AS0Klae3HL1l2tPESX6
         h+D66pYPGSI417yA3OoVoh3iCdHYi9gLthS/vw2PmlSkUpbdx+9+sAUV6/eSbMma9gWR
         9AxHCRO+9Z/m75SnJfjp9h07qlc6evufyr5U/G3FI35Ac7t/VaJ+UsKV1j/jnv996Wr5
         Pr2h2vwr+NGsuNn4/CblBExD9d+UKziG2PI/vw7AWpe/Y+McblQqioh8EYlQ7FytCBxo
         YGxltin9ot7thfy46AByMT8u4TurjhvwHZvxdcR8xyW1ZgYIWL4jZ2yIzrJErozHL9Q0
         bk+Q==
X-Gm-Message-State: AJIora8N6M5lsg/oMP9B6ctGoOF6VMecQyxtPHs2PzEJrbpF17E1oiv8
	BAKf/qVyBUulgp+pwojf2Q==
X-Google-Smtp-Source: AGRyM1uh15OM+q3H+mIrU1n/uWhQ5oAnU3YldNQptvqIo3QAEyYjZ6SOn6ye0wCkLtFgulxefcuMuw==
X-Received: by 2002:a05:6e02:507:b0:2da:580e:4d6a with SMTP id d7-20020a056e02050700b002da580e4d6amr9314977ils.88.1656706711426;
        Fri, 01 Jul 2022 13:18:31 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e39-20020a022127000000b0032e49fcc241sm10150653jaa.176.2022.07.01.13.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 13:18:31 -0700 (PDT)
Received: (nullmailer pid 1451537 invoked by uid 1000);
	Fri, 01 Jul 2022 20:18:29 -0000
Date: Fri, 1 Jul 2022 14:18:29 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, Paul Elder <paul.elder@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 47/55] dt-bindings: media: rkisp1: Add i.MX8MP ISP to
 compatible
Message-ID: <20220701201829.GA1451503-robh@kernel.org>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-48-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-48-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_131834_880909_381B7F1E 
X-CRM114-Status: GOOD (  13.69  )
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

On Fri, 01 Jul 2022 02:07:05 +0300, Laurent Pinchart wrote:
> From: Paul Elder <paul.elder@ideasonboard.com>
> 
> The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
> of compatible strings. While at it, expand on the description of the
> clocks to make it clear which clock in the i.MX8MP ISP they map to,
> based on the names from the datasheet (which are confusing).
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
