Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EAD3C61CE7
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 19:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qb/EyzEbkExOLd0xj+3Nyr6YMkwVTqJZ7K3myMyW2gg=; b=EKuR4TiBVGh30q
	SmyNxdbnIhPTcXWIHGlmVv1AO4qrwhKSOmJGPLKV9c+s/BFH7GBgYbu2+4ds5dwENUPf9842epJCx
	ymSyCAGFWoKx2u67nzgfQF10+Wee82wLD+nETr1QhzpAgcgbkpk89vO5wBVGvuZ6CBeP4hIQBtTBT
	uFj1saq7ccb8zQAc6HVkGplG5jzuASelzTqYkQr+OWNu9g8Fqi5/ZCNDNJR4mCfCgO+qb0ZMbDgqH
	xPkRSWSbuoenDoQUXnVdrOultTuE7/4D/iA7ewFhiHLKAZCAriDfcoymps/E6eflxoEL7NqJIScO+
	/mdg49QPtk03zC7Ktjng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWN-0000000BjEG-1r0a;
	Tue, 03 Jun 2025 19:42:03 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWL-0000000BjCi-0FOp
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 19:42:02 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-60f0a92391bso57989eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979720; x=1749584520; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/L4zSsY66uDYamOrq9+Mw2rOYYJ499EOM1f+pBYr+Z8=;
        b=jyZO8/Y1p6K3IZ25XqIc5UJWLQppIZ6vm5HDkIH07ziBH6Gk/6zvOsin30QZsmHcsL
         3O09x9Tgw9IRisR28kzebA6jVLpzZIKsCx9NWjY8PJIntnoK9kSpKa3H5IU50VaStBea
         mNybf+Yx/kWZW2Zbg6p1sjDY4uA0Bh0HUt0XVq9MUfbTh5fBQlI9yxc+WvPstZ4AsUrv
         WdB701GEgmb1Iatlg5hIvhxIJv/tLTtgSm8K2F+mjXUOX9eZJ6DOc+L5lfFIIbXTjOS2
         iUkB6Pp7EneGrWTzm3UYj7Vd3q8AiSIPVjvF4d6pqhYVnv8374zESnDVNt9YysmMgad9
         t0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979720; x=1749584520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/L4zSsY66uDYamOrq9+Mw2rOYYJ499EOM1f+pBYr+Z8=;
        b=bpr/n4UyrO4Ipo1ygbCyAm5ycRyjc4fk4q/KS/k/hd9Z2TbjST23kKapxYVFDCCnT8
         T4NmaRFm/qAIF+sOI7LhgwrMeLg5LIOeAgSmUBiHYfNf4XRaTEhcHPj5tKk2Ogt15Z1e
         BgnfG/b075eKbVeZZVFeEHmD7zt05zZPg9LkDOH1KVmyL0orthch5i9jCv4owvkhMsIF
         wtw/lxhLX9HBdZHXDj9cjLXK5w/AyWVjXNN60pcMiMN3WHi4pFS+aJ0sZ3FxjQJ++4rt
         mIqsopblXWOWU5WDeYDEfAgi9ZeK125ojWTol80lYSGWw0UHMnjl3xQkzmaOPmv4YyV1
         DsUA==
X-Gm-Message-State: AOJu0Yx3iHLaZDEG8ZhqL/Hn2sFj/OLY0KXpyl6u8RUvkmbp+huQ+b+S
	ma9zSqEepqTwo40dWcC0ZJbQDHXIMWyA1hiKJbJ03Q9I69JAVqgmgz+K
X-Gm-Gg: ASbGncvDP17FOvpd4Iy/Y5QGoOhGSQNgg/tFg4jxGuwLqmWEDwJLqooAtQOQopLKEob
	zlAnCvKZHETnwv4b2BYHbQtuUqh93RvfvAmoJrwZTDRZGAphAjhmDDwTNrYUINOjv+NhBfNOzCc
	7NpdFhhcsIsg/14eS01ybSbrMbbagQx5asbCjCERtM+oaqQwX4Mxi8AKaOLKC0/0zTNaLTdG4pI
	13QSVJa2TpM9S/fTadLXe2cBxXj4U0hrMfzzil9/Nb8/ID8sBBD4HTSzUP2zaoShNcZMGLmsx9a
	Z+Br1iulQezwnPuX6PRUmd2OE6dT49cqru1vlWWoCfMSCUN8NW/FybpR2yUppR0gUmDqQwo=
X-Google-Smtp-Source: AGHT+IG3+8X4rYmlVGqs/t382PwbAWeG5RNhDIJA/498vjwFKFaLf3Z5w5vaFUsKAWkzdqYLMZa4cw==
X-Received: by 2002:a4a:ee83:0:b0:60b:b134:a1 with SMTP id 006d021491bc7-60d53c761b8mr10625534eaf.6.1748979719622;
        Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
Date: Tue,  3 Jun 2025 14:39:27 -0500
Message-ID: <20250603193930.323607-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_124201_098765_747E0007 
X-CRM114-Status: UNSURE (   8.94  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Shenzhen Huiling Information Technology Co. Ltd. specializes in the
research and manufacturing of display and touch screens for industrial
usage. https://en.szhuiling.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c01adbaacbbb..d5fef99a3490 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -672,6 +672,8 @@ patternProperties:
     description: Huawei Technologies Co., Ltd.
   "^hugsun,.*":
     description: Shenzhen Hugsun Technology Co. Ltd.
+  "^huiling,.*":
+    description: Shenzhen Huiling Information Technology Co., Ltd.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
   "^hxt,.*":
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
