Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD12606A339
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uHUchjaA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XmUZ4dk0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IHOQHdFDb8Ea6hurq/LS7xqlFcNtYw8gteBtwiqKiRE=; b=uHUchjaAuSeDzcV6vH3HLPyq5k
	fwNyrnkPjAvCiQghMgh4VZTHHPGAj210RWHDpd9cVTLVuficMkfG6ffjjPpTVxB0O+J+dwAjZuSlN
	RiQu8XHsLNdmK4isWYwc7WsY3POv6fNcvVxswfIw334T0RvlZE4b509/hsZ5Qbpn+BoRG71JHKn6p
	EwjP2DTYdwhcWVB2pKY6qrrxeUXiC3QK6mPqWGJwNJo578ZCwbaHO0gRKjpLcRaFFF6JomngXNdbZ
	KOoHxykG43oDXwS82fDZ1By6shIOEc1gnf6qstS311SQj8iJDVMkjRAmdL4IXlmo/NJPPyjtdu2Tj
	iVxK1uaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeC-00000007nkG-0Jpd;
	Wed, 18 Nov 2026 05:55:56 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYe4-00000007neh-37iz
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 05:55:51 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-cdb2fcaafb7so5138a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 21:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981348; x=1795586148; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hpSIJOUQjOP0Sdyl3LIT9vfFufPLepKEgm5OjTXs6D4=;
        b=XmUZ4dk0LK4ZyyoYY0HbPEL6B6/06TZuYlzPQbnup8IMEHUnieZRUyqu5CRY7VKHkE
         /2NdVPDDLm8BxM5EV9PK2T+hl0ngRg5xIZ0rcWYiiKJEuHU+dOORou5KHqo47938v9jL
         tuuojCHI7qqjbogm5k+4H92E+rA4iQSKKAT38r2qfOVH9A65jUbV0r/4weevGk4vxqdQ
         OoEdAp0IKuADKPutHPmXvQa21CdnRjUnyX1xCBJr1GvkEQw+0D8BNDN0WoEs3UEEBO4T
         fDXKvk26RLeolfBlAqbqGcOFXaXuJ0GHUFu2PrM4sq78OBlO/YPlQCvGDEZM3jlGgP7w
         BKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981348; x=1795586148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hpSIJOUQjOP0Sdyl3LIT9vfFufPLepKEgm5OjTXs6D4=;
        b=B39f/e5b/1RB0S30pn04W7F5Ab0OEJ3TY8i0UJgHPcwquFZ4wWaCKbqj6scKyn9FS1
         tchobWPuP9K83/SP1/GGzr8NMadB1m0o015xoKjOzRyEQnq0NrbsRvMAfvIBtna4CzUB
         PtC7EXe8QqVaPjCL1+8nqig85xTwUpxke2qfDPJNl8wUjlSyen7/sN4SFoYlvxlbQ2jm
         as2NKa+EU/sxKpUsNWUM5Mja2rTJ4IfrNKmPldcqqnjAeCiNIoX5zAtZOLpra55mDtr7
         vSORXsl0FCUr7UdeqwupBJCxBuFjFkciCRHKA00kqmtLslNbBKgR8VDSCWMwyp1AYJ9b
         FJ+Q==
X-Forwarded-Encrypted: i=1; AL+hErFygYipbZQ+XTuHjFnHzJEDjFgtvuPrY5Za0UvcfTy0Ae6I7xrCpS+lWITP9fs5qIzwUVALGHOlQJam3VoKOA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/khVswLXyyxSn2JZcNE0b0hZPyomtNr4rs85s+bJ7mJvWQL0VS
	gUmwkqvNyrOlf2g0Nx8HHY50I991Y274U9GcO63YS8E4CRaNMHQOUK/3
X-Gm-Gg: AYBFou0uCcKXioMPzSu4CrGWGTPjuLn3RvhazdUJvoiaDsiTiSr0NEGD8lt2pZmQIli
	WjYZCwIpan9jd8R9W+DDdK0iFGhsztS6uGOiKMkHgN2xG4HhQsML01f7FjJsDWZ05KgsljW1sUv
	HLPOzCIFaZFn/yNIZGj2ZA1oQ3aW43GImLDGem/CkJNf4ts4Z2YoZzrtAfK18FnwU1wZp7iqAfh
	tuxgRbq1ddkvqzYxdE+TiAZl6f/cHJ4GASi8Z2Jiuz46yulQvs7VyYQDQ4EhyGltx2LrMh1/L5k
	ElfPPl7f/CjUy0tNQyLgW2noR3rLhLYLJXXcTpPIiSVCG1Iz051D0XNygPukgBVaARV9rVAS0gT
	JX5SapJ/1ahkX6WX7L0gwWcxWmbRgTwz8Aj3x5zg3g5tlToWbvi5hgs+eAEHeg4Dn+fytBf1ubY
	hODFAUcOEbyCLl8uZCgi8+74eIFfhOoFUaZv4pYtcSPHEbtSuPHQA6jHZ9r7a7Fnz6SxJ1LmrU8
	Fz+fZ+ytdw+4E5N9x0C2iwJo3hhL+pORihaJKXnqhgorb+yCeuo65xj3WdHvfVwdSS2ez7sQuTM
	29WszsB8TlA7lrPVhaCdHnC55VuTYyq8cTNYcNdBuq66EZhUsAyR6GH3IAd8a3Iwj/57gRYHRz3
	d1qvx0m/N0bzTsLVQPKkq
X-Received: by 2002:a05:6a20:8c24:b0:3e2:3392:540e with SMTP id adf61e73a8af0-3fe83bf23fcmr1761880637.0.1794981347492;
        Tue, 17 Nov 2026 21:55:47 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:55:47 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:14 +0800
Subject: [PATCH v7 1/9] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-1-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
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
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=1462;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=7sQblceXUwwCxWuG4J0+9R8T6ZbfrV3Py9uIEDjHBZ4=;
 b=IISL7MaqFphE9FGykkbqCzIkGXZYfy271E+jKBfZ7rU0dt4KAzfvgE/OuNoSaciPzWsAGmK4E
 OSqwrJ3fqQGAyD5ybTFE/M9BPzMkGPkV3z/56WMpIf/GGjEDLoB2TfW
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215548_830354_97094802 
X-CRM114-Status: GOOD (  11.25  )
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
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
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
