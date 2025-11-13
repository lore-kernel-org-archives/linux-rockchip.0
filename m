Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D4CCD98F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 22:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8IoMHnVgZnCrMJrUSZHRyvJ2BbX5Ls8bKDD6It4PBY=; b=qWEyNGoXj4vHwa
	GIZPfO4qu+SLDugEVXtYnwLqpkfFN9UvScXlxyeZyT0Utid0irWmUTMCf2rriJQk6ti+sL8FV0svR
	5iR1EpZqEivwsnpo7KyEPx0HfsemW0b9lMKEfbTr/v5RkIKOET34ojH5BOETTWGpeGoGPAxrckJVI
	eD7sXPljD7RlTIa4Qs6UjVOSpHrK0x/AOaHOJM4/ar/q7lZYF11wYVX6hytjZm9k0HZRozqiqG7OU
	lFU2mu5AKkxHF/TRsT0/pcHZcq5CzPCD1oNGv3nTHbU0mMX4XRB00TTkJ5AY/klBQwojqltZnWHJU
	o8MrIt16poFpFHcbmuVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJfWA-0000000BAq3-0VBo;
	Thu, 13 Nov 2025 22:10:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJfW6-0000000BApR-2P7x;
	Thu, 13 Nov 2025 22:10:12 +0000
Received: from pendragon.ideasonboard.com (82-203-165-222.bb.dnainternet.fi [82.203.165.222])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 9B62DA8F;
	Thu, 13 Nov 2025 23:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1763071683;
	bh=dKdEN6uk0uJTL9PTysEpXfawWX1Up2xnGgIfoHRGKbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YEkTkthxQzEcJJhVrVrzjcyCeXDHk0PRd12zVw3NKYtS1fZEUFNHTXi+TqT2nCGnD
	 4XSmGjRSfT+B2cQIAvoIdHKu1kIQRe5sRgyipDliGwwZck+5BGH98n7ClTy7ntDcCm
	 zKvDpmFq4nUVZpKGqGmnqHDx3vdhemfmfVsLr+Gg=
Date: Fri, 14 Nov 2025 00:09:51 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/2] drm/rockchip: dw_hdmi_qp: Fixup usage of
 enable_gpio
Message-ID: <20251113220951.GA5912@pendragon.ideasonboard.com>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_141010_760199_1132E9BC 
X-CRM114-Status: GOOD (  16.83  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Andy, Heiko, Sandy, could one of you push this to drm-misc ?

On Tue, Oct 28, 2025 at 12:26:39AM +0200, Laurent Pinchart wrote:
> Hello,
> 
> The dw_hdmi_qp driver supports a "enable-gpios" DT property that is not
> documented in the corresponding DT bindings, and is not used in any
> upstream device tree sources. This patch series renames the property to
> "frl-enable-gpios" to express its purpose more clearly, and documents it
> in the bindings.
> 
> In the previous these two patches were part of "[PATCH v2 0/5] arm64:
> dts: rockchip: Add device tree for the Orange Pi CM5 Base board" ([1]).
> I have split them from the Orange Pi CM5 Base DT and rebased them on top
> of the drm-misc-next branch to ease integration.
> 
> The other main change compared to v2 is the rename of the property from
> "tmds-enable-gpios" to "frl-enable-gpios".
> 
> [1] https://lore.kernel.org/all/20251005235542.1017-1-laurent.pinchart@ideasonboard.com/
> 
> Cristian Ciocaltea (2):
>   dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
>   drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main
>     struct
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 11 +++++++++++
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 14 +++++++-------
>  2 files changed, 18 insertions(+), 7 deletions(-)
> 
> 
> base-commit: 18ff1dc462ef6dacba76ea9cb9a4fadb385d6ec4

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
