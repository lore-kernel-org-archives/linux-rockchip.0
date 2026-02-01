Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D91AE7C715
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Feb 2026 08:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lilk/FIIfOYPyFTA7iAclY8fiQ0BgoaCpzqzsctVX0w=; b=rtRn6E0TLxs+OT
	HSHoZISEf5JAMOlA25MP1OMbDyxQJQYO+fzEZ/Jthbzg3e7shycWQ8YznQhpEQKaGO88toQc/xap3
	Yaq9XyikwjDlKfGWAFPXG6mKQ3i70vs1o6td6ITG8OgcfsdwacupOhQsUFUXI1C/yiG7jdOwkNSzk
	qVh4rJ//VHOinyMmJNSnfBDrmR13AI5Z226xzTPPBGZksC+jqIAK79HUNfqNw/vuD6oUOQt5VpOL8
	9Cy4W1o1LEbyWOiMqh0hVyE4R1vhdRVTwrq8d/c0SQhMMht3pRkxhOsaB5QIW6WnDbYi4kBa72l+m
	E+2qQG/aLYKmu+UTfiDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmSby-00000003LjN-1tvw;
	Sun, 01 Feb 2026 08:15:14 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmSbt-00000003Ldi-40Rm;
	Sun, 01 Feb 2026 08:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=zH
	2EnTZ0jPmNS1phMLXrQ3tAVky7heoWvHfS5J433Ew=; b=gkeZhdTZyGV3ojrNBr
	7uz+h5108Sj/4sCKFus3MkXwNnd2ZJrzXyKLgC6DEJq8IFrC8OBGggZlfzEFjLu5
	ftPC+PUTfBi3ib8/hJjLAII1nW/m6XmNxRJwoEOJj/W6bcSAZh/syKJsLuuVY1cg
	Z4JlcIkG3kVZ8cIxRHPdDBh0A=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S5;
	Sun, 01 Feb 2026 16:13:50 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v2 3/5] drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
Date: Sun,  1 Feb 2026 16:13:29 +0800
Message-ID: <20260201081338.407999-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260201081338.407999-1-andyshrk@163.com>
References: <20260201081338.407999-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3Hz40C39pmxGTKQ--.55310S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7WF43Kw1DZF15JrWDuFWDtwb_yoW8GF4rpF
	srG3Wrtry8Jw4S9Fy7AF18Ar9xta4kGay8uayUKw4F9wn7KF1S9anIy3y3Kr1UZ3W7Ww13
	Jrs8Z3yaka4q9F7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jddbbUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7h4Maml-Cz5sBQAA3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_001510_393482_DAB35983 
X-CRM114-Status: UNSURE (   9.85  )
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
Cc: kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, alchark@gmail.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

The i2s/spdif clk are mandatory for rk3588, but not used
for the upcoming rk3576, so make it optional here.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

(no changes since v1)

 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index eccf6299bdb7..93e3efe18957 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -2014,13 +2014,13 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
 		return ERR_CAST(dp->aux_clk);
 	}
 
-	dp->i2s_clk = devm_clk_get(dev, "i2s");
+	dp->i2s_clk = devm_clk_get_optional(dev, "i2s");
 	if (IS_ERR(dp->i2s_clk)) {
 		dev_err_probe(dev, PTR_ERR(dp->i2s_clk), "failed to get i2s clock\n");
 		return ERR_CAST(dp->i2s_clk);
 	}
 
-	dp->spdif_clk = devm_clk_get(dev, "spdif");
+	dp->spdif_clk = devm_clk_get_optional(dev, "spdif");
 	if (IS_ERR(dp->spdif_clk)) {
 		dev_err_probe(dev, PTR_ERR(dp->spdif_clk), "failed to get spdif clock\n");
 		return ERR_CAST(dp->spdif_clk);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
