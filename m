Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E7DE6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 14:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hdaRJu/Ob9lf7Tzb3D3/+XE6cQiYADqbBujic2aPug0=; b=DDI7F6e9hjAdDK
	5Q7IKmndnK7P89BYflwrkbeo7NjKOkwTEMCVjSK9kpUoFjTyIqb+bjxmi1PrENeUkpga771fu749M
	zPNudC5gtDr3mF9GZpad6sd+ovI9Mol3VcBNO4/K0sqoYP73VY7InMu2HxUfMgMejBjWd2X+yT5e5
	0CpK7/1n+TGoNinkSOceXgrnMA0Q5/mUCW5IznhsDRRMzPRZaIYQ98cO/xusmCS1ScBNu7IrSg2xp
	twkFzO6FLXTmTiAXbxvAORPb1JaftSJugWM+0dG/4oDeH6vAAPiaePAU5d5HIaMAkBAzaAlrMKi/s
	9kAhIOafvkcpE+HBoCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKK-0000000Gz52-2AZ1;
	Sun, 08 Sep 2024 14:55:44 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKG-0000000Gz2S-43bX
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 14:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1725807321;
 bh=p1MiGiCWJ1QFiMZG2+xqAuAwYxvAC3COp5/R/uwoMcw=;
 b=wnDWPrL7E5Q/8MDmUWbNIyghdyE1LnEmv5XRZxc6SWSfkiDhcVwXUv6+FIHKDCmzmV+EyVkxN
 Nn4HM+c24M3TddN6yZrXrhqUkpc420aNNvqpp4s8ogJLCW/50hX+Bpnfkrel0jwkOIO95oEwPAp
 PXSL/6vwKP9NKyIxGsLVb8vPbEBd/4B7Sr3CTU26DXvZ+LphL/aDdCC0T9R0UgSk4Hc/Oev/yGD
 DLUj5suRD6bnOVeLVvJtobPGZVXdcfLI65W3V6l/i5gqXgdM4PTJExz6JYnK7GxAejnzdW4Omfy
 G+oB6NYd5lo8NMG9p1oleZIwafkWa+lSIMwNTVHkjNrw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/7] rockchip: Enable 4K60Hz mode on RK3228, RK3328, RK3399 and RK356x
Date: Sun,  8 Sep 2024 14:54:57 +0000
Message-ID: <20240908145511.3331451-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ddbad73c9877b459588e68
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_075541_085475_A80BD033 
X-CRM114-Status: UNSURE (   8.40  )
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

This prepares and enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228,
RK3328, RK3399 and RK356x. Support for 10-bit and/or YUV output modes is
not part of this series.

Patch 1 add hdmiphy rate validation in mode_valid so that HDMI2.0 modes
can be enabled on RK3228 and RK3328.

Patch 2-5 modify phy, current and mpll tables to match what ChromeOS and
vendor kernel use. These patches originate from old ChromeOS and vendor
kernels and have successfully been used in LibreELEC distro for the past
few years.

Patch 6 enables use of HDMI2.0 modes on RK3399 and RK356x.

Patch 7 help fix use of console at 4K resolution on RK3399.

This series may not fully depend on but was tested together with v2 of
the series "drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID
cleanup" at [1].

Changes in v2:
- Drop patches already merged
- Collect t-b tags
- Rebase on next-20240906
- Hotplug HDMI 2.0 to HDMI 1.4 scrambler issue was fixed in v2 of [1].

I have tested 4K modes on following devices:
- Asus TinkerBoard (RK3288)
- Pine64 Rock64 (RK3328)
- Radxa ROCK Pi 4 (RK3399)
- Radxa ROCK 3A (RK3568)

A copy of this series can also be found at [2].

[1] https://patchwork.freedesktop.org/series/134727/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20240906-rk-dw-hdmi-v2/

Douglas Anderson (2):
  drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
  drm/rockchip: dw_hdmi: Use auto-generated tables

Jonas Karlman (3):
  drm/rockchip: dw_hdmi: Filter modes based on hdmiphy_clk
  drm/rockchip: dw_hdmi: Enable 4K@60Hz mode on RK3399 and RK356x
  drm/rockchip: Load crtc devices in preferred order

Nickey Yang (1):
  drm/rockchip: dw_hdmi: Add phy_config for 594Mhz pixel clock

Yakir Yang (1):
  drm/rockchip: dw_hdmi: Adjust cklvl & txlvl for RF/EMI

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 162 +++++++++-----------
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c |  23 +++
 2 files changed, 98 insertions(+), 87 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
