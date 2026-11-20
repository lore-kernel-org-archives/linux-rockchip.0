Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EC6606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sZGhT3VC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=QZyGsBhO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1otRSd7q9jxaBFUCxsS3B7M107BD6z5ClXlox/vYV6Y=; b=sZGhT3VCLoFOAhZgR0Ak5YxKbF
	q0V1kDU12/vd5ggw++HtCraZUJW/wGp1Qf6O+CpMOlBzIy/xV6B34vnVneElh3Q19pCJBGhxvGYbL
	Pk0Pii1czRekXNIGrevthxGH9SwUDKnkkLMP5wimHgwEfn05+b7x3zVWMUzoU89hiCuMXbxcTYRGH
	0drn8ObTNdrccO5uBxwcyiUWp2sbwVhypq23IwlKk5EGor5WJvZOBVFeU1eYHvC5j2azqmm79HkE3
	nOEROjSRxcpcvBKtC2kYA5W7pwMb1C03pU/udfRNxunVcM2yKEfAHVPUMVelN+dTfR8yc8pHCZrRa
	iyzgTYow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAu-0000000Eel8-1Gak;
	Fri, 20 Nov 2026 10:49:00 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAL-0000000EeU5-33sq
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:32 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-48e47347279so403710f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171704; x=1795776504; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uv7rVZc4l2BEJWjfYhOWW8q9b0czaroyJ+vHsktb+9w=;
        b=QZyGsBhOuQCH819hwPFR22xmZwatNQry8p9/4lxoqpZbdso8FCN9L7pX1o4R6R9q/E
         5rGVqqv7e471icJqCH2Zev1GMM91BkKJPi9LJPlY+crXezGvPfKXL+OiFnkiiR5meRpe
         bdkOb6+WcgISDNpovm+sOmDyGk+rvYP54/Og9ZLpSxepa16jtxgd1Lz9KQ08wShaEE70
         Y6WuxjVPZhGCvqwCaL+A0r1Ely+D2dfbdTus7n5wNAexvVmTvDsv5ylU71hKg0mwwQew
         r5sxJElGu7mv70IToMyzJZZVIWdmaDLVyDnMDYnwXtYa8I2nUOVt+idvHCWQhFU0E8TV
         OEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171704; x=1795776504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uv7rVZc4l2BEJWjfYhOWW8q9b0czaroyJ+vHsktb+9w=;
        b=CM8AFZw83D9hPYmBhb73lDKIHTX8E+fK3GQv8wgK6ag5Zo8nVQKIv7FFSMVlKJHjPt
         rzTVet3TWjmGk1ojTeLvcpYKoEvFG7Up99BMYwiXwy/UOiKkW4OE1/QhBaKrdXJlXU0z
         EGZ8dGXs5PbpKJ2DG94skpkxnM6Wx3fpkFPOlld+lwiSUC/7ag0kwrhrAzyCdc1wrhI4
         +c4uBsKpbslYBV12g9RabqbEBWJpybhpWvnh1CVruBpKgBhMxKWEWDFQemvNMJQJEnV9
         qkMc/BcU87xTKoQdB0ifgRekfIHW8PYjq8paoh1hHq4fTppLXSbx9TtWdIJl6TxT65s7
         3Fyg==
X-Forwarded-Encrypted: i=1; AL+hErGyjjr8sFGhk9HU1kJ25SkooZOfDbKPMBYaFIMSApSeWsui+mh/d9ijIs21rh/YKFBrNSsfh2oiXp0a9GagXg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8H7G20ItdfYFnYkQpdWVXQ91+O299cIUit4/viV7koGJfbXGJc
	RhSoDF72xT79WdBAqj1j9R39LAzNwzghbFIUQyx5dnSOe0MSN7Bcdqgz9r2dpYmVxHU=
X-Gm-Gg: AYBFou3GoijTkfSZzKTzl/g0LVDzuspLA6J9QcDCCiZjgSqv1vbB4yErgZyl+cbc9NU
	gGf8N0N23gLzOI3wSbaV73xADr7rDB+ejo9zZczqHQCOsSqTqHIAYE3g1sexBLpU7UylTrS9bdP
	He7GvaFhHfh+d8OjkamZ7xduYxpyebfL8PTu1Bma1n9dbS909rFkkGlS6GSHhCbKCPnu7sW/6J0
	Zj2QReX7H/urCa2bAJmEAN9/LSUfYZvw/dSGefMmxwWTDIOtWbpbcVeiDNl9Y7AC3FPFiXqaybg
	C3LhilcPu39NkXy9BoRoLZaZp5I3dChg5Ezy/PHZkSzHlYLar49su7nMBKAY33Za9RB5dhKLS93
	5Jv8aYA5JzgCJth/BiURFh+LJwCbUCdsTvbkuA5qmFX3Jzn31v+cT1NhWC051Cpj6GWR7VB/09x
	uGVnZvSV1NDVQstuGx9k9/gZ28KMw6eMgjVEWPSchIBlDOuJdOvcXU+kmRFzTEwHUwaWnAx8pX5
	ECu4/xZtFBrEq8A8uZuCPI6L2Ap6LfscmixJfZTLz0aO7apXeZ5D6N5itFnRxmP46dz+u04wYKe
	M8vE0Ucunhg+qJGcr+GImAqhIXrRagOodQgFpqJr1KPvvpvGR/kL+W6u5McC8KgwNe0s3degiLG
	TPD5hyzspr5v9mkkfmiprpcQC/6CZmw==
X-Received: by 2002:a05:600c:a08b:b0:4bb:6651:9eda with SMTP id 5b1f17b1804b1-4bb88922ca4mr53057695e9.14.1795171703610;
        Fri, 20 Nov 2026 02:48:23 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:23 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:11 +0400
Subject: [PATCH 3/7] arm64: dts: rockchip: Drop NanoPi M5 PHY reference
 clocks
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-3-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1217; i=alchark@flipper.net;
 h=from:subject:message-id; bh=5qT6I0fyxu/KWGFadssYTHPy5IComESd8JDoC1h/QDg=;
 b=kA0DAAoWsqLYjxBZ1KUByyZiAGsAJW2gyaWdTUQhJ45E0zow6TH0ZQMhhzZW7bte5h/v9dF43
 IiRBAAWCgA5FiEEnfakPZUyDpq6SEj1sqLYjxBZ1KUFAmsAJW0bFIAAAAAABAAObWFudTIsMi41
 KzEuMTIsMywyAAoJELKi2I8QWdSlK94BAPQ3kqGcbzUlhw4XuafSmIBE+T4TPflywMkR+EONaWF
 hAP4kxZJpaSjPBy3yWYacO2N4ASKF9wtaQl248+2S22unDQ==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024827_539202_8B3B2ECC 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Each NanoPi M5 RTL8211F runs from its own 25MHz crystal (X12, X13), and
the SoC's REFCLKO25M outputs reach neither PHY. Remove the clocks the
PHY nodes claim from the SoC, so nothing enables an output that drives
no PHY.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 49bbef5730d2..778cb8181639 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -805,7 +805,6 @@ &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
-		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
 		interrupt-parent = <&gpio2>;
 		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
@@ -820,7 +819,6 @@ &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
-		clocks = <&cru REFCLKO25M_GMAC1_OUT>;
 		interrupt-parent = <&gpio3>;
 		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
