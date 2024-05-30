Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4399DC27C44
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npGGlaUSXsg120wczJbYPYDOWDMbQUD+6ix4E/pDCpE=; b=DAvoN4/qLiZy5d
	gcQVOR3bf6mAXHWdo1oXFbzPwCIukWy1zHqtUpjQaweB3K1Bh/C+Ree+12tqIYRcIqaoZmo1Ok3fb
	1yEKW1CmWmRZ1UH8pAx6Ux1W6XPQ4L4IL21wMJAQ5p7fmTK3Y5W/MxlIUJm6ZuHg6jkgKG2PRwq0e
	lyTYkWjLvPjzItrMpJr7cZ+jNeewF7EW6IjKmIwU3SodgBd9och8tEKSW4TwX79XCtGA9IyWzPNnA
	glyNdg2dEAFNHQ8grKax1SDX/oj0JVCWYzaCydcCzPO+6x9VopGOPSVyH+NFUZCitea0Nz9C79Jac
	2GSiH2B1RtwOFNWz/58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxI-00000008fG6-0FXJ;
	Thu, 30 May 2024 23:13:08 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxB-00000008f9c-1QLm
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:13:03 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52b80e5688aso1594618e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717110779; x=1717715579; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+qOoN0EVfQIJq5I0wkGIsN6OuhlGgSySEsUl1KmSJE=;
        b=Dlcy/1ucdj38qNBskCBpy3SxaV1wmIIfAMaaMRQMiohril8tmc6RqENJ1emDZ0dLqc
         DvW7s77I+8HY+oWBP1UEeD7f99/8gEhIMlo2Rreew1hJZzyinhu/ht4BmKobeyuGjN9+
         IQDA3SxYI+BAx5ZJIO3DkIWjczdYbVtxvtVQpxUtIUY5eYTfFlq1e/Ee7yxANyolKz+H
         UQqOnd7gMbPKs+zWFMXQfBVrDdJESI6ulxfqCklBYSXG4ud6gIEYlzY5OcOcbA6CjdFG
         4yX4xV6CWSeWdicmCARpmzJsG4gGOPy4keYwRi6GB6GIBTfN4GRUY+s3emxSy2h9zifP
         9wbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717110779; x=1717715579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+qOoN0EVfQIJq5I0wkGIsN6OuhlGgSySEsUl1KmSJE=;
        b=UdANE4AJdDFFnvkYMu5zjcvJ1gmQB47C8aJ4sjVu/aOOX6i+1d2WbyHDdWXoVRNwjM
         7kvg6HUqcBkxgWHR5pHR0tJRc3R5+dbYtoW1ZQTgn+mktTy8kjOxfBd0bzttzKIR1jpS
         KkbnA24cfgSnx65otR2+VVb7HCo47EnQhAFfriHHQ1NSUO71EAHN/dyX1r6EBigazSJo
         2BThVJzSALGBpqFyRsIkRzjAc/TomswpIpcxKiwfFA/3H30AbAoM7ogYxoQdI+HNJZJg
         4aToBRDwQgqRm1MmNs2yLfgWivzrXm5IckwU68xD2H7UOjPK3WIBy3DGvTKX7hM4drEh
         QTuw==
X-Forwarded-Encrypted: i=1; AJvYcCXomeSWRP9Mik4tOdY2hHf169AtLrftxjCtMs0UDl/jEZhUg80mTVjXhE1mew5TBuU8xOxtTwbgYLsAroMn7NWfZnmOZ8Iwi79DBRy5jDTPDm00
X-Gm-Message-State: AOJu0YxbNiM+uBuEP5ffyxZ5FEBky7ETk7ivUd/VEvlhBtkyUUrjX1mX
	feIg8C65o3BVUQqbV3szL+wemzCIJaghURaPNNodNB4xU5pfkljxd7XUd41NGq4=
X-Google-Smtp-Source: AGHT+IEV/5BqrG4ACKM6rhd7dA3ytRF7wYyFY6D69GLmeOZ4hii09yG9fwmlf9CX59XVNOOJna1jFA==
X-Received: by 2002:a05:6512:3447:b0:51e:f79e:15d9 with SMTP id 2adb3069b0e04-52b8954e8ffmr60363e87.21.1717110778649;
        Thu, 30 May 2024 16:12:58 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75d96sm119005e87.120.2024.05.30.16.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:12:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 31 May 2024 02:12:56 +0300
Subject: [PATCH v3 2/3] dt-bindings: display: panel-simple: drop several
 eDP panels
MIME-Version: 1.0
Message-Id: <20240531-edp-panel-drop-v3-2-4c98b2b95e3a@linaro.org>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
In-Reply-To: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2746;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XBZ6fSg++oMZimfKiEFT9ckJ+C8xAqyph6b+iI0KMKk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmWQf4cuAqciw3f/0F3C1tf9A7KINZ9JPXqdn3p
 YO10u953OiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlkH+AAKCRCLPIo+Aiko
 1bdNB/9oeC31aBN0EKZTkF+/ih9KAMVShpEp7KjdxBoSJbJItjSwt6o6FBbFlv1NlAgxGUFl+0n
 4KWeXZHdQhzi2cfB30K0+oVQOEoBbqnanqT+4kmUhdiB09rvzDlZQzdQ2B5su4DwgoAFprBzhPl
 RwYWjW0iwP4VfWLfsuOH05fXLCmELpXi83PpLslolrZJhnc59BRcJDb4/rWBXi6m8UBm6vQ5EE8
 lkJWfJd0OACREKHyVI3Teow1+1SNcKf+dbDlIyy2jmK3W0WqN24qym1ttA2zm5wq2ckLwVWe7sD
 Gg1TRRMU9QUJpt3nArfOx2aGui4dfySrA3cu1m++io6m47Xg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_161301_417684_3DF4AD89 
X-CRM114-Status: UNSURE (   9.37  )
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

The panel-simple.yaml includes legacy bindings for several eDP panels
which were never used in DT files present in Linux tree and most likely
have never been used with the upstream kernel. Drop compatibles for
these panels in favour of using a generic "edp-panel" device on the AUX
bus.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml        | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 5067f5c0a272..e5ed51226433 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -50,13 +50,9 @@ properties:
         # AU Optronics Corporation 11.6" HD (1366x768) color TFT-LCD panel
       - auo,b116xw03
         # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
-      - auo,b133han05
-        # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
       - auo,b133htn01
         # AU Optronics Corporation 13.3" WXGA (1366x768) TFT LCD panel
       - auo,b133xtn01
-        # AU Optronics Corporation 14.0" FHD (1920x1080) color TFT-LCD panel
-      - auo,b140han06
         # AU Optronics Corporation 7.0" FHD (800 x 480) TFT LCD panel
       - auo,g070vvn01
         # AU Optronics Corporation 10.1" (1280x800) color TFT LCD panel
@@ -172,8 +168,6 @@ properties:
       - hannstar,hsd100pxn1
         # Hitachi Ltd. Corporation 9" WVGA (800x480) TFT LCD panel
       - hit,tx23d38vm0caa
-        # InfoVision Optoelectronics M133NWF4 R0 13.3" FHD (1920x1080) TFT LCD panel
-      - ivo,m133nwf4-r0
         # Innolux AT043TN24 4.3" WQVGA TFT LCD panel
       - innolux,at043tn24
         # Innolux AT070TN92 7.0" WQVGA TFT LCD panel
@@ -310,16 +304,12 @@ properties:
       - sharp,lq101k1ly04
         # Sharp 12.3" (2400x1600 pixels) TFT LCD panel
       - sharp,lq123p1jx31
-        # Sharp 14" (1920x1080 pixels) TFT LCD panel
-      - sharp,lq140m1jw46
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
       - sharp,ls020b1dd01d
         # Shelly SCA07010-BFN-LNN 7.0" WVGA TFT LCD panel
       - shelly,sca07010-bfn-lnn
         # Starry KR070PE2T 7" WVGA TFT LCD panel
       - starry,kr070pe2t
-        # Starry 12.2" (1920x1200 pixels) TFT LCD panel
-      - starry,kr122ea0sra
         # Startek KD070WVFPA043-C069A 7" TFT LCD panel
       - startek,kd070wvfpa
         # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
