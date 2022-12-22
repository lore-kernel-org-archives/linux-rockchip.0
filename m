Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BEA4C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 19:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXYYx7Jf/mIK329YNrXjJvRcLls1FZnpmZnpY2/K7xI=; b=fD+nXfhaoigCtn
	V7m9WwyDPgKvYDwEV7pa4utChpvLdLFTndccTSlHuw8Gfp81L7nNt57O5haV4JnBPNEFnw0qBHpxC
	S8h84+uk8PZtfhVogzRHv/DttKmlVunm9EHDAhFXIM/1+SUudEL7j6pbv1OaPvNRk+BzEECgx6Y9l
	m23gceq/u80W/BdSXJdnUzTiio3DzU4igA6Nq6yqID7fgr/OVWV3HB3uBL8wljkz9aim2R1dhxsGU
	q3SVKoWPYOxnaJvqQlATynidapAGzr2SdIZmd/puJSNojC0wSnEGkAVfBkIshzWQ7qy2l2CLe66+M
	75XqV9ZXE5kGWeHNf9XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8RNx-00G01Z-Jk; Thu, 22 Dec 2022 19:37:45 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8RKT-00FxRi-7f; Thu, 22 Dec 2022 19:34:11 +0000
Received: by mail-ot1-f42.google.com with SMTP id k7-20020a056830168700b0067832816190so1669251otr.1;
        Thu, 22 Dec 2022 11:34:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWNJdOIyPtnMcBMmOCjYRTOB2Nr98MKKR7cn2xvEWSg=;
        b=azLL+CUIiEJV9W5UEPRvA7/0q3BnykeEjPBdYKPLc8l4LDiJMWLYyqPnYeW6EnqZgg
         PT30DEm9wH4GMqlzR6SmXDBIAPzfWTsoYxUxlqpOam1oWZs3BAa8kbAXOHzqUA/g7/7l
         mvInshqM6bDBn5Zesl36M+8InYVyKK2DNf9VKeMp5RPve5LazLjQ8HxrzfyN/VnbFKkF
         n/R5fcxhDjLJgqzCIQT5BCTgXK2EXinvQvKxLUTBwbQiBeIl3gt2uBcE1Aab5M3mY8LD
         x9FZmS/9bQilCmdf/WqNQDwfK79t3EG3cJojZqvXPWqjQsktlQBFhMGVakyJW/PRygV+
         bEKQ==
X-Gm-Message-State: AFqh2krxfijYUy8dr6Um2BFLv6JM9GzWLCqcA4Yy5xlMwfpNTRYD2+/z
	9MWOMuLEOsJqIjL/MOhIGw==
X-Google-Smtp-Source: AMrXdXtxaghkOVQHe3AHMVz+5/vqZ37iknCqFjTCKG0OidUpJkMAaQRBm426028lPeiYNZzv8rdcFQ==
X-Received: by 2002:a9d:196:0:b0:66e:98f2:edd with SMTP id e22-20020a9d0196000000b0066e98f20eddmr3738313ote.6.1671737647018;
        Thu, 22 Dec 2022 11:34:07 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a16-20020a0568300b9000b00670763270fcsm699449otv.71.2022.12.22.11.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 11:34:06 -0800 (PST)
Received: (nullmailer pid 1949007 invoked by uid 1000);
	Thu, 22 Dec 2022 19:34:05 -0000
Date: Thu, 22 Dec 2022 13:34:05 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, inki.dae@samsung.com, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, sw0312.kim@samsung.com, dri-devel@lists.freedesktop.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, linux-usb@vger.kernel.org, kyungmin.park@samsung.com, hjc@rock-chips.com, alim.akhtar@samsung.com, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, heiko@sntech.de, airlied@gmail.com, jernej.skrabec@gmail.com, linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, linus.walleij@linaro.org, philippe.cornu@foss.st.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, jonas@kwiboo.se
Subject: Re: [PATCH v6 05/17] dt-bindings: display: rockchip: convert
 dw_mipi_dsi_rockchip.txt to yaml
Message-ID: <167173764506.1948954.2963463914057934898.robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <d6dc8453-4807-0a5d-15bf-6dcf80dcd0fe@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6dc8453-4807-0a5d-15bf-6dcf80dcd0fe@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_113409_356894_9B5084C0 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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


On Thu, 22 Dec 2022 15:26:28 +0100, Johan Jonker wrote:
> Convert dw_mipi_dsi_rockchip.txt to yaml.
> 
> Changed:
>   file name
>   requirements
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V6:
>   Remove clock-master property
>   Fix $ref
> ---
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  94 ----------
>  .../rockchip/rockchip,dw-mipi-dsi.yaml        | 166 ++++++++++++++++++
>  2 files changed, 166 insertions(+), 94 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
