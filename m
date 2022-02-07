Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 700EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Feb 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dp3wOqEnvVgucxFB7ELZHuwpcVrPq4aMy/eTmB149As=; b=OWieEQUk4sKxwK
	q/lHUyk/u7ncaQiLFpKPlGfrPQrtJRsKLJK7CeHxulJPsXrS0AfO7OFkJv5f6qQU552ePiXJ2P1g8
	FL4p7Rxrv8g6wOw5C/ECUuJubL2cXs6aP8MSiClQMHGQYld8rufibJn1HfJoQ8W7rY5/FWSvs1EN6
	eD94OqgilVlupqRliy/rQM2/JqmI14uB7ZhCPZ3cazv1xWqTYkj6qR0eU/DKytARi484mTpvwIKRX
	yW4AqGHd1aoPPuWMZdDGBo5H3IsiILGffSebI3qyv7jhD/09lc023OrXJVMFK3n0Rg1ZQ677AgEWg
	prcvLHXxcmwPDpDG/AfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGydj-009F9y-JA; Mon, 07 Feb 2022 07:40:47 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGydY-009F9Q-Dz; Mon, 07 Feb 2022 07:40:37 +0000
Received: by mail-pf1-x42b.google.com with SMTP id e28so11557596pfj.5;
 Sun, 06 Feb 2022 23:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HxFVQJ55pxSJjbIbJNlsrh/PS3oUIh6g/FSSx3H6pL8=;
 b=Zlx4SHDCZWy6CQneSiMCvkD17ruEyL8150KL9uZJL3Tgdi44P9ibR98eOIOR66r5Ov
 3skOSu3jzcrd72OulZcYabiCLme7WpTm4M7dBknlMUx0hPpxm9PJu2GXwB3zxb9Oqire
 vzCJ4+Qx6tpVFPM6tU3ZiVcAcs5kKYSVCKbuEuZuIPwdcitohvedcMg56qkA7KTtUt7W
 cTooAb4+l7Hq6cgXovuauyVwiZIEoLiMn9BbuTKLTpyj6nRM393RaMOfdyMSANv1T9od
 JmdCaUMWabPIyQ9/8Py1p/2kG2Mmmo7JxnwopTMbtXGu8Q5cwiVXlzYI95esbMw+vK3Z
 3Sjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HxFVQJ55pxSJjbIbJNlsrh/PS3oUIh6g/FSSx3H6pL8=;
 b=4LdIAhV29Vfc0Im25xsBm1ZjdWHagDtfEgtfdHX/YQdtKvPs8Q3LtsIjQwPiNiyp8r
 4suKi4SojUhb13JSrza65DN5JDX1PSmKVrKMeXSJA6B/XiJxAk5a3/jdtnGFZ6mF4vLv
 XQSUkZEtAyfDmXg660iTS3wdxkH0sS87rOMPED1kX8m0ZAsvQlaum3ImtqIt6BlcEhQs
 6mqHcbl5p513xEdwtdbmxQvzem0jI7SiWwZEpFwLiRy91dhgNSYP3djw9sdx/jVHMjyR
 aSlsEpbbDriQP+4k//WJ6NaqVGerOXDzCdMhVkjr7aOwNyuGyWv8zyNJEUmvV+N4rQ6e
 9BbA==
X-Gm-Message-State: AOAM532CC2Hz3LtaD0hAksKi4/KP+XWZ3WeWltthvuYR+OekoD5fex0S
 O3whXOEA/8tV1mcAYP8jlMw=
X-Google-Smtp-Source: ABdhPJwKqGIJJey9Pgmc5aGqm9jPg2GDHM6NsebNS9fnzR/ZJUnM3yKNYSQykCsMMmrJfp+vslSc/g==
X-Received: by 2002:aa7:9838:: with SMTP id q24mr14675687pfl.76.1644219634855; 
 Sun, 06 Feb 2022 23:40:34 -0800 (PST)
Received: from geminid.DooM ([118.211.233.122])
 by smtp.gmail.com with ESMTPSA id p11sm3757621pff.45.2022.02.06.23.40.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Feb 2022 23:40:34 -0800 (PST)
From: Michael Saunders <mick.saunders@gmail.com>
To: devicetree@vger.kernel.org
Cc: robh+dt@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Saunders <mick.saunders@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: rk3399-firefly: enable the mali GPU
Date: Mon,  7 Feb 2022 17:06:19 +0930
Message-Id: <20220207073617.7386-1-mick.saunders@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_234036_521574_3AF3C28C 
X-CRM114-Status: GOOD (  10.45  )
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

The Firefly RK3399 device tree had the GPU status set to disabled as per
the default from the rk3399.dtsi. This patch sets the status in the
firefly dts to enable it for use. Tested successfully on a 2GB Firefly
RK3399 board.

Signed-off-by: Michael Saunders <mick.saunders@gmail.com>
---
This should correct the issues raised in the first patch. Thanks Krzysztof for your feedback and patience.

 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c4dd2a6b4836..65d659d56041 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -298,6 +298,11 @@ &gmac {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
