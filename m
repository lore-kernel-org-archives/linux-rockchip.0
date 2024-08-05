Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF5AC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrQxku9uPuQsHFTby3k6pu39FbPg/I6BrXki1simWZA=; b=x7KCWf7KPzzNuO
	0DHlhn/wTJnv4xhYElZnMwFSNHb2iz+mNY9Z1xTVw123zbkS/KHd1ic7NlKoSZ9WxIFdB5JYyPMW4
	4FjHoCyWeHZujCjEelo5Y+9prpZNmLIIaB3sTwNN07zIESPVBnuc8C0N/VmUkTTurO8k7+J9xwX2k
	02WqyFH4/dwviosGnVLQzeUap+Su90qMuDOI0xKWRLpYhHQHP4+ItWjQzaS4AGPJNdAP++e2LGr3a
	ik1QcWNJXZDrw4RvjJtstimd9CEfVAUrb3KcYzoX7Dued9yp3P8LgSmwIn+urcHc74z6gLzHEhAXq
	IyXQ/PkJ6TqErY7fj8NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savbD-0000000Fdn2-1itJ;
	Mon, 05 Aug 2024 11:09:59 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savag-0000000Fdeb-362c;
	Mon, 05 Aug 2024 11:09:27 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42803bbf842so94176415e9.1;
        Mon, 05 Aug 2024 04:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722856165; x=1723460965; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79Xuj9rgFrPC1HSTEfYDoVNpMSfRb2MPhZi+uIGhKp8=;
        b=QcYrU1GrVPjhsKoqOWPUqUxX2RhqtRbqFML+rpjh+6cFkek0ShFfyDgtAI09Lag/96
         G5n4mFc8mbpCcxQKlqAm8BXDXQqkmty3FWOAIWlrRHY9g88zkICq/VNsOuAr57Dey1nO
         FTRh05Ncn0k0iiw+1GmZwRECIKL9WX43TjkgQu/upkoG/sROM+dD2fW2qUVr8IEKAnsr
         7pfz4Amek7lGqKbM6x0CeHYX8274dg6g+/Lt3p8XG0WolA0LSp0Io5Iryz031eJcVVMx
         jRabUXopOD35bzeBgYXWiRhhdbPChBGqhfHLtvF/zQpwVG57m+xZYsJHDRipXNeTSUYu
         IhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722856165; x=1723460965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79Xuj9rgFrPC1HSTEfYDoVNpMSfRb2MPhZi+uIGhKp8=;
        b=b1gv/xFbymCQofBvNav+dgIMCPUkja0Bb/drtTbE6J1YjF/IGPRIC6ulcn8ufg9sbP
         Uc7niDnT5MZyMKhDGZm4g4S8v0HQqHeBK+DYKw1+rYUBmxisZud9JdeYubwSC6yQa9q/
         60xapuwc9yjHmaxsea0oEpmOaykxeJIxG2HVUq3/HORLsyzmpDokNtbuEWZ2sAQ5GbYw
         FHyzHDqaHfxvuTs9f2h4Q8+uBF4IOqrPhyqO687G+0mn5Pe/NckrLDPx/SafZsT12/e8
         kGdsSuCavZiFHMn7DaUjNB/u3cLpD+/wWNG6uP+BQL4c7kenWpPpcWQo7L29JsQbloAq
         m7wA==
X-Forwarded-Encrypted: i=1; AJvYcCUVM/CevGG+/P9bTMpUP9B6RgPGv7pjtrFXgxK6HzIWkGMC2nWF0J2xdx/4p4QrvYueewsykHZeKqYw7u089psF@lists.infradead.org, AJvYcCW1rLxm/4GTlkywJMMK96mKgMeUtSl47gx/iwu79oj8mfeCSKI7ya0Q4H3mXaLRHjojco3Hcv00Hhc44M2+xfk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkgNeK1opgUK3rcwzNfHFM1B11c/WTDeVxodQe3zzpgptck87F
	rfbAF6yyxitjcN2zdRfUG5TGa26AARXDs930uUQLvW/ARsMmgnY=
X-Google-Smtp-Source: AGHT+IF+enJmt09S/10X5NmbZmmJNuA9POvDDdzkcGMSH1Tm7mGKoejjHFjJOqEc4a0d6wLh557zUA==
X-Received: by 2002:a05:600c:3504:b0:427:f196:c549 with SMTP id 5b1f17b1804b1-428e6b7e954mr106869695e9.23.1722856164258;
        Mon, 05 Aug 2024 04:09:24 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:2127:8412:5ec0:5b4d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428e8d6555fsm131275485e9.26.2024.08.05.04.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 04:09:23 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] drm/rockchip: inno-hdmi: Fix infoframe upload
Date: Mon,  5 Aug 2024 13:08:56 +0200
Message-ID: <20240805110855.274140-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_040926_800619_07C5EB70 
X-CRM114-Status: GOOD (  12.66  )
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

HDMI analyser shows that the AVI infoframe is no being longer send.

The switch to the HDMI connector api should have used the frame content
which is now given in the buffer parameter, but instead still uses the
(now) empty and superfluous packed_frame variable.

Fix it.

Fixes: 65548c8ff0ab ("drm/rockchip: inno_hdmi: Switch to HDMI connector")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 2241e53a2946..dec6913cec5b 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -279,7 +279,6 @@ static int inno_hdmi_upload_frame(struct drm_connector *connector,
 				  const u8 *buffer, size_t len)
 {
 	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
 	ssize_t i;
 
 	if (type != HDMI_INFOFRAME_TYPE_AVI) {
@@ -291,8 +290,7 @@ static int inno_hdmi_upload_frame(struct drm_connector *connector,
 	inno_hdmi_disable_frame(connector, type);
 
 	for (i = 0; i < len; i++)
-		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
-			    packed_frame[i]);
+		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);
 
 	return 0;
 }
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
