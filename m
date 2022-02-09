Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C48C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 19:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGdhQs3cql9pI+6unslbxLZcxBMglzBTfL5iwutGRqY=; b=ns55KhR+uWyZ/L
	QZlmAaOkD9aTJLvAePb8E2sOp2tOFlSkREYznwsMwgmPra12BxiNp+X5vwnclsxN32s/guoYKz/dC
	+kO5eD2Lji0UFY2yzgtz2E3WH/WbINtOpbLclG5Wz+aT/cTpuI8GxHjTRZ8ybxqQ/YlogqHYvfQ2t
	Dq4BY0Wusp24a7ELgEYVx5fbW7KpfR0uoblF5UPvs7Z0+kobmm5Gsw4aum4QAD9HR/LR3fLzQCMDs
	KZbi4R+253c6qAgpb1RiuGaDw2tC6yGdfGBYyPP5vQUdjIy6GJM0GFqc7NIut9Xgo2WOm+H0HIh4H
	+FL4UuwfFZ8ce7srudOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHsEO-001IcA-5m; Wed, 09 Feb 2022 19:02:20 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHs91-001Fg8-QP; Wed, 09 Feb 2022 18:56:49 +0000
Received: by mail-oi1-f177.google.com with SMTP id ay7so3445420oib.8;
 Wed, 09 Feb 2022 10:56:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TxAZL+Z4U6mKN9dq47U4h0290oyGCuVo1sScd7iLOoU=;
 b=MAyFK39QdxDVgW8KKxLom8XuQ2OBjCYhTch5bR/TctaaAK59GRw5Zm7r/WhVgg0tRz
 mOV54sFG0BhwHohbd9Vzhn06+LDyWHOvAa3dwkOypZnydp2uQbURPjd4iOa0r286toJq
 DA2cAzy2fHrzM3bkMElcj0v/EVVCIJLqoLRJ2Ahizwx6YwwnhuVgpyyBUj4JBvwFqaAp
 LbCl6Ov7EQDMmvGPbU3sTMA61Wh7iSi6zUzsWn4RKRKCXoAHKbTKBG8d+DrtWbIjMXyy
 +B7GKjfuAx1q216bZCL6tjYyw085ifPhijzgCUmf5wogUHAbN44bSVOLaVFIqP1r71S0
 mp7A==
X-Gm-Message-State: AOAM530rVn/+jXEq/uE0ZIyUwag+ZroLBaXsWXuoyzlJgn/5ix33ytMd
 Hhx6wF5Ks+dB8lBqrsvi721GcQi2rQ==
X-Google-Smtp-Source: ABdhPJw/7/qsplIF5pD5/KeocY9o3JW0TwPPA4t9x9UVOMPR101hcfMAT3ZxtFzyI+U/a+55dfm4VA==
X-Received: by 2002:a05:6808:3098:: with SMTP id
 bl24mr2016266oib.312.1644433006374; 
 Wed, 09 Feb 2022 10:56:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id o14sm7084298otk.77.2022.02.09.10.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 10:56:45 -0800 (PST)
Received: (nullmailer pid 690287 invoked by uid 1000);
 Wed, 09 Feb 2022 18:56:44 -0000
Date: Wed, 9 Feb 2022 12:56:44 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v5 23/23] dt-bindings: display: rockchip: Add binding for
 VOP2
Message-ID: <YgQObAT7WB9U4MMB@robh.at.kernel.org>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-24-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220209095350.2104049-24-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_105647_892201_80FFA091 
X-CRM114-Status: GOOD (  14.26  )
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

On Wed, 09 Feb 2022 10:53:50 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - Fix clk names in example
>     - Drop unnecessary assigned-clocks, assigned-clock-rates and assigned-clock-parents
> 
>     Changes since v3:
>     - drop redundant _vop suffix from clock names
> 
>     Changes since v3:
>     - new patch
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 140 ++++++++++++++++++
>  1 file changed, 140 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
