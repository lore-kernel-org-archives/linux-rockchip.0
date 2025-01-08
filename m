Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D767E7719B
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbQuW5smUgeZCZcYj56NCQUDMX5viYAMI1CbJJJwtEo=; b=zcUC2Z1KlPhdqG
	Bg7bW4Rge7bq13JmNZvy6DwrZ/igu5VadqJrZl83f0kYDpOjS6zTID8xZgnIeFBEwM0cLbyt8ePcA
	V4LVtiKtTQwTnoL/t+bhGfrbVR4Jww0SYVxJqlNCtCfKUoCz4k38mh1nbbPDo/QAv+Uq4H2Y6TF15
	ZnsU2agwA9z30vE7++ZtqQ+kYv0ST+tMgAl6AW2PFutCKQrCRKDOuTCMc5e8i+D9zJyEir7m314kx
	zh/k7UkXpLdISjBfHfXqQw6QinazYX3N5iqkEtVcJb3J0ldUeCGtofOUZLY6kwjbDcuzrvIKxizUP
	nFHxIvTgGtgM1gxduIQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVNN-00000008Spe-2Bf8;
	Wed, 08 Jan 2025 12:41:33 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVUcX-00000008Ip3-1qhi;
	Wed, 08 Jan 2025 11:53:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=sOdxU
	ZEbN+LKL5lltgoIC1U6IklDyyg5C51yWnj6C38=; b=Sr2HsvUznBOCW53uM7s/q
	8eZtjIL9hfzPoP7humMXlP6A9KuXf10fumI5xYH+foGe8MSTMoky3ElEKLzNxcYK
	lYz4NNFSAaxoeRasSq0jZZBuDCUL3T+0Z04sm/M4IvOf/tc/Ek3V4VbiCerwPj7b
	Ku15poKp9+sQ0kZLdX8F+I=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHpyUCZ35n8Xn7EQ--.26804S6;
	Wed, 08 Jan 2025 19:52:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v9 04/11] drm/rockchip: vop2: Merge vop2_cluster/esmart_init function
Date: Wed,  8 Jan 2025 19:52:21 +0800
Message-ID: <20250108115233.17729-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250108115233.17729-1-andyshrk@163.com>
References: <20250108115233.17729-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDHpyUCZ35n8Xn7EQ--.26804S6
X-Coremail-Antispam: 1Uf129KBjvJXoWxWw4UKF17CrWktr18AFykAFb_yoW5Xr1DpF
	W3Jr43Xr4UGFsF9r4kJrn8uF1Fkr12yaykAa48Kw1SkwnrKF9FkFn5JF1jyr90krWvkF12
	yFn5K3y3ua429r7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UXYFZUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBnOXmd+X+etUAAAs9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_035309_897303_537CE7C2 
X-CRM114-Status: GOOD (  11.39  )
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

Now these two function share the same logic, the can
be merged as one.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 42 +++++---------------
 1 file changed, 11 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index b1c4a08d1883..d65df005bb94 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2398,18 +2398,18 @@ static int vop2_find_rgb_encoder(struct vop2 *vop2)
 	return -ENOENT;
 }
 
-static int vop2_cluster_init(struct vop2_win *win)
+static int vop2_regmap_init(struct vop2_win *win, const struct reg_field *regs,
+			    int nr_regs)
 {
 	struct vop2 *vop2 = win->vop2;
 	int i;
 
-	for (i = 0; i < vop2->data->nr_cluster_regs; i++) {
+	for (i = 0; i < nr_regs; i++) {
 		const struct reg_field field = {
-			.reg = (vop2->data->cluster_reg[i].reg != 0xffffffff) ?
-				vop2->data->cluster_reg[i].reg + win->offset :
-				vop2->data->cluster_reg[i].reg,
-			.lsb = vop2->data->cluster_reg[i].lsb,
-			.msb = vop2->data->cluster_reg[i].msb
+			.reg = (regs[i].reg != 0xffffffff) ?
+				regs[i].reg + win->offset : regs[i].reg,
+			.lsb = regs[i].lsb,
+			.msb = regs[i].msb
 		};
 
 		win->reg[i] = devm_regmap_field_alloc(vop2->dev, vop2->map, field);
@@ -2420,28 +2420,6 @@ static int vop2_cluster_init(struct vop2_win *win)
 	return 0;
 };
 
-static int vop2_esmart_init(struct vop2_win *win)
-{
-	struct vop2 *vop2 = win->vop2;
-	int i;
-
-	for (i = 0; i < vop2->data->nr_smart_regs; i++) {
-		const struct reg_field field = {
-			.reg = (vop2->data->smart_reg[i].reg != 0xffffffff) ?
-				vop2->data->smart_reg[i].reg + win->offset :
-				vop2->data->smart_reg[i].reg,
-			.lsb = vop2->data->smart_reg[i].lsb,
-			.msb = vop2->data->smart_reg[i].msb
-		};
-
-		win->reg[i] = devm_regmap_field_alloc(vop2->dev, vop2->map, field);
-		if (IS_ERR(win->reg[i]))
-			return PTR_ERR(win->reg[i]);
-	}
-
-	return 0;
-}
-
 static int vop2_win_init(struct vop2 *vop2)
 {
 	const struct vop2_data *vop2_data = vop2->data;
@@ -2458,9 +2436,11 @@ static int vop2_win_init(struct vop2 *vop2)
 		win->win_id = i;
 		win->vop2 = vop2;
 		if (vop2_cluster_window(win))
-			ret = vop2_cluster_init(win);
+			ret = vop2_regmap_init(win, vop2->data->cluster_reg,
+					       vop2->data->nr_cluster_regs);
 		else
-			ret = vop2_esmart_init(win);
+			ret = vop2_regmap_init(win, vop2->data->smart_reg,
+					       vop2->data->nr_cluster_regs);
 		if (ret)
 			return ret;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
