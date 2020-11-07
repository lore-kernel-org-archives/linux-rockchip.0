Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D402CC388F7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CCAB206E3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1EQXOp+1";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U6ov5KOO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5CCAB206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v8qeEFiEGK7ezanQvLF9OYAlMTmLZhA8gfvrZXQ8FnA=; b=1EQXOp+1S+Q9EmI6m1oMKUqo5w
	6hdYjJhzjeLCGMYHSfj4A2NwJXGC1upN6XN8gc9W+CaripWUfCT+VT7c7sqBPnvirYt/zMQipjUuM
	nOLD9VubXF+WmamsqcrF+LvNvGjDXiXIUHXuLfEd2TKfZHBxT7gx1f7OypBuOOut9K3y0+l4M9fL3
	Hds4UifSEAMT23RurzFxQ+g2gsDsaO73gPoY5e+YnF9RP/4sYBFwoS8NUfX5YOg0F8DqrjQmQ7OfU
	Vwoa+ZNNsdGS7Bw3X9DYuOqOFKLDh+bUQqSKtYV42wkxMK1fJOEd839nQnAuykHq7W1GVBIgIJfsF
	PQq5jZbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbRag-0007G4-Mo; Sat, 07 Nov 2020 17:01:26 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbRaW-0007BH-Iy; Sat, 07 Nov 2020 17:01:17 +0000
Received: by mail-ej1-x641.google.com with SMTP id i19so6321395ejx.9;
 Sat, 07 Nov 2020 09:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iYx7Zu5YxaAUOh2wUpaIISnZwmtTFG2J3DAA0bojnps=;
 b=U6ov5KOO2oi2Nbht9hCtXqab7Nl5JNHRBuG2cGOcEmZehAEFGMxDJPKid9uRJra3Hu
 wXveMDyHCGG4IlCFMoKbDof6WKIsjNzhYUmtqozgiHAS9rl/MF2WVmX5Q8O+BTQXQA95
 xjytFKJKXoJwLuVZ72bN7HAW7mcY/roG2oov0WHgSfWuBGU2bM9KEN1RExG3LLM0d315
 LX2lq1Neg+ttDjRv7ODqXnwEjKijlMTILjVlAXGfbN7jO3uVi/wjlBzpXh27qGvoaPNl
 Qq37y+Rc9AVAUGdH1VmhvQIF3sB6doxnncX1LVdWHRrJ/CvHwABvGwQ4orrRXxWY3cun
 QLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iYx7Zu5YxaAUOh2wUpaIISnZwmtTFG2J3DAA0bojnps=;
 b=puSWlmAWNRJHYTei7q4wx5T+addJwsOTk73dtpZgC/nZ2XqRgGabVODWkLlzNStoKl
 9taMFWcVccaf8bou3Y4nRpMpLulwBp8zhx2HherpBF0WFFbyKgS3q0UVTae3WdKMY8aL
 8hZCtd7Jry+MkHqObit+BtkixVB8kKTbh8zomXKFgAmilNMvNRacPahh5TtAJOAIRqOd
 1AZ0W5z6o3zYXnVKBih5vjXdsigymCmJs5Nm3roK/0xeI8JdmQcfCVzc/AYMxyp9F2ZA
 8AnNiAyCkWteR0DdPwTXu96VTDIF/Spod7Cs28dBQsHKu54IK5aS4FYrmATsKsp0XytU
 JnPw==
X-Gm-Message-State: AOAM530a6GsgJl+WraCPFs5ZhYlzvguHeszVKxujxeLB/G+nseLK+dNR
 vpxu2s5UsQuy6VA6viLkiZ0=
X-Google-Smtp-Source: ABdhPJz7mUoi1CzwS6zfSfBUvQiJhIoTCcqt4t0soJXcWdAdtGuxARn9QJ+kqdJCcMLoEqPNwRU+XA==
X-Received: by 2002:a17:906:512:: with SMTP id
 j18mr7744965eja.370.1604768474402; 
 Sat, 07 Nov 2020 09:01:14 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t22sm3729700edq.64.2020.11.07.09.01.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Nov 2020 09:01:13 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/5] dt-binding: mfd: syscon: add Rockchip QoS register
 compatibles
Date: Sat,  7 Nov 2020 18:00:59 +0100
Message-Id: <20201107170103.25608-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_120116_671044_49E2D484 
X-CRM114-Status: GOOD (  10.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip dtsi files only use "syscon" for
QoS registers. Add Rockchip QoS compatibles to reduce notifications
produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 8f4764a9e..f14ae6da0 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -44,6 +44,10 @@ properties:
               - hisilicon,peri-subctrl
               - microchip,sparx5-cpu-syscon
               - mstar,msc313-pmsleep
+              - rockchip,px30-qos
+              - rockchip,rk3066-qos
+              - rockchip,rk3288-qos
+              - rockchip,rk3399-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
