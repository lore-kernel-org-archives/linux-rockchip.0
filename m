Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 634D3C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 20:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qas/JvEre2X6X/T3ZOJjZkDf3qhkQ+NBLZQ9BoqqNDQ=; b=CrZWRpSGn2JW19
	k0lvOoipsI7x11D5jL+mn3Pw503PEKNZojG8T5cjb9gMsEUl4XrqyGHD8ef+Mp0jksA5+Sa+vlaMo
	XqkTGEuUPD32xGw//B9sNHh+QfWqAXj5mRsqj5m5O6BpTBhMikTCu4zP76EUSspsff148jHJ3dGou
	OtKWF7AU5E7eny9tJSMzYr1YonzHrO+LVBSUjjVGD35JGL7lwejROBnj5MJLtOMRruXL/50ouDVrF
	9RfHuQ50P22nIBOCrQtkDJI0i7fM1P/GGUdU9NrwcuYo1kl4z5qi3I3OiXnbQEsNSTtX+ilFKxdUj
	MdqytK/6GiRrm0vN9RVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8S9H-00Grgt-Ey; Thu, 22 Dec 2022 20:26:39 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8S95-00GrZb-P6; Thu, 22 Dec 2022 20:26:30 +0000
Received: by mail-ot1-f49.google.com with SMTP id m7-20020a9d6447000000b0066da0504b5eso1710298otl.13;
        Thu, 22 Dec 2022 12:26:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0bNa5Kdmcwa+mXleBewekipXDfwkrNZzap+jetEOYl8=;
        b=jn1FAj3+/4z1YKLROR9+CpPfGyULPT9bkUaCqP3eaZnlYgpJnzXXXL4DRCH/FgvvLT
         6ZQMF53Vv2PM7Euc61YjXeZUfFhOoWnS8B17H8zF8ErvvJxN3CO5bWjdFfjwXHHxf0L5
         HVJ0CdOlyM2Xo5GzIkD7iluTLwjCizSfvPcXdV6Fx+SV06WnJp2GtytUhzxd2mUJRxG+
         uF1EAEyGNRD9mEpOgukAY8oO2kO9i32lYw/YoO/AG/eSX0Tk0ss+gTAbdwa2BZqzOYJw
         Ww1yI4ZfDKpc5Pl1wAF7eAu9yj2gIa8K3c1NRyJu11D0871y/lwG63G4bOKrKFqq7KV6
         Nadg==
X-Gm-Message-State: AFqh2krf6ycjFuxsEkcHhSbOZHOLwa9OMCqPEJ3tLaPuebYrDKR2SZ/G
	OJXhcQos4ETHrs7CTvBt0A==
X-Google-Smtp-Source: AMrXdXucxOZJROMeEnqXizAa6bJGOHQA+pgTrIZbg3P5Tml16wuho1SX/QIVObL8GR/stBrcV9KKJw==
X-Received: by 2002:a9d:6389:0:b0:661:dfeb:a975 with SMTP id w9-20020a9d6389000000b00661dfeba975mr3595710otk.32.1671740785784;
        Thu, 22 Dec 2022 12:26:25 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e26-20020a9d6e1a000000b0066b9a6bf3bcsm758618otr.12.2022.12.22.12.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 12:26:25 -0800 (PST)
Received: (nullmailer pid 2066452 invoked by uid 1000);
	Thu, 22 Dec 2022 20:26:24 -0000
Date: Thu, 22 Dec 2022 14:26:24 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: alim.akhtar@samsung.com, heiko@sntech.de, kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org, Laurent.pinchart@ideasonboard.com, devicetree@vger.kernel.org, philippe.cornu@foss.st.com, neil.armstrong@linaro.org, linux-usb@vger.kernel.org, jonas@kwiboo.se, daniel@ffwll.ch, robh+dt@kernel.org, airlied@gmail.com, andrzej.hajda@intel.com, hjc@rock-chips.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org, linux-rockchip@lists.infradead.org, inki.dae@samsung.com, robert.foss@linaro.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v6 06/17] dt-bindings: display: bridge: convert
 analogix_dp.txt to yaml
Message-ID: <167174078307.2066361.1514368429127273992.robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <489e7bd3-fa26-885f-4104-8b0b29aa4f2b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <489e7bd3-fa26-885f-4104-8b0b29aa4f2b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_122627_899463_023538A5 
X-CRM114-Status: UNSURE (   9.53  )
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


On Thu, 22 Dec 2022 15:26:57 +0100, Johan Jonker wrote:
> Convert analogix_dp.txt to yaml for use as common document.
> 
> Changed:
>   Relexed requirements
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/display/bridge/analogix,dp.yaml  | 63 +++++++++++++++++++
>  .../bindings/display/bridge/analogix_dp.txt   | 51 ---------------
>  .../bindings/display/exynos/exynos_dp.txt     |  2 +-
>  3 files changed, 64 insertions(+), 52 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/analogix_dp.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
