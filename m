Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2413CC43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 19:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQLqGdxNMpvHBvZnN3MWCi0ON7UfYjX1s7XYIXsHcbQ=; b=IIMVZTreU7DQFN
	UlAiD9ykuSmnu45w9DwJb2/66V4JS08uxtuushUmcFP4PWB+d/MLMfhoEQ5VwWnzncpisFXbYSynw
	KyO3Eutd2CqDFkETZ6JqpcmUY8xM/zioL/e0V0mnTPD+2gU6MYWDEa86FOjMDpKV/7GVapUbnkmyh
	yZDQY5iEgdj6ah61kU44kuL1t49FCwbCCeqe/l4QYlY3VRl6MiCI/kMRh+gnSUPEXadKC8Jd83kBz
	0W4uhSMRcp8fj6tIQbt8AGcI52qUARmjtjFNEMqQBtYr8uMGWBIcFNfGseYo0Fk5f6WMkTV1E0yFQ
	rbKw8WsgFa0Cnr5CRb3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBiz-0000000Fnf7-3Ofh;
	Tue, 07 Jul 2026 19:44:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBim-0000000FnOX-0P7F;
	Tue, 07 Jul 2026 19:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9ij1iSA9fklslnNcgneWEKunccclcxZxRrXNrqVXuxo=; b=QlaTUEzWqoph4tNYXOWo/S/OP4
	huKUpcksH82KeEOGVOr5gtkikchYjdGQSuuoJgJqm768E/zH390u5xJF7rQrhC2Eeocmp1ZNOy+gB
	um5IukqbyaskBRC2xcnxE1jC2fcIdqApAeiR9wgWXtIKoU+Iibl1/ddQEtC7U6z6Tv9TobFAYU9Ao
	UAXJYiAs6gPWabnOQctuHkXOn2GmxWgwDWLvWUMUW3xvcAYd5BoV5x4rO8BKka5EpgBHildVcXm4d
	ChG2A0QJbNNWEhZAH7T63hqesyzkDuQHiaUGP2SBVVz7LKIpkYZvPTXLH4fFXmmP+hsDOElD7vsl6
	H3o+Gbrw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Petry <petry103@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Vsevolod Kozlov <zaba@mm.st>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fan speed control for FriendlyELEC CM3588 NAS
Date: Tue,  7 Jul 2026 21:44:34 +0200
Message-ID: <178345345844.664858.3572226528191999006.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <akkAvJap-MtbKp8B@Vsevolods-MacBook-Pro.local>
References: <akkAvJap-MtbKp8B@Vsevolods-MacBook-Pro.local>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_124444_141213_FD5B318A 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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


On Sat, 04 Jul 2026 15:46:52 +0300, Vsevolod Kozlov wrote:
> The FriendlyELEC CM3588 NAS kit is often supplied with a case and a fan.
> Enable control of the speed of the fan using the trip points and cooling
> maps from rk3588-nanopc-t6.dtsi as a reference.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fan speed control for FriendlyELEC CM3588 NAS
      commit: 2035369f672fed6ec8430e8876de38b2f5d3f7c1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
