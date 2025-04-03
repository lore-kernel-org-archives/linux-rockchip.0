Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44811C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 03:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gy7MKgJm/ieyXhoF60lV16CfIJQ0A9oZCj1QgoXLdCc=; b=U1SK74Nx/hBgqJ
	iyoIyC6Y0VBaGtd+Cav3Q5nXGMOAmFkVrrijqRTUnaz1qIzuRNzpSuBa5sexvBAHq/HZyP9JJgf/9
	0TOKBbC6cAooqezUZV9teztvZD+O7N1a8XqA0NfAZvCA/ebV+CThqK1fTBjEfwhX3iBHIgw/nxDgu
	4HLqIQs6AS0UJR0Lbu6dw8WvMUmTqgbnBbKjqgHSqh54thuQbLWof4RW9l6oVu0MS8RAx5byu7OTn
	FzHSjVnSZmbpUNJvyrTi1ZxanpFiCxi64M7oobcZ0YSTa1HzDXh8AHOPwpqYaf2ZS7upy7aD1U50O
	MPspCKyGyWDgwzFFV1dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0BY3-00000007hQg-1xEv;
	Thu, 03 Apr 2025 03:47:23 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0BPK-00000007g4q-35Rl;
	Thu, 03 Apr 2025 03:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=XuXpK
	K37RNjycDW51PN1NECFP4c5XagfJ9K0+hOaEcU=; b=EqYLfYFYWQEh4JMy7A4uq
	bzZpNXzm5cb5W0Gc5CoSaClw3Mt6ECh1Ocvk09BpOqW0oHtz/r4CP88t2TvaUJcM
	MdJNvobT+rY0JQczvnzhkBUPpohZNIkGRI4+ljfiE7KSz9z6JBOWTnY6/8h8wRi2
	EO0qX4HmtVmirauXN4mxPU=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wBHWgmNAu5n7FfDDg--.28713S7;
	Thu, 03 Apr 2025 11:38:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v3 5/9] drm/birdge: simple-bridge: Add support for radxa ra620
Date: Thu,  3 Apr 2025 11:37:33 +0800
Message-ID: <20250403033748.245007-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250403033748.245007-1-andyshrk@163.com>
References: <20250403033748.245007-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBHWgmNAu5n7FfDDg--.28713S7
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw47tr48Jr4ftr4xKrWUtwb_yoWDtrg_CF
	nayryUJr4rZr95KF43Zw43Ary2vw18urZ7Xr1vgrZxArs3Zw17uwnrZr9rZ34rAF10kF9F
	y3W5JFWayr17ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0LZ23UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAEkXmft-iHCxwAAs7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_203823_129220_F565BD4F 
X-CRM114-Status: GOOD (  10.69  )
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

---

Changes in v3:
- First introduced in this version.

 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 70db5b99e5bb8..df2d8106ee755 100644
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
