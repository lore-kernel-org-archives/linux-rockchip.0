Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E799CA9EC0
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 11:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FDWEeektxuUy4hsxEB6HpYbKw40MNbtEEJxnNWJjjI=; b=v6uei4/+t1wpjF
	hM4+lA13IpUNgFnd5IRwcecNFbpOHunQpZRHM5wx26VmZPdQMKP3bFIA+9ebPp3t6FLdhQKNbTcP0
	IiXuj0g+TeHm2Eqfew6CCsyNLJV/qUsGeNgW87/WIZrG2pX2HaTiZIT7svRVbAr9u+XgAKz8Y7L/T
	NzoXI18EP3H0j5gA1VoxB51S22O5nIR+7rD7p2+D/lWC6ZIMZsWCNO7CgzQoB7CluGMVvy7G/BfCb
	zAmMI+xj51i4P7FfYZpIojCWfxiy+MvByHmUK8/jRd7wS7+VB9Z/t34HTUZ9wjmBRfu2M8XIn8eA8
	BgzVTao3zFg0uUGkQ0WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFV29-00000007tnu-393p;
	Sat, 10 Oct 2026 11:14:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFV27-00000007tmf-1hKH;
	Sat, 10 Oct 2026 11:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2QMIZs/oc9yRzCjq2BhYPtU9ekIc1h07F+4lA6c/ZXg=; b=w0wmdhV4TiNxrVczb8Yn1jK5Uq
	z9NbpQm6+pdQpgWIGADElquT73oCjhiP0ECtJupz4vup0N0dog3gNHt1JVe7xCJ+AqcwoTiIS+QTS
	p2fcJ1jT4uGfSW/N4wa6ap7IRA7lj5CxacLO4ezT8RPmJGlvETJY8D6HjD2Vy/1q8HN2xJeoMCzwn
	vjYVefeCgpiWLKrn2k39AvtMtmSapJafXgl3NqPxVe44jRAxj3Fhh7/ciK0DNyfVkugt4XWA1w0lm
	suTZDgdjnI5CaL2RJ7CBpGGrNJP2ymO21UrEoD07TtolSW96y/6w2+MHwQBrjM3LHPPqW5zhrobm2
	jD7Oihgg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add pcie30phy data-lanes on rk3588 coolpi-cm5-evb
Date: Sat, 10 Oct 2026 13:14:11 +0200
Message-ID: <179163084344.3536058.1908487872830452514.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1791536997-182608-1-git-send-email-shawn.lin@rock-chips.com>
References: <1791536997-182608-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_041431_495244_922DB421 
X-CRM114-Status: GOOD (  10.03  )
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


On Fri, 09 Oct 2026 17:09:57 +0800, Shawn Lin wrote:
> Both pcie3x2 (PHY port1) and pcie3x4 (PHY port0) are enabled, but
> pcie30phy had no data-lanes. Without it the PHY defaults to aggregation
> mode and assigns all four lanes to port0, leaving pcie3x2 without lanes
> and unable to establish a link. Set data-lanes = <1 1 2 2> to split the
> lanes as 2+2 between the two controllers.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add pcie30phy data-lanes on rk3588 coolpi-cm5-evb
      commit: 5f48abc96182700a006b25b9bfbf80c19455760a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
