Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2497BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:29:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE19560F56
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:29:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE19560F56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANsjNTmbFfmIAkoQze832fd/CA1iFvTj0cviEQbTkfI=; b=Hmv9BGQowfMjmz
	70LYRjd26bLuVwjpfAhjZ8YSZCi7sm64Nmn45xfGKkM1slpiLOf7tNC/4vCUa3uAmLcB4ap6kCG2S
	5MPdI0eCH5+sInw5+wg28uqtNffQzuXogdCNWg6ZXJzumPOyXTQ/nGgK6hwkAi+ZKGy2RMwx/ETYq
	g9khJBRaWYKVNoLiw9xQO26AmFoZRWoNJA1FTGUqMCc/BVfJWuR7GGLOWU93kaIZLyvA2qWXiqhtN
	MDYOKB+8rdS+i7NuGqeXqK0oJH+SWqEXW7DMqMbd8lG8JJq24ZPdJ5a6/w1vSXf5Ej0cP3iwQTOCP
	CiL4p7cvQ8gmi6joBZ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbLOl-006jKm-1N; Fri, 15 Oct 2021 11:29:15 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbL9m-006erF-6B; Fri, 15 Oct 2021 11:13:47 +0000
Received: by mail-lf1-x12e.google.com with SMTP id p16so40326113lfa.2;
 Fri, 15 Oct 2021 04:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LSI5oUUXkL8OiMsYr9YZBaNLQBQQhatS/MOSPJ3+9wg=;
 b=gJWR5ocJpGyJ1rfcWDdYR43oHq+aWAa1Fme6AHiJbTqUSSo4BusdfozTCw5qv5Be63
 KSClH0AbCFmfVB/9Z3MltgnmdoHEhPyx6MY41gc8LkLCYeGDtYsR9HBHEaMfP73EcayH
 Ji3/L89ZrSk2QnVWfUDSZbqaNeuDxeJADv4kYqTf3w2Y4EROEHJP6ThomtlygFZ6yoOr
 N34LPXYwB70QNTwLvJRp+okDqvT4oaoAx2wjyOeslde9jtc+zfzyjNxU3p0Tq2CmrTtd
 txaAFgp34lZg0AsRgmo9Buc/JL9JHot4jSlIRFf3Ex4MHaHHzZY4JfdmSH/l7IKsviHp
 r3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LSI5oUUXkL8OiMsYr9YZBaNLQBQQhatS/MOSPJ3+9wg=;
 b=3OtR1+cp3ChjyxcxxJdRg7u9g0w7uOk9LMwDGwyMUm/rWJqVyQkULLb4WJd+Vwpp9r
 A/ZtDrKRhZE+XlQbcfyeOsdDdHh8qjqSdBi7afo24gD07VQJ8A7PxztDOHw5fCouYZRG
 gtDlKYqy+SF7e3z+dkfliO2ldTm9Ycg0MIsZ8FVRyGmm3a7g1TR0WTEh6In+eVYAv+Bb
 HA0xVy0hgeJYqJvTgAAwSE0dzvSM8KxYsP43p+2uOgOm7t4bJ9aElqvfiV9V250gy9ah
 KeH2/2ypETXpUUXhNpAT0knWyVsfsvHmJZHSLGpsM3SvWCeAlBMxtbgYeR3ZrGyiTa/1
 VOgw==
X-Gm-Message-State: AOAM530GhS0mw4mdHibhsNqSe9/3H8o25Kl0uRx0/qteu31Ye/7qNL6R
 mZStmEUszagKjKtAgiF4NPc=
X-Google-Smtp-Source: ABdhPJw77iypYK9/c3uV5UaLuCOp2Nt1OGbb7nWeNVQ88UZsY4IQoCm0pPU1HgtX2gb74GRrjdfB6Q==
X-Received: by 2002:a05:6512:12c6:: with SMTP id
 p6mr10393057lfg.40.1634296424290; 
 Fri, 15 Oct 2021 04:13:44 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id s25sm534647ljd.63.2021.10.15.04.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 04:13:43 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: enable spdif on Quartz64 A
Date: Fri, 15 Oct 2021 13:13:02 +0200
Message-Id: <20211015111303.1365328-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015111303.1365328-1-frattaroli.nicolas@gmail.com>
References: <20211015111303.1365328-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_041346_283073_285B6A9D 
X-CRM114-Status: GOOD (  10.61  )
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

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a244f7b87e38..d272839405c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -58,6 +58,25 @@ led-diy {
 		};
 	};
 
+	spdif_sound: spdif-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "SPDIF";
+
+		simple-audio-card,cpu {
+			sound-dai = <&spdif>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&spdif_dit>;
+		};
+	};
+
+	spdif_dit: spdif-dit {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+	};
+
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -458,6 +477,10 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&spdif {
+	status = "okay";
+};
+
 &tsadc {
 	/* tshut mode 0:CRU 1:GPIO */
 	rockchip,hw-tshut-mode = <1>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
