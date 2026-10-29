Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE06606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 08:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j5DQj1Hi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=SzckIjwg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YXk+S/iaLjlGQl2mvOSmU1Hyhi84qI6KWGr5rVPc3X8=; b=j5DQj1HiVjF8Y+zi9HXDsYSYIi
	OTOy3fnkVZUKKHInQBuAyGrMF8ngGhMA3wZVeIub7D5rRhoCKePcKP9ApOLQ9c//AgdS0iAgJ43dZ
	Y66LSpGZadGQx95Wm3HouClGKa8P2gq5WGUKME7HL5+AVnkoORBavuHZ6miDTevBBylgbOutBDHYG
	q15FWXJAp5my4KFwaUL5BM3ICuJkBO91Ob+WD6M/wL3HVOTB00GBpjHTlhblMHoihmpfUM6JE4dyo
	8ws3cuea1q28Ojye2yjCrYdZLA5o3Q8hdPCYufQKG0FZhEkmXK38z87Scq65MPATUu/x3hXD7wKwW
	hk+OkyoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLT6-00000008iiB-0ISA;
	Thu, 29 Oct 2026 08:26:40 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLSZ-00000008ieA-1OHF
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 08:26:39 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2d01548ac96so3748855ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 01:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793262367; x=1793867167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gfPizs4g3ul+tUe6lyiJ2ER/McCo/d24uO1muqq6200=;
        b=SzckIjwg3i+HlUjCRNVSxmAhSS0/QejERQrPQycWgLrNZqNVsEUCxiGm/31bBjaqtJ
         6RyMGrWrC2hyyGoZbJMjA6beDQB2HFWW9H6rHIzLn9cG67yIPRgxqD2Rkd5hsYPbMbsO
         5IGEgtzQ9ea3dZQbkWAF1vwleN/OFcEpm+sGRE5HdX8OdfwX7qY6hV3h1K6bO+Ctz8Zo
         Vs0rTElTf35GmB28TPck+OPRHpi+EiGmx/aQNRf2HoEUlrZ5zNDaAHUbk83bQxt+D3+V
         RDrySwn9llKgbK9APd6QKEb7oMkzY4KI0cJ3KqRo/3x+6qjAn8t4oz6e5Uf5AeD798a5
         vANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793262367; x=1793867167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gfPizs4g3ul+tUe6lyiJ2ER/McCo/d24uO1muqq6200=;
        b=hjJ4lnSmu2dC8XHwyF9VpMQeQnysPsTPYWdFfRSkHzBJ/DZ+4+oIwhRHOA3pBpr08U
         SVYOLB91/fKcaM50XPpHV0yShUJC2DEkwYtirZGbjK9jVqwpQ+ja7Iqh5i5ICqT/zXOw
         qLdzWpje5qevaWYdvPfDTRg6SyYORfYvK4gnltOVqCuzfNHbu0N9MFsR3cEu1c0LvhLD
         CnRz5Gjj6Q65Byty5OjErIwQXWBB2+GxYq6R2bRCBG9UyzjfoNFufbDiK4idBs1rDN7Y
         021xdg0+EHFmhZ05J6lHSTkf3iAMIY8r0mijPFp/CGFZF54ifgqsIQRaIYosEwSkDHQO
         zeTg==
X-Gm-Message-State: AFq9FYJD6WchLrv62dWkzQ1IhUbDlBjGa24eUj7lngeJVR3pVHnej03O
	Lc4yETG1PYVvSFNDx7t9slu+uOSYhNCj7mdB81FNSifdiVD1VdKTJfNYzkotZfxQQuc=
X-Gm-Gg: AYBFou2QKkSTWLedxiDsTNFbGCI0ai9kgp3YTepNDvjRXKyYR7RRgd6AsHDC1TsHncO
	+ux5iAc20gwkHRB7izRxUOAo057M4WTrOO0UVc8Wwt+qT4SrdJx5NW7nwE4LEOJ84CDOGWB8rzm
	E97xLGwjJLRr2CYsOUjJ4NjvKFDWTts64rpQbTEtGcSXHtTJryp9dswS2itI5usjzA3NWMOCVLo
	XjoXjb00o4iYZKrywfUFKafWtjAeSUxVpoRgTDuGdCLj8zbC/903yRhoto6Q9G81YYexF9Idqot
	iZkN1VA9n4O0DeQtUFlo61dPMT7LD1gg+QktyuiA860bm306S8fOKv5zT+RM1O4KdLjkcHZPRVO
	sEa80PkN7+6PkZ9gzcEWa3fxkIk/8UQ1I/ZSlZRTmHmZWRbMA5jnv764knlZU2cfqpKzowDb+qp
	CpJOM21C1wS+i9upv1VqLVO0t1AWGP23ZB9r8qVz7GhjrYXHimN0GQls4VoGKZqs+8kk7AJMyti
	5nLUGEaLp1OBWZ2AquP2PLXmUpcptRuWXh4KsYr8yVdePsz7v1zkmPIy0bT/dyLXfMTPJr2eaJa
	cD/0F5wBJ8IKqho0FxOp1DOJPoJSl1xu
X-Received: by 2002:a17:902:fc87:b0:2e9:6468:1ff1 with SMTP id d9443c01a7336-2eb0052ce41mr73031425ad.2.1793262366708;
        Thu, 29 Oct 2026 01:26:06 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6b7a216sm30031585ad.16.2026.10.29.01.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 01:26:06 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Coia Prant <coiaprant@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Date: Thu, 29 Oct 2026 16:25:20 +0800
Message-ID: <20261029082541.469999-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261029082541.469999-1-liujianfeng1994@gmail.com>
References: <20261029082541.469999-1-liujianfeng1994@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_012607_380224_88471CBC 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

ArmSoM purchased the CoolPi 4B hardware design from CoolPi and confirmed
that the Sige7s uses it without hardware modifications.

Document armsom,sige7s with coolpi,pi-4b as a fallback to reflect this
hardware compatibility. Keep a distinct board compatible so that the
rebranded product can be identified as an ArmSoM Sige7s.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

---

Changes in v2:
- Clarify that ArmSoM acquired the design without hardware modifications.
- Explain why a distinct board compatible is retained.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a24949b163cff..1b905a7af8009 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -99,6 +99,12 @@ properties:
           - const: armsom,sige7
           - const: rockchip,rk3588
 
+      - description: ArmSoM Sige7s board
+        items:
+          - const: armsom,sige7s
+          - const: coolpi,pi-4b
+          - const: rockchip,rk3588s
+
       - description: ArmSoM LM7 SoM
         items:
           - enum:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
