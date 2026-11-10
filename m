Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B77606A32E
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 16:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ljdbQp3w;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OHa0ry7f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eCqlsaF52SHsqcs8uvHePc4LE6yjiAjB/gMFkTb2KMg=; b=ljdbQp3w52fhHNoDsb1QCiP4J2
	nQaJqXzZSM2BrFHv2B3wakvkzQ8s1DOnYufsMqgtHfZz3+Lqcv3N7KOUOK6xJr4RbL1bNHAEZ8MK9
	nLTM1xypCl6tt5puEBoqddEJgWEgXo85C3mb8zYPo9cnKAaXZkjkXG+69CshnLIQcF2Haubrq3XU3
	ZJe1QFpEEguceV+x02yhz2Bj26C88b+Jq3hXhP89o1Ex8WlM5w6q+DBGpu5AhLIjBhRfp6iAykmOX
	v3xlKdeFh/HQPAlWF2Z9RYdASOuem6TjF9t+vLaVttVmWjdWaU4YE+2os3pp0FzCm5UeEYkMmURgA
	qsC2m2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoMr-00000004TpC-1wld;
	Tue, 10 Nov 2026 16:06:41 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoMp-00000004Tnd-1zGu
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 16:06:40 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-36fe5944e9aso2285757eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 08:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794326798; x=1794931598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kJO+2+1LAsC2NcBt84N3ty/qYLz68nqiItgXHSjfx20=;
        b=OHa0ry7fgU78K5rmvmuGv8WcneNPg+MJlb5MZG9hBClNyRcvyAqzlfLKVVkPLVh39Y
         03NFMEIRYha3WwNQ8zdEDn6M0x5W5jCBqFF9vqcUNwmKA8CesKdFfGRafRcsTkU14pkF
         PO4YaQbj/Gn1IYZM+Ug+xCUCXvDTsfRDzofeolACMvUF8MZkfFoRTzhJMu+uvqdrA+Y4
         aZbsIZyTci2A0uaLvWaD6P9foisejw5WI5sTj+OldrPF5CH3YAqqZl3Am5EGNQks9YPG
         ZXnNVLtP742MSywPQblDnwo6mU7REb+eO1yujQbj1TOnHggW7dGzUxeLhnFdgTzwc4/X
         MtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794326798; x=1794931598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kJO+2+1LAsC2NcBt84N3ty/qYLz68nqiItgXHSjfx20=;
        b=xBE/s7uGvtjfy/ylu4fEf4M0uOWt1bqpWVgk/JX4D+xgq1VGYqvkApZUv3ev5uttU5
         yN3KjK+h15YDwbKqLg81H3oVD1fmU3Dg+8bOP+71LAcTfpxajo/1hwlGkzPl3Szr9pen
         lLkZYK6jHIloMKI3tNaYLWNEZBXTDJ3OlRK/nQOmV/l2BJaqrKxQH1AshyaDWkL696Jz
         juT3y7IcMY+wlbaZW3o7a4GdIpV+PAt7+jv0DmEsXSI+wXnEeeEwITrllPx/rJY9mcIh
         InOnrmugwNo+JsZNAr9baDY+RNzv6yGBOHsMLlqYCdvYJAqw8GLAIkS+8CuDj4B0IMHR
         3dEw==
X-Forwarded-Encrypted: i=1; AL+hErETmUmkXfJNKnN1keHDOyah/EfvU0mWuwpSXrsyRvEbUSvmJsxOIUMyZvUjAcn0mvEo7pMQ692+SwsGtYjy9w==@lists.infradead.org
X-Gm-Message-State: APuU4Z+gZDidkwjHzhB4xAul2FDj8xtaTCPB8VPBO9OMFwU713kU6b1C
	J5FP9oYsV/crQ93vgojDI5eEQFSySh9IWReLJ9rmDHDZ9U1yC0F4MSI8
X-Gm-Gg: AYBFou28eySq2+1MI0+XCp3SVuuAkGiUfmbXy5874PASY0abDe0M6VujXjpKUFkNXz2
	of+P+Rk66rynWw6mFqnHtWFtl/tGbnCGkoSyKU+5oKTTcIygDqTMzGdixoCAVJxhxrXeYhCA2nZ
	AdtAzZ6RfJ/imYjhuL4mIb6ebEKeXIgeaqqZFEIuMzmancEbK+FUuCFzHd6c34BEceJ0z4yuDPd
	4tnTn4d5KzXGCCpRaHrFgK7GAlByb2KfM6PmjFVxC1/NtyEQEzn1FPVAfcSc5rowyNssAa5dy40
	migC/DqVDYAA62NtivcDkc11bdQ3ydIA+w8Q+X5EQ2O3QYlulhSIP7r2uB2t/BUXOmgvilgEynO
	LC8c8sknic+zoH49FRUSiRwUM9qHbYcKMp7SN7/5++oSRpTfHUG7txfoCNK/DhYw4KDf6Yvyx8D
	wahKAbeo7BLtDn3FwKfW/kpyxowJKCZnahe1nn8b17p9ht1zkw+4DA1I9lom5oTcNspJFnBgeQW
	8XSJTzR7aQn4Ce5KoEX6DD4v1UXsP7+83RXgZ5aY0c47HbNSBZ/8+GyOs2EEk11Sn81Dj/p3fQC
	HjledPVZPRyLlPIhj0njPYbvY/E=
X-Received: by 2002:a05:7301:d188:b0:36a:12bb:7f8e with SMTP id 5a478bee46e88-3751eb8ababmr3534905eec.13.1794326798150;
        Tue, 10 Nov 2026 08:06:38 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe306e3sm8453403eec.7.2026.11.10.08.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 08:06:37 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
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
Subject: [PATCH net-next v4 1/2] net: phy: move DECLARE_PHY_INTERFACE_MASK_ZERO to core
Date: Wed, 11 Nov 2026 00:05:53 +0800
Message-ID: <20261110160554.918652-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261110160554.918652-1-coiaprant@gmail.com>
References: <20261110160554.918652-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_080639_508136_54EBB406 
X-CRM114-Status: GOOD (  11.94  )
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
length instead of BITS_TO_LONGS(). This allocates significantly more
space on the stack than necessary.

Move the macro to include/linux/phy.h and build it on top of
DECLARE_PHY_INTERFACE_MASK() to correctly size the bitmap, while still
initializing the stack variable to zero.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>
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
