Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC7E4C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rtQ44KFMqaXdIDYjZ2v0rnCqWsnph/PrLYtxxXceqI=; b=OTK6vSHchzcMqQ
	ZxJwurV+qcgRtdFH3dUG+XA+ni6CvZbeOImPi4KzWoN341YhWsLC+YsZuJEE95gOZ2jmVCyFFahYN
	JvO8zyp1dcJuSDqb9Ud5ryo8eMCCTaPSbUoTaoldRGBVBa567MUgKCJWrc1t8e/Gt7UGQOYn7Cy6+
	/AetOftGWGef9rsKYdcgsHB0O4CVPJkQ5C1FcDl1VY8nTpqz36T/P//sIfExGrSmTe72uI8KY3OW1
	DUlSnSHkwqNJBLHOBAdMVRStz0egfUv+ecmRPDvFDwHrmafDZo0LYopY+OaSeWAk2oJE8dv3iNUce
	j9/6M4GvaER8FcsKOVEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGf-00F7SU-25;
	Mon, 31 Jul 2023 10:36:49 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQG5-00F6tC-0q
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:14 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-68706b39c4cso2272834b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799772; x=1691404572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tz+NIHRi+Z0NVdKWkPuFdey0+2xQaYMkUfyJvUE2WBA=;
        b=qH30M7b2jCWrJjCuCE9F00sg85kY2uJ4b5H5+HKqr2nJfj6zm5fg3D24YKKug0z4qn
         CfWAdXkpX9oTXMLCZ9vFohEp4/9M5H7KypEOK32z6XWlGnilFeRAOmEb9jRDjfVR6PdG
         D8ku0STw0VFBgmv6ZJr33+zmaQ9BtZxV4L+5cvxgJgYRIlNlY7ykw57HwT0Cyy/zESUC
         IwKsuDrGiAQrlw1aw1pE5jd1M4tfx7TxtnUX2Hts+87J2s9sBRa36ex+Diw7PNBwUmp9
         /QoJ/lCxGwXdvFRIIx/i8GqjWbaE0rjJ9q3Q0KVcWukfPAXVDFl+tVDZwaCwQN1WUebN
         SOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799772; x=1691404572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tz+NIHRi+Z0NVdKWkPuFdey0+2xQaYMkUfyJvUE2WBA=;
        b=KBNbBQz2INpkGhSNnkKATyo9cBYcG4qhlIpIVLvH9Nv7hW5z4C7UpNiteqEirz6gBk
         XBwnByiPqtpTMJiDmQDAiaj9cAokr+xzba2QuiY4AilUHA7b0QFfmcLCaFxFEr8/hQ+O
         fLjutOLdEABHOkqYGBhN1u7EL3r278WCMQywFvE3g532P1UMlxRHJcbwxKaymo4q0Pl8
         96j3wjPkCfgNvGzjwqEC3jdLqorPRa+xRafNYwR1RHItR5Zn9t2w+6Ea3iPx/lo/mtwy
         4qkwlHWL8EgYYnFwiG7zHIttyIy+PMZ8H5Om17MysPp6R7NTBBzIZEwFe+BvjIhg1CPA
         76QQ==
X-Gm-Message-State: ABy/qLaheKejtV77X8D81Rin7E7oDy1e5PObLrvq9TWkmWGIHtlD5YGL
	TAvtWSs29RHT22lyBI02oSHlwA==
X-Google-Smtp-Source: APBJJlG3FKSrLCChJUZ0tZFNWgINIabmfbrCJRew9yYdp9Gn++hEWTxc0nvlu31QTWNzH3jJC0We5A==
X-Received: by 2002:a05:6a00:1795:b0:668:753a:b150 with SMTP id s21-20020a056a00179500b00668753ab150mr10973842pfg.21.1690799772150;
        Mon, 31 Jul 2023 03:36:12 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:11 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 07/13] ARM: dts: rockchip: rv1126: Add FSPI pins
Date: Mon, 31 Jul 2023 16:05:12 +0530
Message-Id: <20230731103518.2906147-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033613_337217_0E2C99F8 
X-CRM114-Status: GOOD (  10.81  )
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

Add fspi pins for rv1126 sfc controller.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 891e5fb72056..cb31e6bebcec 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -59,6 +59,24 @@ emmc_cmd: emmc-cmd {
 				<0 RK_PD5 2 &pcfg_pull_up_drv_level_2>;
 		};
 	};
+	fspi {
+		/omit-if-no-ref/
+		fspi_pins: fspi-pins {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PA3 3 &pcfg_pull_down>,
+				/* fspi_cs0n */
+				<0 RK_PD4 3 &pcfg_pull_up>,
+				/* fspi_d0 */
+				<1 RK_PA0 3 &pcfg_pull_up>,
+				/* fspi_d1 */
+				<1 RK_PA1 3 &pcfg_pull_up>,
+				/* fspi_d2 */
+				<0 RK_PD6 3 &pcfg_pull_up>,
+				/* fspi_d3 */
+				<1 RK_PA2 3 &pcfg_pull_up>;
+		};
+	};
 	i2c0 {
 		/omit-if-no-ref/
 		i2c0_xfer: i2c0-xfer {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
