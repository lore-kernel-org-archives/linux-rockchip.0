Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4B4D6ACE4
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 15:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a0vvg4zXFD91LbcC9LMdOu92VJbWaMBmkJB0aseNC8=; b=je75FMNYwOQsqJ
	MfkYcuDZgwgh/mJ05EwzwnJJDmQSF5BpXoPl/O9ZB885cmtbKDw+EBSyubnuxzNHesOSbVCzw5u+C
	BtAqdXE1nu+3kZwR2FD0Waoup/nQ/ZkD4EUDga+QYlPSV6fThYgqTbrr6KYAyRLAWB98Hr3CgcJ0g
	DvDormaSEK1f9/3DFu9a+vookx8RHU9UN4dqCOYmCn0MjnFGAqFMcBvweAXENO+OHvg+MRBcrsNUM
	t6w385r1g+eXmULzptlGHVDWddQPvSlvSsw5bKUXexiHeKGOrK1Px2aDWa9oDTg922SwfDdohdzmD
	gZmH4F6es3zQSGbSxBJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJcj-0000000DS67-27zS;
	Wed, 27 Nov 2024 15:06:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJbi-0000000DRqh-2Y20;
	Wed, 27 Nov 2024 15:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C5CAD5C3A6D;
	Wed, 27 Nov 2024 15:04:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25E8C4CED3;
	Wed, 27 Nov 2024 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732719933;
	bh=sB5WsF2yTtwAJZFMBi4Ub30MJ2hXC4QT4NG4uzLcRRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ept6l6slC82V06hpuS5FuclQ4x/1Oo7ci31otvDJKT8wxxgrFr+TrYAC6SwVz7cfw
	 BTpUnHj15/vdehiZspar722ryFF4mXbbuCt7B7iYEEG/ONglHHnya1lhfZh66c9paQ
	 d80g1Tf4C3vjhBpdlBJIgs/4/BWbZUCbJffNNwUxCIA1G2//4kcw2fJpGwFsO8I+ht
	 RLKa4KxposzT9J6o+xR6nR2RHUbjYfCairL/JawkR7ruhhycSGgfGwBRZrKSX8iRXh
	 SU3PiZat6A0VKGvQ5bjVIBLXvZGisz2uChmgk89ABMHwSY4FO2uLkSOADd1cmOjvao
	 yZdAXShismNyA==
Date: Wed, 27 Nov 2024 09:05:31 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: rfoss@kernel.org, neil.armstrong@linaro.org, quentin.schulz@cherry.de,
	maarten.lankhorst@linux.intel.com, krzk+dt@kernel.org,
	andy.yan@rock-chips.com, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	mripard@kernel.org, tzimmermann@suse.de,
	Laurent.pinchart@ideasonboard.com,
	linux-rockchip@lists.infradead.org, conor+dt@kernel.org,
	jernej.skrabec@gmail.com, Heiko Stuebner <heiko.stuebner@cherry.de>,
	andrzej.hajda@intel.com, jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/3] dt-bindings: display: rockchip: Add schema for
 RK3588 DW DSI2 controller
Message-ID: <173271993052.3509811.7014863879823500729.robh@kernel.org>
References: <20241126201213.522753-1-heiko@sntech.de>
 <20241126201213.522753-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241126201213.522753-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_070534_711494_80418B62 
X-CRM114-Status: GOOD (  10.32  )
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


On Tue, 26 Nov 2024 21:12:12 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The Display Serial Interface 2 (DSI-2) is part of a group of communication
> protocols defined by the MIPI Alliance. The RK3588 implements this
> specification in its two MIPI DSI-2 Host Controllers that are based on a
> new Synopsis IP.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   | 119 ++++++++++++++++++
>  1 file changed, 119 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
