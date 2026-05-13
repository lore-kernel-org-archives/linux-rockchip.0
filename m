Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A27C8CD37B6
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 07:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjJP5+D0BKEfTbKY8J4bThwcbqcpqb9OVv4mDwX0XCU=; b=qJp4fpnHuN9nfR
	JfuAOuGlpFDAq2xiSgLKVbb5WUdhF7WN3P6Ajh/GbfJ54oLH38h9KSN31m+SyIXXx5+wPt8OogAC9
	SIscPeYR/PPhaxoGiKhrDqKTKo4+bqcoVQWbXYYZxFn6vg+LI/eTbnqS7L9bOqQSqIsAmY0x/55f6
	dWxudW/SugT6N7XPWrq06SbLs2uLv0f6viEGZd30nKXqQXUqcQCi67MJWheRazf4PS2lr3MSsf9uq
	9CfrK8uuQeZVDPJ7ucw4+KktoY9UazqkAID5hoqjD99iC7kR9BT2lXxAcpoeiWWVSpqC5DysL53ji
	mVJNQWNJXEp93CjsjmcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Gm-00000001cA2-31Dk;
	Wed, 13 May 2026 07:44:40 +0000
Received: from mail-m128225.netease.com ([103.209.128.225])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Gi-00000001c5w-1mEc;
	Wed, 13 May 2026 07:44:38 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e3a94ce6;
	Wed, 13 May 2026 15:44:32 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v5 06/10] dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
Date: Wed, 13 May 2026 15:44:10 +0800
Message-Id: <20260513074414.2053435-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260513074414.2053435-1-damon.ding@rock-chips.com>
References: <20260513074414.2053435-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e204b633003a3kunm7763bb98560fc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTxhIVhgaHUJMTR8YSR1MSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=YE99MuwR9EimuGdG3WdT11QlPbnX/7MKhZ63zRKMqdKxl88qZr+qzKefKy1Pm7zLhHPHpSZeE2ITO7uGIoax7Do9/waxJlYPS8IcPtLQtiVIo1+W0avymrNFT6LQvHCFbY8X9a4GwE8HChUzEgqBPYvttvAjSHGlRzxdEWfnBjE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YSnahvX5zBa70o9eQuILUX+DsDDNP65+ymKCqva9AIE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_004437_709020_CD9357BC 
X-CRM114-Status: UNSURE (   7.68  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RK3576 integrates an eDP TX controller compatible with the existing
RK3588 hardware design, reuse the same binding configuration directly.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Split out a separate patch to add the "hclk" clock reference.

Chanegs in v4:
- Modify the commit msg.

Changes in v5:
- Add Acked-by tag.
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index d679da70947d..bb75d898a5c5 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - rockchip,rk3288-dp
       - rockchip,rk3399-edp
+      - rockchip,rk3576-edp
       - rockchip,rk3588-edp
 
   clocks:
@@ -92,6 +93,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3576-edp
               - rockchip,rk3588-edp
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
