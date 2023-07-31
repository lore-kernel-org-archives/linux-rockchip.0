Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F043CC001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eR5lORJv4BiT6JsbSqQndISjy1hrpYJs0uzTVaC/8wI=; b=dLPVTDiIAw2m6z
	iN5Uih7+VQmNcQ2rC3CFUJlZBp53MG8fgZvkuoVVcw64DyJHCZ0uHfnvd3xwVBhHuc7QtWopG11xP
	mxl7bHkXzDGRZ4rm6TZTBlYIrQi8/R9Hsqmx6qA7F+6DXr60jp3M4n3ICp8US7zJG9PC4yN+dYWik
	xSWQ+k9UXotiRl/0pwzvkn/+zdGowiNhyfkksnWViqhBQSVWAKfMO1fIHo314pdysWkx0zdmy21on
	xyW2AjThpazRY0UEBbfClrI4z4FGbz0wvif735muVGyaEsmKYOnBVPiRtv3XPtu0OSPDhz0t6NGGC
	aKCCsmcMXLYKhHO8UlGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFr-00F6fs-1P;
	Mon, 31 Jul 2023 10:35:59 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFo-00F6cn-2p
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:35:58 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-76af2cb7404so301061985a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799755; x=1691404555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kzjqWoq9A6qFKTJ1GXcqTxSYUR9XYkOkWwlDCLQJeeg=;
        b=TE5pDLRXqAXrd8gxwu1wnMyzim+BqTAnGzL5c981RZ/GR5OzgY1N/YRaekNn1tkWhd
         EdWhE54ucrRUcX7KhRwVdJH5K8snGlMbVewQ51AItXWfVmN9TX4+PoJ2NJRJI2tGOCSO
         iN6PAGTAtCizHzQiOXPeAt6mwJMRR0Uv0o+s26BojBL2XJGIfyQTXWTNsz31R238fnZJ
         bb7IsP1nFF43Sor9B6ELrtF01UA9FiqOBaIc1o8yWDyTKUpOFljOLGkxfUzXkRLgdCo6
         ND5mOgY/7X7qwoPAMuvIl8xG0y7DVA9NoKgUacKKUq6aoGWhKtjuKz4aYUWqm78W2iEf
         aRHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799755; x=1691404555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kzjqWoq9A6qFKTJ1GXcqTxSYUR9XYkOkWwlDCLQJeeg=;
        b=QNAc3JWSrILKC04szSlE5eUTM7Q0p8iF7fBsIb2PAch+1Sbwu+9BHsD9HHdqsXVpDr
         RkJFp7He++K+nDTpAPz1rYxlp8qnUR8D0ayQ+swvXe+k7x83efBPZ3wtyS8whomXbOQi
         kawNBXvR3sGUrg8P+MZtmw7SD5ESJaDOLdEKiAmKejPIxL3spueLw4dsEmCSV7zx5f23
         bPa+Na1UIgZ7x+cOTSnMzq39vpFhlKAN6gDzJPJT1AD/fabe8Zlf0cg7gBbE+rpPMVmA
         tlgBm/SeNrsvBDBOUL8bJBvyQRGzX10QmfoJorucOqwSSwBSdniHwvMUykwWnsMbd6su
         KgSg==
X-Gm-Message-State: ABy/qLbsKIIr/4/LsVtKWkSLzY7aRJf41rA385BVKMUb80ouROawVlL+
	XsxoYwzGRLFhxwEGrucCDs0P7g==
X-Google-Smtp-Source: APBJJlFCK+1VmvfRrU67lBkUSNt04LWjIjz37nJvS7SEm/ZsRG1iKpV9vWv53SuU8f5dbbVmHRiouQ==
X-Received: by 2002:a05:620a:2909:b0:767:7c08:479e with SMTP id m9-20020a05620a290900b007677c08479emr11881034qkp.53.1690799755488;
        Mon, 31 Jul 2023 03:35:55 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:55 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 02/13] ARM: dts: rockchip: rv1126: Add pwm2m0 pins
Date: Mon, 31 Jul 2023 16:05:07 +0530
Message-Id: <20230731103518.2906147-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033556_918148_62D37A4D 
X-CRM114-Status: GOOD (  11.21  )
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

Add pwm2m0 pins for Rockchip RV1126 PWM2.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index b77021772781..239a1dd9360f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -69,6 +69,14 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_pins: pwm2m0-pins {
+			rockchip,pins =
+				/* pwm2_pin_m0 */
+				<0 RK_PC0 3 &pcfg_pull_none>;
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
