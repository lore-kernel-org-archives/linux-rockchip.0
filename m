Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B6CC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7KfM9tkloN548JJ+MOPCAWfO3DH3+qF6rzaxzlquxw=; b=VP+Alkbk3iLF/y
	e9y+YegprOnYFUboAFT2seDmQJSK9inwC9zKABu5UvX2I9m7X9UCov8MM0475/yT2rmMrFrb4nyq3
	Hue5yuir1O8sscDvwU+2v45PZHGua/dtgN57paZOFdejRPu6rC5LVB8W3519maJGPDubpuu8WFSAK
	hiurTJbCvYcOk0HGAHFZ54jidvEe4QieSxyp7MXZ7ep7hvh6WfXqqNAnXwnRmPAaKiEwU8eIkZS3K
	ewPCJxkZCyKLssz9xhdsQWZWq3hzfpvm/nHNMxUyAsRHOVjPZL3q25WN5mIRnB92JSddq7lzqBOhD
	YXu66jtQw9r60HCEZLDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqczJ-00Atj9-MZ; Fri, 26 Nov 2021 15:18:09 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcys-00AtZM-SQ; Fri, 26 Nov 2021 15:17:44 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 137so8438317wma.1;
 Fri, 26 Nov 2021 07:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ro5SqmCGondsXlAprqzMwpniqGQJH9OZ58tKVX0KLtE=;
 b=phTINQX2amsyXW3CSkOyU0ikEKZ1p+s37IA3fythVMHfQIvFhW4vW3he6e9xInurOM
 6aRO8GJ2ZIFVZam7U8SoYhDpQAboFoZo14KjkTmB7SOT4VlXJAkYMX6YhjSp1ssg5st5
 bQO7i0JHnLFQRGfZoxFaAGWBwf4FDAmZ0fDWOrhEWMddP46l5Ld15yRkQ7pWdHWzwLrR
 EjKmWvO0/r9AWyU2+o20qZXOIDByWQepheEReIfQQv1Si4kb7h/WKtmMsoaBNaf+ni5p
 gLpvAwRjMf2yukOs5aP42UkRd5CTgEPBP8htzG2yfv6KtET5bGdlVSswLJYLpz8VtAWm
 vPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ro5SqmCGondsXlAprqzMwpniqGQJH9OZ58tKVX0KLtE=;
 b=R7qu4/lBIUPl+fQUZx3agRsj6dLswDcHTLX1ISbAknp3yMzgZkliaQS3+xwg4MI065
 3CDiTd0g2s9us071j2WQOx8vNbsNzqVF2SZHfkWNSFitihPfuLO+3gnq4Dj0sE9FWMru
 eMbkoFmoZDXYOReZDs3yG6Oh/+VvjStYxTdieRJvMLzlD1ihb0jYyaQEGPRSeeWhOAV9
 DM+Ou2yBTZtMTkcwA8o2WnmGqDxYCitdWCNqHSEi0w9We8L709X2lzmefspOU3M/4gSh
 d2Idz6XS/QCEff42wW87E7Cq/jFCEV+sSCFhPJe/I3l1hXqfmJsmgxTeZAwwDiJts0hX
 itsQ==
X-Gm-Message-State: AOAM533q62HaiAa45R9icPf9PFjefbwZayd3tSTdWkieZ3qv6+4bBFEX
 LupgInDEAhn8Fjgh1NGwlQ==
X-Google-Smtp-Source: ABdhPJyLUFmAZh7GZuQQShSOigym12Jf1vfsK/sn4ByDN84S+7wHs3MocHGrnG4VPil7PieiRBiDig==
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr15928669wmk.172.1637939861058; 
 Fri, 26 Nov 2021 07:17:41 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id k187sm12323496wme.0.2021.11.26.07.17.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:17:40 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add cooling map / trip points for
 RK356x' GPU
Date: Fri, 26 Nov 2021 16:17:28 +0100
Message-Id: <20211126151729.1026566-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071742_938382_5CB562D6 
X-CRM114-Status: GOOD (  12.49  )
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

RK356x SoCs have a second thermal sensor for the GPU:
This adds the cooling map / trip points for it to make use of it's
contribution as a cooling device.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 3b314ccd6c94..a67c279c164d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -960,6 +960,33 @@ gpu_thermal: gpu-thermal {
 			polling-delay = <1000>; /* milliseconds */
 
 			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				gpu_threshold: gpu-threshold {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				gpu_target: gpu-target {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				gpu_crit: gpu-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_target>;
+					cooling-device =
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 		};
 	};
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
