Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA03C3ABAA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 20:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rukdUMhuRvN4xlmEBPkzSxwH/9Xkjpi00rkMHBEq7M4=; b=KGmpvlJvJFTCAM
	jevfxCD5tUUDUcZsoDW08VU4egDCLzr1C9YgrYo0vahxuh9ePAhaOrDKKtirtC9pyn/r3w0RxjlVq
	va41oyHwTVehArj8UXZd4WeP3wTP3REgBjm/Qxvv0/h7cBWmeltVTynLOZUKjqBvfz5F8xgU0suxx
	w72gWKt4ET4pvkYnFQu0zT+9BXI7G8KGcCEfg/INBoLwBQyvYXG2sl5gJgvVx7XJelj4QjC96DeOL
	RGPiVTSIu/XYylmDSyzBiLdqThWNlNZb+ypxsNeDu82Fho9I04EBNqqhJ4yspkPvqMfBLhnhk431a
	NmWGNmfjMaXV2Aq6ZdWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAxTw-000000031Gs-2048;
	Fri, 02 May 2025 20:59:40 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAxQ5-000000030aS-0Sqt;
	Fri, 02 May 2025 20:55:42 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6ed0cc5eca4so41073406d6.1;
        Fri, 02 May 2025 13:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746219340; x=1746824140; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=PydVQI+ZapBCQRwz3dRdZ+RNuOgt09FcfgwXoK+pM7TqLBNPSo3VtEzV1B8zXnWvy/
         p5y3Ibu8zUAz8vUlTCnWWesBPl8f+5oNVzqVtBjJhQ00GQRSJtoEFvj2RDt9HlJD5Xra
         Aa63obadHTHwK6PuDJ/gP/3STpQ1han1Ygie/JjhE4hf+YztF6Ee9I3wO6m2Y7r+V/AW
         D1GKXUKO5xGzV54Er91EeDXxgInuhmEpj7IzTOAYE4sXkU/8VjFGrXPkiDcbNl56Z/nk
         2WPXgRC5U88KViJQ56R93cGuzFRw48FlnJ3l0cFrnUJd3u0HWJLvfAfFlf17IZ5Nzx7A
         VYaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746219340; x=1746824140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=WjKRLY9Vomk39uMRfVYWXO0IshRA4jp++ajow+nZ4exhCVTsdaavWpLQ682G+pwNjB
         ch05FH+m8os91ah3lyOSfUc39+NN7VC5hireQmc68FsXgLk4IH1uTmtbVKGw3vv4CHHi
         hFdstOWrawfDPiDRQPBhB0DTmbjwgdYfGrYzKhWdAw60JNEwJua8B/Db4/yjb1x2FOGA
         traOgDVeR5f96DmFe/MrOVvpnEp5V/5EPPRN/1D4Q0Ak5vnXXZvjDSN0zAvuwLuPGtA5
         1BU/my76gAZzUXoznXuS5ccQcAxzycr8m8YXE4HNOIe9L+W6X0LtwE+yMg6A4du5N4Je
         HGGA==
X-Forwarded-Encrypted: i=1; AJvYcCWUt5NAZlFb+qQuENTJ/z6hXTlV30LLDfbmQQPW8Dt+icQnQTGneM+J1/PI8raDN4dqsoXHUqDEcHOUtnPh70w=@lists.infradead.org, AJvYcCXOme8px8EBkC1av+T969lQNnNCdMsNeGvsg0DE+NiY7OLs5YXmA3OoM3acJf0yyWR2KiiHjDJPCGZlptx1yjb2@lists.infradead.org
X-Gm-Message-State: AOJu0YyDxi3IAXCL0uRL8zT9zpE0jnnPmra65n5qyC6i/nHa/MOo9Eyi
	zXzl5pvMQkfn+3yvY0MYqZCNXL13QzRKdVxujPqB8qowfORlPBHH
X-Gm-Gg: ASbGnctZXe3Js/TLFols4HAWNg9RPsrvbWImab6jaPTrzYEJxGuVQbL+UIuvbJiuHUd
	Opn+zUeRVjY4V+qpBK81nX9CvtCdU7t7cSmoF+Ku20YdZdqmeaNGAK1Zapc2XyfWsu3SIgwRR4f
	USXy3h+KUFzglfmFG7PuHhLUwlOi49oAOhR4a+Su3xt10ndRG/B6PrVcHNR1PyH50c2fRatzSR3
	QVVB2BWgedxhYhI0tR8KMn4Q32thOOr8LYFGPfkD5NRvOzGnf89YC+RHHtT3BcHGRQRSsNpQebt
	QYRTO4R69/6DiNH2OitSjYivXswPtwmzaWHeP5MK4QeozsudG9W9
X-Google-Smtp-Source: AGHT+IGl+igKFN/KPHlDs/YVyr2V0LwR8teyjYnKV+4vK2bIalAc9yn2dBCuurYS+RNMr3gn55JlAw==
X-Received: by 2002:a05:6214:19e3:b0:6ef:a8:4062 with SMTP id 6a1803df08f44-6f514b83fe5mr75552706d6.0.1746219339912;
        Fri, 02 May 2025 13:55:39 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f50f3d2844sm23129936d6.56.2025.05.02.13.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 13:55:39 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Date: Fri,  2 May 2025 16:55:31 -0400
Message-Id: <20250502205533.51744-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250502205533.51744-1-inindev@gmail.com>
References: <20250502205533.51744-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_135541_147220_B6633875 
X-CRM114-Status: UNSURE (   9.04  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, John Clark <inindev@gmail.com>, detlev.casanova@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
produces development boards like the Luckfox Omni3576.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86f6a19b28ae..9391e0c31bb8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -892,6 +892,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^luckfox,.*":
+    description: Shenzhen Luckfox Technology Co., Ltd.
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
