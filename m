Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C4F606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yV4S4mWk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=cM6T8Mf4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nhXbshFBe8rfMNlA7/gGEOUncv8k5iEUiittwuzecmw=; b=yV4S4mWk5dW3+pJ2oRzCSFAUEO
	2557DAXa+/z90VxqF15rN6CD1YmmVVPPNye61hFjB4GqP2DDAMZpMIE/3TDa5XZX0+TPRMEPdp28m
	MS7qNKE0P6SzUayqYPoMOHa+6atMQEFS4PhvRKQSmV4nvW/v7aWrELwjp2wCNrf/FWbDvr7DwO+dk
	ggQUE6ZdTvaBFSlEpVtNWtLlyFRS/GUN/rmUmhsEVWCX6Kpk1yUL+83mVlyaLi1wXLQU2OM7K5/yt
	EGoQKIGSwamcOgfKvE0P77/1+Qv9sEOM++F2BIIxi2zJJL9Y0d69QD7Mfa1lo7CNTvs3gYzmyZdPl
	wr5xa+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3x-00000004mBP-16uA;
	Tue, 27 Oct 2026 13:18:01 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3u-00000004m8X-1Krg
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 13:17:59 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-47b47de8b4cso2107544fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 06:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793107077; x=1793711877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v5imkjHoPJbbt+/z4S2k7d3KU80DTB4+TLzvQNOFtwo=;
        b=cM6T8Mf4Mmk8WA2wjmuUVo4ZKMMQXFbdsDRVo6EMJ8hloP9qLV0psvyobRfUG5raJH
         t97essoXYsOsTmVWyEQQXP902a8QjBzBoZVIEAbCVeDbBJTVY2PhzFW683zv1Nykt2oE
         xKfLI3XUZl3+irRmVgTABZSFl/lOpin3h3GveHZuLLT7rZf5urYr3nftHl6x4sKqbDD3
         V9Cf883/ccHKP7uuxi+L9sf1Csh7krrDNktS5YElAtspkNDDd1CEk4DSF5sI4xOQafSI
         jU6njjOoQ2ccz6lGQZqUpDH2+I7UjO8L+/lQURjQfRQvOEefKTSSjZu37ZGXoriOP2dx
         oh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793107077; x=1793711877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v5imkjHoPJbbt+/z4S2k7d3KU80DTB4+TLzvQNOFtwo=;
        b=E/A0sLCszv/oZyMWp4Nj4lQPWloqoJznCEUhDKVD0n8TtLraHSDKV/LZR9HlzvPQuE
         pck/DFHhyXsTrGSILdQLjnpiFjF80ryxFme2K6wq0C2nEbsv3zdEAwV/i7GXwmBaW6kx
         ZMWq8fueyeHAjMOXJDVXHXYt6G3RhFf9+GaywWaXYyFccriUPXrVfWZlO53VZpWyliu5
         z2y52pNgksoGu28exmolz14OKiX7DnBV/UTgF9idRWMDHWiTbk8zqZh9jWTxNhZTne7R
         nzTlZ9WFq+sbdSZImw1p2yT/XuVtiJ4a1p5epzYQzb6zN0p+1i/PouNb68IoIo+IibyS
         W7eA==
X-Forwarded-Encrypted: i=1; AKwUvBxjta1mCWg9lROmFDt8KX8iT7I/nkz8YUT3Ixi/GitE3HtLWGsqH2/kzG3gY8oxXt1cUmmcOs0nfBwfPfQ8gw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIoxdhpHGPpA3X5dlzqftoc4iYnnioluoeTuLq8Ar/toS0Vw2Mv
	Lv43Ul0OOF8ghuIqzVV/a5vr3PdAQdMmJ7F7fWtv1qmKiOyvsYEiP0eA
X-Gm-Gg: AYBFou3aibBiWrItd58vpgLy1HTsU0vXmW7vPSAIgXo6tmUzG5dYzwipHdze+Cskzch
	0x0am2SeqUf9tFFCMPLuoTo/WnjBUPDv8rNEXiyumkSdUVdoGwziklUSnmUN8iTB4guXpedF6cM
	KNqg/ZY8cqOatsMe68rfZQeXGq8zOAS+JTHZzc0X3kNi44v2EaXaJOE/FVRdd426P7HWaBCWVqK
	UXK3POh6ZFDd4cW3/DjtOWDV/+1FPtfnHRBE2vQEvT9mGSbnM2rm2SRr+gK+XYzV5AdFI18p65C
	N2FpW0R2vGK4sZ+GauKgOpCvZaNBWzFcPAB9szvdDkQiF4N/N7X/6ortTJ2+xz4TZ0s+a4DdPMQ
	Sxvs9lAMPd3v+Vzw3mghf9FiZN/BtloFFYe0J9D9vcIEOyQT9QTJwOQDDTiNGrahf/nUxShiJnT
	CeHsqrPKqXmG0dBoarGBW+4ZgBpIO2yJi2mZmSWs8DIIMTclI42FZBHd7XDQ8ZFGdd7vrIAaFrx
	289tT4F+/xtdHcZvvfIfqG5nU5Wj6t3Bsw7EMUmCbk/XIA3n3r1WFoQan6cLlzeF22KCSYzO8Np
	DQ==
X-Received: by 2002:a05:6870:9f16:b0:47b:df9f:6c0 with SMTP id 586e51a60fabf-4a83f1b8661mr6536028fac.4.1793107077365;
        Tue, 27 Oct 2026 06:17:57 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a8b74c0a7fsm23412fac.2.2026.10.27.06.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 06:17:55 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro
Date: Tue, 27 Oct 2026 08:17:51 -0500
Message-ID: <20261027131751.1724448-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261027131751.1724448-1-macroalpha82@gmail.com>
References: <20261027131751.1724448-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_061758_365943_142AF2CE 
X-CRM114-Status: GOOD (  10.39  )
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
index e66803b5399c..5c61467eaa03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -954,7 +954,26 @@ hym8563: rtc@51 {
 		wakeup-source;
 	};
 
-	/* cellwise,cw221X battery manager at 0x64 */
+	cw2217: charger@64 {
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
+		shunt-resistor-micro-ohms = <2000000>;
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
