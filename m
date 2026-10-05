Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12552CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVhjbp1p7Qn/NHkceIDUGL9CSCa+8kIaYhH1oJHDX6U=; b=ALvf2I/A3R+srz
	pZqvx6/Iz+/fG924MVHDXIy8oDklToD6P9XYHELLGKAinkz+D2JKgitmb4GMulcF+sXGL/CMlg1Xp
	j10MKI/6dhuCNgtJ9EE/QRnwgwiCxeoOE+aNFI9fNs4OdTULztLf9VcXY2iF7UHj5SLE0qhTHFWJ6
	q52OCGWtSgMyQ4JjwSkmoqsQLrxYYCJXQAkS0fSBIbvGKPMpmjTdgc3xO3LLm6rNXCSTnKo7kT8pc
	2+d06k4aPaCEKLOprMCmtR1AoLE2MpIkzBEHZUhEYta16dlXDqFQGpHRbVvIyWu+4YZGWJynLfEgb
	lXv/Esul+LXSS91hPydA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrDN-0000000HGWm-3jA4;
	Mon, 05 Oct 2026 22:31:21 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrDJ-0000000HGSI-42tm
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:31:20 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2dd9bce707bso9595275ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791239477; x=1791844277; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=NkqOr/9+AQcYM5VE1laF1tF38tEqm2DuahyV5LtxCpSDRAKqSqpJOSF1Qsce8F/e7r
         0FCDg42HX/Z2oPPP7mxffG5PXXQkEvLWTidSgDpZwQSjRas4DimkLG3YFN+dF8gkDXDe
         ZlzgsvL3KS57IismRWxoanKkQN7NJ+lkBwp4ABzDYqcCrs2zQ4WB19ZCJPpGmNoeH6z7
         yk/PQo03JEYJIvFcfIr3p/8mk2jgvbQYGjJKB9p8Jz6n7OE+GY72w7sS0Dt39zU5Tias
         wJFuN91ljnH9Ls3Lmna4LYs49gTlnHGQbwwosD5U4pMzOq3vBtpMJEIyjLWks8sjI3Lm
         167Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791239477; x=1791844277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=C/V3Yxi7Q/V+zG2G1x8Zp1jVDDeL1nyqtUcxSi1RfqqQEC5r93yteNQtXnLy/Qg71L
         lzd0JjoG2Sp0sPzYnwkIIMuRPikjg9SF67R+mwAnGqPJGXJqEHD8NL6wQYYv/MI6r7ee
         LxXD80KiBMqUVOED2rvyTiK1dFhN7EdObJP1PdzN03MyVOoRUSYCPMTSUNyB1MNakvTL
         axIqUcBxfXuZJIBCn91e+2F9x09vCBG/0kF6deHdmbXZyt//pQvhmYM+uMfv2tS7n02S
         9oSyihmTNOeK7mdjWnjN3hVwPybkvKda9Kz7Cpw1GdsMhhBrC+MDtwyZEBPmGCN91tdf
         3r2Q==
X-Forwarded-Encrypted: i=1; AKwUvBwugHSW43dmycLLJEnffLpLIHitPVRYIt4X8O8Tp6nSpAlpXRBNMa3jq/xDHSeRQWz/tZfX8ja8nfPPgMSDeg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJwhagcIaXvQciPYN41dwPs2tkKE3md4IPm+Qu6KBwSa0ae9AX/
	geo7x28P2N0PUcvm6FqFdxBQu0FiW9GSW6XCJv5z1w1AJ76vZ4TB2Hwl
X-Gm-Gg: AYBFou0XSIC1u2DqctHXYpsDvfiAwE30DRTxc4F2FIXmMUPb9NtPPmivget6/KldRvk
	uYFU/CpX42nPnRWAw8oR+7IXk4pd464eS2cB1bYghGwTpPUS16Xt1uxbEK7J9i5g0dNpPuPodBO
	27v0rBPfIhmCDngCDpqdThAVgeegpBvzx32uotjHfNvVwUNuqwMmUyUDLeU21uXmQrhDxwFR3N/
	CsPCgU++5FICqlaJXbueZpu34FUHgUYo1nmaxgv9XtE2JyU8Expo4TO14Jthxg0Np7zJG9qbNOe
	HPJY0DruAazku2UIQq5avGUl/rqShR0DLFv/cKWySPPMm3SNdTFYQ2dNJEI8AoGUwBjkd+HKtHN
	5D1mBMZw/zGtyvGmUPtkb2Qz4bGZzjENzICmlcvXhyr16267pC3ptHnreUFrHGistZNRIERYv3P
	vQ2YRFwyodKpY0y3WpylcRc+RIe03DJL61D3a9zaQvRDbdtmHBRScq8nOsASFgKsRLgrhd
X-Received: by 2002:a17:902:f60f:b0:2dd:c053:82f1 with SMTP id d9443c01a7336-2e49b6290dbmr124418145ad.40.1791239476903;
        Mon, 05 Oct 2026 15:31:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e5a5f05321sm13203705ad.78.2026.10.05.15.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:31:16 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v10 6/6] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Tue,  6 Oct 2026 06:30:08 +0800
Message-ID: <20261005223011.1124347-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005223011.1124347-1-coiaprant@gmail.com>
References: <20261005223011.1124347-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_153118_021301_2ADDD465 
X-CRM114-Status: GOOD (  10.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 65e8a4b5c90b1..2f0f46eabcf54 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23757,6 +23757,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
