Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0356105F7A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 13:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0wc5UNQOr5+1qWCVnHNSNyrfLqbY/GMOBxumhfbGQ04=; b=OQfpPJh+9tja0f
	DEHC+jcEHdLz9tJ1YYC2Bg06vTLnpYLgWLnpxM2+NKYDyJglZOBIDZXRmHonIRbwa9g8+gVUcp8rd
	Dm1CPACOYKJCtaOWEyVJhkxxF6nTe4Kh0Go/ppM1q7EII2LzvPcl/665/7JaWG8F0iJc/QrD5ENTW
	hmj1RERvM6DxkwBB1BYFWwIUziQ1Oq5SPF+CMiFWRa+gas16A72GyBMvfZZPrV6uL85mPJ/uPh7T9
	oPbSuw2cO5Pwz/HaCorvV2H1M/+4B8loIVIqKMDmiXCZsK1ktyE8eYJaUr4UPo5wp71HJFsBrRU/3
	02XAczA/J1fanuTFK6sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12G3-00000000B4J-3yzN;
	Fri, 13 Mar 2026 13:08:51 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12G1-00000000B3S-0LDJ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 13:08:50 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-2b4520f6b32so3269696eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 06:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407328; x=1774012128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qsmU3+KHC+79pXEFoWAli1oSj80e3a/HpsprpoFgQoM=;
        b=mL90c/iriT5Pbspmcs9lAT9wFV/B5yDzGuH+JI0Vz322fvdpcHOQKhOXe/rK9lge6l
         M4VxmpnofOmY23t3alYTznH+o3UHKdSPkRL2F1FqCO5jgCMd4WgM0GsoTBXy0Rr8jm7/
         pE2+gjdoWWp5JmktLCrnBZA5Vr+SlmTdqXDXbwt3C/Xh7OIYvJujwY5hBXet7fE37ksr
         sbQvDgnkFVqlZmrDpRYoLSVerrdVrcj/MpdPUyLZyaxoq1q2PDaPMRXUAVcB8W0hpVWe
         ygaJElS1p7fEOU/fSSvPBMoYdicJBCzcLh6CXyx8lvgl0JnqhAQi/MEeAbu0/oH9pl7R
         UcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407328; x=1774012128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qsmU3+KHC+79pXEFoWAli1oSj80e3a/HpsprpoFgQoM=;
        b=WTshsdSzPuexZhGfPDcpHZ8sKeYJDZ4d5LyaXRjkLOqzSMwRVPSE2uJPacZhdzIcGD
         fPXnF9mSM/HPiyBiGhNaWPh0SvYvO7hOEfuPwrV9ork9NoogzH3lhpFlBa4ATFbHr19z
         T57/9YJJC2EdaylBmRF75SJ05Ky52+rUenRrqam42H83WTBi74SIJa+pdLxWs0P4Opkl
         0lvl1EDzDXm1hogP8hyBfxGIKYid88+yhM1qC9CB1XPKeQWiU51DRb1FalTpTl2oPedZ
         0NhkqBsJq73yDuw4kC1XRPyT/x2apqh0f/HkR9drV3ySLwG89tJerczNDo9K5OfSNnh5
         8elg==
X-Forwarded-Encrypted: i=1; AJvYcCU+HhyvYutbeB4c7Iq/EKWviVxWLn8nSkRdVkL7kF5ZvTC6ZWUk5v4AlDBVCJ9UR+oID/fh9ju0A/jagN6Cpw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVdUg0kYG2IO053nw1swJiJQXBn1IQPBXI6IksGrq1lHHOSu46
	JIqNlsXID3rUeV0pYp+jkxe6zaI80nmDyI/9RkjDuesCUwyspESUwnJv
X-Gm-Gg: ATEYQzxiVStU12jxeEjejjbg3qdyPPmtFmt8R5xiAk+mBK1C9TdSuNWROLM/kzBC8nw
	x1T7DjhSlpXldC4lvp6GjDiOSCa12903dSSESV8mmbXNGXMREjlQhAZlDpIcyOJdnnaYSb6B7u5
	gS0qpNiEpK3cn98LzhaOBSbhexB9Hc8bxeaGwSuYqAABOVkjDhnJpmusJ/w+47xrXlIayBsv2Pe
	DtY8NNE4cCIl5ffsuDUsYog13jpFF29bXt1IFtjo6V4Gne4Jwbn5mDEmZy4QGildAw50252eda3
	VVguQUJobc0DTXRbxwvME9U6sSPv4h/PP9f5Gohp5lD1/DTw4/6kGfJP7uKJTx9WcPqWqFpIjim
	9P7+jMsfYUJDF/ZdE9UQySCiRa/hAnzRKuxOpZJsZEyL9quMgC/GC3qPrzN860QKrP3Db0/WEAv
	YUxUjVGfDICvlhqrvy06bemeN0vG/yH/7DYCyongr5JFmLQYgbzJICZc7QqBxOzoi8Xw==
X-Received: by 2002:a05:7300:6d23:b0:2be:19e:3064 with SMTP id 5a478bee46e88-2bea547d159mr1501145eec.11.1773407327739;
        Fri, 13 Mar 2026 06:08:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5706bdsm2831454eec.28.2026.03.13.06.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:08:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	shawn.lin@rock-chips.com,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Fix the RV1103B compatible
Date: Fri, 13 Mar 2026 10:08:35 -0300
Message-ID: <20260313130835.708066-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_060849_122719_07B3F4FA 
X-CRM114-Status: UNSURE (   9.34  )
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

From: Fabio Estevam <festevam@nabladev.com>

RV1103B uses the same DesignWare MSHC controller IP version as RK3576.

They have no "ciu-drive" nor "ciu-sample" clocks and use the phase
tuning inside the controller.

Fix it accordingly.

Fixes: 517b1e3c9455 ("dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible")
Suggested-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index a75209bd2710..4965bb518c54 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,11 +43,14 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
-              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
       # for Rockchip RK3576 with phase tuning inside the controller
+      - items:
+          - enum:
+              - rockchip,rv1103b-dw-mshc
+          - const: rockchip,rk3576-dw-mshc
       - const: rockchip,rk3576-dw-mshc
 
   reg:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
