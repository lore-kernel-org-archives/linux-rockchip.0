Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92687C8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 19:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=33bN6erxXiahCDKFltIUXwoypMCxM0ihEJAvXbWXEV8=; b=N/b3z4LPo2YSKC
	3YrIgkp/tSiuzqrECcpvzs98nWq1NxNywJao9jwjtRu+3Sslh+cypNRldECdZ5gYyzyFCW64LRD+e
	J5W+xp7qq9qxjC2Az4fsDvEd0whVVSzXlYv1wHamxOiQoefKAynK0mlcCHLtSl9O/1k5iyjYKkKxu
	HCLBf2z6CdtiR37AYcW0jDlYKx1pbeD7tNeSRX25XeuralpujhS8tcA+qQolTf1zoso0gYL6I+r0C
	0r5v/fwmvNtfctOETCgOFuszYu+2/ph25fu2uphPmvbtqMeHt9gmX4/FaCD6a65sA0+G+WHhJxEpG
	K16+kT27IxL3uVpVNY1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uri9A-00000002xjY-2MEe;
	Thu, 28 Aug 2025 19:18:56 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urftK-00000002K96-3vSW;
	Thu, 28 Aug 2025 16:54:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45b629c8035so7514905e9.3;
        Thu, 28 Aug 2025 09:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756400065; x=1757004865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o/S9spYbGe0FPlB/C0yhWG1tadTkgGdkbhIgR1f5N4Q=;
        b=mo+T02zZFlCu21SAfmpki/BGXtdihzy6R7Bz06zyvKW1OaPM0vvaQni1hwHu2NwCqv
         T1L6peGt70IWO0/H8RUCCQGJOC6KmC134mUa+7y00q/dIMDfA6AI3gkgkOPXpeFx0O+Q
         prLM+IbECxCPjCzRdEHoe2QDywqK8GHdee8vkowTWwakVYdfcl6oSf1eVZUXOL7oevEm
         x1YLF9W8x6FFUpV1TZXgT8aY+CBBXiUA+aO+L9EqtIRw75KmfCGA27mkqCbAOOlLutGw
         Crv/GN8V5BNHFfMN4Eb5gKN85iroNzh0809mCqQc/5PTUNS1kG0l94lWAMnOYpkNhPia
         wcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756400065; x=1757004865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/S9spYbGe0FPlB/C0yhWG1tadTkgGdkbhIgR1f5N4Q=;
        b=b0BxmQtxoaFD+yNLYeyFp3bAUyneVKcDL3iB12mRwAkdvmc79VMUfqVZrDueLWL/a7
         wFz72eWNXGUxbjySzWQjqE/5zN8lBiknjSsdfHBeGlH16BMEPmP4FUHdupsNfWj8dZeA
         sOwsJm/ae6jpOZ+hzIuch8uux9MUGwN0qm2jp0+oGEIP4pria+4ZIR+prz3rMyboCC5q
         4o6CY8JlXTrl8AdRLBHvV0O72wY6DEcijVdRfFmZ8hWodNFyc0P57O8YVv9XxWOF7kjw
         Sg25zexmpJZEW4Ykm0q6yKMYeln2vgGHG95UMzToeab90Yp/XBU4IMmo0z4se5TsSRqU
         CssA==
X-Forwarded-Encrypted: i=1; AJvYcCVCRi4QhVQCGZXSIQQcH18WyzeHqd+tcqafviE+83hw4SbJdogyFnV/yNAh/nSsrJP8Ae+UwxP8bqMNeONVzEKQ@lists.infradead.org, AJvYcCXuhuMJwLuVk8NsDmvf5mcPbsVmF46Mlu3bRiJjo9EmSILOSRCw6sYsW+AUjEoEjkMutNmtnQIS3OgQtuHOGbg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7/T8YhNJ0HPTXRcCSynb5wpTY1Dpz3oJq2LsIFaoijk+1RojH
	DXBsYIRGm3og6xbHX7R0xS87JH1Ut29sHcacESzoYw2aJaLQRGO20C2/
X-Gm-Gg: ASbGncvm2oDHttJl5eL9wY+MHosnvW4wCBy3iUry8ZprLLnCjVfFnaphF9gzqjr5gY/
	9Lq4LXcBexTy0p5TE58QMd5rTFSMN9JJa/gRch3fqt6WsqH/PF2Q9/FmRjkrhum13EOyMociOlM
	pFaUHGeJod1PFZQSszX7veccFfeHKkZk0glVfjJoAgCflsnaXJ82aeb+agNhS6iZLsNkyPbWVXG
	qr1fn4IHExbgPsCgvEDwCGKdlmAb/5cjuFmeUZ+SgC0xqOOwnWNKBxzANWFAJkHPoM8mRf8zQoT
	+xICFVwHeEJUuOB15Je0m7MT6jCUGLQO4mTaDcOCUbEA0SDdfECiEAqh8J5ktiD/Xekh3b1gCAp
	yOURVpEtFXJ0HZaTUAe/NzrLYrCU=
X-Google-Smtp-Source: AGHT+IFM9OS5cZ7H0ceO2f7sAP8sszHuEF9xmtBJC46ZU809/y4cnHB22I6xxBweh71b6M2mv9XnsA==
X-Received: by 2002:a05:600c:a46:b0:456:19be:5e8 with SMTP id 5b1f17b1804b1-45b517d459dmr207436525e9.20.1756400065247;
        Thu, 28 Aug 2025 09:54:25 -0700 (PDT)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34491a7fsm11393f8f.57.2025.08.28.09.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 09:54:24 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: add CEC pinctrl to rk3288-miqi
Date: Thu, 28 Aug 2025 16:54:21 +0000
Message-Id: <20250828165421.3829740-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_095426_977217_C6E7C91B 
X-CRM114-Status: GOOD (  11.11  )
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

From: Alex Bee <knaerzche@gmail.com>

Enable CEC control on the HDMI port for MiQi.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-miqi.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-miqi.dts b/arch/arm/boot/dts/rockchip/rk3288-miqi.dts
index 20df626547bd..a5f5c6d38f80 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-miqi.dts
@@ -145,6 +145,8 @@ &gpu {
 
 &hdmi {
 	ddc-i2c-bus = <&i2c5>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec_c0>;
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
