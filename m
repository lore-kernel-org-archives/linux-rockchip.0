Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E15BACD5BB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 11:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfXlPZZuRuevW6KbGS+WDisF3WmaTNejiRTh9FBnI6s=; b=F9lGOzRC/ck37g
	nfJD+8Gv+SOR7E288Hwyi4fa/aD5Fq3FIuUyzgh76K5w3dWK5MpLtBeL/ayuOFmDlkDnlLQPa6O1c
	2hut4UvRT1mVCMooIc6SdUs8qowFcIuhzcMDzVQjpoi/nE/Idbxeofc1cfNR9YGJkvYOWSikISoNm
	HH5vT/+EPOnE9OPBCAHMPBGqQRkTTiMJ2nWQuwWQ/+LCUKXmRO1pc8+WnRJ7ZtE+xnzqbrhajUgRs
	c199aZHJ2UGC+3urMIIk6S+ekW7WhbpKERDh7dXGjxH6IbH0Ob5xdeNUvOJefgXzt8WV4oVhD4AjZ
	4CM/9DPerFxF2iQjEyaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1qD-00000007dd2-1tAc;
	Thu, 21 May 2026 11:45:29 +0000
Received: from mail-m158177.netease.com ([47.251.158.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1q5-00000007dY2-0Ac6;
	Thu, 21 May 2026 11:45:24 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f5009434;
	Thu, 21 May 2026 19:45:14 +0800 (GMT+08:00)
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
Subject: [PATCH v2 2/3] dt-bindings: rockchip: analogix-dp: Add data-lanes example
Date: Thu, 21 May 2026 19:44:58 +0800
Message-Id: <20260521114459.1394264-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521114459.1394264-1-damon.ding@rock-chips.com>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e4a5aa4a203a3kunmad9184e67776c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTRhCVkpPGB1NSB0dGB4eT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=EXC1F9yuTc+tl5/F+N4awUmmaKrZe9mRfjiMId9aWVSauh2NxtXP9orD84HZrTLA7f8DGJkCLMhAlGy5/HB5EPvlVTl9hen/oXiLd3Q9DEB66SvpTsDZ8OFBa7NugzdDBuO4IcCFv1NNZcmQcmjmPVR2XsxYF4mVBgHn7IEhfvw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=KlebGy4vmLFS3sABadJGKLU3IR8mYj+LJC5u2ExLQAI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_044521_596385_57C389CB 
X-CRM114-Status: UNSURE (   6.42  )
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

Add data-lanes setting in endpoint example to show actual lane mapping
usage.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index bb75d898a5c5..cf75c926318b 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -151,6 +151,7 @@ examples:
           reg = <1>;
 
           edp_out_panel: endpoint {
+            data-lanes = <0 1>;
             remote-endpoint = <&panel_in_edp>;
           };
         };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
