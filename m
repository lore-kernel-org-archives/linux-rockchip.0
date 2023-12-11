Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7643C10DC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 11:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFoSGKpENXUC+mQRaaiwkwbi4umuHibQztHtTwfVh9k=; b=eozgVFte/pR8tY
	YfchzLBKauCSVBtbEpPNfqHnUmIkQzeU+g35o9ACkRe+sixQ6ZLDsXAb9zaUePKUoD5GXi6AWJ8Q2
	cueTpCLSaR8HjOOLpkib8NOfB/N8Lt1Z1TxWhv78KFhu3h3pYcbn1op25mg0nrSNSTcfHufIIeVfU
	73qH6DW0sAZqzo2acirh4tsftXy22PVuk+2eMmHdTAPpxGSdAot4hNGcDkyOW9FR+6VxlU1VKVBl8
	iquKfJqYcWXmOr11fhaJFYIo37FmJ1prPV+sqvHZ1sGayUjxlY+M1RoeJI+oNktS0hWYRO9geflqv
	HyPA+IiXVYJ2XHAcJYGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCewy-004mNq-2g;
	Mon, 11 Dec 2023 11:59:52 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCewd-004mGy-1y
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 11:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Qyu2y
	3cTvfL1107AnohlzyCr+iaMFjHR3y2UxhiVJdI=; b=UDVqglrJgy+EGvlqBzrkZ
	5lrZPrZCIRd8NRnrZhroqjhF4X2A1lulD0CzSXWXYK+0I85G7l4b8jq5ayiG69au
	gNEUHC9futPjDlwxdu1G2yxqNtmMdTJVmFDbc3NdnAEQ6WoEKBPhng4/tTCHNqdR
	4libREPS01I+dDHRAx7tKw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-1 (Coremail) with SMTP id _____wDnb4aM+XZlTbJhDQ--.11735S2;
	Mon, 11 Dec 2023 19:59:11 +0800 (CST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 11/16] dt-bindings: rockchip,vop2: Add more endpoint definition
Date: Mon, 11 Dec 2023 19:59:07 +0800
Message-Id: <20231211115907.1785377-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnb4aM+XZlTbJhDQ--.11735S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF48Aw1fGr17JF1xtr1UKFg_yoWDKFb_A3
	Z7Xa1kWF4xuFWfArZ5AF4kGr1Yk3WkGF17XF9YyrZxCF1F9rWkA3s7Jr1fJa4ruay5Z3Wv
	qFW8Kasxu3ZxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnjQ6PUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBBDXlghl75fcAAAsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_035932_123146_FC4EED5D 
X-CRM114-Status: UNSURE (   7.90  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v3)

Changes in v3:
- change the subject as Krzysztof suggested, and add his ACK

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
