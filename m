Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC535EE0AE4
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iTjzAzwPnhXresG6r/0BKwl1ruQifye+tWLAo+NWfaA=; b=XPnjCpDzB4lGEA
	ClhEa5NWqQwp+s7BUjbhwaWvsB/5YQCctLv344VhYXbruBpLDWR8ZT0j65EfJZMjhxgpq6EMPrZGv
	G/z7/mBa2Xlgoc5WhjizLEJKTDmq0yJKUF/Eum0T09y+bYb33jG7fhSSvF1beFoP6dwL/t92lhGkl
	x5iFB7C6oB1LDNB3WtjCObGoeaLrsEsRqESrMc6pyjvVq/SSvHWX1eiXZkKtIFBR75nIRFX5hoTfz
	O+YDsxS0ZtX/wE8kcoBnXeqVhQ/sk+UuoyS2+JKNymt1nt58IFUsWd1D8W/D897U3DMMzBrm94aqF
	WM1HGN3TjMUeynqz0zsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCW-0000000CT92-2k6T;
	Sat, 07 Feb 2026 13:18:16 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCT-0000000CT5W-2tNL
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:18:15 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-1270ac5d3efso1154639c88.1
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470292; x=1771075092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+9W9/g77jOrUZY4Vom1pwr4e+Jb98dvCscwpobNoHak=;
        b=P+DL4Pde/AYUpL4YqdyMWfJ6EnmDeL/BsUHjYT9jW+SyDpNAQSjgnsfecVuxE99BYI
         vghXtbrRVd/PwmZ9VIl0UUEfKwgNk2iqjsCPWoj/cTGOeK8hFTumkD0yR2YFBdNTNwUU
         0pY77bzbM9hPeVBs0tQTuheIHLyrGboBr82mbdI3PXnuELjCwclUICo3vHzcfOTcFAuB
         MH+BEbwYgl2aYIMZ+16pFExFQQupqhmgq1VfCLChsPy77kdYdr0/hPGfJ/gspuTT1U28
         6ZNXMO4cT1kYjl/OPKYy2qYJgo6mFBwjyV6jTq0KMbSotqwGwS81LvUpwUuFFZT0d7nR
         sfmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470292; x=1771075092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+9W9/g77jOrUZY4Vom1pwr4e+Jb98dvCscwpobNoHak=;
        b=lGlGh0kbOBf8qO9rsITOgmKuLi6/MpVMjSZbtHdEbIal8oKsXy4809db3cL8Wi+hOt
         HNSsqm1UwJXPdHIoFf9GXsbVBmOmc4RGjVup9C595QsBolELm5WHeuHmWJT3FistMufn
         qYEw7PEjMpm+x2JLZbgJtfRprSN93SL54wYfv4+SR8gz0nR1O+TyaH//X1TNMaJlTI3O
         6dpBeU7hI+5PS9CuH/sSsEv1Zz8YITbTfE5oywQfZgqLFKdfU2exagYIy4XtoPuzekZz
         8/f4/UUaKE4lMWCGejmFmLF02x7w6XRb4MvWWOjbXsO7c4r+LEUMuV+zFHwJiCJd66oH
         0Asw==
X-Forwarded-Encrypted: i=1; AJvYcCU1tufcE8KjWyedQHJ5JYY/epQTqQDT+0nFrv8OmXy8V5yZKcX29v9MdLxxb8C618ssbXPPwp50er7Njk1ctA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMLc7aLNmN6yUiv0ZU84grIlYLTSx06rKLkjab11+ldICUKQn5
	A80+mIUYIMjkXtIyP3bCZc7P++atdMjAhFuE7kWZOTd427L0uS7SYJCy
X-Gm-Gg: AZuq6aIdF0hrF3/Zz/Ub92V/XFIH0wwdOmHW2IIvLYoIyxz8H/R3HMgw8lY1QJ1My+3
	U4Gu7LP7oIz9FLx4G++KGVW/NttStDPEoEXutJAlAQcqqG2pQru9ZPOz1PxRlV9clRLsHj9qMyp
	0FMVw/+tdfK7F8IYWHqymjVgIiGDP8o94H9xfxdsmOMpBV7yjVyAN1ZF1GFUgn4nDBCYDY27xG4
	ZoxxNY+vtQrfrrNBwC9vycWrDo8PGDZBjBNqdGAVrdqI67tRfwhLPsQ2J05QpEftkHj2D87F2Rw
	wipDoQWoT7LyHcHgzpdbbY/f9G8cWGH35HjcYXObuYg0dk+1AA3fJBl6DRqBDNFnJwkhDz2sowN
	b6IbQFgdoSR5CVwzDD/E8wpQanU9CZj7hjMfwZGPo5ZhtNE/dQZAlwux/W4JOMlnGtzi+DOYJIL
	WLOqUGZRngBCdAkDlb7OKr2Of6
X-Received: by 2002:a05:7022:f8e:b0:11a:51a8:eca with SMTP id a92af1059eb24-12703f84c42mr3550846c88.18.1770470292497;
        Sat, 07 Feb 2026 05:18:12 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:10 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Sat,  7 Feb 2026 10:18:00 -0300
Message-Id: <20260207131803.2834749-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_051813_753687_15A243B5 
X-CRM114-Status: UNSURE (   7.37  )
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

Add the GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
-  Update to the list of children.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..4fc01a450139 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-grf
 
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
