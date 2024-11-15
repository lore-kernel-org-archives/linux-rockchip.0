Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C52D68BC6
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 15:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GYGD7IhACd+97J/YmzPAP7CYJTYFnXOMX3R01HmEFI0=; b=BwqtC1AgJiG+FS
	bcOS+K0zPjo4EBLFXbuHtSH7iDDH/2el/R5FCoiEed1EBrbq9r+FN7iBBkrvFJ+tq64+ViApmeozV
	oDAD+Qmmxkpnr0zLAEx+XaGmwANAj/85S3uC/AosK4ajmtpV9tko9jr3OUbxeRCFjAelRTUwmC8Cu
	I5+/1voWF44bc0AAISy57IDA6bNrFGeyfboBI3HXod8hBugJFAxjJah9DuCvTusXA4ahKFZg9WmjB
	RbH8b6rirpRFyFewfYSJ6UrDBQsAuFtqEqBQdZH+AkRqeU1THnTlmFqhoz76ryF3QhyaxH0o0meHz
	08KfSKv/1y1TH5reIcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBy0E-000000037J2-1pBU;
	Fri, 15 Nov 2024 15:12:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxzJ-0000000379z-0ykd;
	Fri, 15 Nov 2024 15:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nk174AGwbrN2iQ6lu65t+DAZ0jlZZM5p3WBAEQT210c=; b=2oiJfz2PsPaSVvAFd/OOAOWE9i
	04gX2fak00SItozpZvfRKoQVQPDAg+TqJPLjy3Yf35Q/4wumcBHRVS5dkoQULujJU4Ligq/XI5H1H
	MfWmVd+Nk58nZjqvJUp4ooBzGefeQPkx2Qf1S+fhSNyd2S3T7/NY16r/pYe6gSyMkgd05QvCVHCfZ
	/CWAK2cC6vcUez7l7Uvi0T4fhZapXNnXdM9kRAkTsEsPuV/KTQp1sxmtLW3WcRkmzAKAg8yoMQ6sq
	No1uZbmGJwUDon5wSTkVfwAyLTofPYWsgWWAeW/CBByIsft0295JLpJioFTu6c4+c8R6XT1e5Lslu
	eAo6tqSw==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tBxz5-0002mM-O9; Fri, 15 Nov 2024 16:11:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	sebastian.reichel@collabora.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2] drm/rockchip: vop2: fix rk3588 dp+dsi maxclk verification
Date: Fri, 15 Nov 2024 16:11:31 +0100
Message-ID: <20241115151131.416830-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_071157_260541_242E0705 
X-CRM114-Status: GOOD (  14.08  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The clock is in Hz while the value checked against is in kHz, so
actual frequencies will never be able to be below to max value.
Fix this by specifying the max-value in Hz too.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Acked-by: Andy Yan<andyshrk@163.com>
---
changes in v2:
- drop the separate vp3-config patch, as vp3 will always get the leftover
  resources, so _should_ be fine (Andy)
- fix error output to also report Hz for the value in Hz (Quentin)
- add received Reviews+Acks

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9ad025aa9ab0..0c8ec7220fbe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1864,9 +1864,9 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		else
 			dclk_out_rate = v_pixclk >> 2;
 
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
 		if (!dclk_rate) {
-			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
+			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld Hz\n",
 				dclk_out_rate);
 			return 0;
 		}
@@ -1881,9 +1881,9 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
 		 * we get a little factor here
 		 */
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
 		if (!dclk_rate) {
-			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
+			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld Hz\n",
 				dclk_out_rate);
 			return 0;
 		}
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
