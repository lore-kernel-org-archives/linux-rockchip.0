Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF24CF887F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 22:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/M0C2bGWIWJ5WRFVym2EZY/cX2Fo2IN+VR7ybz3FwgI=; b=oaDFYlPCTrEDHA
	BXSmr0ptj3hjI6Xph5x1jryOMyM3JCEKyrH4aLIqbJErNEM9ULhhFppMBaulbhfChct1YNShuDFce
	e7PvdKs/m0SXKzDcGG0Q4NTXD0PlnKE5DR798nUxoa0Y+D2ZCDVcw0xYEzLZ+Wn7JjvMoI3lXAXDD
	CnNotYdCmrkBusuZRdOxh7miE8KxnXtUgZASw8qUMazRzJFX7u0T7IKsvLc8px2iSQO7zizlB38Hj
	sOwmtG2cESgI6nOR8JZLQL3gUybg+M7a42zr5EhGgnAx0hQHdxKhWuIb++pBBjBtRbvOTDB+mlgx1
	bayx2CHqzmzVmOY5+qDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3x-00000007WNJ-3KL0;
	Thu, 20 Nov 2025 22:23:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3k-00000007WAe-2V3e;
	Thu, 20 Nov 2025 22:23:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OyW98MyVGluZyeY1kwgWwup1uQtdsCROzoZ+Bj7trA4=; b=OBm2keIBPeVxXl+78MDMqh3qqc
	wNc1Ueesv/PDgbLlCqouIVleCKjusPwyFQ8/yj77Ku6fK02e6xZQOm06yBeCD+W2+X/1rHnEygAhl
	/rt0b79HeoXK7/8K7BZG9TiP25tYxrnaGdH7ry8RdQyiOiGAjHMcYKfros3O1PBg72arfQgxeVYPZ
	VPp7xjEhbA3l1rxKsL7wc3bwZ4jw6rvUJea8DbwrnT9df4I0SCCqkdpmAhih3d5a4yMT/dmXuDaQX
	P0B0UmvEg8cdac1QlC7/7UqcdVRYRP51d8bTTc3TREsCshxJkJOfYH2aiWdKJr4oAtBAaQSFHb24l
	BLkzUNew==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3X-0007Je-V9; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com
Subject: Re: (subset) [PATCH v2 0/9] General RK3368 HDMI support and 2 outputs for RK3368-Lion
Date: Thu, 20 Nov 2025 23:23:00 +0100
Message-ID: <176367711171.9778.9000322898026906278.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_142324_660309_D0C1B54A 
X-CRM114-Status: GOOD (  13.29  )
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


On Tue, 21 Oct 2025 09:42:45 +0200, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.
> 
> 
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
> 
> [...]

Applied, thanks!

[4/9] arm64: dts: rockchip: Add power-domain to RK3368 DSI controller
      commit: 8319be65e860a2881e5213ed95e03992037bf5c1
[5/9] arm64: dts: rockchip: Add power-domain to RK3368 VOP controller
      commit: f54b09d46f72e4548e14476ba771231b0ec2b0af

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
