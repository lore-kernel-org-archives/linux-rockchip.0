Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A461EC61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 18:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDmDrSVm6xRAzEdGs0pGYqVP5Dg2aDZ7uEEg/EL1hII=; b=yxFHFeoYroB7iE
	vELRPJ6sscgRqs9fAuFQrh/K0gRW8BoXJ+qY6GcdXy2llAkcv8sdQSAEIO23qcTLxBq6YszR/i9pU
	XHmnQpZl9XPPvScQ0nfYIm/XO1Lrh3G/inMzPbSL88Q2l+/Ij5u0zR46RX4porUNzBrXUM+CJ3Cbj
	N57LhGuR5L2Nvp08LhNqgeFFgQQ1NsBA4vbTg5LGNjMgc6siKPttG1DaH0FL+squ3yzlS7v3PrXJX
	fTsm6PIFvAGgNRAGeJGap262dI9Mj99lEoO4HSFeRQktficrUC8KdGjdpOyScf05d62EFAN9cFA3p
	cFnH5rJBqB/yqOVw2HHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0gn-003F7Z-21; Fri, 03 Feb 2023 18:21:33 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO0gc-003F3p-Sy; Fri, 03 Feb 2023 18:21:24 +0000
Received: by mail-ot1-f46.google.com with SMTP id j6-20020a9d7686000000b0068d4ba9d141so1607787otl.6;
        Fri, 03 Feb 2023 10:21:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CKqTtd06uef5ibtsjMifbrRQEy2r/fkXlh2L538fCSc=;
        b=D/ylix+lJg6UKB40B9Cj9i+dZFUAQtqRRp4oIOvKWQNBzVj/Y4nAeaB8EVaRgCgm1H
         lcAL/bc63U4E778iJR3JKGFr42N/SIlXVtRFetW43XUAkfyUngl9R1ATkvVsR0Kb224e
         AaJVu4KxzrpogsyMHe1PQ35g3ykeT/yYXAapEoSGkWdivYfLZrHQnzuoMsigaga5MhkE
         ilZFLSI1sQ3BqbRzCR84DxCHz/heC9KHh4sx8RKNwSp3hU+fsFMnq8+aUTeG3G9GTjAP
         vcZdy9MyoH/Y07sTNWkrOCCHZ/UOxl9mwLQfi87Y46fdnou9dcfIVmWZjs98WpHXS1i/
         Sccw==
X-Gm-Message-State: AO0yUKXUebsbDOoCoOobIUuLZ4JWa8Js4yMcP8JXP1EiBOnwa29Jj5WB
	lKQy5M9ykLsO82ns6M31ig==
X-Google-Smtp-Source: AK7set+8hw6nat6H4DhyX2Limgqmen5W+zGdMAXZEu5LDxHEuhE4wlDY9lWj4NXoZichwA+bz/wc3A==
X-Received: by 2002:a05:6830:1e84:b0:670:9610:1ce4 with SMTP id n4-20020a0568301e8400b0067096101ce4mr6394077otr.24.1675448481741;
        Fri, 03 Feb 2023 10:21:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q12-20020a05683022cc00b0068bcf7995aesm1367341otc.64.2023.02.03.10.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 10:21:21 -0800 (PST)
Received: (nullmailer pid 617539 invoked by uid 1000);
	Fri, 03 Feb 2023 18:21:19 -0000
Date: Fri, 3 Feb 2023 12:21:19 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, philippe.cornu@foss.st.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com, kyungmin.park@samsung.com, alim.akhtar@samsung.com, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v6 01/17] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Message-ID: <20230203182119.GA615242-robh@kernel.org>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_102122_954066_51A7F123 
X-CRM114-Status: GOOD (  12.04  )
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

On Thu, Dec 22, 2022 at 03:22:14PM +0100, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
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

What's the plan for these patches? Don't see them in linux-next still. 
Do you want me to take patches 1-8?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
