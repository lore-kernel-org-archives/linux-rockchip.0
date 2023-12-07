Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD686C10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lllSIQmHT6LVmqrDhRy4onmhbRtuXwcNt7JMlpZSWo0=; b=PngTD4BphS2YTP
	IzOEFfPGOM0BRti1N3BXzS3nFvUhyh40+kGFWnQROUiorSRp6sR0lpYSw9Srn4a2NPwh2j8gR2eNg
	sIP6XK+Efn8bvWdTi4VxZXtG9AGpXeV0OE0Z8zFEmZTWgPWXWsevPHbveiNajD/zqWOBYQUF36/rQ
	aop3e1KyulPQqliGFcvpJc+abVqyu6CL5MDRKSDBwssCuasgc+pXeStUXV+EEg7LO4ovczvdKwVZD
	486dcB/h7Er+frzQd7mYQAn2uVtq1a5/x/HQv0s1wsNVl+B5f35A5ZsX7L3lydffWQigj1gYNMHIZ
	qzITm76sz3pAdOE8YOBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfr-00DJ3o-1P;
	Thu, 07 Dec 2023 15:52:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGef-00DHiK-28;
	Thu, 07 Dec 2023 15:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=eYkXCeYLN9p4b3KPn4YFWtc43FsSi1R1Y4oH2/O5xFY=; b=oMTwCXsNaI6cLj86xr7/IS7seG
	BsEFSBUTg7YcFE/LzeKTUrDFHVQpYT6yPehwCTOCMPQm/Q2hVEl95BBMA7mcPuKpKhBXXSYvzKCxl
	/AByKMIvZJeWMOkUDWsQK4JnkzxMg5RZm2KyojNFVj0jClDIKgbkbdu6q+XpTFY7VLRqj8NdMljfQ
	yyvy5RiaxMQCLO/ODnqOJB5kv9qSRwr3TvPg4EF60BukUFEDGFjvBM2opfVi0jM/Kw+u903UcrTUm
	T7B2i/uEJJNdrXEfiCJva53EnsdcuNSu6K/B0mlpgCswOdP2AaRZGa0V8xKB9tfUO3pnA60dbpjDS
	ZOsE/z7A==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rBGeb-00437M-Ca; Thu, 07 Dec 2023 15:51:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 52641CE1D03;
	Thu,  7 Dec 2023 15:50:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C03B4C433AD;
	Thu,  7 Dec 2023 15:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964249;
	bh=6Qw4iLH/F2FcU5c/z9vvLxUq+OTnYrPseK/QX6rHEgg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NHqm3bJyNCcxD+W/rJS6ll92pIGyo56Ab0+qJWrPG1jpdp/T8JfKFwVIg7zMkQLxN
	 p3DGpMbj92H/3WKPYgEyckfhFIWd/5w/BLxrWj5NpXuxD/E3szfpW94cY3GQsi0HfL
	 KLtWvna3VBKlSpsCrbi/lNeJuik6MtqQyBZJRUL3GkvOYs13AMFYltEcfMT15cYDwN
	 ZJYI5zFPL2viLiwjbs/VwlUehjLiWID/NkHi1CJGbcCD4AT9FhpC5r1dhJ5TJZNT/N
	 jerOfrIwsqx+7DmYktfHaTdFP5c5+PeunLodXLvZzqfn5+KZaXrB8vRvo7zeE3/AdY
	 HJ8GC8joHIo7w==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:50 +0100
Subject: [PATCH v5 27/44] drm/rockchip: inno_hdmi: Remove unneeded has
 audio flag
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-27-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=mripard@kernel.org;
 h=from:subject:message-id; bh=6Qw4iLH/F2FcU5c/z9vvLxUq+OTnYrPseK/QX6rHEgg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9t0lQwOppzSObi0RPhCGLeHqe8SmQq7a4vlD0Z1f
 BKdn5LQUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIksT2RkeMdQn2r290Nx0xV3
 lzOOcj+D6qzls9a66ESeU5vc5bywnpHhktJqh43+DAUb3TWLBW7c9vgz89opkY+GL+20/qTnZMU
 xAQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155109_752054_6B4DE8E0 
X-CRM114-Status: UNSURE (   9.11  )
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

The sink_has_audio flag is not used anywhere in the driver so let's get
rid of it. It's redundant with drm_display_info.has_audio anyway.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 294f0d442c0c..3908dc09d85f 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
@@ -554,7 +553,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 
 	edid = drm_get_edid(connector, hdmi->ddc);
 	if (edid) {
-		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
