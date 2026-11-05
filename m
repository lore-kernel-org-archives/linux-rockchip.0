Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC77606A61A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 15:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Lfxsi0Pc;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=jL3Toeob
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V57sQMbOS9M5m/hoVskbWTe0nYbLrL8rttopgJNZ4rM=; b=Lfxsi0PcCpeP9Zx9/VwFHak73Q
	AchJ+P6GUsUA8rBWNMKpn1Ddq3Rw+Nx7i4g8l/gJwgPqIBRDqriUJ9QYFoSCKg3K4nS0cc6WmgCXU
	utf/8wmcJ+ybtoPpt5PxLEmrKEyxCa2s2Rhu7uZQoLDEGCJ3wd26KAlIk9Iy5KI3EricXVbPK0hPr
	tG4bWpb9lY76DRtS05EBquFoxY9cWlqRILWGeh64x6MWMuiW2LcdxkAcLvfQV8+hWv8I9Bk+wD+NB
	566ZdCZ/ZEFNq+zsKGKa910gzBLfvYeKKagK3D4rkqzhyEP/jakKODsH/6BPTOVSlGJjjUkkMRdhh
	xMLBeaWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzrN-00000009Vao-09kt;
	Thu, 05 Nov 2026 15:58:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzoV-00000009UEg-40H9;
	Thu, 05 Nov 2026 15:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793894073; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UBHvNICVd78MZ6AQL7EaAQSAk4/QV+rrP+NDDw5BFBZGjugMyhHF8bIAVEjbxaRJa8MypfDeZ+9Qt6+Ea20kmnpOHLTyRVtEziuM3o/AmrcRpQ1vkAL1dEjinsaM99Mm+3i5GvItASR+Wryf3AKMrP+GmZAU4ilCRvmMa1Dmo0Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1793894073; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ALE444eKJZ+NX+Ip1B2o36NSUHXVU+Yd9yBPLWJk7WU=; 
	b=m8LtUlS68e9J4UbfJaDI8uofn+9lj5qCfKVnFbqvQuIO9X6+8b1/S+BvK1ErG9WOwdqJGhL/HTTMk0YA899SalmTBZcGDBSzVDFDKbZEKK+Zhm/DpAaQ6p9bF9UHgDKEKz+G7Jhj2SkXF0pLoi9JvJrzcJUMtNtQTT1g23ITeBw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: a=rsa-sha256; b=jL3ToeobaRmx6PiWKWksYL9GAG8+dc/g18VBNaDTzeHB3fKNgI03n+V6dTy+A/TrUGM87yI+kfK4msGryNel9z6M03imJmWGdGi8NW6lBJ+qDXqmUfIV6i8sI+19tfrekWI6oiD8ZiCUBAkWp5MGwRZAvU0FXcGoQisQluRH47Y=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=ALE444eKJZ+NX+Ip1B2o36NSUHXVU+Yd9yBPLWJk7WU=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1793894072590379.33672551637096;
	Thu, 5 Nov 2026 07:54:32 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 05 Nov 2026 16:52:10 +0100
Subject: [PATCH v2 19/27] drm/connector: hdmi: Add QMS to VTEM EMP
 generation
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261105-vrr-limiter-uapi-v2-19-55f4215be2c2@collabora.com>
References: <20261105-vrr-limiter-uapi-v2-0-55f4215be2c2@collabora.com>
In-Reply-To: <20261105-vrr-limiter-uapi-v2-0-55f4215be2c2@collabora.com>
To: Xaver Hugl <xaver.hugl@gmail.com>, Vidith Madhu <vmadhu@nvidia.com>, 
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, 
 Leo Li <sunpeng.li@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
 Fangzhi Zuo <Jerry.Zuo@amd.com>, Daniel Stone <daniels@collabora.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, 
 =?utf-8?q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
 Derek Foreman <derek.foreman@collabora.com>, 
 wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_075544_247912_71FEA843 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

If userspace indicates that VRR mode "Media" is desired and the
connector supports QMS, set the QMS related fields in the VTEM EMP
struct based on the connector state.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index 846f7a72fddc..407ad28c649f 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -890,11 +890,18 @@ static int hdmi_generate_emp_infoframe_vtem(const struct drm_connector *connecto
 		break;
 	case VRR_DISPLAY_MODE_OFF:
 		break;
+	case VRR_DISPLAY_MODE_MEDIA:
+		if (!connector->hdmi.qms_supported)
+			return -EOPNOTSUPP;
+		vtem->qms_en = true;
+		vtem->next_tfr = conn_state->hdmi.qms_tfr_byte;
+		vtem->m_const = !vrr->dynamic;
+		break;
 	default:
 		return -EINVAL;
 	}
 
-	if (vtem->game_vrr_en && !avi_vic) {
+	if ((vtem->game_vrr_en || vtem->qms_en) && !avi_vic) {
 		vtem->base_refresh_rate = drm_mode_vrefresh(&crtc_state->mode);
 		vfront = crtc_state->adjusted_mode.crtc_vsync_start -
 			 crtc_state->adjusted_mode.crtc_vdisplay;

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
