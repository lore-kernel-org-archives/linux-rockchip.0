Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D446606A329
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 15:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HeFPLPP3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=J3qfIZnj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fLCL1KqMUt1pEd3e6gTO0UGeu1Wy0SP2lGXNR+d7480=; b=HeFPLPP3h2Aup/QMx4QZIBYThJ
	ZkXbTaji+d7ZihUyF0Y7qtrrbXkc3iPzIk49iB+1bXkOXWp9Y2jgePT7Lc361RJD0J5ALctXmuyC/
	MK7W6yjWZYsKzbE2ROShVm/On5dgLTVZsREr0Z6ZwX+TXnDB5zjx6FVTA6HDzm6p92hMMAPAV1Kmb
	r+NzW7m9ui3w15O3Tq2/bfccMhXM7R266vN8g0UAGh0WEeqCGEpXf9eSWVeTDG/gDBeqJVyXzdX5u
	owsnWU18QJuNyQVYB8nwBTQH4cQiewFJ7HWmvrBLNrpU3U9BwJMbFkDR24l9IAxXx+Ya3w/vyGnI5
	fS8QQdIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUM-00000002yb2-0LV9;
	Tue, 03 Nov 2026 15:31:54 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUI-00000002yZ4-3ga5
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 15:31:52 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-4af173320f9so3566689b6e.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 07:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793719910; x=1794324710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VTVjbTeG+iIcoknSp2y3rgvXBTLyVqZrj1BvDpiUQFE=;
        b=J3qfIZnjrSc0VqzR7BvQpEq3zGLNdb4qc7gxklD5H7AdboS8m0/vAyGXRqH+LqyP0J
         6w2kxVni/DkjLf7XC1F3QoVELmlNPS8xZZWgj6ogRonUegjhztfFhQUw2Q7pa5VkAs48
         JuNCacyIn8vwy1pQZUfu0MhE0PY9A/SH0oroC+FNwoQ+cwfXdBYP8zW1L/bDbQEJ+Nfi
         U6EI/OkA2YB7KJShR7hWwfVDo5vRa7sc8tW7dC0bpKsH5RWzEUdlxpXk0H+fWwiWUOEm
         fF2wZteZaQDIM/U0FbqX/90Pfyv5l36IsplRyNPkqGgXsTfjl4e3dsh2gFKH5XmgHIfn
         nDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793719910; x=1794324710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VTVjbTeG+iIcoknSp2y3rgvXBTLyVqZrj1BvDpiUQFE=;
        b=IHvuulr1MQTOzrtJVJJxYevraaZdfaHye8ccXuGrgYpAAyA7QW/EuvGjDQYX6RZ0AL
         T9mVeEVPp/r/AEOmSBTXFkge3fiztkw+g7/A7W+Ygjamxv8zFOjwqGvKKjrnrClh60KK
         z8l4R6noUvEFb3ySuHSrALzScwZpxn4xqGITdycTL6oJl8rF78+/gIKhNP6MMXfBw8lD
         F0ELkMUoSOkw3Gc9LW/51OT1VtHRwCsQJ5b0QKSorIUu6eVE/c9PSeFqPbUNi7Q5fe+1
         XRi6CJzrflz9YWO2QqkC6F2gmo0vgtSLPl9vTcGVhEdWcLhlkrI0EKbhdmLuJdGicsFn
         l2LA==
X-Gm-Message-State: APuU4Z+TTGQjcdTIfGRc4iJjJn9rAaLF6yUyeNXzUIHObKud0qS8IQTK
	k5rTVc6yj2rYCSAoHrIyLlDPQnsUtums15jMmPaKhXQ4uoJIfMoAd9Dkj75ifdMo
X-Gm-Gg: AYBFou01vlqOFDf2MFqHu3YylZI0qaR5eYHGUeHRm5v96eMU1OO2tX4nhXIZJRobdBz
	9Zxy1J1DGAn8OWkBOAubsCLTEDPmuNGVkYgQMLaso+FiuHIcT1/9+T6jMck9dIWMmJAYUvszbID
	B8RcGaau50a+igAy5VvBabvy2H+bkK9gscipbp8unTPZ9+keJU5fRiEE7JzzImnNnvighMr3TMa
	kUwUspuNVKPVVfCmx6Zyd7k0dnbMKwFAM1uktk+/t/qLfOwaugIVcMwx35lMd7lrF5sAnDTSz+N
	dknVjJv4ppWdBrZDzEyBR9StPXiRVXJ+IzU01mgFR8hMlAASP/klPKtWg/UAZx7LHZW+jPSWUHY
	S9zm7cPQpaK5UbZ7skULtbLKLk/ztyer2jtdLcAFWc0Tw7dO3BOSPF4Pb64lrsJcj8Kw9duAmrw
	lb9KicjodGnNJ8kE+2ttCX+orznMVNsHiUZyJVSdgHZqWKl/E+3orSwzdgSIIiHMJe7/mX2CYCT
	YXk+lz+6HYlQ8Jpab+Wt3K81pAg3UANd+9A+Jx1KJ60NQDAF8kotDiImAKOaVUnTOweFpymABqw
	qbFPuCYm1Lw5fk5hmQlK4GcxYAAERYFTPTzRItUzOLv064lzeZU=
X-Received: by 2002:a05:6808:8896:b0:4bb:ac05:9ebf with SMTP id 5614622812f47-5640ddb2da3mr5827706b6e.14.1793719909728;
        Tue, 03 Nov 2026 07:31:49 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fd95dc0sm11599188b6e.6.2026.11.03.07.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 07:31:49 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	diederik@cknow-tech.com,
	michael.riesch@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add timer node for rk356x
Date: Tue,  3 Nov 2026 09:31:44 -0600
Message-ID: <20261103153144.343764-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261103153144.343764-1-macroalpha82@gmail.com>
References: <20261103153144.343764-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_073150_920703_CD021707 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
