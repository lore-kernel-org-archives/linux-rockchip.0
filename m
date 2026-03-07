Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11346F5141C
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Mar 2026 15:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfT+fP1T7KjdbZSHHGSHfGbzHhWRIfTM6Im8bKEhnEk=; b=axX5mnqcTkbFTc
	cXwB/AZxRxBCWxd1yKu5xFnlq3DeWaMkvhI+ZMETP/GPB5elrQuYrGGiw+LrQ5EPDMbUW7i6mlAmv
	AhBqS5If6Ak1PEbJdi7Jk1fhOIzkfMjONALHGhgXOtAHlHbnp6Vu4GzMen1NxomZmshGPv5lJzQxd
	VpS2DUgOQzorB/3tz1r/zusHYhXz75duNFsZfH+BRKFf0060oCVhpKeI7jyNPy8IsGZJSzgRG3eTv
	O7fXRWMiiEhj5ckFpR1/O7ROgmzfxZGpE5BAAGDw0HZIBB1LRzbNJocHMKPxKbRBhxGqZBQmMoRHG
	EcJhfRHruWYzXa/vtGRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytf6-00000005J35-1T4y;
	Sat, 07 Mar 2026 15:33:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytf4-00000005J2S-1AVa;
	Sat, 07 Mar 2026 15:33:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 41626600AE;
	Sat,  7 Mar 2026 15:33:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60E05C2BCB1;
	Sat,  7 Mar 2026 15:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772897628;
	bh=LGGa35LUu1Cajfet/gRyfYd8q2l0CArrIN4zoHM0CyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k3hKirZ50L++Iv7ng1nmAk6Odn124V0dCq62IUqtY+htEN4qYwRrkfTYqm1V8p4OZ
	 5ts5tRfykMDwcJ2jGmShiFwTEk1z465sj2CgrgddITs6rVoMHxKUBvplkzIjaCtv4u
	 lYIh77SLIXWsVkrfZrHqQU6dJrjBB1MH9UhlEakgd8Cdq86gtMRPoSrFtU220uIgSq
	 xPWbJ04SA9vI2otDejr0A6sF4/vYVH3TIFb0tEsprOtu0nJS9pAG7RxvaF1H+Z+2Se
	 A+htZTgiPiWA+N15RMBcazWW6i3AkvQWbtG5m5V+ln78n7g4qv7hyf7zUcO1Cad0cr
	 piqfWAPSP55AQ==
Date: Sat, 7 Mar 2026 16:33:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Collabora Kernel Team <kernel@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3588 compatible
Message-ID: <20260307-complex-finicky-skua-bf52bd@quoll>
References: <20260305-rk3588-csi2rx-v1-0-0cd8d2bf28c0@collabora.com>
 <20260305-rk3588-csi2rx-v1-1-0cd8d2bf28c0@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-rk3588-csi2rx-v1-1-0cd8d2bf28c0@collabora.com>
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

On Fri, Mar 06, 2026 at 03:09:48PM +0100, Michael Riesch wrote:
> The RK3588 MIPI CSI-2 receivers are compatible to the ones found in
> the RK3568. However, their integration in the respective SoC may be
> different when it comes to the (currently not implemented) split

All this says they are compatible, so express it.

> DPHY feature. Therefore, add the RK3588 compatible to allow for
> future differentiation.

This I do not understand. If you just copy standard rules from
writing-bindings, then no, don't do that. It's obvious and there is
never a need to repeat any standard/common rule. If you want to say
devices are not compatible, then say that explicitly.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
