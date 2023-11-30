Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D9BC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 12:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXBWk84ONIqdN+U24hOg96qXwgU/C5ZhJPwqTatEaow=; b=460XVRJZiAFo3T
	dUfXQyNOb9Q6bHyH7Mn7ZAnVcA6YgUCn19WN7Y4tjPuM0u6UPEMXujEyFUG5Z+taOmsc8ZzSFecY/
	VD+cUSADrnZyO6laeD395VpZX5HQ20sPWzetvylVbbNZcI6SHhNX8ChZjYD6Wvl6VgyooIBvfWEDu
	O16iB2FFMITLwEDbXIe103kivklYUkm2JcL2n1jFOUr7T7NypMJ94Hzu76xFOwTli0QKRhkM36Ntf
	WuyP1/uHlapmB00HuJXa7MqNEEhReI8Y2qTXyudIiJ1sxrluP6bolKrecuG7rvXd/NtfSgJ7kJlwB
	FnghzN16Bmd7moMBTjqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g56-00Aq7v-1v;
	Thu, 30 Nov 2023 12:23:48 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g53-00Aq61-1K
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 12:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=c7kjH
	jIQ4/nlmiPUxBorZmmivgfaJAOI5Gw9Jj5OowE=; b=RiSeGZ6inEhAZK1tNi/S7
	EOhH5l6KUvbRJ+K1axbtXAhb+AELEbP/J/WfNEHxqbyc9GMnFPOl1J/o61dSi8ns
	ClndHaNkwHwqljU/cj/Q7CoAexqhPYD0q0/VLKcHSU8Bc8Wvf1EXl6cmvJ1yjdER
	ITdB8WVNXffCpG446dw9TE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-0 (Coremail) with SMTP id _____wDHXlS0fmhl4hTXAQ--.47878S2;
	Thu, 30 Nov 2023 20:23:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v3 04/14] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
Date: Thu, 30 Nov 2023 20:23:15 +0800
Message-Id: <20231130122315.12954-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDHXlS0fmhl4hTXAQ--.47878S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZrW3WF1DuFyrWryfXrWkZwb_yoW8Gr1kpr
	W5AFWqqr4xK3yqqa1DJF9xZFZYk3ZFkayxWrZ7JwnFgFWUKa4kG3Z0kryDJrWUJ3WagF48
	trn3JrW7ZFWYvr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSwZ7UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBs4XmVOAquRqAAAsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_042345_830172_48AB71D1 
X-CRM114-Status: GOOD (  10.10  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The enable bit and transform offset of cluster windows should be
cleared when it work at linear mode, or we may have a iommu fault
issue on rk3588 which cluster windows switch between afbc and linear
mode.

As the cluster windows of rk3568 only supports afbc format
so is therefore not affected.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 639dfebc6bd1..a019cc9bbd54 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1312,6 +1312,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_270, rotate_270);
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_90, rotate_90);
 	} else {
+		if (vop2_cluster_window(win)) {
+			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 0);
+			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, 0);
+		}
+
 		vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(fb->pitches[0], 4));
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
