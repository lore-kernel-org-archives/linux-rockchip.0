Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E099EC61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5EZbzaMd+ZBXV8EL5iNm80ou7oCrmwEdlg+1zXIGks=; b=Up3RglmEdO6xT+
	0+FRmc4rJyvXB2uxi9Uxunru0bPr1cB0mxXOCo/sWLZX0i/jOLFaovgy5Qtq1JeU/AP0ZNOuxGJpg
	8OPFiBsTN79n/Sg52YE/nHKpIx3nY13nSqxijnByW7mNZO9Nysnxr/PLXXNaGtX8JwFxd+w3apjdm
	BY58LrbkOL1+gv7TPsi6F4MrBwljxQ9yJUEmxgrjsI0z8YxPMrSuu2UMf5P0w0skEpgy9sBTq7y0g
	3ghHd5ugGbYyh6I6Ggkxf1JsiW7yC8YOcfsJJ8rzCKbXyD6t804RDqzgVMOyCFNUfOPPSPPzBsuTq
	+fQuR8hmalWNQbjKQRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mlu-001sZm-1J;
	Wed, 22 Nov 2023 12:56:02 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mlr-001sYH-2H
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 12:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=1/yeg
	zhg493SHTeZi5h3nk3lTbPGINQCkIZUbQHUeVA=; b=fKSsXRd8y86+tjM+RTSH9
	TGaEuGovJ8wiDGh0cMEug4IHZwwkgstMvTydI8x5kVzWUeU55thdrEkxXzIBh7z6
	OuHa8qOb47GZZfWLkvS9GHMWHSeIQ214NacjAFHPjUwNXqz+OPD1Dh0BsT05XXvO
	Ua4kIokobf5qFABxM0MEik=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-3 (Coremail) with SMTP id _____wC3nxBE+l1lQijtDg--.51444S2;
	Wed, 22 Nov 2023 20:55:35 +0800 (CST)
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
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 09/12] dt-bindings: soc: vop2: Add more endpoint definition
Date: Wed, 22 Nov 2023 20:55:31 +0800
Message-Id: <20231122125531.3454857-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122125316.3454268-1-andyshrk@163.com>
References: <20231122125316.3454268-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3nxBE+l1lQijtDg--.51444S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF48Aw1fJFW3tFyfKF17KFg_yoWfCFc_A3
	ZrXF4kWF4fuFWfJrZ5Ar48Wr15u3Z7CF1xXFn0yrZxAF1F9rWkA3Z7JF13J3Wruay5J3Wv
	qay0gasxu3Z8GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnUKItUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAgwXlghlh7-EgABsn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_045600_520802_BAEAFEBE 
X-CRM114-Status: UNSURE (   8.03  )
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

From: Andy Yan <andy.yan@rock-chips.com>

There are 2 HDMI, 2 DP, 2 eDP on rk3588, so add
corresponding endpoint definition for it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- split form vop driver patch

 include/dt-bindings/soc/rockchip,vop2.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/soc/rockchip,vop2.h b/include/dt-bindings/soc/rockchip,vop2.h
index 6e66a802b96a..668f199df9f0 100644
--- a/include/dt-bindings/soc/rockchip,vop2.h
+++ b/include/dt-bindings/soc/rockchip,vop2.h
@@ -10,5 +10,9 @@
 #define ROCKCHIP_VOP2_EP_LVDS0	5
 #define ROCKCHIP_VOP2_EP_MIPI1	6
 #define ROCKCHIP_VOP2_EP_LVDS1	7
+#define ROCKCHIP_VOP2_EP_HDMI1	8
+#define ROCKCHIP_VOP2_EP_EDP1	9
+#define ROCKCHIP_VOP2_EP_DP0	10
+#define ROCKCHIP_VOP2_EP_DP1	11
 
 #endif /* __DT_BINDINGS_ROCKCHIP_VOP2_H */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
