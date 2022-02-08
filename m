Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF4C5C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 11:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+PQFLN9CX8wv7Dem9iV6elJ4E2gHdRft4dzAD6+WP0=; b=0eVRdCdx87YDfC
	A3zfe/9Ief/Ly7fRulLN+Lq6f/nlIsdFUiFsT8O9daVagVGyFd24V4mY0BR0FPOTgDYATsA715As1
	5yeBWqfR9WDsh0bwXiX6xC7p/dArIhEjDHC99VWjdMr9wg0T9woQEhhE2MME5MjvPesE4zSoVvw73
	Z20fxCPTa/qaHoou8/OJ+mehVreqrCSm5GK8dQ/1XLvmQEp0gIjAVxhLrx8yNfusECob+9Ed3bgxg
	Zat8S0EK8hYQT4S+5gWH22jhbykrxu7G+obZZ2fBJhy8vdhDNkaRhyG5IpqRoadgYXSFfdsvh4jJU
	nfKsVg0Tez5G5DyUBgSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHP8B-00DggF-IP; Tue, 08 Feb 2022 11:57:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHP88-00Dgeg-Q3; Tue, 08 Feb 2022 11:57:57 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHP83-00019N-Im; Tue, 08 Feb 2022 12:57:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, kernel@pengutronix.de,
 devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/27] drm/rockchip: RK356x VOP2 support
Date: Tue,  8 Feb 2022 12:57:49 +0100
Message-Id: <164432145305.107337.14727709648090165451.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_035756_872401_A2E54C3F 
X-CRM114-Status: GOOD (  19.00  )
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

On Wed, 26 Jan 2022 15:55:22 +0100, Sascha Hauer wrote:
> This is v4 of adding RK356x VOP2 support. Due to popular demand I added
> a changelog to each patch, at least starting with changes to v3, I
> didn't care to add the older changes as well. I hopefully integrated all
> feedback I received to v3. Additionally I added some patches to the HDMI
> driver to support resolutions up to 4k@60Hz. The patches are mostly
> taken from the downstream kernel. Some have been send to public lists,
> but were never applied upstream for reasons I do not know. The patches
> are a bit more intrusive than needed for my case, but are present in the
> downstream kernel for a long time, so I decided just to take them
> instead of stripping them down to my needs. With these patches I
> successfully used the driver with 4k@30Hz. 4k@60Hz doesn't work for me,
> I hope this is due to my low quality cable.
> 
> [...]

Applied, thanks!

[11/27] clk: rockchip: rk3568: Add more PLL rates
        commit: 842f4cb7263953020f4e2f2f0005fc3e6fc56144
[24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from dclk_vop*
        commit: ff3187eabb5ce478d15b6ed62eb286756adefac3
[25/27] clk: rk3568: Add CLK_SET_RATE_PARENT to the HDMI reference clock
        commit: 6e69052f01d9131388cfcfaee929120118a267f4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
