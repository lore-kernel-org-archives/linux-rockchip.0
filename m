Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C244606A33F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QkufPptX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0lhCDbbB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=B2L/mTMNeukRyIL7R5kfy6jYwW/EhX8oOA3DH7U1MrA=; b=QkufPptXHhG7+BtgX4RVdsu2yW
	6gn4/5pOFrU4gtvKjB6/MOyUdXz7AhwefBTrbLM+I5x+uTlmXv3qwWWttYaANqcjY4yoIzlC8yOgN
	y1PTn6Nc6P7GkqK5mbOBZSlUZBAu8FLQfS7i3R2QsyGAB1z4Gx2ZgLKiI6JPs8qKmm1GjBHM/WeiJ
	w6IZl4IDjbxFLIYewZ0CS+dXWCAQuKygQg3QDpXWt0vxYGnXUYzEvpIRiGtf8CEV6GFvcokWFl/Mf
	vlzRA8CWEdCnAI4JPyoLxUymBofndiF7fsiFI9GrygmlTLN0Eb97aUwnmEjDq0um5EP5fImUB/ika
	UNEqAArg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzXC-00000000TEZ-1Yya;
	Mon, 02 Nov 2026 21:25:42 +0000
Received: from mail-dl2-x08.google.com ([2607:f8b0:4864:38::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzX8-00000000TD2-1LDX
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 21:25:41 +0000
Received: by mail-dl2-x08.google.com with SMTP id a92af1059eb24-1379d236149so1383919c88.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 13:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793654738; x=1794259538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=f2iHlmQM8BVjrAqEqrTQxQY1XsehcxpHrx5clmyJcPs=;
        b=0lhCDbbBammdHJ+AFSV4yTtIUfgHjagOoTxtNJOubkOLoUU3nAZybNIpFSsceanLSm
         wovWSxJgTG7PbWM39bwq3iDHO4Vg5dAzWwuuQIP3g8KMZcvYg6KFFGKtv3XdTSnEt4e3
         P0pCT8n2mDFU5tW8bItdAKp9tfSuO6T22XDrbjgPY6ScJjhkMImJDC0prGXX2AVmqurK
         TTC7RkZ1RcottqrBeu3N7t7Uq1XSIp6JznhBl6LZsYEdbT16F9L+HeyTBV+mBA/YMOnv
         MvEOf1oVt5x0hN4VYQ47LlrseeEHYwZoCt7ou7CYq3/50S+AOx4kKNKpfIYSNsz4JMUA
         oOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793654738; x=1794259538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=f2iHlmQM8BVjrAqEqrTQxQY1XsehcxpHrx5clmyJcPs=;
        b=LMu/Y4dCL3NMjLOAXEfRcx4Rbp0u2ivXAhHKHvl+FEq3j4H1OuFInNgQmxI/W/ph78
         JZYhPlRSpomO+A+0rJGOMLF8Bk7jbXdN48GHlgQRiVEBYPJd01w20I2vGMgGmGI5QHUl
         zOP8uvyL2QnzRqtUT7vSfVuZC2ZUYUyDNcNQ5AZrF9ga1YP4B9Sjja9/564WO1jcWNBy
         52NRHf205IYPK5sY3WwYfKDn+hIUAyEAeMa+iN07KnDLdWISCNOwrKEbGxYXEL3Mzwz6
         pklWkthGISs7dtUdKlY24hrzckRVM7JQNDcGNq5iYmEb4Zgu151p0Bj6+d4H2ssXnNhB
         U2QQ==
X-Forwarded-Encrypted: i=1; AKwUvByakhFxyn+fSY3tIgU2wgOeLFBiriDV2RwR46oKUMdFnmKv1GCuxK5hgL4qwjTbhqFc/DIASSD1+m9Klmm29w==@lists.infradead.org
X-Gm-Message-State: AFq9FYIO03lKt59OEHpNmUDt6Qrly7SKvFYKDZDK0PJUj0M6PvB1sbvl
	9LondJDn/29vUHUhrZJBigHMGW8SfdRBFJeyMXTANQiKjf9BgNbGdTdN
X-Gm-Gg: AYBFou1/DuMeVtdRrYLNXT4qurnDQ9E+IOZt6iS+YmhwAdTcPelm/LdwKtARZ9mZo08
	U4RZi6sVux3K8L/1uYYEZZTOQuzysQkGSI33WG1N51IcatYts2m/BDWJhiEJeKlTwnfVX6d6GzY
	KSRuWV/cPOS8MxhlRefDVBTszDAclr6A//JODXvDpOJ0O/RdN64ohKxLhU6isi9f/Og0tuoeN1C
	mNU3/EVVwqZ4iWsk/UpzSu5kNSPNyr1aykb02Z5Qn+pbE6zIUukkrFEYaOusjv01M/5MXQ9yrVF
	8/8HoiAerOjhKJqUpYXMlcSwSiF8fZoZoPp4KLbI8UPEDYKsN8H8EZE2E/9rze3jyCo6ljjtTqC
	XjTR0A/SHLB3DLaakPQDWSoDNytgQK1aQZBI5ULtJBoKqOnlYa/TMyGF7xy49sQuAgiZScNlScy
	r33k/MgmBw6xMrsY2KEzMJ2SOpeTNP1QX9BaPkIANx4+uNkxnDXw2EoCAfAc9pQXLs9YHb+8PMo
	NQDUXviA3VVTDWm82r9QU4z+qqwkX0f1iKn7KgH/GdELx2arC4Ogtj7HFgDsoEnKoCCXqO+4mCk
	629DlddGE1UK4y7WEPU94OHEn7s=
X-Received: by 2002:a05:7022:b053:10b0:184:19ee:1fdd with SMTP id a92af1059eb24-1ac56302618mr17357629c88.5.1793654737507;
        Mon, 02 Nov 2026 13:25:37 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428fa380sm37195851eec.12.2026.11.02.13.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 13:25:37 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Fabio Baltieri <fabio.baltieri@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net v3 1/2] net: phy: move DECLARE_PHY_INTERFACE_MASK_ZERO to core
Date: Tue,  3 Nov 2026 05:25:06 +0800
Message-ID: <20261102212506.3348537-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102212506.3348537-1-coiaprant@gmail.com>
References: <20261102212506.3348537-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_132538_361833_C969473A 
X-CRM114-Status: GOOD (  11.81  )
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

The txgbe driver currently defines DECLARE_PHY_INTERFACE_MASK_ZERO()
locally, but incorrectly uses PHY_INTERFACE_MODE_MAX as the array
length instead of BITS_TO_LONGS().

Move the macro to include/linux/phy.h and use
DECLARE_PHY_INTERFACE_MASK() to properly size the bitmap, while still
zeroing the stack variable.

Fixes: 47f848aac4e7 ("net: txgbe: initialize PHY interface to 0")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/ethernet/wangxun/txgbe/txgbe_type.h | 3 ---
 include/linux/phy.h                             | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/wangxun/txgbe/txgbe_type.h b/drivers/net/ethernet/wangxun/txgbe/txgbe_type.h
index 757d1ce8d3ad..8071464c7b90 100644
--- a/drivers/net/ethernet/wangxun/txgbe/txgbe_type.h
+++ b/drivers/net/ethernet/wangxun/txgbe/txgbe_type.h
@@ -315,9 +315,6 @@ void txgbe_up(struct wx *wx);
 int txgbe_setup_tc(struct net_device *dev, u8 tc);
 void txgbe_do_reset(struct net_device *netdev, bool reinit);
 
-#define DECLARE_PHY_INTERFACE_MASK_ZERO(name) \
-	unsigned long name[PHY_INTERFACE_MODE_MAX] = { 0, }
-
 #define TXGBE_LINK_SPEED_UNKNOWN        0
 #define TXGBE_LINK_SPEED_10GB_FULL      4
 #define TXGBE_LINK_SPEED_25GB_FULL      0x10
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 21afc2082b17..43aba23109fa 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -159,6 +159,9 @@ typedef enum {
 #define DECLARE_PHY_INTERFACE_MASK(name) \
 	DECLARE_BITMAP(name, PHY_INTERFACE_MODE_MAX)
 
+#define DECLARE_PHY_INTERFACE_MASK_ZERO(name) \
+	DECLARE_PHY_INTERFACE_MASK(name) = { 0, }
+
 static inline void phy_interface_zero(unsigned long *intf)
 {
 	bitmap_zero(intf, PHY_INTERFACE_MODE_MAX);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
