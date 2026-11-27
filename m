Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D2E606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1GAxvAr0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=We1h7zUF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wQUN5FbxejikAtHbLaR3i+TRRm2jMbvAS76lDp8EGdU=; b=1GAxvAr0EZ+yQjjg5WsGjwpK0M
	HI7tmlu2ZnlARwoBHiKfYnuOphQmjAjWfvSsvUFnC7oESHzHnf3fOGyDHcWX0qUtJCnrSHGNWJj2p
	4K0DMINGr8O8sTbtHevYdH4raFheFx+Zj3ZBMgZVqfSTRhOZJaoL9P/+y7gieBJ1Y+oKX9abfri7j
	aH4FTlYrSPDU8OlMNTvcugvDhO4MLy2JqNi8m5JiSd3jroU7LVwZSSVwbDBgB2ncmc/a5s8WuPxWB
	iy5wLBbN8rN5QY/2vgIkDfmpTl3gXLiQnZ1j0Cxctc8E8EfbRiZNIo1VE7Eg3sD59B1RwCOTDi5bl
	KBbDatWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgW-0000000FBXl-3uai;
	Fri, 27 Nov 2026 07:47:56 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgT-0000000FBU4-3rG0
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:47:55 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-386b921f2a5so569593eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765673; x=1796370473; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MOB3aNMg6zK5EGl8etrn5gy8OwqRUvQQTVeOILv9hbo=;
        b=We1h7zUFlcWxaUuVaSSyQGMY+EtNrKfvr05JX5qRyhbYUYr6d1WUhGrG/LgDYNThMC
         Gt3Usb4mMvkl9QPfnR8DEA74KR/J6UXlRhnif5SfbmwSXzQpPqw98FdG9OB6+y8y+Fgo
         Sl2PPE0JccaxjVizV9wh+Rf1QX4DEOdUrd6YHegcxboo/zNapws/kdif0FLiDW92u5EL
         0nOChEKl7maYYC9SjJHH34505fAIjmYR8VOee93dM0se6kHwNiORGHza8/Nba8O7mIRW
         PqHsYYTylvN6g4FIyQIg/FU0hjJFkbWDEH3bq3nfVWji+c/TwJN/jxhxjmML1DUEW3/V
         WyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765673; x=1796370473;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MOB3aNMg6zK5EGl8etrn5gy8OwqRUvQQTVeOILv9hbo=;
        b=Es9LLnGyAAZQ2lpDcLWwy+Z5AiBXOS6yr/JjC4/1UIpyl6TKOyVOGazwrK4F5kjpzp
         iN9qQRvnDKxWOpzs4lZ5XKOnx54Bn/yHN/DKEXxPVRWUfI379OzhUbGmr3ZOARyShceT
         B1HG08eyqFB0LRVKDgJ4/9pTCQcMDQHpyzom6qg6ex4K0ThgGJDqYAuMUzGMSjH5107e
         rtBQzow2nzS15nYzagsvxqqIEb9pAoIug4jyDMTClpn/m6/tDf8ABRzbXi4OdWBQiHCP
         SS4JaDXnf10Zml9uShsKSwqMiA0CRUEvOZd39PYAIRykxPfUE/n+ZxeMoLi5awnd+Gji
         mgvg==
X-Forwarded-Encrypted: i=1; AL+hErGkhx2qKT1T+WCnb2nfCkc1OMlu3MlAzGwPjRZIDTJBT8yw34lX9dFyWXNGmk0WNcyU+BI8yNiVWgIU3bYNiw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9hiAD1e5YInzkXm23zmwaECPjfjtGN5QDVjeHVOt/lllGYW0a1
	d3XD9YhVuwsNv5xX84/i3J98oaCz91nEJKtUiCNHPyFqduysZz/UZ6sx
X-Gm-Gg: AZFdTZeEN9eTD7E3pYHQVXGXnLUYskMP/3LtWKCFctHaG3dDjvXjfQA7t+bkwKWmuIM
	l8ZWbKZrwh/tkarcy17z9RikwmzUm3bXLX08oJz7xw129Mcfo8voSjUQ5hDmY+eOjFTTODO+kNd
	mliqj9ce2JGLqGzOB4UuFtPsw8ibKiDIdngNZWgkPZw/tqVIlWtxlvecQkHABSIiog++RRcT1oX
	/S8Mx/6coIApVMSyC6IM/9Ifp2W+DpC7ddXZLJU0ud8nw9VaNmS9S9fUiC2wx6CGrGpjcOyJIZn
	GDa1xw2i5/Atgr+A78cfYLT6yHKQRwqbxRcoxx34agyG/uMElr5+ykjquf/RV6n5K8OuQLBzCBq
	bs2ICBegOceQKYUFN79oUSDw1YWeZCvE2AS2foFO3jjEDywpYIIVAPJhCHaAW/pitWmT/GmB/7Q
	tnnei59Kg4g8BZoiSHmoCahWpsvrNy/apqDRAQgWKTX9SjeASt7C1wSgs+BIGSHMOHSMY0zVIdk
	exn770e2v0PYJNurqL6El9jUK+umNZfWbxPYlS1IP1cn5Po3sEdNNN4xRQ2eeQ2wUUQvHvqUDLu
	mjMBwDeCmsLz+b+prA2aSK6JGTdboPz75ADJlAqxIJz2+1c74Cfxv9eshIs/V5GV9Y/rEWdmYZN
	4tdIdblbvall8wpHOIKlN
X-Received: by 2002:a05:7301:6187:10b0:386:a8e0:ac22 with SMTP id 5a478bee46e88-386a8e0b29dmr26742968eec.0.1795765672594;
        Thu, 26 Nov 2026 23:47:52 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:52 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:37 +0800
Subject: [PATCH v8 1/9] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-1-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=1350;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=aNt6jFbb1EluDVRLQW8cmmY5lEvfVnKHFjZpwctNRG4=;
 b=/TCcZP1Jwtxcsr499CMyqjBIfHlVD6fhzK+HXpcYMhrJ+L+QrrJw9QVYTVXvoidwRkIabtG5d
 mEbIDCqjHhqBq+hZHZviYPfidoQJ5XIYOzDrekMItz0qTcSXOyruzbw
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234753_983270_A426F2EB 
X-CRM114-Status: GOOD (  10.36  )
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

A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
blocks have one of each and can use them at the same time, so one PHY
node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
PHYs.

Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
host.

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
 include/dt-bindings/phy/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..9ead74d9a172 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -29,4 +29,7 @@
 #define PHY_POL_INVERT		1
 #define PHY_POL_AUTO		2
 
+#define PHY_DIRECTION_TX	0
+#define PHY_DIRECTION_RX	1
+
 #endif /* _DT_BINDINGS_PHY */

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
