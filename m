Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 482EBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 19:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdBKnQ55swjL4DS+vvOYr46qbpEX9FqOlxywWnQBoBE=; b=1XFKjcGJLv+Y8H
	kM8vJ+eSgYkTauJzzlv0Wn9RxFPvSsvk3adQ49pMtHh/6IAX6J+81Ngks7cM+EtuQnbEJIBbW0ufx
	dOZ/uZWZsb8awzUai+md+NEJap9mIFj1OD6rjkWvH+vqTaDz+F0shFJ6eqGwHnT8/T1OOrBjgiuo0
	JgTCyTFmIrW80lI+BA91CUFgB3AM6N319vGS0MYWMOjry3dxcGJhgeLxCS13MKAYPr1s3nIxJ5UK6
	JPElzuCj86Kg4KrxEQyTiPUILdNJsuk1RBgjNOSGfjUNSm5mxY58XGDs5jUruUXnPnlhklEtG6D+e
	rt0Li6UlJX8hQ94oJsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIbco-008aFW-8W; Fri, 11 Feb 2022 19:30:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIbcl-008aEY-7l; Fri, 11 Feb 2022 19:30:32 +0000
Received: from p508fd6b0.dip0.t-ipconnect.de ([80.143.214.176]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nIbcg-0001n3-UG; Fri, 11 Feb 2022 20:30:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 David Airlie <airlied@linux.ie>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Daniel Vetter <daniel@ffwll.ch>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: (subset) [PATCH v6 0/5] Add GPU for RK356x SoCs
Date: Fri, 11 Feb 2022 20:30:24 +0100
Message-Id: <164460777903.839530.14036676510603904155.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209215549.94524-1-michael.riesch@wolfvision.net>
References: <20220209215549.94524-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_113031_308822_E5D5B559 
X-CRM114-Status: GOOD (  16.38  )
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

On Wed, 9 Feb 2022 22:55:44 +0100, Michael Riesch wrote:
> This series aims to bring the GPU support for the RK356x mainline. In
> conjunction with the VOP2/HDMI TX patches v4 [0]) it has been tested
> successfully on a RK3568 EVB1 with weston and glmark2-es2-wayland.
> 
> It should be noted that on the RK3568 EVB1 the supply of the GPU power
> domain needs to be set to "always-on" in the device tree. There is an
> ongoing discussion to provide a clean solution [1], in the meantime one
> has to apply a hack.
> 
> [...]

Applied, thanks!

[2/5] arm64: dts: rockchip: add gpu node to rk356x
      commit: 810028668c6d9da25664195d6b906c98a8169f72
[3/5] arm64: dts: rockchip: add cooling map and trip points for gpu to rk356x
      commit: c0a7259fad2df72469b602418083516c2cb3a7af
[4/5] arm64: dts: rockchip: enable the gpu on quartz64-a
      commit: 6ac383456452378de07e55fc687069d1898a567d
[5/5] arm64: dts: rockchip: enable the gpu on rk3568-evb1-v10
      commit: 679f048a10d8322d79010e0e52f18a6c17bdf306
[6]   arm64: dts: rockchip: enable the tsadc on rk3568-evb1-v10

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
