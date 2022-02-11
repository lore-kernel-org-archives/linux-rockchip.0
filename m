Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C55C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 19:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+2Jr9pcVoNhrBa7JzGP6w2Oag0YVCI07Xw9C4UqhOM=; b=QEFmQR+3Kcgj8Q
	mY8GSwsKxIy+dQmZgSklN36oWor6BjlRq7FBryVDwTpcqPWt8Bbx2syN1i9j8wn6Rte0xEX7m+Anf
	F/P4aA8hHC33MHKnjaUvKw42b3vAiA/DZp1ApMD1WgEX7lOxrlU3Kc0zQ92fY+OKyjnJ9X0VXhzcc
	Uz9RG7u1wusgQBuLZFH4RFcQwJVjnRCwF4inBN3sWYryOhYCwn4oAO6JMUrh5vlgkyVNoR6PQKtl2
	5q5jfcZNznUiHXns2S+7ZUtGGDONJN6IunkTkZePbZhj55xpimvCzFYwnVVPKIIwbilnolUsjDNX3
	9ynwh5k21OpiTj+hHi3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIbX1-008ZbF-9R; Fri, 11 Feb 2022 19:24:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIbWq-008ZYn-Ji; Fri, 11 Feb 2022 19:24:25 +0000
Received: from p508fd6b0.dip0.t-ipconnect.de ([80.143.214.176]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nIbWl-0001kh-2o; Fri, 11 Feb 2022 20:24:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Vetter <daniel@ffwll.ch>, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 David Airlie <airlied@linux.ie>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Peter Geis <pgwipeout@gmail.com>, Alex Bee <knaerzche@gmail.com>
Subject: Re: (subset) [PATCH v6 0/5] Add GPU for RK356x SoCs
Date: Fri, 11 Feb 2022 20:24:16 +0100
Message-Id: <164460742860.837143.15152095368921383723.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209215549.94524-1-michael.riesch@wolfvision.net>
References: <20220209215549.94524-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_112424_689673_F948AE7C 
X-CRM114-Status: GOOD (  15.70  )
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

Applied to drm-misc-next, thanks!

[1/5] dt-bindings: gpu: mali-bifrost: describe clocks for the rk356x gpu
      commit: f1775c26e8b8809d922a29bb5e3df6ea503d2fa0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
