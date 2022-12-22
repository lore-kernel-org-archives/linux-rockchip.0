Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD29C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 20:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcQftG4ommAIn9G/Dp1MUtcbAtVRxYYCcJKrl899X6c=; b=fMGCQZ02vjXPKK
	2ARyw0Ojlj+5Ke/rk+jhOT1kejmzFmvtOa/D3YLYp8BXS5maHO6fml01hUcsoLNyK6XgrU5DZimqr
	VAYcROiqn5wx76QUcIuAcgATPAJiWWFLOEBwwD0Rn9zvOxOF1Jtx2hv6HXocc5ilOb/N6zs5uyW18
	Is1TI1mauZhi/tz9CCEdSezP3GidNSTyfR/oLwsaPmpLuTUC9psEhhR0pY3ExBk3DixLNpJjIlN9v
	Uia94NZKGF31Np8szSZOj1kZE7YHb4rjOwq8/csM8rM5Z6/GtJXX/i9VG2GShw4bw5IWPrI7WvJpZ
	3t3Gnr4HlU+QcXqR56lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8SAw-00GsVb-A2; Thu, 22 Dec 2022 20:28:22 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8SAk-00GsPT-00; Thu, 22 Dec 2022 20:28:11 +0000
Received: by mail-oi1-f181.google.com with SMTP id c133so2930234oif.1;
        Thu, 22 Dec 2022 12:28:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woCGv7/8V5+DgCxctIizIezO0GXF75G9DSlcq8wC02A=;
        b=SqNEXu9tjpSmSaO38zPPs7PJhGxIBt/XT4rR6L96MobIuCdyzTVYGjJpte4EaYwV98
         F6jAlTUvQBLL9A4r80lgoCdy/u/siv01EK/qGVfTKI/vl5asL8To81xmVAgaD1Wp4U7U
         QJkiQY9nk9xOLjh7voH/yQEV3XN4LzSkHPtIMeXlb7yATbrb81qLAjBYY0tg9eNia0/X
         R+2/pFVx/OZ+HvxYEXUfZRoA33bnZyKQCvsYXLLQjXL11xxvh+n4/MqvcviqHkU2OaeX
         L5XOZ5p3P9asNQL2RqJ5BHQzqJa7/Sr1yPctbl8EJjRvnf8x4WxPWBOd+rNQnYMdUXRq
         gEGQ==
X-Gm-Message-State: AFqh2kpffXXrQakWHRafW6o4g4UTM8Q2JRETyW5iK+PcjGOIV2MkxK0U
	vK2PEu4jQXD79cz4kEFTiQ==
X-Google-Smtp-Source: AMrXdXtqKbN/OPTnwnQNU/6pMgxhP8Q2rVkS0/IlBr4E6YM0ho5oZEvS/xsQPxtbRrQIy0lV9Hz3pQ==
X-Received: by 2002:a05:6808:8f:b0:355:1de8:bc80 with SMTP id s15-20020a056808008f00b003551de8bc80mr3269891oic.34.1671740885878;
        Thu, 22 Dec 2022 12:28:05 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k20-20020a056808069400b0035b80dbf1easm720249oig.14.2022.12.22.12.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 12:28:05 -0800 (PST)
Received: (nullmailer pid 2068406 invoked by uid 1000);
	Thu, 22 Dec 2022 20:28:04 -0000
Date: Thu, 22 Dec 2022 14:28:04 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-usb@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, philippe.cornu@foss.st.com, heiko@sntech.de, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, jonas@kwiboo.se, linus.walleij@linaro.org, hjc@rock-chips.com, devicetree@vger.kernel.org, kyungmin.park@samsung.com, airlied@gmail.com, gregkh@linuxfoundation.org, sw0312.kim@samsung.com, jernej.skrabec@gmail.com, linux-kernel@vger.kernel.org, inki.dae@samsung.com, daniel@ffwll.ch, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com, robert.foss@linaro.org, alim.akhtar@samsung.com, Laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v6 08/17] dt-bindings: usb: convert fcs,fusb302.txt to
 yaml
Message-ID: <167174088325.2068348.12900872964177598466.robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <0336a3c4-4a43-c983-11d7-e2ae16187fc8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0336a3c4-4a43-c983-11d7-e2ae16187fc8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_122810_085110_82803069 
X-CRM114-Status: UNSURE (   9.23  )
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


On Thu, 22 Dec 2022 15:28:53 +0100, Johan Jonker wrote:
> Convert fcs,fusb302.txt to yaml.
> 
> Changed:
>   Add vbus-supply property
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V6:
>   Add unevaluatedProperties
>   Drop unused labels
> ---
>  .../devicetree/bindings/usb/fcs,fusb302.txt   | 34 ----------
>  .../devicetree/bindings/usb/fcs,fusb302.yaml  | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
