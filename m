Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD6AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 17:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwO4wauHBaI8yW42fdPPfA80zkShXInEDyPIGaUCXq0=; b=Ouq9jTpKuz9UmV
	CkmrelIN3u77ddlT2ZU3zTF09zJxx1UjZ0q9wai15YDZPi4l+sH4NvARxbJKaOX/PmkHpkowB2EmZ
	NO3jw3T4mG59sk995ZIOFEX5YjVC/TY5aXcRd2vPosZDuuWH9NjjvCNYS7X+UE9ftIHUyOM+iEAL6
	xGfAG62fuesfZDqcmRpXT0vVfb+IL12WQsb2Y0K5OWWunZs0GNs6Bmz085dbpXc2KzLMj+lCGVXro
	farjd1EUhfN3kpfj+PiF8F947OM6GVphQxxEDbOehbiyce4Zebdvead5jA3sQ0mcXKg6dbIyGdndT
	LJ8NlJfw8ZNfYZSnjfBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZFXa-00D3IN-Nd; Tue, 29 Mar 2022 17:21:58 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZFX7-00D35E-9r; Tue, 29 Mar 2022 17:21:31 +0000
Received: by mail-ej1-x632.google.com with SMTP id bi12so36581978ejb.3;
 Tue, 29 Mar 2022 10:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qre6Vt0QXEHJoUrJyLYRkmAZzTcsk9d55fusii4auUE=;
 b=OiVbNmNqgh7FknQiabRAfUo785zvcvAqFpksoKBUdH1qa6PEj/jM5us8RWTGQIfOBb
 AMWInWfn6JF5I9beIXy+2YpY3oFtFix2U5qEqi+sIaSBCyshJOu3mcUoRuQRbvkgfnae
 tLqDxRvgyeGnZSVcGYIMybtV7LEmIqCsE8cQjDDFr8VZzhhH73+wEdJj7OlUUzi3glqc
 HJnHT1XA4lb7+aJlp87C+QaQbF/WYC9/tNluYcXYhe+ueozIPRbX2Py7nUQoQK040YO6
 UvwITM0thybsywWuQA5xNagmCx0mRgdwoQ+QZHZVAm8HGNTdIYhzM6N+VXNCImHsxU+i
 UAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qre6Vt0QXEHJoUrJyLYRkmAZzTcsk9d55fusii4auUE=;
 b=c+nyQQKopELBUq9xzQU5xBG9RCYbQvOYWNWt1a1rCTQpa9OVTl4JpXYy1ickSNATOg
 noL0875zhoK5T8ZuwXREVmSxyeVl/mgprhyY1Ne2KGZ9DVdMLyN9GIW3FF+9IFW2ZvLQ
 OffknjxIkIDZaNqyKGe4qpGZ5M8Y/N/oFzCNwaYs4XJRSSUQ5gWjaFv1QmmHVUwHAvld
 8NfWts9iMgh+cpa7YfFraN4T6MyYwG6CyW13Vi2bVDxlsmSmCgDUWSw9ZYE8AvW4vSZc
 F9IxBMAt4mtJ7OeYAFtP7W91/mRWNp7D9bc1mufIQ1tSTYreLimcWpgCDMf7RR8gLu6F
 wJig==
X-Gm-Message-State: AOAM530q20+oYfl4diVI6KgMw3b4p22gxWUYkfGFIFK5WXt0M8L6AuGj
 ub7F/n7E8GIk+I6WdKVGjMM=
X-Google-Smtp-Source: ABdhPJzy7vYrXGn3YQ6LfVt6hEyN25kBTXuv1sG55bQRrDHJPr3wJKVyg5dJkgiol/OonXj2Sk0b/g==
X-Received: by 2002:a17:907:168a:b0:6da:9177:9fdd with SMTP id
 hc10-20020a170907168a00b006da91779fddmr35634465ejc.757.1648574487675; 
 Tue, 29 Mar 2022 10:21:27 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 d4-20020a056402000400b00412d60fee38sm8707089edu.11.2022.03.29.10.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 10:21:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: rockchip: add clocks property to cru node rk3368
Date: Tue, 29 Mar 2022 19:21:20 +0200
Message-Id: <20220329172120.30328-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329172120.30328-1-jbx6244@gmail.com>
References: <20220329172120.30328-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_102129_363018_0A92A6B6 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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

Add clocks property to rk3368 cru node in case someone wants to
add properties that start with assign-xxx to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index c99da9032..4f0b5feaa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -747,6 +747,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3368-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
