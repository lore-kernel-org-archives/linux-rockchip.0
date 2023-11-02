Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFDABC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Nov 2023 13:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7uu5uZCyqLMGQgsmGv7wRWeq2qZs3m+VHYYMa6p7LE=; b=MwJ0e5CZcXM67N
	6YGM1DR7oy4rqTxGbgporLea35MgLz9CUfCivlTQ8OpIQeII4XPvYiAXiXKLMncRFl0p9lm3s/71l
	Y9v4HnpXielRbiuXR8J6G9zY/STeiIm4UXRH+GLxb5BcATZH2SzhQcLIxl22SGPkr9Z5ys55DBXYV
	OEcyFukPZwpWc1nE/Zl+txesXf+Y3yXsOsoUe9eFO0+/NxuWHDU3+rRwfMBN08BsAdyCaFLL6dxr9
	JbQFBt2M1ydZAgVAuBYLzjIiPibThGxVg9urGyQShk7e51es/RewiZcZ7bR5fr0yEzlx2tJLI1PIb
	77/yGmn8oldd+/fQAUyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxs-009YXz-08;
	Thu, 02 Nov 2023 13:42:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxo-009YVV-0w;
	Thu, 02 Nov 2023 13:42:25 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9d274222b5dso152100566b.3;
        Thu, 02 Nov 2023 06:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698932540; x=1699537340; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5ij4W2R7Rk89TAWTRo2Z11H1sJFKrF9K18A1hdSCONQ=;
        b=SWTfWDKOvMfUPTvGKxvlGHRwxQ8vr00Z7j/6EzGbKB7uKrabufpRyVTEPsYkJUjQxy
         9CYTmNie/M+N9uc5VXZGD2c72zJ038WitUuB5iAy3dAHMp1pwIn1kP8JQ/TSQizfxEBF
         NVdfRiyIs2uSKqQb5wLKfkd6/WbmGJ98scOP3bDHgdSmg25ucKciII+AoAPesHMiuTzh
         OgXgKCTIUIzKMXhaE0NysxLfnbOA/xuJnkyOrhU4gnA6Rp7ay4W76mU4zIUJNKSYv960
         C2oAX5fK1+vaasQ24XHb3gS83RgSt2DStSC7NeHyl+zSOA1th4xHu9E1tMHV+G6/nK0p
         lU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932540; x=1699537340;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ij4W2R7Rk89TAWTRo2Z11H1sJFKrF9K18A1hdSCONQ=;
        b=HLezOx6T0e+1km0s10OaCaUOYo6qlb4RjxdNQwRrds/Z9QTFH9xr5ZRsct1YNdxVc2
         LvQzR1PY+TJIQtGRwrSBCgAPBjUf9uV3YDBAH95z2CeL+igpi349LLgmjkmJ/48lWEot
         Qf/CnwZJUYbjXkuEyvsB+lFVUbCS1ktOZjZqIWoCzwp7zXI6tAp4p8YRK5h05VtzVAO7
         5R1qh0v38OcX/mZr50ORprTyU4bzPPGJYE/UVdn6c4lpQn0ogMbQEznqAYzzHU93PBtO
         vTWUdaYeDdK6kowQu9clPj17Nq3NkA1XSwVvMtjo8+pxfsBAFLRhQvjmCR4vznEMP6oz
         Chdw==
X-Gm-Message-State: AOJu0Yyk7KpbOvwww8VRLguNmhrF+5nq/bCw7d31OvCTphFpWNXAlqqU
	2s73NrTo0IyTIwBsmYKPOVg=
X-Google-Smtp-Source: AGHT+IF6LP+ml1ogEFi5qh8KFdD9Bqg3MegxZWCzvRijCiVmpR9CqHGHL0atdCUWnRBs0neVN5QPqg==
X-Received: by 2002:a17:907:60ca:b0:9c7:4d51:af08 with SMTP id hv10-20020a17090760ca00b009c74d51af08mr4508255ejc.43.1698932540595;
        Thu, 02 Nov 2023 06:42:20 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id j8-20020a170906278800b009be14e5cd54sm1153220ejc.57.2023.11.02.06.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:42:20 -0700 (PDT)
Message-ID: <bb5cac77-a705-738e-13ae-667ea87f1cb1@gmail.com>
Date: Thu, 2 Nov 2023 14:42:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/4] drm/rockchip: rk3066_hdmi: Remove useless output
 format
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
Content-Language: en-US
In-Reply-To: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_064224_331576_93C45F07 
X-CRM114-Status: GOOD (  11.13  )
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

The Rk3066 hdmi output format is hard coded to RGB. Remove
all useless code related to colorimetry and enc_out_format.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 0e7aae341960..f2b1b2faa096 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -23,8 +23,6 @@

 struct hdmi_data_info {
 	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
-	unsigned int enc_out_format;
-	unsigned int colorimetry;
 };

 struct rk3066_hdmi_i2c {
@@ -200,14 +198,7 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
 	rc = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
 						      &hdmi->connector, mode);

-	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
-		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
-	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
-		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
-	else
-		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
-
-	frame.avi.colorimetry = hdmi->hdmi_data.colorimetry;
+	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 	frame.avi.scan_mode = HDMI_SCAN_MODE_NONE;

 	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
@@ -329,15 +320,6 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
 	struct drm_display_info *display = &hdmi->connector.display_info;

 	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
-	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
-
-	if (hdmi->hdmi_data.vic == 6 || hdmi->hdmi_data.vic == 7 ||
-	    hdmi->hdmi_data.vic == 21 || hdmi->hdmi_data.vic == 22 ||
-	    hdmi->hdmi_data.vic == 2 || hdmi->hdmi_data.vic == 3 ||
-	    hdmi->hdmi_data.vic == 17 || hdmi->hdmi_data.vic == 18)
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

 	hdmi->tmdsclk = mode->clock * 1000;

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
