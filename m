Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867B9C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 16:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lop0b+P0588y094KsPQ1U78k2hpFdbhuAEBdrs1TZks=; b=pvJHH+yWbNMK7Z
	7UEhqrlbzEOHZpA10ekrfTbFO+cODh8K30ZTSLcYzGkRGxbPnJZ74sJ24KAUoVCvYICxigfLsCFrn
	f3mtPDaycJRVSaZV0/JghOKSvgKYz2UgFjKo7gLsRlcsas9eE6uYw60XMyUKtu4quMHpGYAWPTXZf
	41gVfS+sE1Q4ZcuvVPrN/SzJH2iLjIic02avxEjMIhYV+Mtk1Y2KgN1ouuyB8cZB2MAZaucZc19W5
	omKTzDjzH04G5M75v4ly3YAKPwgPwYSP8XjtMelXoVzGGoS1znCjzH8J8QowaAK/UtAfvuM1gAR6d
	xQmWPR8AVP8cYyzgQM5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7M-000000039SK-2FwG;
	Tue, 04 Jun 2024 16:34:36 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7J-000000039Nn-1eTx;
	Tue, 04 Jun 2024 16:34:34 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1f68834bfdfso10539745ad.3;
        Tue, 04 Jun 2024 09:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717518871; x=1718123671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zEkM+k4VgfiBUB1eDmq+e8NhhEFahgsAVBFkVD8WSHM=;
        b=POW0DUAXfddWPND23otlspT61wgaiyX6kuuGaUkT5CpTQqH0U7GASa9pfmotcjP0Go
         m1q0SCvhH3bVRoY6cZ/0yINjB9zyMJ6TLp49vUdd+o5os3ulWKCmxcw0w3FAORTm7CsY
         gCyIB7H6KA4IpYP0x96yFylrlTGFEbLes8xBUQq9/2oOxrTzV1YBmOgbQuLFMrhCuM/K
         eYvnDO+9CDa9A0heA1LrVxL/CLuRntUK3iw3vM9oYWn0WSJNb2+RfA2tmbyHuBXNDz9K
         Nsz+69zMZRlN/rorjbZ4E7yObtoGE7b9vPq4+YYhZbYLgvIjfCJ0HdIrKY2Sd3f1r7Vj
         Dj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717518871; x=1718123671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zEkM+k4VgfiBUB1eDmq+e8NhhEFahgsAVBFkVD8WSHM=;
        b=DOmUKnb/uG/w7+KwrlfKdr6XGzEKa1ySKLSVECCLhs7dG2qfmabiONoIDA/9i/LHs+
         OUKZgYEu+z/A8+mYogJEfTdPWuxgy28PbNsWBHhnUPAyAHGPJc9afjVu8gFf6uuzoSqk
         1AYXVu7EPHbyrRJ56AH4AO2A04xEyUptPFXD+2U5/k+Xm7xk6oG2/CIOtvCr0s90nFdg
         kcLzjqL6MJdVVbbSZQr+Suse+P9JDjM45lKjcTGu0La1Brij50Nve8jBAt/KMoQ5CI1n
         8OJCdAkfKv3RGKms1OV2sbEoYEaiYqHRafNUruyYWxORGLXOQebK7gvJKmmAtTEBOtja
         G3Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXBeG4o/i+UYN9uRruhOaWYWC4p7E+9my/pwXBUvxF13m0IOWT2VUjMqrLZakipatKIyRCTOIV98RXotKc0Gjr6v32e65Dc49EyibIn10lSSWjGhRQ=
X-Gm-Message-State: AOJu0YzeZKaMohJHKMf0NhdG7dvG4zr3QEAhaDuWDjf/BFeY1RTJT6V+
	MYecHc9llLhfIqS2CWjXCWPC4JHzDxfFDE+29/7WCjndUsw7ZKq2Stfy7hr/50M=
X-Google-Smtp-Source: AGHT+IFx+0w4koH+2lh7oQEJiiGnGW3l5n2kEVeCTbZcpsxeFN7yHxa0KGGLds7mR/2miOe42TWtnA==
X-Received: by 2002:a17:902:dc84:b0:1f6:326b:cde0 with SMTP id d9443c01a7336-1f6a5a25c39mr340275ad.31.1717518870722;
        Tue, 04 Jun 2024 09:34:30 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63235561csm85463445ad.70.2024.06.04.09.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 09:34:30 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: media: rockchip-rga: add rockchip,rk3588-rga
Date: Wed,  5 Jun 2024 00:34:06 +0800
Message-Id: <20240604163408.1863080-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
References: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_093433_591101_72340DD6 
X-CRM114-Status: GOOD (  11.10  )
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

Add a new compatible for the rk3588 Rockchip SoC, which also features an
RGA, which is called RGA2 in the TRM Part2. It is the same core as used
on the rk3288 and rk3568, which documents the same RGA2.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index ea234222240..ac17cda6519 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -24,6 +24,7 @@ properties:
           - enum:
               - rockchip,rk3228-rga
               - rockchip,rk3568-rga
+              - rockchip,rk3588-rga
           - const: rockchip,rk3288-rga
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
