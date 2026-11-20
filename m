Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37815606A336
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Qpjke0SQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=3Iy8yYkJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=q1uZKNzdK7fdTJSqcnLLF1LPgu3L6IhrUBvk+BFPRpE=; b=Qpjke0SQb1MmVPydl2NQ8JnNEF
	+DRx+FwXPr+pKqwTrOLp9facWSyaaTgq8Bq5lOKaEgLnlh9wnVGNXbHioMJqcsBBKNsybIbRUKIbz
	koeHuD2Yd8H2QwTXkgx6WEGWw1S/OY6hfKsebT2G+D9wEDRcZIK/aIVEPP04QT0VDDiDNspXNa9OD
	m4i/g8WyrIhtHK+v0o6Ef7RCifQHAy+17iBHaJevntHGkrparUcQk48mHXFGrheEud9G5iZkRS9EG
	z9uX6x6cA2riWTdZxVM6N+SAWUmc1nVKYsMofoOrLIJ8QvU9i6Ni4z0iOEDDtWXubHmb0ttJnxHJg
	xuDqrb7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAl-0000000EefN-19cV;
	Fri, 20 Nov 2026 10:48:51 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAJ-0000000EeRy-1mTp
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4b467581b98so6944085e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171701; x=1795776501; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K6vwty36fbvOEYt/rnRieouyTlj21/gT8dvewmNyeDo=;
        b=3Iy8yYkJMnyn42Vcp4AYDyYV9zvOwTIbuzK15w0Y2RflDO0dwmcTUId+ZMRsQGVUOj
         +IH/x2BX1Sf+FWex9gM4AgDU0knfhnF5O6TGdoPd/F4o+EfBy4+L8EsYHLNo6ssHRC8T
         z8+KE0xP1rUlKirQh+rmNjsMZPwGp4tLDgxgFXlM/a3dT0i9hSVhrhp/8fmUP4fXWu2p
         RCNWJrv9TZH12KPfIRwx8YfqZHLG7x1HkLTdstra3ecaRlpChBAUm40umRRxABVlY0pj
         2qMQzOjUyBfneqlQi1fZ5sVB+FW7xmtwthOYBTHOV/8/T8nHoLUshhjfuRxCG21IB4ix
         u0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171701; x=1795776501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=K6vwty36fbvOEYt/rnRieouyTlj21/gT8dvewmNyeDo=;
        b=xSZYG+H90OW69y5JH6B2W6uLhojIULT4iqmmMqeoCh+eJuPGRljjfwD1hHLs99ytHB
         buWbZ2IcN2MpMA7CYSHQMtcmLrtoXghd9mVIaULZrThP2tz0AQ8Vuom9jtDtkbWRwpmR
         4lxdnexmQWxPxRQqXoCGf6G9BYgkcTeOp6z9Ob3R5CWz86UFtBrJEzdlMZPI9e6yThJ6
         dtS2Roo+jnjnF4CHfxDcNXwxc05euHAFuWKWzX9dXXhpGaVo9QPeAzDNtujAW9TcwIl2
         jrA9WSgbnNZweoU7nrKji/HB4JJjwrDimDzXTQh0ltUPhMjWDiX8sAtgXJeZjAEau+aE
         04bQ==
X-Forwarded-Encrypted: i=1; AL+hErGb7kvH9Fkda8sZ0HwgpY5M14rMKqb1yKzojloUj7jNlbK7wI73nKSB/Zd1GFbnRAq+abI+e2bF99JrhN841w==@lists.infradead.org
X-Gm-Message-State: APuU4Z9l4dRMtZbUc7lt7zrVEXdCg4uClQXZVEz6WsxOyBk61W8+beom
	wu7o26SAMpF5mngdmSRvWPHPq6uZtO7ycZu3HrXE/u0MIjTLNMx6xTcKMtcocibbL6U=
X-Gm-Gg: AYBFou36NEf+gqGyIkO235NjbdJpWF4fuHzZjrfwQ7lksr0+ccVnguVn7JhgbViKrjn
	7fBzK+gvTyry4IoLGQ1Q0AdVLQ9WjAUrjc5c8rUAOW74veoMQJX56WgiBinxCAQigzGKjOACkBq
	XyR6nlgJCn2JP/RAFFlsowFEWzKzIhjTq/xQ++D1zl9zrVPlByNBwiCizq6JP9yPezxRgMAYaMv
	an5KpcM7scWakAdMQuMI4bOvtRJpKBPb8huqIqr8mmuIptjFlcWURKjoQQwwtiFQuuUy+7em4Rp
	R+Le571b5QwIU7lzNhEz9JLG53iPXHH3pOID1/dsNpBRUILbXRW8+TdL5EZgv1SlOH1PpOoN3Um
	bfvUbMzS3OUZIm5vBl6oNion2epqbkVPiWcml39xGm0JKCb0FZtBJh1vMaUF4mjvQdh/xAywcBp
	vXxHftQ9aL4SiZ7EX/VQtuiJm6NaAI1HEdFRol+uVftqKoUUhA+hNnx8+EDnxsMNPxWB9RORPXL
	rJY9RDAG5BEHtbceDVpiPjeKduQCVSPPk7kCJsJhPQPEwnBB93K2Ejg/IrGd5KczM5bLR/a1i1b
	55K32ktvxnQ27LXX/Wx0vP8RmB2pXcuyJn9PBUN5ZaovTa35AXcDNlZItyoLwTHx6B1TqxygEWX
	O0JEi5+zr
X-Received: by 2002:a05:600c:1389:b0:4bb:7347:d5c0 with SMTP id 5b1f17b1804b1-4bb88826937mr52978715e9.9.1795171701461;
        Fri, 20 Nov 2026 02:48:21 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:21 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:10 +0400
Subject: [PATCH 2/7] arm64: dts: rockchip: Describe Sige5 Ethernet PHYs by
 their ID
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-2-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1787; i=alchark@flipper.net;
 h=from:subject:message-id; bh=aEOUC6ekrPOrGiTuRYNi1p8Y9du8BazFw7AJD/RWz+U=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqObG6x98WmKwc/vhWVP3Jn/R9C/Odpb4pp/5Md1ta
 v4F65vnOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjqaREM/8OWT/j+ZRmPzg7xvSc+/c8/2fkg1lin78yXtcElTnc0toQyMuy6FtA
 3pfr/wXWCjHNufhHL/Bw697/nvmCNznSRuKRaZU4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024823_609386_253C775D 
X-CRM114-Status: GOOD (  10.94  )
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

Both Sige5 GMACs connect to an RTL8211F PHY (ID 0x001cc916) with its
reset line in the PHY node. With only the generic C22 compatible, an OS
has to read the PHY ID registers before it can bind a driver, and only
that driver releases the reset line. Unless an earlier boot stage has
already released it, the PHY stays in reset, never answers on MDIO, and
neither Ethernet port comes up. Booting straight from U-Boot SPL in
Falcon mode hits exactly that.

Name the PHY by its ID, so it binds without the ID read and comes out of
reset as it does. Name the node ethernet-phy@1 as well, as the Realtek
PHY binding the ID compatible selects requires.

Fixes: 40f742b07ab2 ("arm64: dts: rockchip: Add rk3576-armsom-sige5 board")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index c5b2f22402f5..b8547395c608 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -775,8 +775,8 @@ es8388: audio-codec@10 {
 };
 
 &mdio0 {
-	rgmii_phy0: phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
+	rgmii_phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac0_rst>;
@@ -787,8 +787,8 @@ rgmii_phy0: phy@1 {
 };
 
 &mdio1 {
-	rgmii_phy1: phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac1_rst>;

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
