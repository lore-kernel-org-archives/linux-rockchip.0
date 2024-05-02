Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D71F1C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 09:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L5fRI6vxu5D1/0pXU+06uZ9cy2JMngaNzY76ClEwubQ=; b=mML1lrl0y7Bstu
	m/dxNGhCf+YRJbVI0kXjmAZkN4OGR2t9pz0XeoMvmIsRSKC6Hfj4mx6ZTDFeWr1zMaKfjw0bL3liz
	tWklC1eLEqXE1ozES8R+fU8fuAYRVNZnjQCOH1dx8gRlTnHEvCKjl/OAZ+wrykrIxwvCC9YEGYB0R
	Fmd3PhbO8Ksez1jHm8tmHyuB5uoyiGdlcsRtn1ugYxwSk/R/geO973dXkwo4uYI5dRlhJtRmnxB3X
	ZudF62FuytUpCVTxq6bS6uAGaVzraRK1GRbEsgyedxUsdKq7R4KYSYrOAI0a8XBK+jnpRJc7suylf
	U5EX/ZRFcf4Q4KH5ccgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2SyM-0000000CCRq-1Hed;
	Thu, 02 May 2024 09:43:26 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2SyJ-0000000CCR1-07lc
	for linux-rockchip@lists.infradead.org;
	Thu, 02 May 2024 09:43:24 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-60585faa69fso1187770a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2024 02:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1714643001; x=1715247801; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QiEinpzKbejXcwmY8FTfMGWznHTz6FpYxSICSjLHhRQ=;
        b=S+7U/6VuZhVAOZQaVNOYUng2gM9Z4zK3aPrK9++ld5XAyJvVngwLW7OMaOeKF4epBr
         EsQcX2pyXw8f4jv5wc2EOH5Y56jiFbT+oWvH0E+1UIEKCvmkacVwsDYT1bLkpXOh+Ik/
         Sx5QcjyNPaelx0MHZeFCT5cTc0UQsHmyak3S2Gl5BHuJ3uIeeaQPRMNWBNnkn2S+FWON
         htNjFXOMr2UHAONwsIQX57KQeBYoPaocuLrtWhZAHFgLooEuvJZ0zwxbaz44TdEDQoso
         WqiNTN9n54OKsgc0PKeo3/vv0+mN3hBXzP9BsuFcb4Sl+Dl9Q5MmeRAzXYDOTiVC94xW
         +sow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714643001; x=1715247801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QiEinpzKbejXcwmY8FTfMGWznHTz6FpYxSICSjLHhRQ=;
        b=eUGauCXzuDgnB3MVbiQmqGSdW3M+rDHOBszp7NSD2fBfs6/4/Zy5zFVsLVzbcUKLgz
         j4GZaQzZ4F1U10w6E9JNk5GDvruK1jg1UrJl7tyzghH8kNcwUE5MBeyN+RV592539s73
         s7cnjR+VpGEn6WUVVjrzUQUnauFvVqO2rpCa4yE1G+6GdeAyvVGneQ8Js+FDX/bzuj7n
         CH0P8IZBwYCa+LYGVehU2qO63tQv6aG5599EMj3boLw3FYGiV5E12TtzZEDiovF9YDo8
         6cFLaJWWw3VBP9LDMno0I2preTxzrhKu4WAtcSI4laFAIDiXkyz5+ga5vOpYap5SkYUh
         eZnw==
X-Forwarded-Encrypted: i=1; AJvYcCXlruyHGpvByaSAMC8pyS+cghuvmH7IwsJqAqFO5vE45kvLl/SXcJRuLSmclgEHQoZxM9pcOfU1jB3zu343k0WmDDR44xZw+X9fvRwShQsYkRRK
X-Gm-Message-State: AOJu0YwMDseerXm/ouNm4Z4mbqDBC2FFUGOX2yrZPt8rZr2URkHGpvZP
	7wwp7Qs2FiJrEDlZyLxIOVZQogAgXV/dGHuBpBv2qceySPREevQQpvkB3GBMAQ4=
X-Google-Smtp-Source: AGHT+IE4mfyNAbGwKZ9nME3G59fwEPSFuQ5t8lhGdVZqMqD7QdZb6qTs8RtEfmX0fhNqSYkO+HDsBw==
X-Received: by 2002:a17:90a:c24b:b0:2ab:8e59:9da9 with SMTP id d11-20020a17090ac24b00b002ab8e599da9mr3471747pjx.6.1714643001041;
        Thu, 02 May 2024 02:43:21 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id p11-20020a17090a428b00b002a42d247a93sm782603pjg.36.2024.05.02.02.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:43:20 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: rockchip: Support poweroff on Edgeble Neural Compute Module
Date: Thu,  2 May 2024 09:42:37 +0000
Message-ID: <20240502094246.4695-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_024323_311820_CED4AAA8 
X-CRM114-Status: UNSURE (   9.87  )
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

On Edgeble Neural Compute Module add system-power-controller
property to RK806 pmic so that these chips can power off the device.

Cc: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index c0d4a15323e2..2c23e89dd2d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -162,6 +162,8 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
