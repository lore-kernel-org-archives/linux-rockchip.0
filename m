Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD132C2BA15
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r9qM7agLGcD5LxJKGYxThfKtUKvjeg9U37nD0ShnRhE=; b=omoPkVLkw/10bB
	n0N8SD3vhS5200BbcaF+ka2vttvD9sVW7FyteqwGMfFy/4k7jmACYRBkT3ZmnJ2EJpc4XgE4fSzIm
	w2o2NMW/VxiO0cOM84MfRyfFnmKWK5HxoeeuL0kAEqraqQgQVgWW8r93ifwjzZscaJYYRI97fyxN4
	4yGejlNcfM5IfvNq1xJzjW1AGwPuouDDwqj7C/MDaEozzHyGC0XUjaEId/8LHMy0HkIZhBvkf8tja
	LJ4+/CO4q4aAH9/VjJ0iSAMJXEi1dsxBNq0dVo7g52K1xoF3AN/9NNo/jWVoseblWyI76PUGKpuoq
	MONlqgyz76Hl2dpqQN+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWzJ-00000005ohr-3RXj;
	Sat, 15 Jun 2024 17:14:49 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWzG-00000005ogd-227o
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1718471683;
 bh=dLn2LLOIv7jBQg/04IBwQjzhef+lWuqMlW02SALqD2s=;
 b=z3ghITGUjKvYMox/h/1fTuc8dR8E07q21xq7oObMgp3XN1LJof2l2u1KaPS2LThjh2HA8dpu6
 sSPDAJTa1wkLpzyqbo2drwuw4I9sIhM9Qi0ICC9lTQawTwMMiMKXt+pL253tJpFEmMM1nPu4eE5
 arMU6HIrftF6NOygwu+fwgZr5bIaCgpOEdhfc7BnCIio5PFpEZSU11h9LLhwUCAwsavMPdTpw9l
 1eAYzCD/hhEdlqLVRRJPB49QcEaxR3oJ7DGUedqzFuHmVJ/MMyUUsvIdIv4WZIFPJr5yn9QL1ir
 KaPQKk2i878OixYuLUO/obAgPetMLNXTKf5CvQ7j/Cng==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328, RK3399 and RK356x
Date: Sat, 15 Jun 2024 17:03:51 +0000
Message-ID: <20240615170417.3134517-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 666dc99724e0254b39803fcf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_101446_639082_E4C6FE14 
X-CRM114-Status: UNSURE (   9.19  )
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
RK3328, RK3399 and RK356x.

Patch 1-3 fixes some issues to help support use of high-resolution modes.

Patch 4 fixes reading of EDID on RK3328 when using a forced mode.

Patch 5-7 adds hdmiphy rate validation in mode_valid so that HDMI2.0
modes can be enabled on RK3228 and RK3328.

Patch 8-11 modify phy, current and mpll tables to match what ChromeOS
and vendor kernel use. These patches originate from old ChromeOS and
vendor kernels and have successfully been used in LibreELEC distro for
the past few years.

Patch 12 enables use of HDMI2.0 modes on RK3399 and RK356x.

Patch 13 help fix use of console at 4K resolution on RK3399.

This series may not fully depend on but was only tested together with
the series "drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID
cleanup" at [1].

I have tested 4K modes on following devices:
- Asus TinkerBoard (RK3288)
- Pine64 Rock64 (RK3328)
- Radxa ROCK Pi 4 (RK3399)
- Radxa ROCK 3A (RK3568)

A copy of this series can also be found at [2].

[1] https://patchwork.freedesktop.org/series/134727/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20240531-rk-dw-hdmi-v1/

Alex Bee (1):
  drm/rockchip: vop: Allow 4096px width scaling

Douglas Anderson (2):
  drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
  drm/rockchip: dw_hdmi: Use auto-generated tables

Jonas Karlman (8):
  arm64: dts: rockchip: Increase VOP clk rate on RK3328
  clk: rockchip: Set parent rate for DCLK_VOP clock on RK3228
  drm/rockchip: dw_hdmi: Fix reading EDID when using a forced mode
  drm/rockchip: dw_hdmi: Allow High TMDS Bit Rates
  drm/rockchip: dw_hdmi: Add max_tmds_clock validation
  drm/rockchip: dw_hdmi: Filter modes based on hdmiphy_clk
  drm/rockchip: dw_hdmi: Enable 4K@60Hz mode on RK3399 and RK356x
  drm/rockchip: Load crtc devices in preferred order

Nickey Yang (1):
  drm/rockchip: dw_hdmi: Add phy_config for 594Mhz pixel clock

Yakir Yang (1):
  drm/rockchip: dw_hdmi: Adjust cklvl & txlvl for RF/EMI

 arch/arm64/boot/dts/rockchip/rk3328.dtsi    |   4 +-
 drivers/clk/rockchip/clk-rk3228.c           |   2 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 173 ++++++++++----------
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c |  23 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |   4 +-
 5 files changed, 116 insertions(+), 90 deletions(-)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
