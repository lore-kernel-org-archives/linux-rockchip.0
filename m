Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BCD606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 07:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=41UwazU7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=mi9BKT0A
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=54GNdCF3NVydG2LGQZhI7pWTyGiTgVgbDhR6frSnXoI=; b=41UwazU7LPGtoLcK8K8BkULG0d
	Ls0I6BhGB6Q4mquhSk8UnAptB4brXOSLZ3i3GZD6hqm1h416DpRJ+wEtzkSBA7B+GuTHdzQTMSxq2
	XGfsTxfZ3OKWNhZwTMqAxrQYwgwUrNyq+7IAh0px1ZKkcjU1aZMKwmjSpDZeBdCIVWyLc34lU0rjh
	Hweb+X5ggwy+yGQdjbFE6se6/qczluWSWC7H8f0ouNxP+jMd0iREiXqpso++QLzRPBDhNkWeFn8ln
	6GVDu5aRX0N+d8+IcJ5amie9kyhKhPq7S3h009gldIck5lKF8pOw+vv+f9onoe2xymvIvpJJVTVBt
	sCRyk4Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5X-0000000FoQl-27GK;
	Fri, 23 Oct 2026 07:53:19 +0000
Received: from mail-dl2-x0a.google.com ([2607:f8b0:4864:38::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5U-0000000FoN4-2NpM
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 07:53:17 +0000
Received: by mail-dl2-x0a.google.com with SMTP id a92af1059eb24-143601f9f98so69207c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2026 00:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792741996; x=1793346796; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gccHhk1zXKvI2lBwqqMmtzgSCLGdxT+o/5IMCODfY24=;
        b=mi9BKT0ApkvsihwKCECbPFdyO9H/xgaysN8nihLyPQ3eqZ3xjvi87dQiDbxG/Vn9oh
         ovnBQkxkYfM4zNRdj184pfBpzWLDxy1PrxQ52QmvyL00EV5fHhljoLXKPwK9rgtt7DNv
         0ik5UEwC0+Le6NMX9n6fxdfq+0ORrGlngbkKFaCYJp/iA66c+EvSnWK/rL0Hb/e+XnFe
         eOFZN9h6RKvvINBQokRjiSrOqY02IwxdXCrUb3gJ8Dfbb69+U8j7PMAt9Py5bDYR4+J1
         2K0skys2tSslNa3pOeax5g90rlWCDSKpfCN6ND81Ej4Tz/V1N465v4Hi8XLhYj5wF56G
         a0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792741996; x=1793346796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gccHhk1zXKvI2lBwqqMmtzgSCLGdxT+o/5IMCODfY24=;
        b=PQWZtu947IRuQwCLmGIjGPsaqX5Y8EwHYWjuOGBe+DHeg04FJ7kOq3VL+aHji2uvTY
         Ur3KT2ZblUEmCqy8v9esoShlzKBgrc4IVhQFOrZHgrvsr5eOpgz/jK1X0rwx8UUbzkuX
         pC9p4rKTiG0g6U7+wj4Sk91nUfUC8bcSCDSbTiuHM+VET53LVmvTQb5c7Ya/F/A0rdv7
         b0HL/lKjFlufRr36+rB2rhGL0eZfeh2mtRzh1WuU6M4qAabHvqEHJhUkJdS4ldWAalEa
         Z3rnS3ccY3JTYTfQ8xdzQ1elmIbgugtok+uWQ+oPJWypPbXAGTrzUnS2CrJ0fF7mDF2S
         i31A==
X-Forwarded-Encrypted: i=1; AKwUvBx+IPQu5+vEHHI/aCE/Mi153I6wHyn6J/AnYMKvMVtNtyQpC9QMYWm+9uZgckeQzZ0LkMDN/bc5YRFcvzin1g==@lists.infradead.org
X-Gm-Message-State: AFq9FYJrnWqB/FgF9dpwjHGre2nVlEmd6o0j8vBKDuyhGJcWurG0GIOb
	8ANZXSFSNPAZ4M9nlxC9/jL3qo0IIhLJgQ+3J48n1/2xpJ5hzrY0NVt0
X-Gm-Gg: AYBFou3/gk09Fy1wik2Lq7DWc3hjumd0r+bAw01kRcHaj9TsUY34L2eyO4e0DDaQ57c
	P7s+ZQtK9yYwyZivR6Fib0R4YOaPCbr//xKWilH4Co1jw3yyCjcPtdYwG+99G25Swuo8wBn8tEQ
	0dHhLlRis4gcHX0aOlPWCqb+YSJa7KsPPwGcFnUBkp6S1X0B9z30Me9+uCPEHAWGPDsnt1iC2cT
	deUTtWiMq2nfI7wOBtbtr7ABkVwjhVrmu7jSAge8wyrSj+L8YrSwImYqbD8woV3X7nDuY74scZ5
	fr04Zs62p8U7OgLGftOCpVvEo2d3KwLexFMuZIif6bGXgjP/tBX6DtI0pw/GiPWHa173mVdRgTN
	Bl/ipjKcWbc86V+3lPuoH7SPfLlhNp1EHcTMXI/9JZlWqg8uOmtA0DtuBBNykioe8vzfXj+PeuO
	c+KvSQQ6vqXHHVzU6ObL/9LVFpEohU9h+uMD1acE6Bl7kngbohJZGX+lLKBvum9hZgnqTpc8RRm
	Hvrpo5yLYP4shm9LfY7QYkmX6wUTDEjpeH1NN1Vb5ZgFtvmbKleKw==
X-Received: by 2002:a05:7022:e803:b0:165:4b88:abc2 with SMTP id a92af1059eb24-195c1e5520fmr2349281c88.26.1792741995686;
        Fri, 23 Oct 2026 00:53:15 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-195eae0e830sm4122132c88.10.2026.10.23.00.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 00:53:15 -0700 (PDT)
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
Subject: [PATCH net v2 4/4] MAINTAINERS: list DW XPCS platform driver and binding under XPCS entry
Date: Fri, 23 Oct 2026 15:52:15 +0800
Message-ID: <20261023075214.1793922-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023075214.1793922-2-coiaprant@gmail.com>
References: <20261023075214.1793922-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_005316_616657_EBBE3107 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Synopsys DW XPCS entry covers pcs-xpcs.c, pcs-xpcs.h and the public
header, but not pcs-xpcs-plat.c or its DT binding. pcs-xpcs-plat.c only
matches the ETHERNET PHY LIBRARY entry today, and the binding is only
matched by the generic DT and networking rules.

Add both files so the entry covers the whole driver.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7336600952c8..4f24656f7653 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26729,6 +26729,8 @@ F:	drivers/net/ethernet/synopsys/
 SYNOPSYS DESIGNWARE ETHERNET XPCS DRIVER
 L:	netdev@vger.kernel.org
 S:	Orphan
+F:	Documentation/devicetree/bindings/net/pcs/snps,dw-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-plat.c
 F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
