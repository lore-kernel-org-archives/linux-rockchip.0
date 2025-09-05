Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A06CA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 16:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uM6nKHs7GUzU+B4TDr+NDKECi6yk25H0MH/HB0V9eE=; b=cq8sVvQJ4wjDR4
	/F8RLoeuLhvcbYgG4izWD0TS03OLqN/638uTfMlUQFv0RfzomUdMSTl3/LDAZhxBAPEYPYp5WepHZ
	xQShazH3Ky2KbmgWOupOPQXizoC0TGycUFEN+Cap2cnOiHTQRhIZBS/TNZjWnOVeQ84J1UtJMC271
	l9nzVaKsXE12cygIyDWOzjT7gUnh0TRK55i+dZxRIYHf8Ye2wbLHrx/4HKWDduDp8BGuULgvZy/qr
	SiiCzi5cGKw76LAg4UJ31ivZ1hrV2q5NsFaVxhBZBQHEGD5Q1W0GzCRasF1IjbqecU3wBe9faOYFv
	5gTjJx7QvZDrrrz5G7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZSm-000000039vq-3S2H;
	Fri, 05 Sep 2025 16:39:00 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuVxn-00000001oQi-2Esa;
	Fri, 05 Sep 2025 12:54:48 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-7741991159bso1328660b3a.0;
        Fri, 05 Sep 2025 05:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757076887; x=1757681687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/QMey6UehR0UdsA0iJYCp1jefDwJWfGBokdamz05jw=;
        b=ExiaCfO+dcQiAZZtsUMg5rRYZNjuFK6E1hihNlsHR6l34TeT9S8tX+0aXaK/bTlu/C
         ML/jVNp3ncsKp3V6RoBg0+j4IQvtU741FMdxks3J+GV2g8BfqwJhimF5SfSymCLf7uOg
         js/bvm+rGdzy+LP+NR+zQjngGLacBZwQAg8aMtzVs5Q5xhUVdgGumWZYeI37MDk1Mh7p
         rV1TQr5LDGHomj0LIYXj/OYIH0TRJi3k9jOtw7mFZ6rEU3/Fq5xUHYGvjIGyyLVhjOBb
         sxP02+YeGMen47blCq2iJ/Kz53FNtdRz2utcL5wIJoGECpPMInzRK2v+FbBvQUnBsDMY
         V/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757076887; x=1757681687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/QMey6UehR0UdsA0iJYCp1jefDwJWfGBokdamz05jw=;
        b=gRvhFbMo7zK+Bk1dhNt09ddrHwuIBLfET1Kt6HUsQEpMNFfuaC5osvXf5TDQlFSxJN
         mqKE7YnMWMeRnqUFrgtLdJNegGVgvHJ+MWwnLz8SIrWtnQtBIOLT2msii0GyS5t3OKvf
         yHS+KDRtwyGLqna8sNMa5AZKIOu0d65YHWo65gkvqr3W6egpKRy/GehCu+EwgUuecsWf
         rsLlY88AWSundeSzby1yaVh2G9M/f9spDfHLzSb1zNDXZi/2PmsGHYknhzZHJaZrYuFT
         3kvcMSO2KMVYs61YBOnd1XQmqlqemPPDUq56gKfG5l+FdmReL4/n02vXGhrLOjIddy2e
         RQeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUX8PisefyxwUllJi+cYZU/rkGaHzzAUsNBwH9bpOdv3RJewXM9EJncO+ECkv/P9zocIf6OVKt4Lsau@lists.infradead.org, AJvYcCVviI9pSUgfa9Mo3LhjfcJhgGAKSwyrsgfU7p5GBPq1QUjsKDHzwJnJsT0xv5GF2LubmRS6KT9sVzTGS+peqM4=@lists.infradead.org, AJvYcCWRnDH2YpbTDKLAT4EcLrpWjVlrudMSNEe+V+qieH6qxAW7TBSwNbmZJ/gGhjRxTBmrHIJoxf7qGFBYHqkjv0xd@lists.infradead.org
X-Gm-Message-State: AOJu0YzOaMSIoE8962iI8IPHbIDhEbZ8OhDF/7ilq+dyRbCcclAv9xCc
	2ARI3LLZgH20Xhrfx9P3tRSukSVpSWHG/2scMEX0myWR0zBZSFuQGaOfbw9zmgSCy0PNp3JK
X-Gm-Gg: ASbGncvwFX0shpJlPTMF/K6k38HYAzkEur1Z5crOI4W/wyrNe8BkkNzA1Lb2OtLwkud
	Bkz4Sm46JE4NYOwh9rIz+cI2ZJLV/YvsX4lJYuzgtCeyohfz4r0VyStChfebrCXEdTnDGADoGAU
	nE1IAkRZEdgIZZm1Gxk/W7EFJhQ/MTBHZaXPeN9HPisttOXC5WQUxLikdo2FKzyT7QidedQDbvV
	j03+MOMeY5yv6hgG6QHIxzclQHJGqaqZw1c6PGIEi8Oy8NDzbyapsFRFJqgK1k/fjQRPpwDwNMP
	h7xUVvXPW0Gcr5NORhenEhpoMCjEP0xV0DvZ+S5tlhMS7Ta1xkJhjgScL8pVYQRhIYDaJpeqEGK
	xMYhBKvD68gE=
X-Google-Smtp-Source: AGHT+IEyf3xM8j5V6mj5GlAu3KmfHhJfQiwX3Z9nZxw7wYc6R6wASu1CLnq/4bkuokC9OssZ5IvsJg==
X-Received: by 2002:a05:6a20:394b:b0:243:c23c:85cb with SMTP id adf61e73a8af0-243d6e00b11mr31309016637.21.1757076886674;
        Fri, 05 Sep 2025 05:54:46 -0700 (PDT)
Received: from localhost.localdomain ([2401:ce20:10::d4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4fb98f9f6asm4992305a12.8.2025.09.05.05.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 05:54:46 -0700 (PDT)
From: WeiHao Li <cn.liweihao@gmail.com>
To: heiko@sntech.de,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	WeiHao Li <cn.liweihao@gmail.com>
Subject: [PATCH v1 3/4] dt-bindings: phy: rockchip,inno-usb2phy: Document rk3368 usb phy
Date: Fri,  5 Sep 2025 20:53:16 +0800
Message-ID: <20250905125318.7956-4-cn.liweihao@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250905125318.7956-1-cn.liweihao@gmail.com>
References: <20250905125318.7956-1-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_055447_572621_206721CE 
X-CRM114-Status: UNSURE (   8.07  )
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

Add compatible for the USB2 phy in the Rockchip RK3368 SoC.

Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
---
 .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 58e735b5dd..6e3197c168 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3308-usb2phy
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
+      - rockchip,rk3368-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3562-usb2phy
       - rockchip,rk3568-usb2phy
@@ -192,6 +193,7 @@ allOf:
               - rockchip,rk3308-usb2phy
               - rockchip,rk3328-usb2phy
               - rockchip,rk3366-usb2phy
+              - rockchip,rk3368-usb2phy
               - rockchip,rk3399-usb2phy
               - rockchip,rk3562-usb2phy
               - rockchip,rk3568-usb2phy
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
