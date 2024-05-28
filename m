Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C3B4C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 23:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7GsQNzr+c6/p7lH1IUnuI4tO/RXHEyfdI/58pUqBdA=; b=DHy2dHWUskT9Nv
	Ip/rUvzSfz4pWfcVZrTLw3CDmASe6ZQBVv8CZcKD5i72ysfs3xHEHqFmbcv2+CWMNDMQzZOJnctMv
	4Bdaws6vauny94SfB9DG4J2OzQFfU4PFEf1W0T5OYnPW+yzfzQh7YWUhsgXZ8DZW7ISjxYjHyQNtQ
	2/IdpKWr/jJGVdZip8kGU6vETNOwIDpeRSPIPziyXarh1R4hDqb6iSke1kmqCzbT9dut/tgw9ElZs
	xcjtRWRis+eL87n5kRwxsP/mFHEUmJyHeQ/w+RRjIA7pWHKtnCTI/AktqRwjsi86sTHZpUlV5eApx
	HbsPCvBZ1oWaUAdzhr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cp-00000002Lco-3AWR;
	Tue, 28 May 2024 23:53:03 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cm-00000002Lay-3tTH
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 23:53:02 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5295bcb9bc1so1594108e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2024 16:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716940376; x=1717545176; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJH0eGHL0S44S4VAoT3//wXsK4IwPG7MFQf/QTWKdP4=;
        b=es6p70Tzo+FVKJCbPuZC41Zv63/GzqseJdwik6OPgNw6CYHS/6DTLo45A9FaDorU1f
         U5tP85NnokXfzBOhS1ZpujtzUDBUfxdkFB8e1S8iiAQR3ODlz9ookM/Ii5m9qmTcNMN8
         0zJAclniOAh9iRXSBUbcfHZOpFsRPk44oKaPLO4bu7S7B5jAtmR2w4MYYwD5erg6OmSB
         FGU5w3tw5A7pi3Ylp4AGnXA3xbZcss9lyxoIBUK9OGBzC/RqygIzX+34cES+ZK0KvL5h
         kwz8QBgKf9CvIFU54yXA8QhAzTEji1HoVpaxbKNsAL1/DTbxle7OE3OfKcrG+lYKzFrV
         uCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716940376; x=1717545176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJH0eGHL0S44S4VAoT3//wXsK4IwPG7MFQf/QTWKdP4=;
        b=AgG+JgbLEJNWnb8F3CJPNd9qIO3lRVW9EQ6ci4Eq6vDAkGq5sxmAQ6TvBo1ukpndlI
         GENe/RAAj+tyWsoeNCA3h3ys8kMd6JH6rE9J7zi48xStf74WVEcwAHbygFtVp8W0dNZ+
         GZiD9/CEr/mqJLcGYzzw0CURyqCZnqeLO3jSDdLOEDU/Ln6kjhGMmPSGabzjECaN0vbC
         SPxpMXGowru2MIJzOAft5F8VhtBoZHMZsWFm29xAc/1vIRpQzVLWZCmAePJSYK94+C2B
         DRNqHhglzC+uwgr4N8nCoo2j80aFDvJtnbsVEHXt6KH3UqpS3EQJEkJTWAQ9YOUsevhm
         c+GQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9krbFFzfY5Q70Ssx+PUSkUoXedMU9MxFOiFUeJjHLmwvQ0pffz/SyZaa7JKQCjiL5W8IStQM9YJBqeRxFY84FCyKm/leLkgUxhtHJsvQUhFJK
X-Gm-Message-State: AOJu0Yxs2FoXv4+vJPQlvi4ownKQH36MT1jPxuIbNlJjnoOtZrzCJjDy
	H2z/ig8UlYfLGOqaH3OiF6J5sm/P2oDE30/u7jUrKt3bIxDOQFjT3zjc7X1/sl8=
X-Google-Smtp-Source: AGHT+IHKPEDMtbU382IuloM5br0imQsgdv1mUmjp0FxW7R0T2RAJksTe4h35WKggq6BRr5HC5ryHeg==
X-Received: by 2002:ac2:5489:0:b0:51c:cd8d:2865 with SMTP id 2adb3069b0e04-529668ca0abmr8397547e87.44.1716940376642;
        Tue, 28 May 2024 16:52:56 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066bd0bsm1099869e87.165.2024.05.28.16.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 16:52:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 02:52:54 +0300
Subject: [PATCH v2 1/3] drm/panel-edp: add fat warning against adding new
 panel compatibles
MIME-Version: 1.0
Message-Id: <20240529-edp-panel-drop-v2-1-fcfc457fc8dd@linaro.org>
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
In-Reply-To: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1721;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=oHBezVlQg7OYkDqf0mCnlNvzfcQLRXocxgcJNJ+SMzs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVm5Wy8KAXUnyPDPNQ38w7x0XiXWHodROHzcC5
 9Ghz+NDQeaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZuVgAKCRCLPIo+Aiko
 1TloB/wL83KX7asFeXg/rcu5X98SE7+vTXoSGNjnqPj9VPGeoqq2Wmbe3dxmO4pvkxjhsEmOaVW
 ZfJNPkXEA/DANbAF1dzzJbzXfug9X60iVc2OCrmClho7C9a2aglx/GXCBGlELGH4KKl3FjjCIpj
 dVkv4MkqLVb9/Si9crgvaWZ9ipUAC1LsxTFaIhseiVRobKAztT9/SEBPr+mBw1TfA84uID3ZCBl
 bUsueVYZuVYTxpLuRf8+5FeTW1vzu5iliu84xQ5oIfcDowqljKp4sbZqhotbCPeXTpFeYj7lQqN
 wIuZLM0kmmY8X7hVpoVQwtq5lEkHkb4/gZ5xOGwimTfExxk1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_165301_022776_BB56C20D 
X-CRM114-Status: GOOD (  16.33  )
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

Add a fat warning against adding new panel compatibles to the panel-edp
driver. All new users of the eDP panels are supposed to use the generic
"edp-panel" compatible device on the AUX bus. The remaining compatibles
are either used by the existing DT or were used previously and are
retained for backwards compatibility.

Suggested-by: Doug Anderson <dianders@chromium.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/panel/panel-edp.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 6db277efcbb7..95b25ec67168 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1776,7 +1776,23 @@ static const struct of_device_id platform_of_match[] = {
 	{
 		/* Must be first */
 		.compatible = "edp-panel",
-	}, {
+	},
+	/*
+	 * Do not add panels to the list below unless they cannot be handled by
+	 * the generic edp-panel compatible.
+	 *
+	 * The only two valid reasons are:
+	 * - because of the panel issues (e.g. broken EDID or broken
+	 *   identification),
+	 * - because the platform which uses the panel didn't wire up the AUX
+	 *   bus properly.
+	 *
+	 * In all other cases the platform should use the aux-bus and declare
+	 * the panel using the 'edp-panel' compatible as a device on the AUX
+	 * bus. The lack of the aux-bus support is not a valid case. Platforms
+	 * are urged to be converted to declaring panels in a proper way.
+	 */
+	{
 		.compatible = "auo,b101ean01",
 		.data = &auo_b101ean01,
 	}, {

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
