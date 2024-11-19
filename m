Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F6DD62077
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 17:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bx40IWFLSNPm5x05zk+gaawSN48AydzwQwySGfM8YP8=; b=oN/sxLHTximicA
	xeRaEbCipKmqKqT35bU7nrispPci8A/g/ba8crmA5y6V8RBe/Lz3pWg24d8XCZ1HfpiIrmhYMNKFG
	2Pj+5PTE66q4Vsf8YE5LTiPdrGfuNCY9V9Siuq9/UC86Hm3vfO1Hnn2Sd0W/HkvQc97xxywShh0Ls
	fft5fnEWfNTm3aDbHDdeQHM1yBmFGqH7NLVEQXXVNqI6DvPzVGTVBIAsPDrEJhiUFUyDR0e9RYg2T
	aVJpTbrEs50k3kLJuegT0JALSCgEWYrHlNowUsaGQvR20jw6YlkgWC9kmZEj66ZoPWGGgctGtss+I
	ia1aiTvKu/iCO93gxlxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDRpX-0000000DBcq-0hT7;
	Tue, 19 Nov 2024 17:15:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDRoa-0000000DBSC-2yvU;
	Tue, 19 Nov 2024 17:15:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 34EBE5C551B;
	Tue, 19 Nov 2024 17:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A576AC4CECF;
	Tue, 19 Nov 2024 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732036499;
	bh=GN8+TZ7dF+OVIe4W1EKDcGDnhm2IukYPViQYE4iYxxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mFkNmuFI0VPYtiVbAwXPrbGkTuTUbPU6g9oXTqPo6Unhg+izBDfYIR4zM3nkFGI1k
	 oOxQL0b5JS3pJjPUiOjTrjYWA2LhN6xCyZYG2TZVtBzk08qRTJM0kJhbVJFuLT+VW/
	 TbQmcC8SQGV4WUvDYF6C76olltJCaKuhUdRU6eyQk3iiOFpM4i+xYfMVLKPrr1JBk1
	 S6/0JvVCpvknj1HblDsNHhUpBKeWvNX/SUyXyROAFV6tuaA2b25rdu9Im3V+XdZ+xt
	 GSV3+QDX00RH+S8AdpGtW6W0XHTOBzM5+xJt7+kqMmhoHHX1k5Tkh3vfidy5b+PNTa
	 KhiQvZ+qcSIcA==
Date: Tue, 19 Nov 2024 11:14:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
	kernel@collabora.com, Sandy Huang <hjc@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH 1/5] dt-bindings: display: vop2: Add optional PLL clock
 properties
Message-ID: <173203649757.1839089.16877007589155949446.robh@kernel.org>
References: <20241116-vop2-hdmi0-disp-modes-v1-0-2bca51db4898@collabora.com>
 <20241116-vop2-hdmi0-disp-modes-v1-1-2bca51db4898@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241116-vop2-hdmi0-disp-modes-v1-1-2bca51db4898@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_091500_788828_8C2A108D 
X-CRM114-Status: GOOD (  11.16  )
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


On Sat, 16 Nov 2024 20:22:32 +0200, Cristian Ciocaltea wrote:
> On RK3588, HDMI PHY PLL can be used as an alternative and more accurate
> pixel clock source for VOP2 video ports 0, 1 and 2.
> 
> Document the optional PLL clock properties corresponding to the two HDMI
> PHYs available on the SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
