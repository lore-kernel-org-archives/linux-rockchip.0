Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0564C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsLfVfv8MuaTI/jLW9HbqRQyYy8JARiyfTlkZi2Ag/E=; b=xPiHAsN5FG04mT
	hGy4ZVoOxMkMv/hcvm1hUjKDMhj0m2ad3kkWKIf4Q4i3/j0F2fgTwyGudjtnDRqJDJgPecHaHFOvV
	YwYy2aczXIe1kJ31sIPMhMgb3knk+5UkZcVepNkiE8RjY80jgIaHzmTn/zbyYjlP7fO8HvYHVbSA2
	b1UYHguHDjZwejnBufbXivXpFDfkReTQzsJj7pnxUhuJ+d+A7bcubSkaxlcKIUuurfaQKaG4ZclAh
	ZaQ3HJ4QdBqkF2zfSYbiVKrf7/XhIVojvorPc7TdpGeeoeqozOjdKM7boQRTcBN7H88TXLXjyflu5
	3Eg6RSWA0QZZQE0tsucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYL-006X9E-0z;
	Fri, 22 Dec 2023 17:43:17 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXZ-006WL8-06;
	Fri, 22 Dec 2023 17:42:30 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3368fe3466aso983340f8f.1;
        Fri, 22 Dec 2023 09:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266947; x=1703871747; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTMG9bpN8fCN8EPMeR+JAUJcfO1Vw55kh4J57dK4YOA=;
        b=EdIQftftH9qoqWsHIQ+BwODU7Z74wk+8/clU8U2Jo5JKT9Ep0N1IW3eVaEcbjW0M58
         AqOiAom2n9soBzcx+t72vmbt8cbMONSfYjC1x+z/e4r9lOydax2xBsc/73REiU7pqoHA
         qw5WFROsu7JuGoJ79agFUk9kEY51bEP7CEYXxfYXk1bCLq/PPXbGIibbpks4ZZyQzJxU
         ZwFB1sVgs98IKz894vPaoJ5s15QZSiFAbYIKkcuAhXR2yt12fGK/v62ry5dlKc7Tzprv
         WsHF9Itf8utU5XKzvQ/X3BFKzz514+E5f8XqqK9xaq6pQR2IF7F28PVN/wA/57T68Wgy
         dY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266947; x=1703871747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oTMG9bpN8fCN8EPMeR+JAUJcfO1Vw55kh4J57dK4YOA=;
        b=B9kqb8Csm99lILFSLRob1j9U3mjXf3CpNgOnA1cZSP7EkNL/WVU8i1vBet2rbFLEtw
         rNC9B5rDxDT7TczRy9flAUHJ6b2QmjEj4HZXNgh1/VKXfOATZ3ZOpa+HvET2MNeSc+uF
         KOouLidxY0+h+SGn7Ah/fPZVhfyAO0c45NIw6pfbYyL2sAbttScplc2e6BIPH/iZtj25
         PI7ebnMDukBkr1hPfWMHg11Gsck6/fQocl+zZINcd29smDYK8sV8MhJ+B0ol2XxIII7g
         Wrzm7wv7Wu3c4z3+K9YRwohQVZXdUcjQMWaWtmoHgCKxzOu4ZN6AQyuQIxt8FaBjSXDj
         yUAg==
X-Gm-Message-State: AOJu0YwD1lESPNJ14Xv+3XMd33B6EOovsmzSClCycG/DDhWSKVBAKdnT
	6byIGbHa0Pe+hYgfYmFnxg==
X-Google-Smtp-Source: AGHT+IGaMdHthok3Ci5B1MBDr0uxIQrDsOWWhXIDOKVME9KH+r0ZoYCnGYwHSy8GjEePUs75tpwEzg==
X-Received: by 2002:adf:e5c7:0:b0:336:607f:4bab with SMTP id a7-20020adfe5c7000000b00336607f4babmr607801wrn.187.1703266946623;
        Fri, 22 Dec 2023 09:42:26 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:26 -0800 (PST)
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
Subject: [PATCH v4 06/29] drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
Date: Fri, 22 Dec 2023 18:41:57 +0100
Message-ID: <20231222174220.55249-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094229_071562_712EA255 
X-CRM114-Status: GOOD (  12.16  )
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

The inno_hdmi encoder still uses the !atomic variants of enable, disable
and modeset. Convert to their atomic equivalents.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 14d2ba92a606..48c4f010b260 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -491,22 +491,25 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 }
 
 static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_display_mode *mode,
-				       struct drm_display_mode *adj_mode)
+				       struct drm_crtc_state *crtc_state,
+				       struct drm_connector_state *conn_state)
 {
+	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
 }
 
-static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
+				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
+				      struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
@@ -527,10 +530,10 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
-	.enable     = inno_hdmi_encoder_enable,
-	.disable    = inno_hdmi_encoder_disable,
-	.mode_set   = inno_hdmi_encoder_mode_set,
-	.atomic_check = inno_hdmi_encoder_atomic_check,
+	.atomic_check	= inno_hdmi_encoder_atomic_check,
+	.atomic_enable	= inno_hdmi_encoder_enable,
+	.atomic_disable	= inno_hdmi_encoder_disable,
+	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
