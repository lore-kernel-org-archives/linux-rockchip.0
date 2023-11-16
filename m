Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A29C5ACB2
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxszFXTW+i2AFBvyy1axLTqa2UYGsQqdkL88E4UD/YU=; b=cRUkbRmwGKFpKK
	V6P9fFfPmpOw0T6cW6lWpeQHtTsz9O9qFBESYt3eKsFruy1ycFjzVPF4iuK8Itrq5dFtINkQq4o5B
	8RX4iE1IjUsx1nLQtcImWl0KknbnY0XLmWqPfX48ogOSvlt6nPrACJl+h5N/aP6qwq0drMyzM/j6p
	CX4vLCpPvQm3yrLsXJHKWlThrI+p01qi9lohpWRkSQLx373UjXpdS91GQBNBmOaqaxghxEUcKnW67
	s5fGK1K93SMlOPk5zCJd7fhRTvtVACoszvB+A4yKqHOBwfLX1o8zVEu8up7gAOz92dOzZb8KSk+Gy
	YOgNOE1Q52LnKmOhIY4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4u-0023aI-14;
	Thu, 16 Nov 2023 00:17:52 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4s-0023Yh-0v
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:17:51 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6d3260385b5so139925a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 16:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093868; x=1700698668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0mEsiNdPfHU/4JTiWw+15A4V1CJWyMXbRELX83ScM4=;
        b=KpBYVutrIquWFVC+zN6FXb/9eiIs0bzDm3rfuUaOQFwJAhdVZIHdlcN9HNkrnkDnZM
         pFNxkVA5zmtZApM7ZhrAVmOj/CEjMu9ysa+KEEco9K5Cv9DXQp/Tta3rOZQ8UrQclrSL
         RCmKPRHnehzulVwtA1sg3nokiOvjFiyI6Ft2WUwHhTz8qhbS/WVt2xf5WQD+8HAUgz7O
         k4HRrFlIzbG/b+LLJGJ0B5J3W//F6D5BIoaTiQ6X5brsZ4dkYBkRheXqf6O/vRHx5Uxu
         s71zDn7uwRD/7VlruV75gPm8GGR8yhe1HMBAzQCtvFQ7IzXbQzB9lJdEu68JmDZTCaKS
         oIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093868; x=1700698668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U0mEsiNdPfHU/4JTiWw+15A4V1CJWyMXbRELX83ScM4=;
        b=uMjrYFv0WU37DfuBXIoYEFZf/s79QmpHmdTdVQ2WjW5DDLmyUEqT92HpZiYVjZmWsh
         WfPhFyqT2OJWkvB6sUrbEDH2o9lCDGrAZjIQ+sqiLZlWiyLxiPptYU8CSA/1E+wn//O0
         g6wGqf1xiqEpum/J6yblmP4xS5FbCEJOcejSpNJdF0vVOr62Hjbbg3oX7q6R5KmxXHpS
         QALDt0QlFUrGgQfREOySWGi1nG/BZA6yeAmgLTaHdFMYIyLcPqsqNSy/rmp7nmv83s7j
         ReFyJyznvZGteH2KUNQzn0J6vMj1/ULszB2+Gxlj6LM7E1K9lJmnMKcY0qfcwxJA75Er
         /mWQ==
X-Gm-Message-State: AOJu0Yzir+QGQRstux3mtE3igddAr+oR6cwdWcKmzDEvQ8uMewcx4PKx
	klay8twB6JLq8DrBlNKmQOLFbnuctxE=
X-Google-Smtp-Source: AGHT+IEWe51vXJ2DhIHJ7URCfodlJcoGklKewxeM5wtzw2YWENnAh582QPOTBc2Ex3kEBpeQszEIcw==
X-Received: by 2002:a05:6830:43a4:b0:6bd:335e:1eda with SMTP id s36-20020a05683043a400b006bd335e1edamr66302otv.11.1700093868511;
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/6] dt-bindings: display: panel: Update NewVision NV3051D  compatibles
Date: Wed, 15 Nov 2023 18:17:37 -0600
Message-Id: <20231116001742.2340646-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_161750_325248_078C216B 
X-CRM114-Status: GOOD (  11.24  )
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

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel.

The rk2023-panel is similar to the rg353p-panel but has slightly
different timings so it needs a new string.

The rg353v-panel is duplicate to the rg353p-panel, so remove it. No
current devices use it and changes to the driver mean it is no longer
valid as a compatible string.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
