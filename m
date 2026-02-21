Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48CE8C624A1
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 22:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86jawqyipB9kqpZYHQkvDobvskv1rVY/n/+qw98/uvQ=; b=kPsjWUxoVieDbj
	ZAvIZOU9DgFBs1IJ0LwTvudFBg2GeEQ47ctm+blgdLXtpSlMvYfe5q4UcJhxZAG8bM5tmfjDbn9vi
	E2wRDtx5Pv3pakc5N3wuyfhTDKsBFJO9JC1XWcupWeljIwxhHwOQ4xS/8TpNFLGTjDFY1XaH5CTYw
	xu418y7LbCwM2JFgRnknvmLhlcNFcAJirgVoDuBSqFaFvkJ7YoXP9Zh6LGmoBLPyHn7C4c2qWJ8Nc
	4SUQgn+OdOyC8HcZHJMr+9aWShqiHiq9EYeYvOzLnJ7ZN9ZGfZTkRdvwY6TMMbZNxTuG6ppXAjtfc
	wr+21WilCSIjtBKy3Svw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtvIx-0000000GLRj-0eY9;
	Sat, 21 Feb 2026 22:18:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtvIt-0000000GLQf-3ml6;
	Sat, 21 Feb 2026 22:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wmPg3krCGLYxqdO1s2V7OVlTQkXVv33YeZdELw95jYM=; b=WVQs//KY+NXeAo+Dvue1fb9wQc
	DIsj5/8yTFxBYQJbaM3qvfi25vwvM5BRljDrQp12BKMkC+nTc4hAWsB5UkJiSqoA0HC4WoBqOhPDr
	Wlq0QiUIkOc352X2M0Rwzoe+sTXM0lWC6J0v3wua7o56zEy/o2ay8CXS6VP8OTBdFIeVrESTUsJrI
	b8E9Vq7jmghyeELDjJh4/qjQMsnlun9/CccB75HZnVCvSzGR58GiTLx8EOrxnNjbeBMnsptJA/UMo
	gG8IMpHIBuarUK3B165gmG+FGiU1td1d12W+zqRFpJDXNfErvtsb2vgmsa3LBhWvj8zcgFINiRDuL
	SrKqTYGQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com,
	Andy Yan <andyshrk@163.com>
Subject: Re: (subset) [PATCH v3 0/5] Add DisplayPort support for rk3576
Date: Sat, 21 Feb 2026 23:17:56 +0100
Message-ID: <177171224758.1745786.7493605269440201268.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260206010421.443605-1-andyshrk@163.com>
References: <20260206010421.443605-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_141823_943233_AFBCAC6A 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, alchark@gmail.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 06 Feb 2026 09:04:10 +0800, Andy Yan wrote:
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode and support for MST.
> 
> This patch series aims to add basic display output, not include audio
> and MST, which will be the work for the next stage.
> 
> Tested with 2 lane standard DP port and USB-C Alt mode output now.
> For those who want to give it a try, I have a reference branch here[0].
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: display: rockchip: Add rk3576 DisplayPort
      commit: 3410ab9fbd642e24f21d2fe6db6e995fa14991de
[2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
      commit: 77ae37018a2705f5abe8cc428e3496651258901d
[3/5] drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
      commit: 388bb0899bc9acdb6e4eeaad9eb9dce3427ceca4
[4/5] drm/rockchip: dw_dp: Add DisplayPort support for rk3576
      commit: 70ad4780431e3936e9cb0cf13e286d304b418f94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
