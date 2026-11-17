Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94E9606A32F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SH/B/Ixv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=W+GHFgVa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uWc63qeUGJDJpgGywyOm347ttXbSJZEWmRVb4wf2CUY=; b=SH/B/IxvNyz7Hs1lm8Xgz9WqzK
	/cUMp+M+UW/9cJzbObl6jOVlHLn2oIkE3Xt18G/AZnCnKq93Twa8t3LJMY/FSzjw7/K1jIk9jy4OZ
	H5b/xBY4Br9ylDzvElqfLVyAYHdaO6sYmKa+NAaKkCKzMwD6z+KxF4l359mqiZylmdZ1QoSS2WhX4
	phGt2zugiFAjykxK0RnRvXLd4FLbFmH7UyBmO8Yyb5BjVdIyCmFFRBzP+oQpwR4ogbulmtqXo4ilJ
	adLs8zeG1qadGxzpws6mhywaZuon32Gsi+xMBSt7PWh6OLDPL3zzLgoDo3U4723ANEqnwC2IfrUYl
	+wTJdqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzL-00000006ZLw-35hb;
	Tue, 17 Nov 2026 17:28:59 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzB-00000006ZDz-3Qh8
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 17:28:56 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-49429181ce9so48374fac.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 09:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794936529; x=1795541329; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A1I4z1aUO9/p85/RlMfw5TI5KhCmT/Op6gBboD1szzg=;
        b=W+GHFgVa4qlq0RICd2Gke2uV3YxsDqLbNjYp2yNwBn04W5N+mcWebd0RCkONTxNOKh
         X8Nqqo8A6+1K5QDOA7qGCMwU/tXunKPeY55R8Ca6Wz+VZcLKtQLsUqzJ4PzDuRFB3vJN
         fgor+wBKR+DjsMPaRQF0dpWnFPQcffuAU7dwOyEW0ZWoXta5I8uX2HaYxCjqw796epoZ
         J2O35H7hzZRBIpWPZlwwOvQT4bw3UykGi80z5sKOeNH0Hadxpa8smH0tEEzKnhP/Gbbf
         uCHG2AOWNEJ+hXxsvpiHjgqThJUvRgyGZzDANp6oKRMPM5sntOM2wCVUZF2fHihPcwCN
         4ZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794936529; x=1795541329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=A1I4z1aUO9/p85/RlMfw5TI5KhCmT/Op6gBboD1szzg=;
        b=GCkt3ZzmNgmczFFKRDXnWfoMdWZ627f9CnHrxVI9koAV9TalefR6ZhHBPQKedOmoj3
         Xiajf1+y8lexv5Xvkb/Tg0g9pSNrl/zn+7YYgMljVm9+oHwKWsBUOwSz/MK6OCpDwCBg
         vEyOqADMt4qCl2EAXKGRe8VTFAtqQ2s819Wzf/5hC59pBA1gBnpWg3fbNLh9o+y1kBJY
         Uj8gF5lXxc8NqFuIqMFQGzMTrdEjQQn54zZTuLdVUhY85kRvi777NrN+2gkNbMTaYZwZ
         5Fv3hHt0vXWHZVjpS5KF41UXcXwPZE+//Q3BZKiMXsAocRiRR+a5muOBYyTNCp8Knf+F
         zt0A==
X-Gm-Message-State: APuU4Z8QQiaw4DVFryN/S6uPLmdFQ2mkYab+g7OF22c/NPmM1HhfiqWd
	qLdLG9SeH2W64DlNz258NN2OT6ysKs8vy1IBef6A6TWa0z+CrGT8UHnXCfV47DM5
X-Gm-Gg: AYBFou0/zfWMl+cX+D6yjXdk/+DqHjqPaGPX6rvYiQmJvk9plD3MLqY7pjqj9/qilkK
	9jqr8TUMqEPQAXbmIJjQUd/+E1icmuM1S2nf7IMsFuKoljlwtjwuQEdlvd2hSFCHCf38a+vVahQ
	6xwlOqs/8nGQOqAEaMW6qVOk2UZh/aoSlBjcKvRhXScgS8bcVFZn8cCH0R826yZnFPyigp7tzMz
	bOYMGTHx+jlPxU2FLrhRFiez/aaByqU+rCuOYIGlFptfW2L0CsDfEDY0qmhv1zyJUC5ya7H3QzG
	BfhYHleKHtxkKuhmgiHExUGgokD1eK8Xmgsd6SkhUS3Ya5XdGsgb9HlX42+7rSdF0rq61ztz0TB
	bAe2QKCFUUcPI5FNAeQ1cZ7CSLUT+ZJBbTccImngKCT28XoAXvl7z7S+XcFiZR9B1z92y0PYhs+
	pkWin1GGHsyT5SnGMFVbKP2eY7OPd2SRUO99DDQwxVAlXsmwSFTI9M84naiVCnKMbUs9kvEAnRJ
	6A4dFlBOOMARoy9vh2Qc26i/vQP0/3xONu74Gga+Llys1/8ng1S0KbV5XwNdTVe7MNmYP59Oz8D
	vtdIOGs4ucQZVtTTYAD5DklCXBdBNw==
X-Received: by 2002:a05:6870:1707:b0:4a6:9418:da4e with SMTP id 586e51a60fabf-4afdf7d9f45mr11592986fac.60.1794936528546;
        Tue, 17 Nov 2026 09:28:48 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4b70d5b1c64sm148358fac.14.2026.11.17.09.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 09:28:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	shawn.lin@rock-chips.com,
	diederik@cknow-tech.com,
	michael.riesch@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	daniel.lezcano@kernel.org,
	tglx@kernel.org,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	david@ixit.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/2] arm64: dts: rockchip: Add timer node for rk356x
Date: Tue, 17 Nov 2026 11:28:42 -0600
Message-ID: <20261117172842.65346-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261117172842.65346-1-macroalpha82@gmail.com>
References: <20261117172842.65346-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_092849_859814_A4E9C8A7 
X-CRM114-Status: GOOD (  10.03  )
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
index 7e23f6983448..3c7178b013a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1389,6 +1389,14 @@ i2c5: i2c@fe5e0000 {
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
