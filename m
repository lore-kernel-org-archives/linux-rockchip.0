Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0355C001E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJeptD79lB2oKVNDOeesetZ7xZOjr1vqoqn8uWODgY8=; b=bvpq4IxI9rxtQ8
	Im+4cbJ0Q5SYL7fgAZ5sJD15lE8lWPq72v2gthAj2BoxjCuBdXqGoY39Egl7YdtJe6DZ++GC+gJPy
	9ubq0rP6CXJhcOA3whAeZUx1uH9IUUc1bY0L3hNi6Qgctr5wiwPWB6aNK4nsEYkgs9QYkSkpOaaDg
	BJgHo+ESeF2Pss1k3oyf6co6B8iF3kzX3D+tvu0hD0k3EjQ4Unq5VCvYAM2j6uspOt7KzCt43kDDZ
	WUYX0l++B5m4M7/lhUVbqZwzzS/5pRRvKhthm7Bg6veDyXlcGhsVt5DALXRoRNEc6KBkkOUliLHW0
	cROOrqrmxdcLM7ULvjiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQG9-00F6xs-0d;
	Mon, 31 Jul 2023 10:36:17 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFv-00F6jD-0C
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:04 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-686daaa5f1fso2932649b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799762; x=1691404562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utxlkfanW7kYrfwCYvBRNcFoo1mhiAs/aD6BqaXTjZU=;
        b=WqkMwMJmsLp7LYdbWrNPUzjLxNAxrdAGxjHOWr4TvynjuySuEuvtStXX0bVt8e1RJq
         6WfKs20SUKgNkZX+dU3Vneyt+iIpn86/biPFwme3stoo1YTdUS0Y6JCFAT6tM6S51iR8
         CO0iopDKdiWxMWefdHfsNCXjaLC9sAo+J33Gs9F4ZbzsRkLnP9eO9WyMN8oSVKoQ9/TJ
         Rsz95mAJ1dCeuo5+BUYPpguzD5ZBkHjKeaopG0710ylLHINaAiIQ16o0nX7/n6YCHsDU
         VuhDVA70rwgj6/kLrT/qAlylIbPccrF1HllSyqG4pSnVYmLzI/Gj3mAjHNI5xZn+0SGy
         sfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799762; x=1691404562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utxlkfanW7kYrfwCYvBRNcFoo1mhiAs/aD6BqaXTjZU=;
        b=Q2EKlxLTlhIwodEUo7yyUzFz/xLg8ygEf5Kq+YL5bUeOCe/7A+eLXG1YwpT3AV8mNL
         fS7BndmFl/XV+DBRVj998NGwQLusjWj6Tf7L4MMImsd3OIZOqNIRktpT0jjkPQF1fe8z
         0KBT0D7opVokt2A5sxhhjFiD8XTXjndRIUqdHM9anhmEIiQ+luQLXK+hvA8pgOnNBAHL
         bWEF7C/Tlrw4COEw/4Iw6kViopHmqneI95L/vvw+UFj8iT9nirqzaSPdmXJmcNZGaCsY
         cxPc5X5qMk5d9+modadlCq+4GU/doAKLwLAOrGKdVoxzx18igzcziZiHjvikARDHOOaM
         dDNQ==
X-Gm-Message-State: ABy/qLZEz97DVUzXFGiSS20mPBMLkMtyBkvEQV0X2j0Sk1cmh3IjQtVu
	lDXBGSiVLV8ronmjI7Li0OYpKw==
X-Google-Smtp-Source: APBJJlEnMlpjzoXVw8bx+Ao7uyDpYsS0oum1LfzVdzWNui/ITpHtpb5INHHdmtbl2ms6zJmXXSwjtg==
X-Received: by 2002:a05:6a00:3916:b0:686:f84d:a4ec with SMTP id fh22-20020a056a00391600b00686f84da4ecmr8883915pfb.27.1690799762566;
        Mon, 31 Jul 2023 03:36:02 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:02 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/13] ARM: dts: rockchip: rv1126: Add pwm11m0 pins
Date: Mon, 31 Jul 2023 16:05:09 +0530
Message-Id: <20230731103518.2906147-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033603_100068_A2916BF4 
X-CRM114-Status: GOOD (  10.83  )
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

Add pwm11m0 pins for Rockchip RV1126 PWM11.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 239a1dd9360f..891e5fb72056 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -77,6 +77,14 @@ pwm2m0_pins: pwm2m0-pins {
 				<0 RK_PC0 3 &pcfg_pull_none>;
 		};
 	};
+	pwm11 {
+		/omit-if-no-ref/
+		pwm11m0_pins: pwm11m0-pins {
+			rockchip,pins =
+				/* pwm11_pin_m0 */
+				<3 RK_PA7 6 &pcfg_pull_none>;
+		};
+	};
 	rgmii {
 		/omit-if-no-ref/
 		rgmiim1_pins: rgmiim1-pins {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
