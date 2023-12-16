Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A87BFC46CD8
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwXAmyWqL+U8j82+rUzf5+FF2PcxEvksp6Cph871brI=; b=RVduyf1BF19y1b
	wpl3mnstYJiFwWWfnPXv8R5mo8ZYlEBzMmK7a0329CaDm/wTv6zn0Q//5ga610O4JhvUY3Uk2gzjX
	CmVQlKXiU3R/aflwKaaRtecbjJ/+okEOk50oUvx/fJuk8ICpQBkjTvVlpfSp5riKrC7BkFSEbUqJK
	CbLCfi6TEwPsHJuutrDldykzs+X92Q59Rjxq0i5aoIKJt6IXGdbqjH4jyr45jFsefj+u4845k4zBI
	FTWhgpybSZ3az6UuOhA6fRnohRfznj0/fpkjVA7tTiErzCUZO8hNTAoy2lzEQ+NR2Ew172+KjYVLk
	60aXO0fLePJWJL8i4a8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVt-006KIM-2C;
	Sat, 16 Dec 2023 16:27:41 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVQ-006JnS-0y;
	Sat, 16 Dec 2023 16:27:15 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-552d39ac3ccso2600941a12.0;
        Sat, 16 Dec 2023 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744030; x=1703348830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+K0So3uuQGg3yr+y8AKU1btAl7C7H8qZH5jAq4CxfOw=;
        b=XMRRoC5B6D6XN6Ex/IuT8rwNUpP+seeeAdiaRR/wlkAEn8z9vL1XBzD/UhO/yxd8vC
         EqpHOfWQZJo7fcJ9cC4go/SOgKuu9NV5qrss/FwbnBHqUWIIcNsUDZh4jysSqqhxU7Lx
         zG4Z6a5sUlqBAy6W6FmSJ+PfGsEJftoPqgHUb0xbwK6j+WQhmnRyJ2uX2usltrhh8mhn
         z6TistTYnD27c57P/yYvTIpwZ7YK7WLhpUf7kkeHp+GpucI9hJHFzYIeuKOKl4wwlrLt
         ZLx0J8374bQTnpCW5BiP0xBgTAQWKkY4pI5kOiInlaUlr2OBCZe0SoQC+IHtwXx56ygy
         XepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744030; x=1703348830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+K0So3uuQGg3yr+y8AKU1btAl7C7H8qZH5jAq4CxfOw=;
        b=PWGlSByeiR1McXaixGW04C0cPVuR8Igxi8YUxnXorSYtqW1CS25nSSqbN1hjj05A9p
         hYUdIArfCGoTnfw3UTzAP9JzeVFzO27jaxAa6jVS9iO6/cWjibddOQ0KnMvOHhr2XOmZ
         q8ygSOkswyEI47FZ/vVqDaLxtxRWhIlUnIuFWnQUiJuw8hg/w42KVaVLZggghMnS7jYb
         TzJCurwLQlG5fflkfKVyo7r8mDMB+aFamCq1jq9CEfY/Zp4nozsKtXbK00utA3bjgw6z
         Xexlr5xr2wpOhOfCD1Y5TIK9QrqKvjUFKehNdEnnUf8Kw9FHDvFKae87UG+9Crc+E662
         HnmA==
X-Gm-Message-State: AOJu0YxlvgtvuMuyKnwuaHeUecTZleppQ78MEivbK4jEcfNcGS/oW2gu
	EDDmw9arxXCh//rcGLpYrw==
X-Google-Smtp-Source: AGHT+IExRugXG74sxCB2Guilb/nSJFlUmZY/5iuQd+cooSuE643BRC/59xoXydHOjqZElMPX6y5FtQ==
X-Received: by 2002:a17:906:101e:b0:a01:ae9a:c1d3 with SMTP id 30-20020a170906101e00b00a01ae9ac1d3mr13645179ejm.11.1702744029174;
        Sat, 16 Dec 2023 08:27:09 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:08 -0800 (PST)
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
Subject: [PATCH v2 05/27] drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
Date: Sat, 16 Dec 2023 17:26:16 +0100
Message-ID: <20231216162639.125215-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082712_340576_3718A239 
X-CRM114-Status: GOOD (  11.83  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 0b1740b38c7b..14d2ba92a606 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
