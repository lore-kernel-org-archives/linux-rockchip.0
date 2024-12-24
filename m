Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DAC1E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 14:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TytT127/F+b5KySkC/xby1RyFgeYqg3kkkGU29f+xY=; b=GM2OawxvzleP2+
	jgGHNvULR8/U3sYN2LUPbYW8Wn2/lZtW3DvuikPd0/accWXeYYuCKKJ+G0QfuldvhmmcnTRSwT21F
	XwI+izNROBzl2xZLnQ/3S7VBHu3AmkSQlFZIWgP6DGOyfF9S+DuVwvFSf8okmPMp9lHZjG3dv5XTN
	eTJsZyLTQBnwm350PVUW5f8DLjFaVzCIDLjeqkyrNhdH7JUnzGnf88xfoK8eeoCafE1H0iJwKcdad
	Zb4a3mqSIjT1Hpx4FzCYOaScC3cKdHwkkVmEPdrOpmo89pBlFqeJg68b+4dmKze5A2mogV7AGeHkG
	s4TeSnq5VLIZzP1Ms+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5Sy-0000000C5vL-38i2;
	Tue, 24 Dec 2024 14:00:56 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5Sw-0000000C5uv-0pUm
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 14:00:55 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-300392cc4caso57483791fa.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Dec 2024 06:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735048851; x=1735653651; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z48y+9p27GxaZROme5hpRAmPJcCzvLyoJBU9Zq6fNUo=;
        b=aPfFbdnNQLUETzCM1/jYS8CBksli/zsKxXZl974rlpcFSVY26uvcCFyNlr9eQ7AfAj
         Pn8OzmJ7jDEBmPBP+joHjNR8bj5OybjZNHYPY0K9znRcMq5PzEdS5wnKUjN9mAYLpJjB
         x6Fyws0KX+ZXFINK/Z8xc8HTGmgvPXUXx5vDy9y9JI8wj5ppwrelqS3kzHIVioteUtlN
         2PtGdo7+fMfrgbfO+lpeU9NDTRHoHI9hp076ekgh3qNSi9u8fTkY/kCq6kN+/6vAbhvC
         +MuPimBXRngrISPLhokK2dC2zDhZMfYdKybn9Bl0QBqtiQ2hPtNjP93Jhqh1sC9hvQSA
         PEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735048851; x=1735653651;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z48y+9p27GxaZROme5hpRAmPJcCzvLyoJBU9Zq6fNUo=;
        b=Zvg3D5D5OxiJOCqJdEjD6XkVFnn6s+zsku3S3oBxHYp1wNVlC6PyT8auEXFK4aBNje
         DFKu2OxdzlsOvxck4DJRSHzMNuXycjVnNgQoGvJ3dkuYDSx8dUqaXnXZ2gRIsp2L55gM
         02TQnEjsh703tzhrmclI+7C64ZcFqIbS7Qw4ytq5tcfnyTy/rEV2hTu6JOwgEFWlzUT+
         sPSmR6zeOyHEE647YBhOw9GyYrV3//9jDK/qoK8/AcT/TMbbt/hrPqHRJH4muEXlKw+G
         tSUYruW7JOKYRD66E1e88LfqE751vsea+dqUGNr7EbhASsNijW1VEyxob6IkqJXpfrH+
         zRZg==
X-Gm-Message-State: AOJu0Yw7wMkAZ5Mh6Phtpe71O9c9RneQd3jT0g/DgrdA5hBoQXiWSWu8
	hUH+ei3YTlxzrzW841R1CXRPYgLIfhLxpo4QgMbOSzXxVM3kgLz6eiV0
X-Gm-Gg: ASbGncsBcy33PXww3j20Aju0xwRc1ceI6rUACKetdN/RFcPS8RaBSs+XPVlKompx24e
	/QMKhftJsym8/t2I2JRQZCCsNWQRSE78sjrRgbOiPmMgmJTIU1ZC/tfTeUDROESiGWZPpHlKJ0i
	xO/E5quSgjzZ+dKhhLBjMxM/DnWTkxxNzvi548AZgLcoZIrNNe236/dGBzIPMTlRj/73B/Atc73
	kVNhgHCfVqNwSrYT6N1wH3amD0vTXlWgYZ7KFS3j4f6eA==
X-Google-Smtp-Source: AGHT+IFhr73GqOUYmUQ9dLIRhEwSg/jvBHXGmnVj2o9nLTQe3JQ6HGx5YWx1Kn1Mf8Xe6k5MHkHyWg==
X-Received: by 2002:a05:6512:334d:b0:542:2999:2e54 with SMTP id 2adb3069b0e04-54229992e56mr3812789e87.12.1735048850909;
        Tue, 24 Dec 2024 06:00:50 -0800 (PST)
Received: from JetTurbine.. ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f63a3sm1599629e87.6.2024.12.24.06.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 06:00:50 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm:rockchip: Add BigTreeTech CB2 and Pi2
Date: Tue, 24 Dec 2024 16:57:52 +0300
Message-ID: <20241224135751.350379-2-ivan8215145640@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_060054_245445_78ABB956 
X-CRM114-Status: UNSURE (   7.27  )
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

BigTreeTech CB2 is a SoM intended for use with BigTreeTech Manta
mainboards for 3d printers. BigTreeTech Pi2 is the same hardware in the
form of a SBC. They use Rockchip RK3566 SoC.

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>

---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..349453b1676b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
