Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8846BCD3427
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 May 2026 16:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2KjFw2l+sVLCXZLZGvPn2yR0VNd1S0TQ29pNEddNQ0=; b=UCyWmtX8Ay3abP
	lKqdXNrqXdr1De0MPc9M1D+SmXG/Na5zhS5IyFnzZLqnfclzAcsughY5kf+jn/xad1lROfacNiuHU
	mq+hjY3CMm0wiU6Ow0Z/HrudbOlaqLYXa/MyklLze96pK02NIy+tT3AIk0o/XsghZufccMB3tnYNw
	OfvUJBx8ni3fUGbOZe/lfPqOimOw0jT5n80be2oviTQ129D3sowGVH9d/8xzFXDWTmfavWjBAkfnS
	O4lSGL5lj/rS6NXSvIiZbAcDYglceiwWFpsWSboN6z3Ib6otGCZivnpBE4uFbSOqze8z+YsZPyF0O
	jziumUxybNcJ9qmSRasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJa1L-0000000BKv4-1U4Y;
	Sun, 03 May 2026 16:50:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJa1J-0000000BKuM-3S1q;
	Sun, 03 May 2026 16:50:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CBC95600C3;
	Sun,  3 May 2026 16:50:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CB70C2BCB4;
	Sun,  3 May 2026 16:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827016;
	bh=EcIJ+6nR1kdFOG4fTTp8uLBQCqZk2MyerUY14rOlOSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lp0gv1z/9St8x7kSEsE5qrH6Uk67Q5ty4kT1IqtUMgeaA7dCVtmxE4u34QRnuxklE
	 O2I60cgzCIEnUc6iUZjOu3togYE/T2wlhMgXbWAgiBkuJqBYWfOONaPoUvwXBQhh/8
	 JZoiQ4rxka0GpD5g+h1EiI+StNJc95GjUTd90E/EKWYWCIjdJMeTquz1mjRKJ6aa+G
	 pYJ0hFTVoliKB2hwUpP5xD5t8lAB9/MRgG4F9+MBiPH8bndVILIIZDUe93HgMXtmi3
	 ZQjsW8/FQxyvlO8+PIQW9YBtvnfYaU7H7TA7KeFBqzma0aQIgXYOvES/mUIb9XkYhW
	 7GPvp1xrhWmFQ==
Date: Sun, 3 May 2026 22:20:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, devicetree@vger.kernel.org,
	William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 00/16] phy: rockchip: usbdp: Fixes, DP 1-lane support
 and cleanups
Message-ID: <afd8xMS2hz208Lcl@vaman>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
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

Hi Sebastian,

On 28-04-26, 18:13, Sebastian Reichel wrote:
> This series overhauls the Rockchip USBDP driver; apart from a
> a bunch of cleanups and small improvements the main goal is to
> get the driver ready for proper USB-C DP AltMode support.
> 
> Once this series has landed, it unblocks enabling proper USB-C
> DP AltMode on the RK3588 and RK3576 platforms incl. runtime PM
> for the Synopsys DesignWare DisplayPort controller.
> 
> Apart from this series, further changes are required on the
> DRM side. There are no compile-time dependencies between the
> DRM side and the PHY side, but the PHY side must be applied
> to avoid SErrors once runtime PM is added to the DisplayPort
> controller driver. Thus it would be really good to land this
> series in the next merge window.

Looks like sasiko has flagged 8 high warning, can you please check them

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
