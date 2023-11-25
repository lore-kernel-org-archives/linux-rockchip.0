Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF7DC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqYovxqd5D8utUbOrwCR/s6HfaSmzg2rR71jmsqsoU4=; b=nMxvehz5ktz/fq
	fUIFhsdSIhxvaY6Ee6lftQSv0R9+bYvGw1Vb90urNc2tFnrb73A2mU7MLkfJDqBWf8ENU3o85bc4N
	ci+MVbUTjb2kCJcTH2lWR8mdFam0jdxbTuaRb3MQApGxWqsGQicg4m5SW/rDXl9kW4yozDf/f+kwe
	NQCDawrHkiegK9qb2m6jeZAdyf3rcNbaGEndkjKnjGLjgTJ6wqPCuvp+ikXcueEDqziWLJCFr35jf
	XO8aeQQH589HvXhD5xiSAMNRK6rqeBeegBaJQ84bWkRbqyInzjE9j4YxKprx1zgd/MSfPOcNtKRTX
	/WQrDyShdKqaS/Gk5r8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tfU-009LjO-0N;
	Sat, 25 Nov 2023 14:30:00 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tfP-009Lhz-33
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:29:58 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6cbe716b511so1869139b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700922594; x=1701527394; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eZys39GJuHTXGZ0WnRs5+Y2IzPwKK9Jhq3iPRZLp05Y=;
        b=B05rdhF6+iQWPpR6kRiZN+QF7R3gmgPZajam3qakOUvUxdq8kp1SDLNJdPf5twEXW+
         kYiwBWfQxeNmDMgFWBFATdHSi6kjUGTg7H5a+DZ8Jk3td9gTYG6U1GGoGupUfyDhKXxT
         7UhXF7z+0RjpERVylqO3VZlM3XW5w4WrMd6uqHYnkjN0P7fOo64gqjgKn0XE3PgG+HDT
         EQLytEJUvqTgf6IbYjofvMavOBhgLcyzPRxYzKoPmb5LVFYZ47rAbtFlYC5ncSLA4giN
         pkO0aRDsmVlbCRbPs79XAWKQceyRVvEr7u0FqrMqlSLmgaCT7hf8rCMF73bVSfAg2xZs
         8vUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700922594; x=1701527394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZys39GJuHTXGZ0WnRs5+Y2IzPwKK9Jhq3iPRZLp05Y=;
        b=Iluw8OC6lacVVwM6VyAiCpZdQP37rrN2Vhd98tIMKEoqn4EIXBBgBeJNjmUGpXeBEF
         3H7m0kJPbgWGhchEe3II1LcYzQ5oSm2/6lQW8bFGcGwQRZFVjWZUrbfWr2Gch+jFgnI1
         eqheh0nvCZwfKHbVAc9vp5u0ubTcOao8D5T+/cEu4ccfuEBxYjy5N0ocNVBDg1RjIYhp
         7HHbQ/CeCGk3O3a6dgCWmEy/lR0snDSkn42MVALtm2qLgWJiY+ttqXulLmsy4BQegRk0
         A1jsr5/VoirNR3m8PlB9LwpB+OQ9yO0QXSYPxH6Jv0+PhK0C3A/MfGVV1wvFytH0jv6r
         HHVw==
X-Gm-Message-State: AOJu0YyHl9MPzTeehawhnCgE04cm5BMvL9VVHJP2z4spoOTXvL6osTaO
	FiYCL2/VWQbskc5hVd06yDCNvg==
X-Google-Smtp-Source: AGHT+IGzRxMDkBx/+dtM5q70cxNBly8uY7XmXX8qeMlhvysirQHXtDZcWgQbUu1xIM9J5BXoyByS7g==
X-Received: by 2002:a05:6a20:d903:b0:187:6c03:4e01 with SMTP id jd3-20020a056a20d90300b001876c034e01mr7615450pzb.17.1700922593781;
        Sat, 25 Nov 2023 06:29:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709027fcf00b001cc6afede3csm5106311plb.7.2023.11.25.06.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:29:53 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/2] arm64: dts: rockchip: Use NCM6A-IO board for edgeble-neu6b
Date: Sat, 25 Nov 2023 19:59:14 +0530
Message-Id: <20231125142914.57459-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125142914.57459-1-jagan@edgeble.ai>
References: <20231125142914.57459-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_062955_996091_1E9ECE48 
X-CRM114-Status: GOOD (  13.07  )
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

Edgeble AI 6TOPS board topology is now changed in final revisions
as a compatible IO board, NCM6A-IO, is made available for both
variants of SoM: NCM6A and NCM6B.

With this change, 6b-io is not as available and 6a; 6b SoM's have
the same compatible IO board as 6a-io. This change is due to the
common optimised design of the IO board made available now in
final revisions, which was not the case in initial revisions.

So, use the NCM6A-IO compatible for NCM6B SoM based IO dts.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 9933765e4097..861067b5d707 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "Edgeble Neu6B IO Board";
-	compatible = "edgeble,neural-compute-module-6b-io",
+	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
 
 	aliases {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
