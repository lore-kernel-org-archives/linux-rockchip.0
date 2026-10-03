Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1112CA5FDD
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9Kp26Bj6NGSJWm6O0fwOiSxeri4tKdbenM0aGTksek=; b=pnu/ce3BsMBoGi
	S5pnfsiImKdPiD37hh1AP82EASaNDw5Wvh6CQNO9PMi1HJh4ABV+ikgKVtUgJjrZu+haKtbKKIZmO
	69Jc3dxMGS0eZPCFsluJC7FL/rd9Oh/M4/+10G0xSTRM8LGfrK8GgsnxKY9zBF6q4P5ectHjRcy+D
	WcX20ZDfNNCHJJbnhQqUqrcSVksi7rdR5aC2NeyvZ/xRJHzz3PEqzIa/meRThlaHGmeHQGcxiPCBj
	W46YZjV2EvavwbcrmjieHoZx64rZmJdCzPzcrmI8H8kuiJ5CKD11Qw7owuZOVXqpnNRI3O4UoxS+G
	MXZKQXYTbHj6h6HPL7KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAV-0000000DHm6-2ZYi;
	Sat, 03 Oct 2026 09:36:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAT-0000000DHl3-0h4z;
	Sat, 03 Oct 2026 09:36:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 991F6602C2;
	Sat,  3 Oct 2026 09:36:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 576921F0089B;
	Sat,  3 Oct 2026 09:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020192;
	bh=dkU4fBFY9a/PX3RPkjkpeSWhVYiEXlPa5ViUBpp8ees=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ncSOa7Od6pyGS4vaGBucAfDsBPKLPEX/LbTx6S4dDl03VVysLPZp6MpSLvfuPoBEJ
	 yLYpaufJxoeX/U7gAnf7+vNo1ZaLffXweIm9kgBFfkURL295pitH13q1IA5PmYtgIu
	 YmqLz1F3AUu/pB6wmOKqC54KHSUq3etXt4cm7x3FXDXITCG3UXWffyMdqS+znXugAC
	 MwgXXdCsau4K+GCFw4iMpHM/h2MXIk0b0lsPVGA+1sS43cjSjo5QSXHKRf/FKTe6wM
	 DKibWJC5CNBu+WRlSEuda6LMH+Y8I1OCgvwmyaj12XgmiQaA84lpASnKL4lAfdiEC0
	 C/GdNENZ64o3w==
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, devicetree@vger.kernel.org, 
 Sashiko <sashiko-bot@kernel.org>, William Wu <william.wu@rock-chips.com>
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
Subject: Re: [PATCH v15 00/16] phy: rockchip: usbdp: Clean up the mess
 (part 1)
Message-Id: <179102018702.199361.10538365621002380308.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:27 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Tue, 15 Sep 2026 15:49:47 +0200, Sebastian Reichel wrote:
> This series is the first part of a major overhaul of the Rockchip USBDP
> driver. The goal of the bigger series is:
> 
>  * USB-C DP AltMode support
>  * Fixing sporadic SErrors happening when connector is hot-plugged
>  * Fixing USB3 support when connector orientation changes after
>    hotplug
>  * Fixing USBDP PHY not starting up properly initially or after a few
>    replugs
> 
> [...]

Applied, thanks!

[01/16] dt-bindings: phy: rockchip-usbdp: add improved ports scheme
        commit: 861e77f3314e30228e234f866c8bb1ea82560b92
[02/16] phy: rockchip: usbdp: Update mode_change after error handling
        commit: 3f2181226d7708349c69cd4a4b21372a8049576b
[03/16] phy: rockchip: usbdp: Do not lose USB3 PHY status
        commit: b322403c294b67fd6bcf6719b4fc9f8a9e313129
[04/16] phy: rockchip: usbdp: Fix devm_clk_bulk_get_all check
        commit: a2ddfc60a7d3ba0f571f037371b261642f8ed208
[05/16] phy: rockchip: usbdp: Handle missing clock-names DT property gracefully
        commit: 17cd5e026a6e806b811f915b8e02a8b9d14f6f41
[06/16] phy: rockchip: usbdp: Drop seamless DP takeover
        commit: 1ab628ce8f3ab694c28dcfcd5b1eec0cf9f499b8
[07/16] phy: rockchip: usbdp: Keep clocks running on PHY re-init
        commit: 31fadcc97c033daa0b663dbd6e6acdf3121f1975
[08/16] phy: rockchip: usbdp: Amend SSC modulation deviation
        commit: 6bee51c8b7dcef4917ed9acd7a8903f263374d1b
[09/16] phy: rockchip: usbdp: Fix LFPS detect threshold control
        commit: 6977ac261a62399c696e5543519e3074de513eab
[10/16] phy: rockchip: usbdp: Add missing mode_change update
        commit: 5def5d61ea5ac6f391364f6fdcff13a27a52026e
[11/16] phy: rockchip: usbdp: Support single-lane DP
        commit: ae9b60ef1d626d1a4fdf8854f66d58f6ac56e37d
[12/16] phy: rockchip: usbdp: Limit DP lane count to muxed lanes
        commit: 443997ca8d797375ff35e8f3ad3828799e88f71b
[13/16] phy: rockchip: usbdp: Rename DP lane functions
        commit: ebe1e8cf3d109302c749591f6bb717cd260b00cf
[14/16] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
        commit: e8e7f3d875a302032d8b47b52b7adef16082e7f9
[15/16] phy: rockchip: usbdp: Cleanup DP lane selection function
        commit: 9235d03d5e520178d53f5098068f2c3926457465
[16/16] phy: rockchip: usbdp: Register DP aux bridge
        commit: bcdb77332fe05d699e8351263d535ffca373e459

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
