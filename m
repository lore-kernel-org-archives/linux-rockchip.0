Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CBC6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfjH//WVTZm5FpUBr1JYD0kr4yBGpkozd6KchvEmbsI=; b=n+Vqu9Pp+dGFMC
	7gohSKrgCDsIqnMFuHefrdA9y0nXPPgQFIAQn8J91MORXmfT0tna/pqfZnpJoiXLRGulISs4lU0W8
	AiNCc61H1r23lCjr7uXo9x/kw6rgaZHXzDHCV6/vjPclshOoKk2igQDHhCKinu/Oys881BiMppRkk
	kMRVfhtQJtGvvwlrHtg1CHzjvF0AcJCI62zYd9SbXkJqMJwmKdpdd1p1roUJOIf3tzmaggOpA+0dr
	fXoUbcJ2fmVdFGPHqjBGAOpF3N3lHjvzFnXLPjGSlYH5aCpYpuvBJcgwz+fqFqC+FVsZbrPMlk0vs
	eh7L53jCcDbOQOCH75bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdij-00G7eY-Ny; Wed, 09 Feb 2022 03:32:41 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdig-00G7cu-Tx; Wed, 09 Feb 2022 03:32:40 +0000
Received: by mail-oi1-f173.google.com with SMTP id q8so1223150oiw.7;
 Tue, 08 Feb 2022 19:32:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U3oOjIeVi1C82XPxQZmsfVaWQzE3dxNvbFyDd9qEgEE=;
 b=3KdRmSh14YpftdeydPkSP7cDnIvUNYwu3aVpLpJ6YlXDYhYoFtlQGB1pYoiCCnUvwG
 LKUyPbQGrvfWnUW9zifbQo1uJWimKRYyHVx6JyT3nhWKfhpUW/A2I7OWkG/+opoiyPel
 4DqTMfc+VI0a2o7dczRPWKHHzaC3Q+7g7JiSsnKulZ0Bmp76C67ilfMrEAXfqMNSWPX2
 hZMqFu1vvuCGOY2lMJpep02i/+eaccjUdNAFVq1PSRt4qmnpZYsJIoxzTEu5P2SB7qDS
 9NjYT1TqBZDcPMtu33J1BfIy9NI6PDtMReNefUdLOdePoHjCSS5fKiFDu2tme0vElRbd
 moCA==
X-Gm-Message-State: AOAM530Sa59QvxuOwECgVcc8DEo5EBlm2vAIg8Y7bc10KckAM/AXV/lR
 aj92M+KR78OUq4GfXe8Yog==
X-Google-Smtp-Source: ABdhPJyIZbDtFNyphezJ8O3TyklDXoGPLMe2pQ2ZQ03AXwwMSzMipIvWQeMcLWWnOU+Q1ItTth4NJQ==
X-Received: by 2002:a05:6808:9b3:: with SMTP id
 e19mr138998oig.90.1644377557610; 
 Tue, 08 Feb 2022 19:32:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bg34sm6438397oob.14.2022.02.08.19.32.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 19:32:36 -0800 (PST)
Received: (nullmailer pid 3586500 invoked by uid 1000);
 Wed, 09 Feb 2022 03:32:35 -0000
Date: Tue, 8 Feb 2022 21:32:35 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 20/27] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <YgM100sUfmKALBD1@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-21-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-21-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_193238_993170_B4BC31DE 
X-CRM114-Status: GOOD (  12.38  )
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

On Wed, 26 Jan 2022 15:55:42 +0100, Sascha Hauer wrote:
> The VOP2 is the display output controller on the RK3568. Add the node
> for it to the dtsi file along with the required display-subsystem node
> and the iommu node.
> 
> changes since v3:
> - Bring back gamma_lut regs
> - Drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  4 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 51 ++++++++++++++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h  | 14 +++++++
>  4 files changed, 73 insertions(+)
>  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
