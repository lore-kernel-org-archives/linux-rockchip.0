Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD97C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqfG3L61b36LI4WyV7DqQRhjh2kuGVziteidBjAxtuE=; b=fZvic/MtdG2QlS
	i/v1K9lFH5dnWhmYCuSElXiqRELT/rJJY6l++vWQubdqVs994W4kKwzycnMbrCyXoCBMC5Xd8PhSE
	PHfiFJjc30FAcqrRsFv6b9El7+Q0METY2dSJn5PwzZ5zUBt6zUZ11baBpgJghGO+XQyCUl/kXSBDY
	+9F/chgi6MtO+LGE9frebgB3MziyOgjboehTGtuIZZ1kfHH0yuCYMcGTDLqi21FRBrniZKXb2ejn0
	0GWSKTv9P6MilmIQ/V8o5JXqAOR2GTTItSX8RqtGAYyvYE6dHC5HbWgJFtCZRroB7HQDbAG+LpzGl
	e2hVQZORTrRPqJ6zzrsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhcm-001nmQ-11;
	Tue, 04 Apr 2023 14:27:04 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhci-001nkM-26;
	Tue, 04 Apr 2023 14:27:01 +0000
Received: by mail-oi1-f177.google.com with SMTP id bx42so8775434oib.6;
        Tue, 04 Apr 2023 07:26:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680618419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GepwDY8pY6IPiy+4YgNweyquxm2+4jucNmXEMIhff7Y=;
        b=lmibMvxsjVKWRWIPVvStSKlqcpaizSyz4FD8jIGSbtkIQnZUZj+vWpdKhP7oI8PXMb
         Olpjd6sj7vUGmfWI3FyBkcFmp7raWtZM4AXoe9FGMTMoHwAOPz0RjHH6tnKnxhtwYcuG
         /LhDGUnjLFg4GByZnF0jswq0TuuwBtfhLyxVjotJNmK15ezxKOWkMehzzboiGdjeJug3
         nPVFLgEtMgnuMw/X8mHG3xP4llZdbeg+DPFYF3f+rpl3g7cqBzbN4T6leqnz60sy9xfh
         G2z+jYw1KMDh8+XrLdn+1/gJj6KyWxFBsFhEvfGMzBCwF4ZKnmpmgqqx9qjYDpis+MTE
         94pA==
X-Gm-Message-State: AAQBX9eI6XB5BrlD/NdYOeHOK+jDN7vCm4oNtXPUfkFin0BWRU6rGfux
	abBO+DtjKgCARON3aM88dg==
X-Google-Smtp-Source: AKy350ZFLMdWujtv62S9b2atoWj5/+Ipi68c5D8aVR0u5Kg9UKFRTqw5ZWlxRl3ioOihcP+8ZlLrbg==
X-Received: by 2002:aca:1702:0:b0:387:cfb5:98f1 with SMTP id j2-20020aca1702000000b00387cfb598f1mr1230525oii.27.1680618418614;
        Tue, 04 Apr 2023 07:26:58 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a4-20020a4aae44000000b00524faf3d2d7sm5392916oon.41.2023.04.04.07.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 07:26:58 -0700 (PDT)
Received: (nullmailer pid 3835522 invoked by uid 1000);
	Tue, 04 Apr 2023 14:26:57 -0000
Date: Tue, 4 Apr 2023 09:26:57 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@collabora.com, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCHv2 1/7] dt-bindings: soc: rockchip: add rk3588 usb2phy
 syscon
Message-ID: <168061841610.3835454.11500113945951398690.robh@kernel.org>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
 <20230403202307.120562-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403202307.120562-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_072700_686977_E120B40A 
X-CRM114-Status: UNSURE (   9.42  )
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


On Mon, 03 Apr 2023 22:23:01 +0200, Sebastian Reichel wrote:
> The usb2phy is accessible via a syscon registers on RK3588, similar
> to rk3399.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
