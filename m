Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CCAC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWWqG3+8ixUFtjPo8juwnbb0lq/ipD2ohzIDUx817A4=; b=U/JFbVkBKaV/e5
	M7bqN3+TSQDCzxiqtUDneWuTnWtX2ra0eKcHSc0L58HuGYj9Cf7QJfa+ZTZowNnwga2jiCSwBKFip
	Iq9sehglgq0nkX4z1HVnUUoWLzfOKiO1n6wAMWUVR+UIPOzchiXZTqxJLa0ddwzgRLF/aZFXJrYql
	D8FL7n6nqkHi+1cEeMZ6ECTqR40R9FW1++t+ExZ2z4WHBtdZTttN0rAnATRXcX5qvFNv6n2TPsMnS
	U09TFX0JJlZ8A3NQi1PCAUhyK6Cx3ToqjJnFt5JRcAjCv8KHhBRaWQ1yGsDDbjKW85cANXx+Kkng5
	UVjwgg17XGkei2QCdlMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTl-00Eoo1-18;
	Tue, 19 Dec 2023 17:02:01 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT3-00Eo2r-1p;
	Tue, 19 Dec 2023 17:01:19 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40d22d3e751so5939665e9.1;
        Tue, 19 Dec 2023 09:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005275; x=1703610075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SMIbD+dY7Kjgg6ECXdMxWD6N2Rzqy4kZE/eQIX1m8rA=;
        b=mQHMsUvprhvY+HlZxy6n3WsunqxQDnuF5a9PM2Aoyr7a0z8OsmdRG2HhcP8U6sltpK
         iFdHRa+kL2wZLGOyhw/IFIBDlxZKEuMKiLQ6+dl+eSYpmqsE0gr4/r4rddPq4YPlSyTJ
         4nHM/xHhlaEWb4aJyT28nGn3I9ecC+wwzPJkEqEcMFaN0/6208hdDg3CxtF/5CsolIWV
         D0WrCq4s4uYgU5ugzk0Jl20NRxQic63ACJlh2HhEIwvfP6XyUhlJwNiD2HpG6hgfR058
         QmyHHm2Y49rCVF3vwqbWELVteNn4WdnCsr/cs94xCfxnun4pvi6x5zu2Ppxpl2XwfsZk
         g4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005275; x=1703610075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SMIbD+dY7Kjgg6ECXdMxWD6N2Rzqy4kZE/eQIX1m8rA=;
        b=Inlerd6KChWpKfCmwvcfT6OZw15roJKezogecdIuQBI5t7fCPhGVcz16LZv718GesW
         UHHTyB1ecgBgD+R+Vn623qGMQWHHcJV89hxkAOndww0h2T1kV1MKSDZwzHCFJulha1Dq
         iFe+xvVRVL79T0V0IRv9S4FZduyzPnpUQ8iYf5yGoVU+wuI3pMYFG2YVtOBSi5xZxF3Q
         gp6ipsWw7i/1gem2gix99ZAgAuqafU+IvQkV0f98SJ8GTh0g49zYenvkRWuFk8iZP818
         neCc743YIR/3xokmyr+SuSHR2MH1Ocn2pMXUKB9zXGbrR5602QhTDZe2g5qcRZ0VeCXn
         eaIA==
X-Gm-Message-State: AOJu0YwzwZq+0cZMQjMMEDUW+5SuvhtlQwWdVOO3VkK8umIWzCmuan0u
	X+/6UILIE+knqEyqqCC05A==
X-Google-Smtp-Source: AGHT+IFd/r09bOpDmnqqwNJVgTHnXa/6FuakfAQjMYF9yiMWHDt7k1Pyk+VRkFPu8kUv7M2V8n7jSg==
X-Received: by 2002:a05:600c:6988:b0:40b:5e4a:233e with SMTP id fp8-20020a05600c698800b0040b5e4a233emr768909wmb.64.1703005275517;
        Tue, 19 Dec 2023 09:01:15 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:15 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 09/29] drm/rockchip: inno_hdmi: Remove unneeded has audio flag
Date: Tue, 19 Dec 2023 18:00:39 +0100
Message-ID: <20231219170100.188800-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090117_626042_308A03DA 
X-CRM114-Status: GOOD (  12.33  )
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

From: Maxime Ripard <mripard@kernel.org>

The sink_has_audio flag is not used anywhere in the driver so let's get
rid of it. It's redundant with drm_display_info.has_audio anyway.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index d99896f1a73a..58aff7a9c09a 100644
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
