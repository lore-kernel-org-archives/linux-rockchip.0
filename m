Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71946606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 19:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hB69hpz1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=c4B4rgiR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=i3ut1HZsps3l9QVHQTjwGHhvDV8JGreFowq0xKsKmUc=; b=hB69hpz1MKd2y0VpGEyYEkpZjQ
	oKoTvPrQTGDbWvgukp6tIKw2UgvP7moU1oMWGj4+0v1cfMolLTcGEFyRXxsRBefQ/Hf+RMEwPrwCK
	uJ31Oh7AY8aX6UosUlTIOxonbDWWljKphsecR97bPtu+izY4rwqQQ11LpS5sSfVbnPZFa+lcrJUq7
	I4UhWYX1OEaFcS1WhEtA6e4ixEzq/eavyJ46n1TUEhAPVv+tC5zYTTtbknvWrdcL6BuaMu82nSxiD
	RbPwWA/06anIkSqkULo15fQX87Spu3Vo+e3X9C/Oy92iNmtlNEBZ2VwsrhSsB7r9QC3bnL+AJn+Ig
	g4iMV2kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQUq0-00000001WxR-0tu2;
	Mon, 09 Nov 2026 19:15:28 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQUpv-00000001WwG-2hol
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 19:15:27 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-36e06480786so569805eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 11:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794251723; x=1794856523; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fZHVIr5VM3Vdi5D5Up21cs6aWZnNMbMTKTcUaOf0MM0=;
        b=c4B4rgiR+zIF3KFyeSyA8s5XNY7w/9s4Lte6hpIzX2l5d/xUQwQdQpW9czJFEwjmXU
         rcfL9ShWAYxuTHTesICP2oCcHpGo+XZOkd6S6knfP8CTV4N5zSuSwYxfl7oUsTmug/0l
         lzXFeJH8CXflEpVSJjwurayIAeHWbtat7JLDJw9NmxmUR5A9bm0wDuhsFgu3Q8mqwIzo
         Sr7/79D84FMZQde572EquLA5WDQ/9Jswgu+Q1HNqYkjak3v9geAl7NNcICb+rcSiIUj0
         Ku15ldY7zjAO3CKaWN6eFYXcQsFsGURbv1z9ePfn1phtowkjzWS+8b/GWnNwUCsQoOfQ
         LaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794251723; x=1794856523;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fZHVIr5VM3Vdi5D5Up21cs6aWZnNMbMTKTcUaOf0MM0=;
        b=kXxaRLKy2noFO3vWlc0qQ2DSIVyUxpiZd2jiFuc3Q+4k1PgW02YmIY2qkKAW0iYOXl
         F7JGp5NDSEOK2jxdOcv71YVynbE6MnK53E6eMvWTIh8OtosmbAUXPZwa1Pe8qxoXVNhY
         yo3NvnfXTatgf4+5PVnn0vvmMnmyaNRrt6YFa2yjjsi0krqF8qjBB9fHsNFLyv/1Dmk/
         4ROOS8II5t8JOi6xstyG2hSeKUtR+VBCaAJohc7zlWxl9rH0Ge4GuJOfYxdVKJEZmpl9
         TkB1MsPDc1+BDcYaWqRaT4LV3AHHqK9B/sQuqiZMV3RmhAmtZLot3HVy59OdqAjwCjDe
         8rwQ==
X-Forwarded-Encrypted: i=1; AL+hErF1/h527tFlBPMwA5zd4MXnl6KxJHm9e3lspxYwoBjXYMuh/M2NKWLgLkyvrYwCItfQ0Co00Rzzx1kgxi3rxA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+eLt2ERlOtC6V+fw0n5TjffKQhWPjy8Os8GWcO1hIoPtqVCScP
	YSig0wWcn7oZBFJSkmtzkOICMfQp2DjZQP1vqLc8jO3BJmmEKnA7hv4I
X-Gm-Gg: AYBFou0cjQ3PbDPBhjVN+KlqunVYgADrIw0A62+HsSvXGaZdZeWDF2KWPRpBbY+uEzA
	DdIeHjuBLmkB/QsQoARJtR7bk6XgBnakXk4sMC7LC6MEEvKtrOBjOdTQiVAnUIqD2EXA4CRGCTq
	CDygCGtj66aK+/4a4k5J/FjrheoPFC4Y1FIJ6iC/XB4LpsTztGucoBBK0ngbetAGJ/vl/UUFfDB
	1i1x258VBNHup1zQ2l4arFIv4YLvxwpUSdi6ygZjHf0nPl0cXozZ71MSFV6IMiXV/JJqFpmjHpp
	MtUKPdyC4cn8cUdQLR4P8dLHBqyCnVCtiqn2uIkWzc94rqi+N3y1pKcigcQMv35KBAy1njC0OWw
	PpUHYunTU6vuKfvPy44ykuB7vk66Oaqb275dgTEEMSHfqTUwnKF5zWjd1MUSlET/kDaaXFwei04
	eqqLNsqAfiTgW9omc6x4IqMqTQe0X73kQ+UpKsaVNAQHenIGMW5P4kLGSwKsA4tbJ0YqE2o2MA1
	yevzH25LyFQI/eMgkNjskEJDX0IcrD3kZlGa3kxOjTzX3eSwxDuMr6U4sv5/5Dse8lP3IqfjT9T
	NJg17KFDx/I/WcoO/INid2wAOEzWaGS/Bkl6r6nffs1GQaGgQYSa5ELtgdnP49rx4kK0Xmg=
X-Received: by 2002:a05:7022:2207:b0:1a8:ff0b:a4e1 with SMTP id a92af1059eb24-1b3b5fed706mr643373c88.18.1794251722468;
        Mon, 09 Nov 2026 11:15:22 -0800 (PST)
Received: from AERO17.taila7786d.ts.net ([45.95.212.227])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b20c55sm788478c88.8.2026.11.09.11.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 11:15:22 -0800 (PST)
From: Pufan Jin <cyan2254650260@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: andrew@lunn.ch,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: use rgmii-id for LubanCat 4 gmac1
Date: Tue, 10 Nov 2026 03:15:15 +0800
Message-ID: <20261109191515.252449-1-cyan2254650260@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_111526_104091_5F871F9E 
X-CRM114-Status: GOOD (  11.64  )
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

The LubanCat 4 PCB adds ~2ns of trace delay on both TXC and RXC, but
that alone is not sufficient for reliable RGMII operation.  With
phy-mode = "rgmii" and zero MAC delays the link comes up at 1Gbps but
drops ~90% of the packets; the PHY's internal TX/RX delay is required.

Use phy-mode = "rgmii-id" and keep the MAC's default delays.  With
this configuration a direct link to another 1Gbps NIC passes 2GB in
each direction with iperf3 at ~859-905Mbps, 0% packet loss, and no
CRC or error counters.

Fixes: 6d9430d58714 ("arm64: dts: rockchip: Add EmbedFire LubanCat 4 board")
Signed-off-by: Pufan Jin <cyan2254650260@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
index 0d28c6165..a042aa702 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
@@ -168,12 +168,13 @@ &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
 	/*
-	 * The PCB adds ~2ns of trace delay on both TXC and RXC, so the
-	 * required RGMII clock skew is provided by the board itself.
-	 * Neither the MAC nor the PHY should add any internal delay,
-	 * hence "rgmii" (not "rgmii-id") is correct here.
+	 * The PCB adds ~2ns of trace delay on both TXC and RXC, but that
+	 * alone is not sufficient for reliable RGMII operation: with
+	 * "rgmii" and zero MAC delays the link shows ~90% packet loss.
+	 * The PHY's internal TX/RX delay is required, so use "rgmii-id"
+	 * and keep the MAC's default delays.
 	 */
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	pinctrl-0 = <&gmac1_miim
 		     &gmac1_tx_bus2
 		     &gmac1_rx_bus2
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
