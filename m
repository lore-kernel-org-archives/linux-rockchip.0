Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B363606A686
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 19:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=evIaqkjO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=ww8kuy6d
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+gGeutWm3CJUX3XrpfaqgLKcjITsxa/7LzWArn2at88=; b=evIaqkjOR1j65IGvh/t755NUKy
	1LnICI0R3B7vKnKPxyaT9cQ2uja9lmpjS0hlUkW7UxvvRPoo3sdC5wVVr3rrUyTMj19UrGC+PhixH
	+Imq692EsqszrarnvUamADVDbfFm0HnqvERdpKB7xwTimKSBXvuq4i+2Q1cVY1W2f5FWRq/r0HUi4
	JGzsK+4XzewCCXglBl19QD4WJVN3LTO3n2qSMzzFlywH71lUyagzWHs6sWCoskAW4nrsZIOliVB6e
	8/keF3bJohob2DSQ8NfI0B1QXjGwGme/kYbGgqkzBHflRCQENBzwj+V2NHyogLNdkGL/A/fj1o2a6
	6vmRljrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWInn-0000000BA5v-2xoe;
	Wed, 25 Nov 2026 19:37:11 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWInc-0000000B9vR-2O29
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 19:37:01 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4bb64c99d2fso58488305e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 11:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795635418; x=1796240218; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2dHDItMaeQju5JCWIsWfsyYtjyVRkZnaMexPksVcLO0=;
        b=ww8kuy6dbKIK3VD4P5pJyjlJEYChXD+D6gQprL/J/FVEloG3fYJloWt7PjNwl3v9vF
         X0TNAxs9iNDX23l0AT8lnovIooEgvUYLytvlOjmBWCXI1+JJrZZDFKp+16pZn+fE1tLq
         EDqBL3/2n+ClMP7sm0h0vTN6LWOS++jyqoUxkhQgr7UblhlmS2WQai37b8h7svAd9BVg
         x9QqBu8vJKnhDwXkNlU0JeuZVes+sg1v50S9ePzsBzoOwpsGs3l9i8xxe35xv4EBs66Z
         mzSMsDlVUU9h2ROkynXO7k6PVGNoOJ6lpCSTXh8f0flBrUsESNo0dKHqt7iKBV75NATv
         vqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795635418; x=1796240218;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2dHDItMaeQju5JCWIsWfsyYtjyVRkZnaMexPksVcLO0=;
        b=oaPZjJHQGRLY04z5LCKjVZlwu+O10sBv1iddOO3NFJIL9/UPGj2MWYSuv0iYlZLEFu
         2Aei/33YseqcUke0QV+dcLhneYuqpfpxtKkc30BMMSQy0+/M3Aqr3McPRQX+iQq/QGL+
         gdvRBTqlqWhaX++ivler8GahjlR3UrS7T4MY89v31qr0COMFzVkFD+i02FDiGJYQFKlD
         Es1u1/oZOyTvFZla2N9tY0hSUzuAtWsB+Yng333jXr6xz5JATaCJwIdY/KWyOk/TjCaR
         CTS2RJQrAfSW5jkfZ2pvnAV4D2/2d6bGj8XfDAiG2yktED2xgpLO8EkF8rNP0pRHdaLl
         khiQ==
X-Forwarded-Encrypted: i=1; AL+hErHcmXayL+GlGQPMDSAkSTS3gzKEvEh5+RSTjKuRGpl9kzSjh9Xci9lnHTBposlYq7lWVVa3y9O5x1OvIldeYw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+VeGBbUwkv9avnQQEjHjqzG58IESEJNTGkElbZyGPlJBuZsRAQ
	hZsouLbnmkwEY3nkhI+0lNJb7WNbqd4NyMFqZZS53TTEXyWteJ+bmu5cpJbv//gL2ho=
X-Gm-Gg: AZFdTZf6c+nnNzgPe5qoKpuafTuJhEl1a4dTEsCo/BrcApC9Kgd6CTdztxSoHZspglP
	yU5q4iF1jkzaP9s1A4HZXVlcwTFtBNEsahiBE3fx3A8iyD0aJpsOS1hGXQGXNucQtbAHvUu2ebr
	4bFy9+kLJfd49hYsrXFGVi0tGut7QKi+/IFX+TmLHh5Q+tO3lfZN9iFcln0kZ6IEWMKvWQklagf
	1xw50rQ9epEzhpw6GaYg3ViV7jrVRYy4tM/8O6zW1bqFiVMknA1Ssrl0OsfizbkmZKCiVJbJE32
	UzkDL5RihkRb9toe2J6C5F2L/li0nk3paeNSQ6Gi9kPCxI66+ml7pBTGOtjA+OFWzpdNXZBi78K
	Z0fXbm7D+4US2G7gE9aC+UHetxBcfD6Vx4ntsQGFlomjuBG3EBfWNUa2+2UYnhvX3Xli5Fucicf
	qtpxMaFsB9QBGAOByAV6Nxg/TeBHIyvpkAaXUKr0ViSwWYmk1LXpyuGZtuezWsOTs45biaAiMRk
	wPMU2meekmNTVP396bnJDP+y9Qxmo2eb0jnNrUfKymK0/u20xB/3hFmmojb6Glq3uj1C04adgMw
	B+Oga6mnsIHBAdxIihTsCs+I+1KDZKqPMHqKu+6oKh64TwhQhzihLFg/O0tynEObwNdmTJDX7AO
	4M6ZIHIpEmw==
X-Received: by 2002:a05:600c:4f07:b0:4bb:5dbf:af06 with SMTP id 5b1f17b1804b1-4bb88804d58mr446216865e9.9.1795635418569;
        Wed, 25 Nov 2026 11:36:58 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6baa3882sm35614063f8f.49.2026.11.25.11.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 11:36:58 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 23:36:39 +0400
Subject: [PATCH v5 2/5] dt-bindings: net: ethernet-controller: Allow a
 unique ID NVMEM cell
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-rk3576-otp-cpuid-mac-v5-2-b3125c9a5fc8@flipper.net>
References: <20261125-rk3576-otp-cpuid-mac-v5-0-b3125c9a5fc8@flipper.net>
In-Reply-To: <20261125-rk3576-otp-cpuid-mac-v5-0-b3125c9a5fc8@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Willem de Bruijn <willemb@google.com>, 
 Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1744; i=alchark@flipper.net;
 h=from:subject:message-id; bh=vohlOi2XU6LEq2ZrdPzPMNqYE1lULtEksPUJLyGTL0U=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzW5wVOvtXI5DPOV69QviV3AfGYF0Wm3t6q4vsWNzaX
 E+vmfe1YyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNIx1jFi4OIUgKmO+szwV7YmkO23fLvLrG6jBWHdcyaXWU/SVY17Nf8mf0Z7hJ3pNEaGfVxrrRM
 s2XIeNe94vVf6xs7JH9xLtgvU/Vq/8PuZPvZlnAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_113700_637106_2AD111E7 
X-CRM114-Status: GOOD (  11.55  )
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

Boards without dedicated storage for a MAC address often still have an
identifier unique to the device, such as a SoC serial number in OTP
memory, and bootloaders on several platforms derive a stable MAC address
from it. The device tree can only reference a stored MAC address, so
such boards depend on the bootloader patching the derived one in.

Allow referencing the unique ID as a "unique-id" NVMEM cell instead.
Leave the derivation to the binding of the referenced cell, as it differs
between platforms.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/net/ethernet-controller.yaml          | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 30b2a335116e..6966270ff78b 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -24,10 +24,17 @@ properties:
   nvmem-cells:
     maxItems: 1
     description:
-      Reference to an nvmem node for the MAC address
+      Reference to an nvmem node for the MAC address, or for an identifier
+      unique to the device from which the MAC address is derived
 
   nvmem-cell-names:
-    const: mac-address
+    oneOf:
+      - const: mac-address
+      - const: unique-id
+        description:
+          Identifier unique to the device, such as a SoC serial number, from
+          which a stable MAC address is derived. How the address is derived
+          is defined by the binding of the referenced cell.
 
   phy-connection-type:
     description:

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
