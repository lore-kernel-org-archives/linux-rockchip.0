Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 845D7C0015E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lkm7XzR28NWXuqAHBbwrRjMpKNP0xSo154lZE9Imm9Y=; b=sMH5vrRTTqW/JN
	TsvTUEN9DX9P4bWO2RZhj4tIJ0Pvo9S7JRzQSHKqUvk5fGph5z/z1Q9DfiHHwDf37xaEeMfqLRINp
	DJS1FKc6hmULCuFlOVORS0hrK06KS19z6+M+vFE5cmIMTdnJzLoBJuhC2lVF9HNahfYCdsMgIpXVW
	5GASUALmEwIsGYOdom6gQxz8wLlFwmgC06PCtUSP8xjJ41v/cOgitNAQZhlEGI6exlIPNxBszGPg+
	IlWTWp1yrX07FKH1YwqrBt7Wcq9f8vBFB8PkLJbegtd/NS0qRgkVNHRaDnQX+towkkfG3foYfhajP
	6bfESMVxMoLWzxEPcEiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUK-003agV-22;
	Thu, 13 Jul 2023 14:40:12 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUA-003aYO-0Q
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:40:03 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-66767d628e2so524584b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259201; x=1691851201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0608aQZ2HvApP79qrdqZ0Ss7hF0O6yLKjS9tzV8PstE=;
        b=al6RGEnf3A+MKz1SAsviIufGTBuXTDfmLe2a7xdRYDaeS1VT6TtwG94xd32G9O4VXE
         Szdc+N30Bg+P2QY0n+TnsTHhQjyZ3G1KqjE2eFhf8y+rUip3q8v8dhzwNXWQC2X1gGTi
         c/537zBegypsLkmq96Gly3nHtxx5hzQ2AmMtwzrFDpEd3K2L7Bu7yoRuwYq0VdSvroUL
         NqTe7D3E0C2zZ5vCtSz/iYsHg7/wyT+8eU0BL1/SyiNh6lWxYl0MRny4fIFrAEr3wPhd
         GBJ89d/fUarGzZNErta55llwRx3P+NdBaKe/fP2RUGucN1+UxkU7tjhaU0YeDkpx2m08
         Oeww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259201; x=1691851201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0608aQZ2HvApP79qrdqZ0Ss7hF0O6yLKjS9tzV8PstE=;
        b=gu7219IWPMb8JPJFGrXAvMiaM706eOb0qJ7H4QGVN2C/J2/3c7JZGLVAQRbTXBQxYC
         qF0Q1m8i0R2hIoNq/l6zhToZSGvY19jPaodM2sfbyzmo8bj6phK0rpLShYxjiKmOT2bB
         DnYZ/iqbMoNTLqm06JSEOzkHbgWHgTm+idP+q+K5BgxGIblfgZHw3rp2SNbpVObZGjGt
         wDj887eobQlc+jayQgTC65AFYj9LOQoj/tjQ/AcWUeu0DA4xPncHtoVJl1fi+lbxulX8
         5y+mk62R2caT4V2V4EbDwQP5M02C1oujW3tGbHNyfHaTmPE+kLo/9OKbDPJIqY4d7DBL
         Vaeg==
X-Gm-Message-State: ABy/qLbKTLSXaHJhWMtfx39EjhQNFUkXucBkAyk3Tc57y5xNUrVGshlw
	//sQgbSaFqERIPkwZR0M5UzDSw==
X-Google-Smtp-Source: APBJJlEdBAb5H+qipDdXPCl2HPctT6sc0210Fshtlh4TkkCNZ++Cp4jSjCmmQvACL33UejYd3wYbzg==
X-Received: by 2002:a05:6a21:7890:b0:132:ef90:1f64 with SMTP id bf16-20020a056a21789000b00132ef901f64mr1306671pzc.46.1689259201569;
        Thu, 13 Jul 2023 07:40:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:01 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 6/8] arm64: dts: rockchip: Enable PWM FAN for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:39 +0530
Message-Id: <20230713143941.1756849-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_074002_169421_36B37A35 
X-CRM114-Status: UNSURE (   9.98  )
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

Add PWM FAN support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 4a9f85d7542a..7ce87366c16c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -49,6 +49,13 @@ hym8563_int: hym8563-int {
 	};
 };
 
+/* FAN */
+&pwm2 {
+	pinctrl-0 = <&pwm2m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
