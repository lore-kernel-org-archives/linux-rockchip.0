Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA06C48BC4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 20:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WlJQvjPvmDku6PSD2LmrLa9gEM1D5c6YNq1jjr1ds4=; b=jT/MwrjTtiVRhB
	1vaCJXbnhB50KOfltrBJhWK/ibFQxH0Wo8vzE+f2bYU4kfoZT1jwOzP0PkEPSjecoB+kM7osmV703
	FBIvAWn4poVeO8LoeR5LufhUXIc51rKMjxkf3H/82kMFSyOiOoe2m5Bj8wk44KsVOzS3j/ho286s+
	HKMKD491KXfoEGBt8tAe9iTnJiHgTRLsc6OcpOQqfh1h9Z61tBwBMIFvZG3aSo6qlMdASS+dhRMAa
	kFzUeMO3BsWAi1W36QNPRo44ghoZYSX9ids4B+haAOhEDksgL3oJ1lamOEV9PTTSfKZxNfnc821WV
	xq6pj2MYuaPCcR58ixxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZcTZ-00000006oIX-23HU;
	Mon, 12 Feb 2024 20:00:25 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNS-00000006g3P-31JN
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:04 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-59a8b9b327aso1288734eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763801; x=1708368601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMsXKmpw6dLT65KkRINMdKyXBzxk9IKeYWz+mH4JfHk=;
        b=MGeekMR7fUAyuqN3icWsy2TjKer3MyUkVTBw6klq29R3XDCb6+edw8N6Vx6jpPQXS1
         HWVbuJjLetB6mKkmJlrxWBHpENPYNzMVii5PPjVKStN/53bGWPsar4vMY8/zO2FNjRXq
         J9Itzh7dwCzRFpBL7NahaGlb/Pf+KHk3UpwGMiqg27O86D+iW7ZfpghbddoIvVDXaUYU
         +JEwt+fNvGV97Lsb6m5+IySFCvtLtXkw9FpEonJ+VDIPARUITmM3148wSzPgVGLC+34m
         XbMATg9qZsbRo6D5R3pi4S92IqLUzuRXHqReqHIGpgekgUjvVDGbFTTHmrUuNYgqKErR
         Gbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763801; x=1708368601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMsXKmpw6dLT65KkRINMdKyXBzxk9IKeYWz+mH4JfHk=;
        b=PVGJ2mlymyMnpGNN5iP5rqjYy/meZrbbt3b4BEced/mO7IkzrsKKiruKBSo4KfQHlW
         QWhQXJmxEh7AqUzCszWpXjIaGoo9gG+i0YfsAYnhko+dv8yFJTeu5DLpa0yDnFIi9TNi
         Ocr9AjXMDWJAHtLYmgvWewg5QpeTJ6luZReH60PWP78GQhfBa5MH7EWaohKklWxBr4z9
         6/ay1nx+P/pA33IdeiEhwKcg9UivZg5521bPe4EgcvRFoI7x+dRHV16lKxYAro+n1fvT
         RhUTwb6z5ow+JYMMu2CoO6Hc1S517kr1v7y5KaMXSo7afFv7H8hqJ6ocfYhmQrsAuJiA
         pcJw==
X-Gm-Message-State: AOJu0Yyp785OjWWTnR+T4FKdmVGWHZqkbPIOPn0hiWKbWaBLeisAs1JG
	wvJdvoy8TgJ2Tm4pW18u3KNG0EheGvzl/X9otPcNcob69Tk7W+fPqfA2YsI0
X-Google-Smtp-Source: AGHT+IH21rnnnVfgZxMZxLUtwT8WNw2n6SGokaZ3Z2BAo9BcO1XqzYus1bbwbxmJwBapyjsetWPvxQ==
X-Received: by 2002:a4a:6c4b:0:b0:59c:8dea:ad3 with SMTP id u11-20020a4a6c4b000000b0059c8dea0ad3mr5149094oof.9.1707763800850;
        Mon, 12 Feb 2024 10:50:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVeJe5sdeCNV8dOxqKNJ9p5ZaVFhlpVYq2mMRB0iQCgeCAmy4SV/fbbtMK7Gv3j6SSGe4sJ7VuAF1+TJbw/86y94Eng46FiRZUGjaGIuPMN6IEjjHBTUQNA6dOgerspmMSEvhynLEv0Aasw1sCwXDvrTCAnKyQJIxUOE263WYCGTjAyObHHtwWdsJhRNqI+4yJJrDGZ5TaEbsdRRTMHaTyI7Rq9OtAF9n8spX4CUBU1mHJoVHOVEqLbH8RzSkVlbfGGPy7JZl5YDXYR10FlFS/7IaNHH4D063iejoOIDBiOS3HYqpn2abyQ+m7FyEDd6bqhV7ElNtkkkRkzBbu9YVyQtjDgd1Az/OprBux2PDozS9C5JsI4fRcqdY22gJVQP9n7UT5mnF8mi2yqUSycVtu6kccC+LRThhEQw2zHHEit/yK121dpMaJAIElU0fvKIM9T75f+S8imX/IfWrnJczKtehNeZyVlR9K/OGDNdMs3WMjApO+Y1I2qihS9rKKMPIVQ1vadUKwVbLq8tJz87XBQ93vKeSe6l2yNSwWg15RB+woEo0fnEv0+e5qh
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/7] drm/panel: st7703: Add Panel Rotation Support
Date: Mon, 12 Feb 2024 12:49:47 -0600
Message-Id: <20240212184950.52210-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105002_793370_540FB5AB 
X-CRM114-Status: GOOD (  11.42  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for panel rotation to ST7703 based devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 939ba05c9b58..a3e142f156d5 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -62,6 +62,7 @@ struct st7703 {
 
 	struct dentry *debugfs;
 	const struct st7703_panel_desc *desc;
+	enum drm_panel_orientation orientation;
 };
 
 struct st7703_panel_desc {
@@ -743,12 +744,20 @@ static int st7703_get_modes(struct drm_panel *panel,
 	return 1;
 }
 
+static enum drm_panel_orientation st7703_get_orientation(struct drm_panel *panel)
+{
+	struct st7703 *st7703 = panel_to_st7703(panel);
+
+	return st7703->orientation;
+}
+
 static const struct drm_panel_funcs st7703_drm_funcs = {
 	.disable   = st7703_disable,
 	.unprepare = st7703_unprepare,
 	.prepare   = st7703_prepare,
 	.enable	   = st7703_enable,
 	.get_modes = st7703_get_modes,
+	.get_orientation = st7703_get_orientation,
 };
 
 static int allpixelson_set(void *data, u64 val)
@@ -817,6 +826,10 @@ static int st7703_probe(struct mipi_dsi_device *dsi)
 		return dev_err_probe(dev, PTR_ERR(ctx->iovcc),
 				     "Failed to request iovcc regulator\n");
 
+	ret = of_drm_get_panel_orientation(dsi->dev.of_node, &ctx->orientation);
+	if (ret < 0)
+		return dev_err_probe(&dsi->dev, ret, "Failed to get orientation\n");
+
 	drm_panel_init(&ctx->panel, dev, &st7703_drm_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
