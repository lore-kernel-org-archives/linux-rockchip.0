Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FC2606A328
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 19:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EGLdwR0T;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=wjIvwZ+2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fLCL1KqMUt1pEd3e6gTO0UGeu1Wy0SP2lGXNR+d7480=; b=EGLdwR0Tz19QCCHBbwdnKJe1As
	Zb8DW5Rgi+2Ld8wWeey3ZN4VfYqvRYAIy2gty/f2gi/TALRu3jAPuMh1AGFIFxoAaied1aPTJxb/q
	UIt2ACyIAkuSXdvuv52c8cK2T2S9dPmwNW53EIkqrz9Y7Uy/ulZkxi57ZPAphIi/hOMNXBbD2IvMb
	LxMvvZYxW2h2teTCCBOp73+RXBWrC3yIadN/OW0rLqEKDs5UZgQze/E5QR+Z/ODCUqotbNL0tTUnG
	vn2HAwg5HRnwIBN/LKhSwoetgJLvHvB08fdeMOWSRVvgTKSBnFeuHyyYuSBVc15N9JBYBpKLsat4X
	1qQtmitA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6k-00000003WFn-0Lie;
	Tue, 03 Nov 2026 19:23:46 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6f-00000003WBT-1Krs
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 19:23:42 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-843a4ca671eso2130231a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 11:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793733820; x=1794338620; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VTVjbTeG+iIcoknSp2y3rgvXBTLyVqZrj1BvDpiUQFE=;
        b=wjIvwZ+20t0+gNjslD4ZhTyUFMTg8vj/nzShLJaFUhF3bF0knvbtki0xNfIKIzf705
         kDXWWSQBw+5lMDWrLvp52nMancYYEod7T8Zc8byKx4vuKW7pL7Q9fLn4pN3Wa/XLDDMd
         tgk6RUQIlk5knF/6ZeB3QXi0CwPY5In/8sJhEXNORxtYnsrrqsaMvl3h9sLs9RtVI3M2
         R49COJVvJJ760YBQyr1mtq75EsaDbi/Lx4aR2urBu1zctyG7Uve7ewtt2sczUa309qk6
         uAPvhZf01S1H+We0BeqdC0MLZewZUHW55cubZSDOblkVRMhmne+c/JPTGv5oi3XshUWY
         S4TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793733820; x=1794338620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VTVjbTeG+iIcoknSp2y3rgvXBTLyVqZrj1BvDpiUQFE=;
        b=cyNzoEn6ECy4mp1uq1X4Q+5/4MW6iYgO7XLOzWdy6kR35OkpsNICD/xFxyz+n2/SBk
         3wdVJVmEP6gsYdLztjGwvPfMx5a8rEsOJqXM6ZKNhUny2w3ajNTAaSWbxrRqrlPRUkUf
         /aKlXHrfLkJf7JXbpBvQxc9xHt+UhUhn7VUC8AQBwzPG6GFFWMMRdcbXit53OFnz45P6
         NtpCWTjAmSsNEwc3bEtYzSMH7ZweiAYaDHymBtnH3Bz/ZuP6Fe43mf2rM++YHIkU4WQH
         ZDRaeEAPwKwOlq/1KqI173LDQkb/0EojIjzr6nJjAFYm5QQMvKpH4bmXEJLb3ksBnsX9
         WxlQ==
X-Gm-Message-State: APuU4Z8ReNTK4+z36mSByNkJFSaUvbYtPxkmhnqbiRwe+b8GttnczRo0
	hcfdTvI3d4q814I+r4kUfe+yYXvF7VYzbNUOICFJxPsA26tmwcXZuvjh1HtFkqxQ
X-Gm-Gg: AYBFou2GFfMcD8S6WOdrPi1T+QFO0cZ7AQBqw+tn6SnqTYYeInMtacWFFLM5soQ8jQi
	fTTc7LBEtu9chCbHBPgJ/XExKrXNiY3AhSkQn4JD9ibiZfFL5W+ze+SWnpaMNBhv1yO086WDKAE
	oC54W0rVpkiTlFgfLf6VxLMNP5hWauqzmIlMfPIs9CqJrJnjHKGbV1t2DJ4W70FTXfBlOWCSrB2
	vQtNW2c9ywuiL/6iWknUbUVI/UousTi598F2O84UTH1NwbOFbkibwpRH/PxntvywB86e7U+oeDa
	mTQ8i6oJXp1YU4De78eBkVniCNGbkV71CrIdvpv9Xj33B26ufdXYrSFtQiBOleozoRpzT2l1Le7
	PtqfDEF87ecyOP6s1nq1eQw/w6vW7PxtkPr9aoxPrf8buocjr8RMcd4B4qyVn5s3kzqGDVMtQyA
	JWi5BCgVpT2OcUreK9GMM1EfOE3Am8dGs5eJKhuoSvhslCvOSiKfHan0RJEhV4nDgaR9Rb3uizG
	1X2JKizYI4tDXlNBhlFv2U0Lj+Zzfk6/a8vFexbMLARv/70OWyP2XoT6YfjiOS9AAXgwYQGsXlV
	cntYQswmxnL5C3Iw6nE1KRj1Z+HvfQ==
X-Received: by 2002:a05:6830:680b:b0:822:e8ac:7d20 with SMTP id 46e09a7af769-85d3651d32dmr9328662a34.6.1793733820420;
        Tue, 03 Nov 2026 11:23:40 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3e16ef1sm43323a34.14.2026.11.03.11.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:23:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	david@ixit.cz,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	michael.riesch@collabora.com,
	diederik@cknow-tech.com,
	shawn.lin@rock-chips.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@kernel.org,
	daniel.lezcano@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add timer node for rk356x
Date: Tue,  3 Nov 2026 13:23:31 -0600
Message-ID: <20261103192331.394489-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261103192331.394489-1-macroalpha82@gmail.com>
References: <20261103192331.394489-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_112341_353262_6A49724E 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the timer node for the rk356x. The timer is present at the SoC
level and is register compatible with the rk3288 timer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 1a4562df20ee..cc3faeb9a86d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1373,6 +1373,14 @@ i2c5: i2c@fe5e0000 {
 		status = "disabled";
 	};
 
+	timer0: timer@fe5f0000 {
+		compatible = "rockchip,rk3568-timer", "rockchip,rk3288-timer";
+		reg = <0x0 0xfe5f0000 0x0 0x1000>;
+		interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
+		clock-names = "pclk", "timer";
+	};
+
 	wdt: watchdog@fe600000 {
 		compatible = "rockchip,rk3568-wdt", "snps,dw-wdt";
 		reg = <0x0 0xfe600000 0x0 0x100>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
