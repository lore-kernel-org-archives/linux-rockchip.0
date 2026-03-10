Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C295FEA8550
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmbhNUxNCL4nlWeFzRQVVRqwsyhba7R9YeDkMFeVfU8=; b=wdyYmCjKe+Ihdu
	71O1i9uxVw4RL4xsoNJunw98LdRxmh59VtZ7ktUdHI2s1QHs5cLPoGBWQSS1VxiGappQbdM2uJ/hr
	ZvrJbz5bbGhOMlXT2N7M5Ty1WlR4rQ4BCBbdWwQsaz64Wnw2DdNt09GtQ4qywweo/AXPFyII/0H1Z
	zk9qgMPCzWwWk8KfDTJlbOCvjz4irlBujQeVqp3bae/P0G22yp1AK+Ll04b2U9fJFLRf94JfuSBAg
	lZW4whFAQisTjQENphTucRo1Afot2gw7O/+n78x85/uat69p+DWK172IyK/Hq6v0xY881FuNPWOgj
	nV9dMIiyCk4eMpBB8Z3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPn-000000095mW-0pIA;
	Tue, 10 Mar 2026 09:30:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPk-000000095lU-2v3A;
	Tue, 10 Mar 2026 09:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XW5x2W70/4qH1wnLG28SxFGceYyAdqEbV+ODm4WuYMg=; b=AXZiRj3XaLjCcEcg6QX35x7Q7S
	+gR7ns3jStOmeS0rkfMeYt3tnLMbvRTFwDgc8Ft5TKwsFLVLATTFA0ZfWs1VcZb0Mb+7aw/WDNBak
	bKAcwLYW5l0b+dwGRpr9M30txEbxjxFhdmme8XWm+0nAwx+Mu4Tnhxd/R/PRZVUbLYJXgqnfWVeHv
	yML0UHWTDARQPfVNWq3KpGGkSXwLKPUaKDNe5CI33Af3j0rRgo4+AyDRF1F4sWomD3HneyvKxHhXp
	hw8PWlC4da8rzUUeWCpGaIjD/kUzjswHfy62agnvfbzWbMt+QmrAYrEsa5cYQNpwsiPEMyDGAIGh3
	EKsvhBKQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix the trackpad supply on rk3288-veyron-jerry
Date: Tue, 10 Mar 2026 10:29:54 +0100
Message-ID: <177313498974.2340533.2031096927430655073.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260304164448.1024410-1-festevam@gmail.com>
References: <20260304164448.1024410-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_023008_755950_991E1F86 
X-CRM114-Status: GOOD (  11.11  )
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


On Wed, 04 Mar 2026 13:44:48 -0300, Fabio Estevam wrote:
> According to hid-over-i2c.yaml, the correct name for the 3.3V supply
> is 'vdd-supply'.
> 
> Fix it accordingly.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix the trackpad supply on rk3288-veyron-jerry
      commit: 3ca314a5643057ad30d16b18c99ceaa5474c1200

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
