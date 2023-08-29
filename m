Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C985DC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 21:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7sCDST/4anLUUGu8u5RnC1QDOOdKjQura3EWDX9EqE=; b=kRYtrxUvVaPswy
	0+HmOobfgPE6Fi75E198HWGrApFyc0x4+FAvXQagqhbkB2rZx41qcvb2fpFzZhLBKZlg6o/4Fjz3I
	hcANVecXftRnZ6sIeXXNieajqsYFX6BOjzCeRYi/SHGNbc7YhXlSw/LLyKKiP4VnB29cJiKwU4Jdl
	+RLaRkvtyxLfjddXVZuAgWTpGZ6Ga3LEAG/mu+l8gP6Kkb+0GFvUPPyqWPE+6P1DYGxGirgxe4un8
	nJ8U0S0bWeB61j7uyOCxYRifATl9RbxjFlo6d7JthW30YNpihOgK/dEoITIy24wPfbkMcY7zg5t04
	dztNYwUpG+N+ZhDYufHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6T2-00CJJB-17;
	Tue, 29 Aug 2023 21:41:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Sw-00CJEl-21;
	Tue, 29 Aug 2023 21:41:40 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-401b393ddd2so46465515e9.0;
        Tue, 29 Aug 2023 14:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693345295; x=1693950095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=exdlEf3k7LeYR4ajbKpOej9+b285T0rqRyVgSYWARbk=;
        b=nyH33RlE5DWVMGs40gRIYejqx1mZcWYb/H8GGM+YOEkngRPnho09vY8YhmuchdjxSr
         wEmvtl9sU1GPTE9iaTUhhwS486LflrudV7WNPgK5wepgmxjv2r//7hEZ8KLYbZwZtvo2
         iQiaVezfUZVKfZa0VSpSQ5QeIJ9gDKStNoZf5yr/i5JZOT5lYlphTozUqNXMEapUnr/J
         oq9f/IJo1piglYMZVaXgzDIAIGMicYLLVr6V7ByxrNblLs1kD9bMs/9HWURV87ZQSwfd
         38+SGAwBrXcdukWsgGOlpmMWulXZdp6b+1j2M3z0GoHuClCv1603wpjqLRkvz2MJVtBR
         i6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693345295; x=1693950095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=exdlEf3k7LeYR4ajbKpOej9+b285T0rqRyVgSYWARbk=;
        b=Bz1k7W6n2/gvElU7o4mH+unWKBb8AEAWmX1E0h3unyEU9ScoqqebEYm+9POiM7u8ie
         H2CHyWQc0kn9kjNKsjUm2iarFoYdgHpoo3wrd3g0GvBSGCUIVlMKAsLjcje3GZVLzW0G
         5pfbKTMtAalwKnCOKI0gBGYugGK3qoZeH0Sf860nb4HE+nT9Z0eq0R51ZuYxanl4OyOk
         cwShWy2GHoxrOIJg73qSS6x0O4kviTpXQ8bJQcKwxHqko7LD3qctqcj0v7CdHeMYRtGk
         EwTzSyf6wOOfhZoYqrCsL01uBhTRE6ZyslmhFwD/SMq61iEnrv4CpXvC/wKQ7AVhXOIQ
         mKUA==
X-Gm-Message-State: AOJu0YwoNkiUKULPXeGGHENELUbQhJmF/6v33rq9kqJ4M1QknB++/B7U
	7JB7AwpLauOoEggACmf0gA==
X-Google-Smtp-Source: AGHT+IGnlr1vTV/+QlEDeV+UpRL6uvyvaiQRu8JW07ZFl+zNxakisE+XjMqlkfRB4mCpXbK0PYJDsQ==
X-Received: by 2002:a5d:49c1:0:b0:319:8427:d221 with SMTP id t1-20020a5d49c1000000b003198427d221mr255182wrs.62.1693345294844;
        Tue, 29 Aug 2023 14:41:34 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:84d2:f616:9527:dd98])
        by smtp.gmail.com with ESMTPSA id f15-20020aa7d84f000000b0052228721f84sm6113428eds.77.2023.08.29.14.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 14:41:34 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/4] ARM: dts: rockchip: Add SRAM node for RK3128
Date: Tue, 29 Aug 2023 23:40:03 +0200
Message-ID: <20230829214004.314932-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_144138_663978_9F569355 
X-CRM114-Status: GOOD (  12.17  )
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

RK3128 SoCs have 8KB of SRAM.
Add the respective device tree node for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index b63bd4ad3143..3a0856973795 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -76,6 +76,14 @@ xin24m: oscillator {
 		#clock-cells = <0>;
 	};
 
+	imem: sram@10080000 {
+		compatible = "mmio-sram";
+		reg = <0x10080000 0x2000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x10080000 0x2000>;
+	};
+
 	pmu: syscon@100a0000 {
 		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
 		reg = <0x100a0000 0x1000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
