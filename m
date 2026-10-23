Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E32606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 07:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=waSlZ5KH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=OxkQ5Ehu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SZGMSYNK9Uu9VK2D0nc/lx8LtnRywVs3hlVVSzLidMM=; b=waSlZ5KHh/ROFOHuCEOHz/3Up/
	kdfSKVDDm+Izd1zspta+hLjcBiZcI9Fv+b8hb4wnF+CGm5ancR+dV6kt1Sh8JoYmeOoPhoZsdU5cn
	PbP44FCVzNqgqk6/4fxWE+wJx5sJ0LP8fX2JMO/xbeIxSXfpRrT1nJX08ZVzmSu1VajYG64jpqO0x
	292j44Tf4hyhS6gO2SabnBetGJC+aF8FKz7EPiV1D5xCDwn/T4ZCK7ekLsx5QgJAvxO5WDO2f+S7n
	4MY54xsLSV7WVw4IgelLzgyLhR+v+csCSPU25iORHWH8n7ymaMFIFhQeg2wF/izITHZ4x18vns4sa
	4d60l5Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5X-0000000FoQS-1MlZ;
	Fri, 23 Oct 2026 07:53:19 +0000
Received: from mail-dl2-x08.google.com ([2607:f8b0:4864:38::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5Q-0000000FoIT-0OCS
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 07:53:13 +0000
Received: by mail-dl2-x08.google.com with SMTP id a92af1059eb24-15901d262aeso5209c88.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2026 00:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792741991; x=1793346791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oKDGcISKRXyb1sB9uqlDY+pTllRaTOFvJWwaXJaklRE=;
        b=OxkQ5EhupjeipoOrzSjp+SNdWLyQqGWDSJIawjDuRGY9aAF9vfggvjGI29GfDR6AdG
         iQ9fn7CMvivl0OgB79vSBsPK4O4BnRt/VYCniafaap3UayIDo94yKxDakKtTtO3DQS7M
         geFTie7ATAUakEpPQeGdDShblD7zE3iMHV5TgOVyNvDezq8B1DRDUZWInxwhXQj7Xzfg
         lLPdA+oO/FqBhwJg1ne+C4jqWvCcb0OLe23Du/I3232yZmCtZ9KiuERGfWpPARDDwgt3
         VpCE0WnJyRjOhVC594TjNhsKKThTkOsXeNUwWEJw/Ue4HIhup1AuzNN6y2bT9r37HY+a
         AecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792741991; x=1793346791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oKDGcISKRXyb1sB9uqlDY+pTllRaTOFvJWwaXJaklRE=;
        b=oDEjS8eXEDxDMR2mwN0QsKXCJD3zgTmhvZJbj18Xf1OjROXsYMvOTmSRiflffZob0X
         OZDYGErEvmdfVV9tlYr0nAqkVFQ33qieL0ek/ooUziuNZmGDo8ZSntGYB5tHTl/B4P4J
         aKmmXBYEzrhL1tbTW9en3GHkcpbLVF9WvQ2KXSVeGx7jpDWIScnXvqmbeIS4GM3dC6xm
         4ymcsANuy7gOZh+AabBJvMia+BelcaUT0634pEluCg/NYEGRNZArEHSnrCTxOT/K8S0O
         PtELIFHxysmIK+jrl/L7mZwDGrnhlWx3C/H6Fi7NT1DpL3iqES04is7/AioR1okbVh6q
         NZ2A==
X-Forwarded-Encrypted: i=1; AKwUvBzC0RaRryn4xKcFqtZlcSN4bt7E5A7JzOfh38ql7hyMvQBLQt7cKbyDJWFHWLddXIY+0rDzOw4qERhkyhlTUw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJyI0bx4//p5Q2Nf9/BXrXlrcsqWDXNstGXZCsnlJO3BluUCf7f
	adgfqN60+2NZpjq6IoK0Hj7ndYZGXmyxXSotSi6pZ6sKTddahZ14V3yC
X-Gm-Gg: AYBFou04QK+Pit46kECgB1XpjETXcFfAsfvUN3mhFj3VGrN6nVf7Mf2VNBN3l3z+j+s
	1LX6m6OyN5V3iARZnkUOfW00O1d9T8H8qJqf+YsRUxHPkMTlIQU1TPe9XQqlratFWq3tv3yUXdC
	KZY8vex1kjW00sWTkMS9LoFTtPQdACDjwFoxSVL7yaBl2L9mJB9BDPfObFeNwjP0SjW8eqbNkm2
	6qLvV5PmuIMXs4l3muamNN+h+4frsCRYwvTP8NBn9Y9OZpnZB95D44R3Knnkp3qB9EXaJlVCQ8l
	znVRtwuCgnUlGN2N9CYSSoGLPvkM/ZZnnCHKv5dpvVej3iEyW8T+YzQzaXzaJmsBBDDBI+KEAzC
	aTAaEVeyp6/tcCEdgBhp/LB7za4GM1fXZKZngTHlN+5+l1yc2XRW2zJyWY81WXVYoous+Z7Ugzy
	2pDQ+ttj6ncRArUrnZikq4gsEKy6nIcwDFcarY3SiLEt2huJ9nHECghh2rPNczmi1a74ANZGBeF
	JrpC1wBnpm7GGzQ9ETFfaZneHh9ACmQo0ozEbuWhSMVPc0Ghu0rVnQ=
X-Received: by 2002:a05:7022:3b89:b0:196:b805:9546 with SMTP id a92af1059eb24-196b814d873mr867259c88.10.1792741990964;
        Fri, 23 Oct 2026 00:53:10 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-195eae0e830sm4122132c88.10.2026.10.23.00.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 00:53:10 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Eric Dumazet <edumazet@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Coia Prant <coiaprant@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net v2 3/4] net: pcs: xpcs-rk: fix cleanup action error message
Date: Fri, 23 Oct 2026 15:52:14 +0800
Message-ID: <20261023075214.1793922-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023075214.1793922-2-coiaprant@gmail.com>
References: <20261023075214.1793922-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_005312_138368_F0FBE934 
X-CRM114-Status: GOOD (  11.76  )
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

The devm action registered by xpcs_rk_init_clk() force-suspends the
device and disables the EEE clock, but the current error message only
mentions the EEE clock. Point at the cleanup action by name instead,
so the message covers both parts of what the action does.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index 698a43b75334..6f0a110e32d2 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -365,7 +365,7 @@ static int xpcs_rk_init_clk(struct dw_xpcs_rk *pxpcs)
 
 	ret = devm_add_action_or_reset(dev, xpcs_rk_exit_clk, pxpcs);
 	if (ret) {
-		dev_err(dev, "Failed to register devm for EEE clock: %d\n", ret);
+		dev_err(dev, "Failed to register devm for xpcs_rk_exit_clk: %d\n", ret);
 		return ret;
 	}
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
