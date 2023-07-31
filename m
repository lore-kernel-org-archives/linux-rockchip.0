Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B78ECC001E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJLlDmKbC2jE5y5L49TvAUna6wnVK8fyfnqMGV+rfmQ=; b=UcB2GUR3KPSQa3
	8sdaDEZoc+kokYDJ9t7xTm6mISC1AssnaBLfMxUG0uo78TuwDe8g178s/7v/7LPBMlUtVbEfhhr+z
	6C2StQN2ARslsmwz0ylTF57WNv1ZSFu9izSD+pdsWwVg2agXPMhQtW6qn616YBrpKHRBkqbYnLnJw
	e2psBKqTeIfAiMt13iepbVzECYrVspkEAwGjwMd1r9jjV7IZLGFnzdxLpMpWZYI7VHLyUFvLPY4X3
	lZWTUbQvM7EHibdF+/KBChBFGf5a/FBAOj1dTcqPi78zucgQH0ToRK7GrKJNNTn/zLElweY/D8c5p
	PoEyvRO43fuR02HB2Qdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGr-00F7cm-0I;
	Mon, 31 Jul 2023 10:37:01 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQG7-00F6w8-2p
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:17 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-686ba29ccb1so2672612b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799775; x=1691404575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7wWUGs/v+ImTg6la07JUUOGNgXiEd+D9UkVWUeb/xY=;
        b=aKCmVAh3ZjgncuiUoYMo4S+G9tvS1SVRPoqlucOk43GiLicJREDat/Ep+9AJ8v6JHs
         oDqiDC86nUczMtooX38L+VpnHw5Ylxtf9PTOnxMi9ea5jt6Iz2274HNFqphpeFFhYtwJ
         cvphjoYj7btHsvGYeo1ntfuFKmbuotegn9wni04OHV0xoKKP+LD/tb9Si8YM0z3OLxiV
         m/gHZrWeeBmqGS8iuX/vuzWVDTma5sjTaIV1WAIZhYI73sdHcY6GjN9rNHa6aJqjY5QQ
         zIlxoLwiUwvSos7e+bA1LQp0goJQeJN5EBltDzchofCbrvx23kNqC9UGf8qAI/ycRHm2
         lhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799775; x=1691404575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D7wWUGs/v+ImTg6la07JUUOGNgXiEd+D9UkVWUeb/xY=;
        b=lgSBvMXHvc72yyKNXpJMVnFk1KyQZMUdkLauCh1BhJBUK+HfQV9EjPqYz3dverDIqW
         QSdcg7rVggSreFPUoMuTOGFxTciTXVPVUsEu7ZaFIioVfPGRdk4B9C74A4XVMR00plxU
         c2E7kTEbhhe0O7gcGJSmFAFuxmSSSjLvinfl9cakYAg3iBkz5ibY+ATtfYdn+mRdnssH
         oLar05waMlCpcntGuCFn33XolSddrJfGh6/sXazVZgF2pKBcz0Cs9JHDTaTP4XDOi098
         iorgAJeIfO7W2q+Ak8pDdlkuY4oDfSx2QZN7ud3qmZMIzKOCUhNTLueNbfAEQFKiIIvr
         0Mvw==
X-Gm-Message-State: ABy/qLbLyEAP98KdLHkjw8MiaM9H8YpBQQZijETtCdvZtqBoBHnuzloX
	cekU4n+XTDhAEohaMOhgz1stTw==
X-Google-Smtp-Source: APBJJlEhUGkpmPWPU9n4Zc5cFJjFcxCUlPtPbB5awuud41XG4ilIiiuIfZtKy4lJk9bqmCxRsmgvPw==
X-Received: by 2002:a05:6a20:a11d:b0:12f:d350:8a12 with SMTP id q29-20020a056a20a11d00b0012fd3508a12mr10679410pzk.21.1690799775321;
        Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 08/13] ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
Date: Mon, 31 Jul 2023 16:05:13 +0530
Message-Id: <20230731103518.2906147-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033615_919141_F67586A3 
X-CRM114-Status: GOOD (  11.16  )
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

Add uart5m2_xfer pins for Rockchip RV1126 uart5.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index cb31e6bebcec..bb34b0c9cb4a 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -283,5 +283,13 @@ uart5m0_xfer: uart5m0-xfer {
 				/* uart5_tx_m0 */
 				<3 RK_PA6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart5m2_xfer: uart5m2-xfer {
+			rockchip,pins =
+				/* uart5_rx_m2 */
+				<2 RK_PA1 3 &pcfg_pull_up>,
+				/* uart5_tx_m2 */
+				<2 RK_PA0 3 &pcfg_pull_up>;
+		};
 	};
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
