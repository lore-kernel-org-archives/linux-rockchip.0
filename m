Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081BE606A325
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=peV0Wb6S;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=drEHgXBH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xRDwE8lnZcxC2q/U/GMhxSrFg3aEOIO/A0FY3ngmsJE=; b=peV0Wb6SASuBeKn2AJ8zBRAbcI
	h2VVY2/7rHjbmyqT8YPFKmzAbukrDU0eKHhGZVQnf/RRRSpfw5bG3ad3FQIortaojzAuMZmx7hYIR
	rXhHWz8NPKieyQvIhoPvm5cFDTVmA4lkwBXy/gfhNJbJpkBNzwutmV3jyjHdTet9FWOqr1MhU3E5D
	ooojhlKQjUHJ7QLLq6Ee3EbFVF639MrG9muoWDIWa29eryatuqiO5U3Xms6UtSQE5o0Zft+DL7mEo
	tA76SSmo7HzbjFqlvj9z/o/Mrmmaq9ks5FHRjxcNP8dqTWNCpt0IC8F5EMBQinR2IKOmJ2PdqeztU
	5ga80DnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMBc-0000000Ef24-39QN;
	Fri, 20 Nov 2026 10:49:44 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAP-0000000EeW3-3xl1
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:36 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4bb702a7548so5554065e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171708; x=1795776508; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QJvMqObrWPXnLO8CGXpjNqdNBFHz9WUEvQTHgkM8ryg=;
        b=drEHgXBHrv0h9B46/6akPpRUFATXonoSB8ZzBUeY3PNS6POANN46Pp+Nb0vHOWFgel
         Ph5sCt7llt4H4dDP6zosbPll6oSgBBB2uxFw00yUs8kxWxYaBAURa0Z5PRzmJaN4ngsg
         eQMc9vBEO345lhe+ZtOeNgGAGJVNLuHwCnBQOoig7zL5J7FZsAqs+1rROMUVaLh+YzjA
         +rACt4mXdmCJ9T2ITT7We0OJQ76oxrOVTDC09NMYCOG92Fcy+8cCIoxRitCX+J5X1Bmm
         Ygxg6Oi4/gNFaCJJ+glEsoRnIkQTfc3fPhR1aPbLibm+11Cxm82Aip75D7JSdOpAUGtE
         XshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171708; x=1795776508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QJvMqObrWPXnLO8CGXpjNqdNBFHz9WUEvQTHgkM8ryg=;
        b=gdqUybpP6U3vUTDwf6FwxGTMt3ZLQ7hnPRAL5FbkZRqyZlJxlZJ1f9DsF8Gd1GEZ3K
         575xV0N7l59PkZYl+9emyLbmprQvEQ3jstwhUHdJXLEbEfsAN5S2MLOhNY7ps3HUCR1+
         Z0LJkrM+rj+3+/lZfkr4ZoEfiIHiSqIoym/6In7u8OK2U72eTS1dUoyGnRlV0N05qDGr
         FrQjHNXQmfdGV8YHqGR4QMFfiIUFuSuiFRnFy+uMLDTZRo2g47VV1ABqf/D5yUpvtXk8
         /hnjCfmuIITaLoHbN1SuiflXXgwUoqv9zRMcVktKi0+jOLIXyHzzqLL0pA5IZpm66mjN
         fImg==
X-Forwarded-Encrypted: i=1; AL+hErFVm7sT8cjobDGbv1oyMbgokaVAeIt0/MKDZzVcUHB+E59MXzQS9w3hSLTqtlYohNutcE1t2PgsjqU1+4VKyw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9GpSNGrhuAalqRtDHumEp2tFKoXq3iqgW8ZALqdiACi1ds7yln
	l0OyYqHSCBtUHsznTUZGWzPag0hoCzJ9JVYEb31aAcLp3JSeM2Vaq+QLxpbnO5+UhxU=
X-Gm-Gg: AYBFou1dpHZuKjO2PJXc/fbIvDshtJ+IwVB9a6BXLA7Lj+/MfForxIz+5px1VvCQba2
	3xyTW14TBzbZqCqMEFbmNOsB3/0GrQFVSaD7eggXOPRN1dMjEzmeMXyFq+ouwNglcz7WYcj2VXu
	yb8KSJ8rzOfsMxkkuWPXzcJMr79I79KZpbl80npQT8eEDi8QE7fCRtnPDX8k9a88mkKFZ0rIAsS
	upLEC9MGukTx16voePny93kQvxl+9onXqlteuKsjVomyC6X4cUgWVUEV/DbFxe3jMIyDmXzgfjH
	565L1Qf3jfow2KJIWZTffiWXLD9Kj80LJrnJ/nx8iIYVN6GybyYxsQ4LJPzk3ZPTyPuXGPXd+7T
	MGrXizDJebg6tjk5ybmLX79depOIiiGxQQTA+jtx+O43yROghr0itnWKOIQwL50AiUrT1djyGN0
	mLpeMFJbevzb0GCxWhkEc5ecvxtayhfBiLRGv4fpd0CyMKWnMnheVsF50IldyklitdQFGBOnwuB
	WiOrbDjv5Y2c9cda2Al5ekfkKsokO2ikL4jUZ72P+jGEFeFPOxLs6j7IWu1aVAd0xPKdZ0Nm+/4
	5UQ5f7MIgdS5zv7tkid9dLY+fOYexGcOGzlmp4euTsY1BC5JZOCHt83ub0P2ftYz3aTjoVvl6uL
	YoyA6Wqd4
X-Received: by 2002:a05:600c:8b11:b0:4bb:6871:8f21 with SMTP id 5b1f17b1804b1-4bb88822346mr61768745e9.23.1795171707952;
        Fri, 20 Nov 2026 02:48:27 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:27 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:13 +0400
Subject: [PATCH 5/7] arm64: dts: rockchip: Enable ALDPS on Sige5 Ethernet
 PHYs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-5-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1277; i=alchark@flipper.net;
 h=from:subject:message-id; bh=FH2xw+twk+nUW3rJo+48mjUieXBhhK1SNjsTbxltvB4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqOZ6Xnn3panSrn/HBtvTLNsy570Sf5X7+vXRpWuSS
 u4lfTzL0jGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrpGOsYMXBxCsBUb5rO8E+ho5upbK/p9GmnzVJ0G2qTU69oz/HqmzShhNVAM5Ln+BOGfwaT1nn
 rXGq/b636eCGnd9aqmSe6u5ct3KHVmdjkvyS8lA0A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024832_007009_4559F36B 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Let the RTL8211F PHYs power down while no link partner is present
(Advanced Link Down Power Saving), which a PHY leaves disabled after
reset. The PHY on GMAC0 is also strapped to stop its PLL in that state
(PLLOFF pulled up through R338), so an unplugged port draws close to
nothing; the one on GMAC1 leaves the strap open (R368 and R369 not
fitted) and keeps its PLL running, but still saves the rest.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index b8547395c608..45a4489863bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -783,6 +783,7 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
+		realtek,aldps-enable;
 	};
 };
 
@@ -795,6 +796,7 @@ rgmii_phy1: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
+		realtek,aldps-enable;
 	};
 };
 

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
