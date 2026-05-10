Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DCEBCD37AF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 09:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hJ+VIt0f0Al5iNGi2wkNhr5tc/xKwZrhkPpqTx393Pk=; b=n07+8RotQXH5HO
	5+bSqveEK3u9rJ6NFpGcxFczn1BbpzveOqi0T5mFcBp1CnxjczDB7xCZkZLiEXqxF3R/XFHhvYCxG
	bC0SN+HJWKcAcKz8TyECvH1WbwTryKefmYw1/Yz9ZjfJ9P4Uy+p2vBiMnEY6UFsYR10WUqpMneRP2
	KcvvftahhsRtnvCuseAwOechEt8lk/ML/lMc+KSKk01CeEnGP3LkS4cAZmOGk6dvWlJXmcKMfnBW3
	2ZZgQA/WSP202hsp4p77cnb47AtIYP/prN/kI1dwDFXqO2E8By9EKZqItU1bZGngJ98F1sYmnx5Ns
	WjNyTFBPrPdpOwcilsPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM0v7-0000000AWLE-1adD;
	Sun, 10 May 2026 09:57:57 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM0v1-0000000AWHT-3w8y
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 09:57:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1778407069;
 bh=gBg9IbjI1s7Ri+maU9NqovsWHKtYNoIlGJYS+T9ktpM=;
 b=OTfCRV12xTUqNtYFk1o19OSEgoWoXYVlqgiGK63xaES6mneQgB0vehlLI04DyyjMJrGdyX28l
 kxZnddoLlZnWzO8BrYKoTt36AD/vud98wacsljSAufg60kUCRvlk5pvF9AiBsuC8ZCsOkTmt0Es
 GoSBW11iMccyEa1YYa0Hh2JuqWxpB9VxrdfKOXlEAXFTfcv0SWOJwG96hwpvVLfaLIspXRR1hrH
 9qRJZx/dyG9hRsQ7dI5fcGPC1hFXextrGpy4LG5RGimehjq8yQA4VJauFRedgS0iUQ7KzMW4SzC
 B4N8lSziARNakcIzkNPjvIengRFyBCWLVduamarls6yg==
X-Forward-Email-ID: 6a00569049521910acdb9424
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops
Date: Sun, 10 May 2026 09:57:28 +0000
Message-ID: <20260510095731.1222705-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_025752_072146_4E08BB5A 
X-CRM114-Status: UNSURE (   8.07  )
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

This series adds support for using phy_validate() and phy_configure()
with this HDMI PHY as an alternative to current in-tree unused way of
using PHY bus width to configure the TMDS character rate.

The only known users that calls phy_set_bus_width() on this PHY are my
out-of-tree HDMI 2.0 patches for Rockchip RK3228/RK3328, i.e. those
originating from LibreELEC (also carried by other distros), the
downstream vendor kernel uses a different implementation that also calls
phy_set_bus_width() on this PHY.

Patches that calls phy_validate() and phy_configure() on this PHY should
land on mailing lists any day now.

This series is part of a larger multi series effort to:
- phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops
- drm/rockchip: dw_hdmi: Misc cleanup and propagate bus format
- drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup
- drm/bridge: dw-hdmi: Improve input/output bus format handling
- drm/bridge: dw-hdmi: Convert to a HDMI bridge and use of bridge connector
- drm/bridge: dw-hdmi: Add and use tmds_char_rate_valid() plat data ops
- drm/meson: hdmi: Misc cleanup and use CEC notifier helpers
- drm/rockchip: dw_hdmi: Enable YCbCr and Deep Color modes
Link to snapshot: https://github.com/Kwiboo/linux-rockchip/commits/next-20260508-rk-hdmi-v3/

Changes in v2:
- Split into two patches, one that adds new ops and a second that remove
  the old and unused workaround
- Add validate() ops to validate that the TMDS rate is supported
Link to v1: https://lore.kernel.org/linux-phy/20260503172936.194003-1-jonas@kwiboo.se/

Jonas Karlman (2):
  phy: rockchip: inno-hdmi: Add configure() and validate() ops
  phy: rockchip: inno-hdmi: Remove deprecated way to configure TMDS rate

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 58 ++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
