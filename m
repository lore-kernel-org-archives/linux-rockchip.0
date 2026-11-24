Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24822606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 12:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1fyukNAB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=PtKiTlTF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a961PLFlJPkBlmqgwyycNEeLOOypmqaiNpHOdc6ZTJs=; b=1fyukNABDNarBvkZrYCsko3Lyo
	TzkrnYshUw3W/tvT37zz5RKz9UyNjzCar9i2e0neqz7W7EsCrd2EkyDT3tUWUEjYWPVoHU6fP2Gz8
	ofAjLRQt69eFNyywJVc025SbgelCTHYyPS4vzDOt3gIxBFXJi61U0WQbAg7Vi3IEaayq4CDZ2j/pI
	Elhzx4qwiO+adg5aBAhe6lRDiM13h9EfiXplMW5UcaiNMtAwLxylQ3WXdM7tN8baDBYMuifMcp43a
	ZnH0DRZnPaq6uaiVui0RfsFytVlMUZUz7WnCiuXE1c7BfDODMGBvi3BzfoaY00UA7KZm1D+t4fGZH
	ouqa29KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGp-00000006Sx2-0TRg;
	Tue, 24 Nov 2026 12:05:11 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGY-00000006Sjy-0SFm
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 12:04:55 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-48e09aa5264so2520648f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 04:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795521892; x=1796126692; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tGbWQrDEFsG+CrBMh67TvMJoiGyHK1BPF8UtKJdVMz0=;
        b=PtKiTlTFiuNEs/+b3+eE+JnmlfR3V/l/4ZGhv2Z0aEFywwKa79CLQrUh4+j9duFgZm
         a6DceKKynjzUUVRWoDSptO4IcvHTVFziBkSjUWVssg9S9SHSPkxVGSTypp0Yh7F0i3jF
         3Tgacv+2YhfDK6ln/JOhtva7tr3dWNn5byP3s75oARuN8mJdZMEpv8+jEMFtbd3ZlX7q
         rFEiILIJbKsVeJCea51/33BdftX5otrL0wlfSk8tHMejoxtuoIwy8C8OQhHNxZvxcj0I
         wf7KVcV2hYIf6KikzLgdHW3o1oGmosI8gN9G8U/CxTCjMGXDDaOGO23wqJawRbKVzd1h
         Z5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795521892; x=1796126692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tGbWQrDEFsG+CrBMh67TvMJoiGyHK1BPF8UtKJdVMz0=;
        b=T8Ph5mKBkmNqaQXJ1DSZcQyHUYBuGLikrdMy3I8ZLOI4ON7y3Wao9iDMw37vQcdrvn
         bZBHQUSCDjC8+bHRmijWXulk7ibcrSLx9i+yk40+4/ACrOCzOQSJujhRhMcDkIF0RqHe
         8h8nIMuoPeQSZ8qggIvTJYz6P0rR5018CZKaR6RM7Q42hvngIybgTg+s4pFTIUgLP0Gt
         ddStj0MHddfNyZfrwsiWbbaUzaNVpy7rCCBOrSeCsJImXlAeINjMWowPSGatz8Gv8Jd2
         Sae/PH4gc60EjdQLIrg5iScPaHOt93fZTJnxQbxcyBkaXdzy0wRCFJ4b53NIEOW7rFxD
         4RuQ==
X-Forwarded-Encrypted: i=1; AL+hErFr6tvsAQDPzU1oABVhgcMFCm4dsM4040Y0JsEf3QMBMZ7xWgM8dXCvnGCD6Y8WlYSyqJ8rqKj0J+E2/Txyog==@lists.infradead.org
X-Gm-Message-State: APuU4Z/5sndD7H5IwKJVEOEF5RVdBowkP/TV7/8TpJqGdwcjdddsMJ1N
	EcgtXp3qtHDF2aDIOA/F43NTEaPrFTdhAi3SwytfMYeEHSQeLDGtYkWcZe4ywc8/f50=
X-Gm-Gg: AZFdTZft7eOon0KcuqL5XKwiSfB92eyTRoVkHpgTB/UEIfS3xlY0JpmNcGzrjZgJv7N
	Ze4uoyes8/u6ISEz8AHFbrgyuQhrARYsRRgjVF2DVpYsaqB2lH1UydgExkmThNmDeMpTcZuMUBG
	viEkigQErktZ3El1KMrNgF+LmLv78MbtS4z6bMo6tJJpLaMpUJ4vLCC8l+PobaEZx7uT/xf9StB
	VRN8V1P2A47EmkuXgVu6A80dJYHFobtgGJBj3tBAUK6TZWwKbecK74iIc416RhXmBp5YrBVlECw
	Fk5euWFIVYG0rdHbakOCxjs7wGw0KqkjR1cLKLeWKcoamFxziH32dvQx8RA7bJSQp3rkwW4nXJl
	stQiTFZiRQYgpuoW50CYnt89bJ7PUIBXjuSc3CYJRMcsdPTi6XZorFUpRVOFXfWvTILM9O/2+ca
	y/ycKVq/z/W+QxaJS58ptC1+gRJY6UdvC8NIs8CxTbTnwn7t2rTJWlicIXsO8+862+W/eKayuR/
	KCusfMd6lQLmnBevWnnWZpAc5fXPB4k/1nUbLiWRbpOYDo8JQz1iLINH76GFYdYu2zAYJ3MTgZN
	BCuifT7+fhgQl64i+p+lLdMtQjD7WiEvb7lYwXTVYHnGSIRR9r8ERSbMvbHHWEvcwYXNLQHlOiY
	dJcTVJqY7
X-Received: by 2002:a05:600d:1c:b0:4a4:fc8c:cfd9 with SMTP id 5b1f17b1804b1-4bb9de0d5ffmr64185675e9.25.1795521892212;
        Tue, 24 Nov 2026 04:04:52 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906635c7sm242405235e9.2.2026.11.24.04.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 04:04:51 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 24 Nov 2026 16:04:32 +0400
Subject: [PATCH v4 2/5] net: Accept MAC addresses from longer NVMEM cells
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-rk3576-otp-cpuid-mac-v4-2-d403b8a25113@flipper.net>
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
In-Reply-To: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2474; i=alchark@flipper.net;
 h=from:subject:message-id; bh=niDymIQqvfRIIXXdqI/TGZmfY9YHOucl+/lAZoeizp4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSz1gZXZqQ0/bSZxXNP9Hn06upbPoGeitm9n4su2avFi
 86+E17aMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GukY6xgxcHEKwFR/ucTIcCVAYtO/Sf5nGx6silzcJuR58W9xqaVavUtavJ/e4iPFrxkZNi0sLzY
 7q6F4e63J1AW801YtWhkh7MP7zerfD2eOxefuswIA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_040454_206072_CF1DBEB4 
X-CRM114-Status: GOOD (  16.41  )
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

A "mac-address" NVMEM cell may contain a longer unique hardware ID,
beginning with valid MAC address bytes. Both NVMEM MAC address helpers
reject such a cell, as they insist on exactly ETH_ALEN bytes, and then
discard any tail regardless by doing a copy.

Accept a cell of at least ETH_ALEN bytes and use the first ETH_ALEN of
them, leaving it to is_valid_ether_addr() to reject unusable content.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 net/core/of_net.c  | 4 ++--
 net/ethernet/eth.c | 5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/core/of_net.c b/net/core/of_net.c
index 93ea425b9248..d4a256521954 100644
--- a/net/core/of_net.c
+++ b/net/core/of_net.c
@@ -85,7 +85,7 @@ int of_get_mac_address_nvmem(struct device_node *np, u8 *addr)
 	if (IS_ERR(mac))
 		return PTR_ERR(mac);
 
-	if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
+	if (len < ETH_ALEN || !is_valid_ether_addr(mac)) {
 		kfree(mac);
 		return -EINVAL;
 	}
@@ -108,7 +108,7 @@ EXPORT_SYMBOL(of_get_mac_address_nvmem);
  * because that is the default address. If that isn't set, then the obsolete
  * 'address' is checked, just in case we're using an old device tree. If any
  * of the above isn't set, then try to get MAC address from nvmem cell named
- * 'mac-address'.
+ * 'mac-address', using its first six bytes if the cell is longer.
  *
  * Note that the 'address' property is supposed to contain a virtual address of
  * the register set, but some DTS files have redefined that property to be the
diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
index 39aab0f8035a..b69ef0eb16f8 100644
--- a/net/ethernet/eth.c
+++ b/net/ethernet/eth.c
@@ -508,7 +508,8 @@ EXPORT_SYMBOL(platform_get_ethdev_address);
 
 /**
  * nvmem_get_mac_address - Obtain the MAC address from an nvmem cell named
- * 'mac-address' associated with given device.
+ * 'mac-address' associated with given device. If the cell is longer than a MAC
+ * address, its first ETH_ALEN bytes are used.
  *
  * @dev:	Device with which the mac-address cell is associated.
  * @addrbuf:	Buffer to which the MAC address will be copied on success.
@@ -531,7 +532,7 @@ int nvmem_get_mac_address(struct device *dev, void *addrbuf)
 	if (IS_ERR(mac))
 		return PTR_ERR(mac);
 
-	if (len != ETH_ALEN || !is_valid_ether_addr(mac)) {
+	if (len < ETH_ALEN || !is_valid_ether_addr(mac)) {
 		kfree(mac);
 		return -EINVAL;
 	}

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
