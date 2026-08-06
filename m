Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A72C5AC7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 15:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMIVy2ItWRFvD45EUIpDt5YpgZE+XNn0OkWyXbr7zqc=; b=x+Os/8Lz+iiP66
	wEsPxcOErAVg0hFudb86doGwu2S6TPfl53H/49ZpmsQpF29kigrH6ydv/xlty4sMUyVPWk6A3LtBu
	C6Gd8I5d6MkBP/rjmXAyHKlL9MgZHZu+lEinOG0BXafGoJzCPkc1Ge57XdhKQZsM9WoDGwCobifNI
	H+bHVy9O5EJq1VIDTVzBjcifIykxFLTqenbREus40kM5Bk3HfIXH2egfZptyv2Buj5rA6/UsnOm+Q
	EtujmY+aJREOVqGiaKP0BG1BYE2sD9/M+8pXOprFp+FYzVG6v0Q2OsUUck3XGJw5NmtVNJPVIePiG
	1Qw484eTnoc/oOT+HZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0Sp-000000069LU-0QuJ;
	Thu, 06 Aug 2026 15:56:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0So-000000069KN-0i2Y;
	Thu, 06 Aug 2026 15:56:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 47CB360AB9;
	Thu,  6 Aug 2026 15:56:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 372BF1F000E9;
	Thu,  6 Aug 2026 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786031817;
	bh=pjRHKsliqvvLYwqfQ+GA2Px/s3f/hlLeRUQ/A/a3Vhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aM8CzvZL1kM8bogCR4THoedGsE0LsrmHOW+9scLTFef8/T7iNfbQbqgwneQlJrmVb
	 zwDA/h8baSVPt2RNqX39wKuflTMuCV7OidrA01gdihp3LswRdZ7e+J5VEwE/nNb32j
	 B5uTIT+0mN7qqbN+Sg5xFSbj/4/5/UpX8PJQmbiID9wudtYkOuu71mfSYwjGdKy508
	 r3gSTDHRJgOkLV1tKT5/fE6Dy1EeShHego3b067oJpOC1sph9rk9odxLj2/cTaWJye
	 +PK4PYBpH9fbPU7d0IkzyCPiCRWtpDcphDgFnF1qfCmWTBVy7uwOMJXI+NIMpixzBY
	 6DZ7QBk91fWrw==
Date: Thu, 6 Aug 2026 21:26:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: jason98166@gmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guochun Huang <hero.huang@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
Message-ID: <anSuxfeitSqmSHNr@vaman>
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
 <82da3622-9c3a-454c-87bc-fb4ec7adb68d@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82da3622-9c3a-454c-87bc-fb4ec7adb68d@collabora.com>
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

On 03-08-26, 13:17, Michael Riesch wrote:

> > +      Two cells select the PHY type and the direction, so that the
> > +      transmitter (DSI) and the receiver (CSI) can be described as
> > +      independent consumers of the same PHY:
> > +        - <PHY_TYPE_DPHY RK_DCPHY_DIR_TX>
> > +        - <PHY_TYPE_DPHY RK_DCPHY_DIR_RX>
> 
> How is that Rockchip specific? As you state above this is either MIPI
> CSI or MIPI DSI, two perfectly standard protocols.
> 
> @all Would it be reasonable to introduce PHY_TYPE_CSI and PHY_TYPE_DSI?

I think yes...

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
