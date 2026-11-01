Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC53606A33D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 19:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wg1zcgrb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Jm7ze/eu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=alhYV/0Vs9WaOUAigMf381+dSgprW4EUU95PyEnC5BA=; b=wg1zcgrbL/6NXGIPiZohHzO7oh
	7+Tbfqh9YfLXK+HpkWhyDJwdV6mCEYAsVkviZz2D27htNpH2tviWLHbvTnnJ/Np4MMCQIx8RxoDgC
	psE+bs1p1S1VtHviSgkukEhvARExWFVzRGxN9/f3ZfFAZ/gNLOVWYr3fOqAJ/PubPZ8PsURYnj1sH
	OyZ/qRm6oVxdn1WEfuyrbDCzFsjUlWXxr1bkUno2UEsdXJg4ttj5eTDH7xGllm3SwA6A2YURn/PdX
	GiEy0bBM5E5ojzEj6LJ5TvjGsa18I+89Ne1lGPB1KjzTLuHzY/ePm7wMxnnskxQWvujpc8hwOhyO0
	Mkz+luJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFR-0000000Eojh-1HHi;
	Sun, 01 Nov 2026 19:29:45 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFO-0000000EogI-1Fe8
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 19:29:44 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-3678f64d078so3884846eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 11:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793561382; x=1794166182; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BCkJXdrsAlr6UgG3VN+uF/+sPVvDnFNnW/1WCxoAQCA=;
        b=Jm7ze/eu0IipLz9NQrA5WAR3vtiMcb4KD4cT84hBzztxiRrtGyM8QAucgjYjeSyqzn
         6qYvg14DyRxklrXHo4Fn7mhsWoXLPLt4IJNNuR3y33GbdjLxLU0cumhL7KR8SGJctbES
         hLxHmWfRsfdjTgBytamUhgzONmC8yjYQHy5YDQkX/TqS87t4pL5YJHOI/QowY2glQN2B
         UeZL6ybWoO5S3j8MmjtvzrlIcIfJs8RcjGsp8UN31ERE22CqAqqKGGFDj/DiDy+lL1xT
         TTcl8bDqJly5UDTNCZuQyG7aAEdp+xSA2ObKVy5WxG4ycPl/Oa4tpLa7dpQoe9QrmXW2
         GsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793561382; x=1794166182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BCkJXdrsAlr6UgG3VN+uF/+sPVvDnFNnW/1WCxoAQCA=;
        b=e3ZTtnxgN8/+UVMIzAb7V4QVZbBEQTTEKUhXvRjxojxk7Eh9V5KLr8IiLllwuZEsjv
         0DdBXd6T/jOcoBI+VwPsjvhov+Cyj9b0nXo6r2kvAxJODzEELuKSxO6B93dqzGhn+F1T
         +EOyZ6YiOICxVbZio8bkkTEe9YJ6tgtcwmxwfGaNgrqhozB809AlMMqeUXhpYcnKj6s2
         tStiCgYFaRYARXAcswBEQM7ffadih+NLqargWkQlO7kPzjOLzfAZEarOx6UxmC2rnKUE
         OM6snmnZ0sWfsw7np6NqsRlgkjtGG8iWi1pwN+N34Gx4hDaA37MirjOKC5IQgyFvVNJg
         nSHg==
X-Forwarded-Encrypted: i=1; AKwUvByh+ArC4fx/b+RJVf3dO58JPl3eE/dsEJTkn9ecbvDwflp8rV1bDjXoVecv2GfF7pYfoz1quwoivUA7PRh+6Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z/zE0RZ2Wg0daDIvVd2wE0iy964K89zDMHoKCqKeRGZ9anQNJPV
	C2Hv5iEH0yYTWexn0/qQNqklGZqCZ510PnZCcQs01VCgRcAgg24P3LgQ
X-Gm-Gg: AYBFou20COg3g+aiSdd9OxtHt/V6WrFFqXQl1u9rtnCP1/1+yg21lGR4EX3cGsRPVoo
	z+tQC/z8N1m4rr6AGebzhzdXv16UnmXaYKyIqTIeIA/127hJa3D2VYhUWR/A55dvbb5ruLUz+7V
	aVoCimzfPm9Dz0cV8VV1iYxvtmL8HyuT27C7Bo/+1JAyOWDCOYJq2C+d4EZhrs6i30Ax5o8niYT
	DsC2R9N9a4DMaqvo9uu9cloRDi2DCi1R+1p8807Hp8KAO6+d9sGM5OAe7VyLBoItvh770oAWGLo
	QIlfis8djELQRUcN47vtY1PjL++cnR6Jj5kPKESRWv5KlzHfGZQds3JTxUjUkvYTpckXPrhoPlJ
	W8Dii3FiIr06sBboxm8NFalYKBN1RIVByhZioRAbE4ixwVC+xpHzbUxOr+ks5rooUbW451O7WSP
	YO0GboRc06+VscoY0df9eyzDM0Uoel56ZJjwQGb79KQG/iKXPqOrjYYLb+zB8jJFneSTiOdyISX
	eVXHdJGYdcZLTqbqXt9Svdtl+BzaLSkQrleWUbyhsCzO7pQlyG10g4u0fJYuXiOVxlVmrtFEg9l
	G662bQb7PBempqs7Pc5vYEZvcAw=
X-Received: by 2002:a05:7300:3b1a:b0:351:52ec:60ee with SMTP id 5a478bee46e88-36a423f04b7mr19592157eec.28.1793561381531;
        Sun, 01 Nov 2026 11:29:41 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af1dfsm31471861eec.7.2026.11.01.11.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 11:29:41 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH 2/5] arm64: dts: rockchip: fix GMAC clock parents on Graperain G3568 v2
Date: Mon,  2 Nov 2026 03:28:04 +0800
Message-ID: <20261101192807.897562-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261101192807.897562-1-coiaprant@gmail.com>
References: <20261101192807.897562-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_112942_354522_BFF29827 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.1 (--)
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

Both GMAC nodes list SCLK_GMACx in assigned-clocks, but only
SCLK_GMACx_RX_TX gets a parent in assigned-clock-parents. SCLK_GMACx
therefore keeps whatever parent the bootloader or the hardware reset
left, which may or may not be the internal CLK_MACx_2TOP.

Add CLK_MACx_2TOP as the parent of SCLK_GMACx explicitly, so the GMAC
main clock always comes from the internal clock source and does not
depend on the bootloader state. The rate assignment is unchanged:
SCLK_GMACx_RX_TX stays at 0 (managed at runtime by
rk_set_clk_tx_rate()), SCLK_GMACx stays at 125 MHz.

Fixes: f296bb503a24 ("arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts b/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
index 4c55c7d211599..07cfc68b5f91b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
@@ -280,7 +280,7 @@ &cpu3 {
 
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
@@ -296,7 +296,7 @@ &gmac0_rgmii_clk
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
