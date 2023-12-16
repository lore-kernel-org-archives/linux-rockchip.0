Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF7CC46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8yTKMp+pk7eOieIP/Qqf1MQuy0nstphE0NgeQZYkro=; b=GzAHIbX9YGv+NC
	dN3beUg9h0uIVaD2BCDNgUiv+QmPM2z2nTg6zZW7szRLCEHERvVsM8j2uqvtiM/5WX0XCFatmLGAC
	X0t1M7zLFd2c+NH0xi3qTLDN/EtdJY/TBhgizmEshg5tD0RVvzUPAVF1Ko1wKLRN4//9g88XjU5vi
	LX1yeb5hCBHt8f2MSQYvQ1eVNybDe3trLis0XuuCsN8bKdM5x0Q0SgqvVfr9uM6iuPv0wWsn6YhDs
	8ShEd+dK/tbYE8Tvdm6zw2w2v4NTtx6gZiG2eq/3vN9c7n3WA4pqoEEjfEDu4CUpS9iWHJMB7UKmn
	xnHvmSeD3VzM87Ea1P5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVu-006KIq-0M;
	Sat, 16 Dec 2023 16:27:42 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVR-006Jnq-1Y;
	Sat, 16 Dec 2023 16:27:15 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-552ff8d681aso883978a12.1;
        Sat, 16 Dec 2023 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744030; x=1703348830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enGw8p8B5CzjGv0S8y8E93U6rzPMRXDY8CyOli66yco=;
        b=RjZQghqdG8OtAJ7ZmyBO5XUGm9f0ycNgHwLZsjU+h4aVA2VBwWfz5EGIWlLSXoUmy0
         HFUGZ/tEdewmjVOQ/awnvgwnKKcE7vtoKPLbaE+La+KlrNAtygOf+OcqsjQ5a26UMlkV
         TlZgfFpxeEVtKsakkvMunywhLqtMus3pvG8KelzvWSDWrVBwBu1IXuVqzgwJuXHc9lGO
         pYQ5Xl7v/f/Dwru2IUxSPz1yha4zbJU6oQl4Jsx8wv4RDhb6ifo1WBPmQ15yLTnvTGsG
         jXlTJJng3xbQoTrs9ta+rPNqByd5tIgme9cmZD26Isw/tugqVGQf+imKB0unVxCn/cpS
         zjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744030; x=1703348830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enGw8p8B5CzjGv0S8y8E93U6rzPMRXDY8CyOli66yco=;
        b=tymqGmMYg2XOifQ5frxWSkofUfZ0SG6xF4L5q8M2J+iD6LfB98uCOigHloafOVzeSj
         cmTfa3E0xCVing8JxgNQ24VO5uTiZ++EoRfDVCkSxnb6nuooWWSWpe3fYkJJL5VMPby7
         Lr6ZsM6CICuK6BtyarEtHUdih8tzPkY1/7oFHM/VJ1cj4ZZu9uXazD3jl12P3lTshlhB
         nHw4YWLARvSIwwJ0yt61/Ndl3FYteh4P82xYuQ1RrmeSwLR6yb5gpc7nMEVJbfTj8K2S
         ahnel0VpYcKBJxSEVbCuf2jo2CVulV8QnrItjz7SYtCSNcvHOjBnIdg9w80zDgeLRwLo
         wKSw==
X-Gm-Message-State: AOJu0YwSwY8xDtFbORFO7E8KWkL0ZF/WfNQe1BGmEcKnelDGeqX12Ocj
	OC/4t4Gr2AtCrnlrBjEX9w==
X-Google-Smtp-Source: AGHT+IGw7FiYDghqDzTy3nLXlydCF1Rdkl1jTzgPRe5Ngs12gDtlJP7mEFvi4eD8tZOZvQbZfPvCdw==
X-Received: by 2002:a17:907:5c7:b0:a23:f56:98e1 with SMTP id wg7-20020a17090705c700b00a230f5698e1mr5449054ejb.18.1702744030650;
        Sat, 16 Dec 2023 08:27:10 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:10 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 07/27] drm/rockchip: inno_hdmi: Get rid of mode_set
Date: Sat, 16 Dec 2023 17:26:18 +0100
Message-ID: <20231216162639.125215-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082713_540873_DCB38B9D 
X-CRM114-Status: GOOD (  14.32  )
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

We're not doing anything special in atomic_mode_set so we can simply
merge it into atomic_enable.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 48c4f010b260..299770e481b7 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -490,21 +490,22 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
-static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_crtc_state *crtc_state,
-				       struct drm_connector_state *conn_state)
-{
-	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_setup(hdmi, adj_mode);
-}
-
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;
 
+	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
@@ -533,7 +534,6 @@ static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
 	.atomic_disable	= inno_hdmi_encoder_disable,
-	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
