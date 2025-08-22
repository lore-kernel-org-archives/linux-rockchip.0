Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E9B7CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Aug 2025 14:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asiH0ZqJYIt5prxVvFqaecOO0QEK0FGc+dAlezd6ubA=; b=sHoy0ZlPuZZgxR
	WpzXJF6pSZOs+uYTNdtPkqKcQ12DgMLf3qwJ5TxzOQSXnoRjtqB8rew6+UZ8Lg9JFpy+m53Aw+MhJ
	BLB6o2afxq/V6cH6I08pj3VLgdBil4foXOGNSYCXoOa9+ZNN9Ai7VRNBigqSispZDhcxdd+LfTT76
	Apmo22KNJc1Lz3Z39DYDWDR7Va82bCIb23T7wAfgFWqOa8i+b49dmIMZekyPEieN/wbVtCvG5oItO
	WIqYgqCenxx2w9UM341hpa1SoiMSqTwPOpw6CUE7+TbMt4UGHF1n+jtytY9su5E28Ret2IaUuVStz
	NK3Osbetj5nZtPP4xMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSbj-00000002lLa-0uGP;
	Fri, 22 Aug 2025 14:19:07 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLSB-00000001iNi-1F2g;
	Fri, 22 Aug 2025 06:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Ih
	Uhybn59/7JyTet/HSgHCP7nZWxnFr2AfvIvVQ/is4=; b=SZXXeno0JfZsDoyuKO
	xW0a66tP2f+rZ9CPGzvHVeHp3jTyzXvtSLZpTrSqsu//OKl9nAEJiNZg13gy3qUB
	qwIzJQ8hiySC6cf7KTRWXQqiEpuvrcM4+r7uDqJLf1zqzXrgjBAdhujyC9s91pnp
	U2p55RFf3Da4Mo9pY5m/+Pr34=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgAn9_zCEKhoYtibAA--.23257S8;
	Fri, 22 Aug 2025 14:40:23 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v7 06/10] drm/bridge: simple-bridge: Add support for radxa ra620
Date: Fri, 22 Aug 2025 14:39:50 +0800
Message-ID: <20250822063959.692098-7-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgAn9_zCEKhoYtibAA--.23257S8
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw47tr48Jr4ftr4xKrWUtwb_yoWkKrc_ZF
	na9ryUJr45AF95KF43Zw43AryIva18urZ7Wr1vgrZ3Aws3Zr47GwnrZr9xZ34fAF10yF9F
	y3W3JFWayr17ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnbAw7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gqxXmioDHlxZQAAsW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234047_683115_12139114 
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

The RA620 is an active DP to HDMI converter chip, basically
no software is involved to drive it.

Add it to simple bridge to make it can be find by the drm bridge chain.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

---

Changes in v7:
- Fix a typo in subject: s/birdge/bridge/

Changes in v3:
- First introduced in this version.

 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 3d15ddd394703..1f16d568bcc4e 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -261,6 +261,11 @@ static const struct of_device_id simple_bridge_match[] = {
 			.timings = &default_bridge_timings,
 			.connector_type = DRM_MODE_CONNECTOR_VGA,
 		},
+	}, {
+		.compatible = "radxa,ra620",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
 	}, {
 		.compatible = "ti,opa362",
 		.data = &(const struct simple_bridge_info) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
