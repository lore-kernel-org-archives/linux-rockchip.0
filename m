Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C069CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 15:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoDqbrUimaUlT5TogFqUCDCpDGF8poJrzVT0YzbKExE=; b=Dv4jrthHI2vpfg
	b7NAekXZPvTFvSJHmbapz7raCd7iWX5cxf5AmHeTDBXaX7aIioFlu5Kn+FbIHkBzTaWCsYk3vzDJM
	R81Xjxz1IfqoWJk9TjOMiTeKdRLyqK8whfPs8tC7+krvmEw4CTMyrRfsA1Uoy+U2CC/3cYFQfj/zj
	ptPVvhWNUkU+zJEBthfJCLm+3ru6rE/ED33pispJlf5/peY3tLeQzjvglJQ6YUODTG3XYT9oLIutz
	LrPEG2ONEMV5eqiB3Sj7KGlRuRPwEHuFB+qA32LgIXgx/kiRsMYhG7U5JlNk3IuYMEUIpK0i2TX6R
	LrhBwIOs4wVwz6JsAVUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9g-0000000GstC-1l1Z;
	Tue, 14 Oct 2025 15:41:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9e-0000000GsoC-0ilt
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 15:41:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760456490;
	bh=xNKlc7tVib9id/nLaOFp5eRTygy8Ayi18VAnakCYDc0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oGJg/GqHiVZWLfWPIaxJXTYIBFB5CgcY94GaIgiBTcLf53Rk4jAWxkmmIn7hxo4TJ
	 ZajrbmKC/5tvCDCptfuPWAuBvodSOFMSr7djye7xLFCcM/wU3NrWGHRhhynzEsOFMw
	 T6zZHlGF+8DnVvPx+ffw95KtGHM6/mxOkqeqK/n1pEjwPLD1M4EAarr+7T+fQ9b4oX
	 Rz2t3uwNBiYZqQGRBbQs6YayItMefWkrIXGv6pSvNGdxEBAbMKlit1qh6CW7QOp6VP
	 p3YDYnVP62PK0wDM4y6UHY03jHrhtNaF20OJvq+dyuFxrhOPPerDub6TRfV1FZIHZZ
	 pqlXOrrpzykjQ==
Received: from jupiter.universe (dyndsl-091-248-212-042.ewe-ip-backbone.de [91.248.212.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5483217E0456;
	Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0D102480048; Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Oct 2025 17:41:19 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: add eMMC CQE support for rk3588
MIME-Version: 1.0
Message-Id: <20251014-rockchip-emmc-cqe-support-v1-2-918f03de0cb1@collabora.com>
References: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
In-Reply-To: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
To: Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=732;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=xNKlc7tVib9id/nLaOFp5eRTygy8Ayi18VAnakCYDc0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGjubykcoRNXcE0GU0VpegldgNb3Ig4vh05iC
 vBVf7wreWlZYYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJo7m8pAAoJENju1/PI
 O/qajtAP/RU0L3fz1nD0qCD+UPrQAnYHY557abZNfwu/60lf2NSbIte+p83O4Tx/T2f+doxmhpn
 2J18skhpiM/S/FWJlgsswyKMDX4wQVzje9dWhRoJqxH53twIavz0XhhH7K6HQFdtGHeQF+1IcGW
 bkWrij5IH/iu4ADQYAPCjedg1wYGeGDTTjql8X0Bc858FSwRQ5xIcHTMAzMngI7Hiyps2IBkt7H
 ZLipTyXVyCQSE8vRflXsd1pawzibprRsVr2EI8zGrctIWH+dJ4qHbLFY8rGsvBTt/4gzkx8LTCX
 5ELln1wRoIY7ngpejMq0ZGx0bOB2coAuwuEwFfcCzkagzBOGTNDcqGPCxM6MgWSKcOJS+4N7qe+
 wc6gwcnTyIZ69IJby2gO9maaBbVzFZ0oPyIEkR+2wk8NlmmsZcb9VAVM+hFSWKEWteUdUCxLpUX
 DXrB3yjyGoltZ3OFVWZrt/FFndI/z4WsyFiqxOm2aFZwxFWKX2jyOv1dhjNYXf4rZ/+t4NLmFxi
 g9IdspwYBlEv630JhrcqL3Tyz9v4DNwszM+Yb7d0JGSlvf7BYo7gQ4EtA+PeZYmuEXMKi3amz+Q
 oXOM3gfpYD1ua+D1KuLMRjReoKIaqggYuXEqZK8jPQhrpohmkbE9NnILpgvclnjRcqe3GLkb0Kr
 sXPD5A2vBGqekks1GKJonlg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_084138_361174_6DA3BCEE 
X-CRM114-Status: UNSURE (   9.72  )
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

The RK3588 eMMC controller supports CQE, so add the missing
DT flag.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index e2500e31c434..2a7921793020 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2181,6 +2181,7 @@ sdhci: mmc@fe2e0000 {
 			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
 			 <&cru SRST_T_EMMC>;
 		reset-names = "core", "bus", "axi", "block", "timer";
+		supports-cqe;
 		status = "disabled";
 	};
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
