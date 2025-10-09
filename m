Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 512D7CCD184
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 12:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IUOOHmOcfANJX+IPiaoSzjLOjyaoxNQylORnRasGz6M=; b=PfykcljPg8F00F
	uQYvZhFlimdUVurBGNWLHydVVWcno5YO/uYYGNJBL3UXkqBA1uJxQSTrcCCkQ2st+50UR7257nbGn
	I0vMo9r2aFuzrjmakd/K6AbDBgE4S4DBgGULUKssyf9LrQk3zbz91hqyLe+bCjlkL7hw253+ufO5+
	F5k/m3HmcuQxGgaw2EsWQ3w5nHMt6A6LJK6XAVCXNEotU626pUs67eyB5OutB60PPBps/fokmZpDr
	1iMRJmbuh9RuwPdolYpwjvGD5cWHLPI+4udPoo/ZZpcmNl9P4kYji+XFlgFZcq5kklx2GEvt5lpPE
	ANDIHwHiMrJWuvJr/jGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6pqx-000000066eG-3Ic2;
	Thu, 09 Oct 2025 12:34:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6pqu-000000066cq-2ewx
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 12:34:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso144319466b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 05:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760013274; x=1760618074; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nyerg8bw/pkBgKExI4csMFP+hBYhO0IhRcEHv3iMtPw=;
        b=l4IvsRLznKNZWcZZq+hCp96a5G+WdaQ2+uKA5iOEQGwK1CKlo7aIgS5nK8M8SI6nEX
         wC/SFouppOdEA9HUcg45gJCN2pDQH5QGHly/iPBa2jX1p96Dpxl6CneOCKaHexEGof1x
         brbYcs8+rts03hJ0BTAlofTXMxaXktvjVSFiCU7JJn/utUyLoQhRaCGjsonxYTZ2IWt8
         DaQWVocBrH9/N2x2kX3/fOA27ki2e8+7lHFeomqSVJ8medZQX8CPQ50/TaNb6PeH83/X
         y0aRhTCQo08LjCiJSkaKBgDgh/cJbLdE5iwHYBxFxJ/igdMtJJJPwFrE4mz13Dut2Pei
         le/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760013274; x=1760618074;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyerg8bw/pkBgKExI4csMFP+hBYhO0IhRcEHv3iMtPw=;
        b=v0hsvdoG/6Hz+7GIjpmJSGMgxzRkQWNsqZ0D+ISMuhqXKAlDpPxS7dwnG+9rg4lGe3
         RQXo3v1P10OFBovZTJXpUEPSqBhmn1SCYuh5pXYsNewDyjBdelBul5Qpwqqpk4h9Fyht
         GVd5buvbhk+6vJjX6S5rn7tGp4my1rle7tHK0Pdfk58tBkzeCBP8xLcBFzTjsx+uHe1m
         BxoZQJe4ohvZhIYzoc1U+T26WPyCAUjukhL1dyuSUCL/yOgIHHZBdWKbRYzrlnFstmRB
         bVcp7zhNkF0tw/224+7t5+ChYiwlDNAIyIzrYyBhsaXHxfAGOhNjnDMlR7pKm1KbW7ea
         YNYA==
X-Forwarded-Encrypted: i=1; AJvYcCWNofla1xHiWFuCcVQfIi2OeiQlilZ5m37CO00f8VaQQKahJ12VLNL8rpF7Gan4mEInsnnn66qtjmm/zgPNDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbUcLMCZ6w1OuCl+e//V2UPOC9gdgtcFCU3LIbaPcw3obvoHSN
	ky81s70a/CqCnP+jpopa5ABoxlS6bnjwsC4OSc7Ii2I/kLXtUPPQCP7bxMpf7+H6LTqDGEp6
X-Gm-Gg: ASbGncsO4iZgXatKK8y70P+NlQuo/LlBCuk1cFIpTTmZQhnhcCVeCS8N5Wh+g0v3kTN
	7M2EUoEttfie3xuS0PEeagCqlawynxT/bbFKiXP0DECT0D+1m7dez3Fp3HGYpuFnnZWaY+lskrV
	Sihmn7lBRH8Y7IP5oL570X1Th42tmzl7c+j/9enx3BWHR4+RzAvotk2ro6oa5W+DsmyrJjt0jRW
	bUrrI5XqIH4SI125z7nMQ4CyZV+Nt2bjWDHy39FpweqvnHd/yReXy8GxGsdNBk4bDNH4ccOulIW
	xi7AuACxv3aKV+R2xcc2OdShu/EbcCxhFuEWuMtYqIaVw3HEjFv3VhBvl5cGnfoWQHKzL5SW16P
	lM1Gz4NjvdMdUQCEIv5ZSMYMC/mELyMfe13bfiReOgbR7A1Q3q8+q2+smXyF1aMpe
X-Google-Smtp-Source: AGHT+IG5+niC5l+3hZxoFmTdeEk+aq9D5d4xuawADwnDB5QSeo27pDH2M5zv9nhRFISRnH+oe0SscQ==
X-Received: by 2002:a17:906:abc4:b0:b46:1db9:cb76 with SMTP id a640c23a62f3a-b50aba9f7aemr661934966b.39.1760013273388;
        Thu, 09 Oct 2025 05:34:33 -0700 (PDT)
Received: from alchark-surface.localdomain ([185.209.196.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865f741f1sm1897957766b.39.2025.10.09.05.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:34:32 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 09 Oct 2025 16:34:01 +0400
Subject: [PATCH] arm64: dts: rockchip: Remove non-functioning CPU OPPs from
 RK3576
MIME-Version: 1.0
Message-Id: <20251009-rk3576_opp-v1-1-67f073a7323f@gmail.com>
X-B4-Tracking: v=1; b=H4sIALir52gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwNL3aJsY1Nzs/j8ggJd86TEtOTElNQ0CyMDJaCGgqLUtMwKsGHRsbW
 1ADNSMK9cAAAA
X-Change-ID: 20251009-rk3576_opp-7bafcadef820
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2003; i=alchark@gmail.com;
 h=from:subject:message-id; bh=a4GlgwvcqPDJxB9eGC77cLnTgj/F4o2Kt+bX3hdWo68=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQ8X30+rrirJKPy35cLE6vzVzz96aV/79ybX/OypNb8F
 OO4e5xFsqOUhUGMi0FWTJFl7rcltlON+Gbt8vD4CjOHlQlkCAMXpwBMJOgHwx+Odob8xd+tJv0V
 WjN1YuJaEdNUwe7spqTeh035uhb/HzEx/BX76hJQJrf02J/iedG3gh7xfOm3EHRcvUljvnRcb8E
 6aVYA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_053436_690910_8D69FA37 
X-CRM114-Status: GOOD (  10.64  )
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

Drop the top-frequency OPPs from both the LITTLE and big CPU clusters on
RK3576, as neither the opensource TF-A [1] nor the recent (after v1.08)
binary BL31 images provided by Rockchip expose those.

This fixes the problem [2] when the cpufreq governor tries to jump
directly to the highest-frequency OPP, which results in a failed SCMI call
leaving the system stuck at the previous OPP before the attempted change.

[1] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/rockchip/rk3576/scmi/rk3576_clk.c#L264-L304
[2] https://lore.kernel.org/linux-rockchip/CABjd4Yz4NbqzZH4Qsed3ias56gcga9K6CmYA+BLDBxtbG915Ag@mail.gmail.com/

Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index fc4e9e07f1cf35fb57f132c6d82c48c62bd6265d..f0c3ab00a7f3447a1dbf7874c7bf758e82e04f25 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -276,12 +276,6 @@ opp-2016000000 {
 			opp-microvolt = <900000 900000 950000>;
 			clock-latency-ns = <40000>;
 		};
-
-		opp-2208000000 {
-			opp-hz = /bits/ 64 <2208000000>;
-			opp-microvolt = <950000 950000 950000>;
-			clock-latency-ns = <40000>;
-		};
 	};
 
 	cluster1_opp_table: opp-table-cluster1 {
@@ -348,12 +342,6 @@ opp-2208000000 {
 			opp-microvolt = <925000 925000 950000>;
 			clock-latency-ns = <40000>;
 		};
-
-		opp-2304000000 {
-			opp-hz = /bits/ 64 <2304000000>;
-			opp-microvolt = <950000 950000 950000>;
-			clock-latency-ns = <40000>;
-		};
 	};
 
 	gpu_opp_table: opp-table-gpu {

---
base-commit: ec714e371f22f716a04e6ecb2a24988c92b26911
change-id: 20251009-rk3576_opp-7bafcadef820

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
