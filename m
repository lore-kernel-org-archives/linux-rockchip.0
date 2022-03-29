Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28D34C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XejC9E3MbbrX0I9EbJGgRxxbseDKGIWDkLvdtjLB+BY=; b=h7bjbHa9BkoGey
	HQeiZg6nAsPLVchAfarFkAjQwaJV3UvuokNqRL2WCnckUjuPKPvMrltENBPHjmCg4zyxJYLn8sw9m
	cWFZUgAtxxjwhHBD1Vb81vG3Kbrnof9WzT9kcG2CD4ogMKK3VmuWQ9pzoa2hWdHiId6xLoQhIlwyx
	wL2TdertCV6FwhEPE/GvhbT5ar0+4JlHjNjQH3tCQFiO2DZYI/7fpJ2+ShOp0jknyJPaB1Fo+FvkO
	hmlRg6D4USL0YsU00AcP8rBz2u6Rbs4Y4A9vt3ZOFAN0++O0SEKDAnH32LFh+QddPHEjuK8J65cTV
	yFO3Q8PYBSTUkmXRGjoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDTR-00CaeX-Gb; Tue, 29 Mar 2022 15:09:33 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRu-00CZnr-Dx; Tue, 29 Mar 2022 15:08:00 +0000
Received: by mail-ed1-x533.google.com with SMTP id h1so21080775edj.1;
 Tue, 29 Mar 2022 08:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CF0NDgYO3DvdL695eIgW2VcxkY0LtkB+XOQl4F9243I=;
 b=dORRr4G7IfaVjl+p1pp4IwpqhiZjWXRGTSpkFcVbJbbtQosrg633vKlWmWONC0ut5x
 0S1HDLhdh2e8RRu8T1X/QAk+roWpr/x4e8RZM/yt+bndeA6CvVyvNj+F238yQ6PxT2q4
 3khdsUz66QGUxXoQ40rT85fPWXSa5SetiFxCeisaCOKOSU8UTXCvNoDaGsVSF15JUCgH
 szdMgO87BZw/N09L/bpXJAj2fX/2IBjwUSX+QJJEIsF8/b0sy3md92gOOvgdCczYKxgg
 0l8Z8S8ggKsAViPm2BM3ElsoYlLmVOhRZiEwF/monCbL5wey+MukJz66MOn7KP7cua4G
 c9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CF0NDgYO3DvdL695eIgW2VcxkY0LtkB+XOQl4F9243I=;
 b=Pg2a/LiBB3Tje+oGsVu8pf40nP35YBo6sDeSpszin3HEGfQ/GFLiON1Zy4CJJefhzN
 8cpnctkye8Rta9LXjWJH0N86Ita2rkUUKfnmYeHyjK19JD4dT6dSnLR/LjkeLA8n4f80
 Xbx2Ltd08H+75UOV9mUuxO8eawBAQeSRPDcqh9Ug4BI5lM5WlOdTWxJBZwWpZ4ggU/nN
 jiQdLf3dxvx0XQzaUBg6Gt/QtaFpy140sSpob/ZQ2xuusuNKK4zjJ4GgMuV0Rc2Cy4C0
 pRytXA/EXgku4FbQWh9N1HKJqdWLSTKaKziUUYcU1kVn175YZ8zvdVewdYMdD5K5kqIp
 +e1Q==
X-Gm-Message-State: AOAM53204M9IE3rfTAqhxRPG8weY5eByK3ktdlCjUJe9kKGfRGV8YMGA
 lUgMwhxc0WpRU1IYvlgI6dQ=
X-Google-Smtp-Source: ABdhPJxx5yBsg7xs/iYz7SucgyLj3wZ9zkiHLkulas8E2+Vc8i2RUEi84UAQP/INSizSxGMiR5DIUQ==
X-Received: by 2002:a05:6402:3d3:b0:419:4781:aac7 with SMTP id
 t19-20020a05640203d300b004194781aac7mr5130859edw.347.1648566473183; 
 Tue, 29 Mar 2022 08:07:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] dt-bindings: clock: use generic node name for pmucru
 example in rockchip, rk3399-cru.yaml
Date: Tue, 29 Mar 2022 17:07:39 +0200
Message-Id: <20220329150742.22093-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080758_528121_748EE3EE 
X-CRM114-Status: GOOD (  12.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The node names should be generic, so fix this for the pmucru node example
in the rockchip,rk3399-cru.yaml file and rename it to "clock-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 3cc8398fd..18a009311 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -77,7 +77,7 @@ additionalProperties: false
 
 examples:
   - |
-    pmucru: pmu-clock-controller@ff750000 {
+    pmucru: clock-controller@ff750000 {
       compatible = "rockchip,rk3399-pmucru";
       reg = <0xff750000 0x1000>;
       #clock-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
