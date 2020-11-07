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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540DFC55178
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB9BD206E3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="d4Qa+VzM";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YOyqblNo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB9BD206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qfXJlgxikIRpFnc9aMGNdEBc3prCHJ3aa2j7KZqDNEg=; b=d4Qa+VzMTHd79s0kyj4+HxlhDs
	aT8Dsem+rxRu6vb3LcAXBGyLLUzGVxXFBmsc+WCtVou7agamErhtAOswISwnPTfF3yyr/D4xFYcZl
	gwyacB08XV0vWQDUyUeacjVfYPrkqm8oslbQiWP3+rFPnLaG7IDM7dwcusRJPKoqfPl99R7m9Uemf
	v6mDp8DzL8LWLEwIrmUCqd5228ZSUzQHzKW/uumo2mfx6Z8ggnhtBVASTUhTCz7kpX3D2Epee1JMe
	thOy6lJLsKLV8UGGfQoNkCCucB+nKwiiQse3LdlAtacCHCvjSTKm6zAsCg8UxlLS8KRvUxg9oaNca
	uOLVrVVg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbRah-0007GF-CN; Sat, 07 Nov 2020 17:01:27 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbRaW-0007Bg-RZ; Sat, 07 Nov 2020 17:01:17 +0000
Received: by mail-ej1-x642.google.com with SMTP id oq3so6327184ejb.7;
 Sat, 07 Nov 2020 09:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j1Mhg9zNZL9zm+d/ViVbeh1jFha9crRB2Lx0TDAGCGk=;
 b=YOyqblNoJ4457IwuVC7eytLfj4NWcLL5XXxnSZFl9Aww+VMzbXiaUMbG0KP9evo1tJ
 WPMNmBSnuxl8NcMYQjEBwOFAZuUdOiMdV8/6aTNYx3Ggg+89TPst5JdlSidDWec6VcbP
 msMvI7585Ro9/yBFeiNHarmT0FpXXTsYd+eyp2evtgPQC4U9cIl+WPNf9hfmwkTsK+T8
 5Hx71wUjIqrRITMMuUOMrrmGJbf5kxxCtcq4QEjCUBtDbCDDGnbUem3UlGQkKXsq3dz/
 eQtqUNLjQxNnOJPRkVXPLsD2snazRSRZTDGAALKbZYQuABAcl8T6VGTmVzkVK3x3YhfH
 tPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j1Mhg9zNZL9zm+d/ViVbeh1jFha9crRB2Lx0TDAGCGk=;
 b=nq6kd9gdGGDTEuSSS3ttdONPNI7895dOjgSS/rKZ0bGsHdyw3nDGVArqwsmKE0InLR
 waMoc7/eSj6YANaS4OhRaGnIJc/ICIcWJinQ6YFpA+aOU8wcgohRTVFvLPIXC4iEpAZw
 MPcvl23XF8qlhtVAbhYJxcntAjautKrWVep7OwGf/trWvANE8zeyCOXVkq4v43RkkaWD
 /NXSHBhN+jJ6tRD7tyGji3oNIZAmi/qXORv9isNT94M6HTLo++HtXpuPzW7yqHTzZAPf
 7AFydNLsrkp0aWK5s2jX6cjJtUqyjt/X1TU44iQwvfrHjcG+JPA65mLySDjWi6pge2Yb
 GG3w==
X-Gm-Message-State: AOAM531KvWcIPrIYcQbLLOiuSZlwn0My0olHMYO8cYb703Ypr8e9YGzf
 TA5Emx+tNHyAg2BmZB//dlM=
X-Google-Smtp-Source: ABdhPJxZLjCikhr2EYeBq7HnBrQ84tl0WX8qqH488I4GMNBHumXjNKTLNENvkIBHt9VoYSThgNRamg==
X-Received: by 2002:a17:906:6d52:: with SMTP id
 a18mr7356951ejt.224.1604768475385; 
 Sat, 07 Nov 2020 09:01:15 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t22sm3729700edq.64.2020.11.07.09.01.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Nov 2020 09:01:14 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/5] ARM: dts: rockchip: add QoS register compatibles for
 rk3066/rk3188
Date: Sat,  7 Nov 2020 18:01:00 +0100
Message-Id: <20201107170103.25608-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
References: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_120116_943965_AD3E968F 
X-CRM114-Status: GOOD (  13.51  )
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
QoS registers. Add Rockchip QoS compatibles for rk3066/rk3188
to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 859a74779..eb9d25d23 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -151,42 +151,42 @@
 	};
 
 	qos_gpu: qos@1012d000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012d000 0x20>;
 	};
 
 	qos_vpu: qos@1012e000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012e000 0x20>;
 	};
 
 	qos_lcdc0: qos@1012f000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f000 0x20>;
 	};
 
 	qos_cif0: qos@1012f080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f080 0x20>;
 	};
 
 	qos_ipp: qos@1012f100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f100 0x20>;
 	};
 
 	qos_lcdc1: qos@1012f180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f180 0x20>;
 	};
 
 	qos_cif1: qos@1012f200 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f200 0x20>;
 	};
 
 	qos_rga: qos@1012f280 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-qos","syscon";
 		reg = <0x1012f280 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
