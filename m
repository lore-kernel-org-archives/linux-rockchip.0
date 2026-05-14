Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C396CCD4851
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 07:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEnS+3M5qDlEtJjdCBHPI0CV2jUCsiLc7hACM7Rwsgc=; b=pf0UrpJFgsbuzG
	t6U3qWEcRGhYrma2Bn4RJVKLZ10ylEK0KU6++H9yfZyp+1TkQtmgiYtthZijoJ3bc9t4P/EnzwTP5
	txsoH1EnPqD9VXqf/1Fn4N3xx3UrPfd6nDRpYD95ODFxx+sbK1sSu8ePghMNRN3nvpsJL6CpoO+Yy
	DvayfH1ZnFaH8r4c/4RyJUkh3DC9ZAQd2R42v8HO3gDfE2C7n+dmg90bzzzwLxnfmBP8ujy1yhbL+
	yl38oAettnYlwpIpJIHrxv9aRazImv3Nl05wi0UE45mBg0uPr8i11zkWxZgJboxDzp9OuSGgJ+oz2
	brV35kEBIQROd7ulE5xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNQ55-00000004mH8-0C8x;
	Thu, 14 May 2026 07:02:03 +0000
Received: from mail-m10227.netease.com ([154.81.10.227])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNQ4x-00000004mBw-3ZVo;
	Thu, 14 May 2026 07:01:59 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e617edca;
	Thu, 14 May 2026 15:01:39 +0800 (GMT+08:00)
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
Subject: [PATCH v1 1/3] dt-bindings: display: rockchip: analogix-dp: Expose inherited properties
Date: Thu, 14 May 2026 15:01:31 +0800
Message-Id: <20260514070133.2275069-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260514070133.2275069-1-damon.ding@rock-chips.com>
References: <20260514070133.2275069-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e254a7c6103a3kunm8191ae6fc25f3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHR8aVkkZTEMfHxoZSkxIHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bF3XB/NxtfQOdzSctQkKF3XU229TaU+05o8zkZGETUQMaD+NbJYBPn90txPuIu4Ji2T3dbnQahqfjxrfLAJkbCb6VPFszt6OCkR43iSxNgVILoFi4iP5u6GOyWyCX+wnPlLWYWMhX8cBfrQQJF4knrw0wAg5QXfJr6MIfBM60xQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PnQAO4hrda8Ee7d8bYmPsv3T8ksDqN93d0yp7NLmvfY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_000156_095277_E8797544 
X-CRM114-Status: UNSURE (   4.89  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Expose the inherited properties from the base analogix-dp schema
to satisfy unevaluatedProperties constraints.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml    | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index bb75d898a5c5..896ded87880f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -50,6 +50,13 @@ properties:
   aux-bus:
     $ref: /schemas/display/dp-aux-bus.yaml#
 
+  reg: true
+  interrupts: true
+  phys: true
+  phy-names: true
+  force-hpd: true
+  ports: true
+
 required:
   - compatible
   - clocks
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
