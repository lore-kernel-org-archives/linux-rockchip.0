Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB731CCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 09:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GMwaMaW64y/YXCIzNA4z3LTxYtr5zvbB3tPfAD3uDpc=; b=ORRdOWIZA6HBxh
	JQDfYsTzotLF4eOVxe+u9bq2qMnnU0xYjnaftIY+oseO9sCAbQgi0BFBTdkrsvutJj94Y2gCoLJOw
	PMjhsHEA0avVK6yEeY8OJGLxUvQrs8gM9MSoM7YyLKGtFnMyaotb+2Ry4m4IjwRaeawPhVaNee45F
	68vZ7jzNHES87/V9vftaoeiGdYtSh+I+Z3OtrONoqyv3QdVLMLyFAtQc0KMXCcf7DdGOnFzVOWfi/
	wbg/D0tu131rRrNiHHQ+3zNytESRoyWjzFd2dC6js+xVoV3sr6NYFFzdvcBGVsdQ0ajLDyQbjMzk5
	uwVx59FzCTTne6yRqeZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Ea1-0000000Ch2v-1QBV;
	Mon, 13 Oct 2025 09:10:57 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8EZx-0000000Ch2L-3abA
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 09:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Nk
	OZgNctD2RJ7iTrrRVTZr3l7fIBVXhtVsEHtUv3270=; b=OQQ8sqAwsjX4bVfv36
	KCEuSAPOOlTET+V6dAqJHdAatGVu+DHqj4FY5nYjcjgOx3towd9aokNkCiOi03Pe
	LVPL2NO9tPZc0uQWqXgb6TCoWZ85W4Y0HW/lytkgZxU+EDAruHLx6uRcG34GqYOI
	u8L3s3UFu/BgBqR/f8EdM0N1s=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgAHwhHlwexoZeqRCA--.36811S2;
	Mon, 13 Oct 2025 17:10:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: arnd@arndb.de,
	bjorn.andersson@oss.qualcomm.com,
	ebiggers@kernel.org,
	geert+renesas@glider.be,
	krzysztof.kozlowski@linaro.org,
	kuninori.morimoto.gx@renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	nm@ti.com,
	nfraprado@collabora.com,
	quic_tdas@quicinc.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH] arm64: defconfig: Enable Rockchip extensions for Synopsys DW DP
Date: Mon, 13 Oct 2025 17:09:33 +0800
Message-ID: <20251013090955.48832-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: PigvCgAHwhHlwexoZeqRCA--.36811S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF4fKF17JF13ZFyrtr4xZwb_yoWfJFg_Jr
	n7Ww1kur4xCF9I93WF9a1rG34jk3WDW3WfGr17XFyDXF4Igr4Fv34kCFyUGw15Ca1jkayI
	vFZ5AasrCr1jyjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRiXTm7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBblXmjswVMWJAAAsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_021054_294047_C92ED550 
X-CRM114-Status: UNSURE (   6.06  )
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

Enable Rockchip specific extensions for Synopsys DesignWare DisplayPort
driver. This is used to provide DisplayPort output support for many boards
based on RK3588 SoC.

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd104..ddb148a987e3 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -913,6 +913,7 @@ CONFIG_DRM_ROCKCHIP=m
 CONFIG_ROCKCHIP_VOP2=y
 CONFIG_ROCKCHIP_ANALOGIX_DP=y
 CONFIG_ROCKCHIP_CDN_DP=y
+CONFIG_ROCKCHIP_DW_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
 CONFIG_ROCKCHIP_DW_HDMI_QP=y
 CONFIG_ROCKCHIP_DW_MIPI_DSI=y
-- 
2.43.0

base-commit: 2a82ce98ea069c84665caf5097e340b9c65d9e9f
branch: master


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
