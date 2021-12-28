Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C18C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Dec 2021 00:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2ayR+rcQoAzNVL1EgqQ89xapQoGVDh3t8GgiFhmimI=; b=Mhe1MS8KinRlsw
	3LJkOsprGSygdbXjiWQvHpbl8aZD8dAFxXq53/Gs3NiAwksctclhgqjeKgh7pyb6fNA8ksPzOkCMF
	iGKepOQQj6htHbqJ+iMeSRXrx5fZ9saSv3t2LfTY/m6ZqbDBqJ0YQTnH/6xX3fb+/4EA7J9K/L/em
	WLu47pSez7TeD28yc19Pu6ysK3DcSd+J/pG9fLw3uLq5OIFEHHwZSdoy+/RPzk5vYXwmXVCvLPt6+
	2QxewQAuX6AdxqgtSikJA1emXBiJRdl2MCg/zn5beQ0IlEi4tPGh2dJfH/gbqnHpOeOVI+skRMpTZ
	hLQPpfmwqwMUVapoS4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n20fV-0001qO-Pv; Tue, 28 Dec 2021 00:48:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n20fK-0001o9-3X; Tue, 28 Dec 2021 00:48:35 +0000
Received: from p57b77d8b.dip0.t-ipconnect.de ([87.183.125.139]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n20fE-0001p0-SA; Tue, 28 Dec 2021 01:48:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, Ondrej Jirman <megous@megous.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/8] phy-rockchip-inno-usb2: support rk356x
 usb2phy
Date: Tue, 28 Dec 2021 01:48:27 +0100
Message-Id: <164065249086.1985132.4031278620113773485.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_164834_167715_51EC2840 
X-CRM114-Status: GOOD (  11.28  )
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

On Wed, 15 Dec 2021 16:02:44 -0500, Peter Geis wrote:
> Good Afternoon,
> 
> This is my series to support the usb2 phy devices on the rk356x.
> The rk356x phy has a single muxed interrupt and has moved the usb2phy
> nodes out of the grf and into their own nodes.
> The phy needs to tie back into the grf for register control, similar to
> the rv1108.
> By moving the phys into their own nodes, they now have full
> #address_cells = 2 register addresses, but they still reside below the 32bit
> mmio range.
> 
> [...]

Applied, thanks!

[1/8] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
      commit: 0c8662341dfdda1e0a59692e4d78ecb087f09da1
[7/8] arm64: dts: rockchip: add usb2 nodes to rk3568 device tree
      commit: cca4da59db28cdd284d34835be9f109f37bf0803
[8/8] arm64: dts: rockchip: add Quartz64-A usb2 support
      commit: 80d44c01e56943fcf9d0b5267ccfaa9487ac8067

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
