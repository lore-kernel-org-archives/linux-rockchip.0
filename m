Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7CA606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 19:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QmbodSZA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mymTL0GP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QwCdiJ61lfRvmW3i1I2mmSYBiHxN+/y9WeUd46ZVd7g=; b=QmbodSZAgFblupJVS+IAJDjz59
	f7CLTp4eb2ia9z+QkpfGufKaEYc3cCMaa09KiRNfrKeqq2lbgvDcgcuLaTRF94Itkz7nWO/s5smem
	c8EiQW8ZCiJx5hWMsuRWcyF9AipAGTBl0YZtA9WPdbRDmMAgeEcI8aAVHubsb12SVcblxj3nmGTyS
	QAvXhn+yinn4bQFvfnfsPizMLEV7N+tOl4Iw4fYYat23AnFw01OxhN4PC853rfXz8v1MzWQnZh9nk
	VPmUpfaVbwswQq0J4SYN4A5ki/Ew9/hFJHzFkFZELQyDzMV+oEejkTibvua7GdHolI6b9hDy5j97R
	Jv53N5Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxm-00000007Zsv-2umq;
	Tue, 24 Nov 2026 19:13:58 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxj-00000007Zr5-09RX
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 19:13:56 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-4ed6d69bdfaso2703243b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 11:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795547634; x=1796152434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=mymTL0GP4CO2puvhlxnWqu/tcyq2NdA25sA6x5JLq8WJw+hRhd/y3Hd2al+gxnqbTw
         sDswmpnBDPA6s+jQ1SSCVIOcw0ZbcpyrRJCNWKIzhaqVeTcJVP6lrdWrQrPVLGgTqqMX
         ZaKfzaDFXtm8LTwGqL3T+ddP31o0GCkchm9d/+uTo/VHiPprBrsW9MrfcrBt/f341upT
         1wtDvW09MZyS/AuCixsCkhBXJrmuQGcj7eTEg1pCQ+c3n//LPQYN+hHojkVdfkqf9WHO
         fZF70z6vMkpPj4LYWXCi3VtPCYK0ge7zY5MWSyg3hAjwrTgxyBW5kEJYEPh5S9kmYwWm
         gYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795547634; x=1796152434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=En0g84aMzZ3LVtBa8kHTNZT/mzpdNEQm8c20D9m8i9dRqh50bLzbQhOgmpak1NJZ5W
         2gvBK75qOy3OwkWkwjcsmRcUQzoHJTYOQaQ6gXhBD4a+Hs1iPk7JFTdxm/U7NV/mZzeB
         OlVFyU28W69W0faLF7E35IJ7FZCmIMWWk4Av03665vft9HJ06UjY9XKlVlhEpjEAIzp2
         bzZ2dO1WfwoVsrIJQ5gDDJZnX9qjyjpSPlegj5vUoeLKXL/bFE12Qx2WDbfB5JZ8gg5J
         MuGoUs8MuZYGHWQdqRr7jK+2gL1d5YmHHUfvwkiC4HjN1PK+MRuY8+Z9Jzu31I9XZ8Ps
         s7YA==
X-Gm-Message-State: APuU4Z9echhlaaAXf6BMXHBc6GB1uz4dTE6zaiORPaHBl55d6L63Q4fc
	PT0HK5gmJBPEtp1YEbmZW7nPtBwipsbCYoUQuVEsYqPGCDzAzyx6KFe5r1AS8w==
X-Gm-Gg: AZFdTZfVxWeYVgKot2rgHBjGExHp1vlZmZEP42nHsyiyIV5AcwOANqCwj1D1zLsWalo
	X0MbDwfqp9hd4LdG722w8mGBuVAw+UqmnQ7fu+n8DtO1N2WupbFmTuPCMGj7LxQilqa/UOWPEGi
	5TTHHxPPGw+PKaxrobgkc+hr965XdVLsVA0K6ZwWdMK2KJWcQkirgNmAhjQv4unpPPq7ssiGemw
	plQlumZWbdVbUOT/loxCjlC7PzNG3kVuuDXE/7wFwMdhMPGf0nJaF2Fcnh4d4ZdTP/axNNC30Vt
	u6mOCJvLhQyNkrKSWKz3ZXjorwMIUsjaK8nXdI8KxREaWXE0i9b5ryCjiToTS7Z9Kzcozwrenhn
	5q2Lq1HQ3ZqjQTg4ahoP0WplnqgWZJjLD+FqNonNEdM8anN+SdKejw3s8bcB0AAqIL+5SQ1sMPc
	UTPC1PtnFjKkcZWt6J3DSMkvAH8Hh2V2e5OwXeJvHmxgg8rByNrLUmj6JKn0MHGOk2SwsVHivuS
	QuFE2uAD7lA+W8IoszH8FAPkIwjIyKssWISuMFf9un+k9ldQlK40KDBRGXXkNH1073mqpC9zdcp
	oqgkyIE/ZNmMiBxs6Ce4zuEOEtslkQ==
X-Received: by 2002:a05:6808:19a8:b0:564:36f8:ee76 with SMTP id 5614622812f47-57a06b269d2mr16096285b6e.7.1795547633773;
        Tue, 24 Nov 2026 11:13:53 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-57a362575fbsm12774058b6e.17.2026.11.24.11.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 11:13:53 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/3] arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro
Date: Tue, 24 Nov 2026 13:13:46 -0600
Message-ID: <20261124191346.434143-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261124191346.434143-1-macroalpha82@gmail.com>
References: <20261124191346.434143-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_111355_103147_13331F4D 
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

Add support for the Cellwise cw2217 battery gauge to the Anbernic
Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index e66803b5399c..2203e092e8c8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -954,7 +954,26 @@ hym8563: rtc@51 {
 		wakeup-source;
 	};
 
-	/* cellwise,cw221X battery manager at 0x64 */
+	cw2217: fuel-gauge@64 {
+		compatible = "cellwise,cw2217";
+		reg = <0x64>;
+		cellwise,battery-profile = /bits/ 8 <
+			0x5a 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+			0xab 0xb5 0xae 0xc0 0xa9 0xa4 0xcf 0xaf
+			0x96 0xff 0xff 0xd7 0x9a 0x83 0x70 0x69
+			0x65 0x65 0x65 0xb8 0x81 0xd9 0xaf 0xd9
+			0xd2 0xce 0xcd 0xcb 0xca 0xc7 0xc8 0xc5
+			0xc2 0xba 0xa8 0x96 0x8a 0x85 0x7d 0x7a
+			0x7f 0x88 0x92 0x93 0x94 0xd3 0xff 0x5f
+			0x20 0x00 0xab 0x10 0x00 0x91 0x68 0x00
+			0x00 0x00 0x64 0x3c 0xa0 0x89 0x00 0x00
+			0x00 0x00 0x00 0x00 0x00 0x00 0x00 0xb2
+		>;
+		monitored-battery = <&battery>;
+		power-supplies = <&sgm41542>;
+		shunt-resistor-micro-ohms = <2000>;
+		status = "okay";
+	};
 };
 
 &mipidcphy {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
