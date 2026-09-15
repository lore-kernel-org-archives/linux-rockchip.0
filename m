Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D6CC88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KLW6OrRco//6/ze+kpkljzrBfLn7MKU6OmsM5DZvNM=; b=qmDcJwjDIYbW0a
	1+6v4AMz+rhQnDb19Q9896As/aFs0C/iU8tm57TnFogHSYYVEBorMWmDHedHo8POzZLJ6e+SKV5Rc
	buG8PJ5mHfNwb2GOjIjagESoQInTdGkhJqKusU/alz82eFn+Yxgfdi0yvCoF+kVKyBSBj+buOLBSz
	YffwvNYNZfFlqD9EQRnuBV73KT+xMvRcCI8akTbfmgFIpwfFlFZtZMdPNQ5G9R4U3Me1utNyn0wXj
	8o1Liw7+a+wnUTKNEkB3g6zDURB62xDbQSc+gxof/KtL7h5N1wynxv03h7c99q6LFZMaYE+LAcmrE
	sag5pWohbgAyB17Ws6sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Qdb-00000005xbV-3n7V;
	Tue, 15 Sep 2026 10:43:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdU-00000005xUP-2AlM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=; b=oRRRhcdOCCdrHyRgxhQYuE9qvi
	Zgpzs8JP7gd4yFgRkFHuHK8UQ+SR2Iz3E1wsjESJcN+FiCQVCFoctt12wfTEDbn4xzGJ5Kw5Z16UM
	KPao+MluVcxaokTsX2/dVxCxsiN0DGd+AMpUnEPEAaLN/3hO4Dn2tW9H7Je1LF2Sh04G02KeUMCpJ
	IerhMdfbxG9kkJcCVn/gqgAKGY6Yn1YfPhEcGic7QSRjhl1HrArZ95x2oyagr8Rp7Zf0ogpmnW0Pz
	/ReqrMOP3LVu0p6oEjcG2l07kwG4l2bZFOft2A5abvaJOJF+ItNVz/8hpONRTz6jdnZuVeFPEt7Jx
	p4PJI3SA==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdP-00000006ZhC-3XBm
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e4b11so933715e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469010; x=1790073810; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=;
        b=Ig7jyYedXb6xT3BsaVLDL9Vro0u8akmsJeIhU5QRCoqBTApwx2TouZTj8Hpq8FJRzb
         Cc9ZeqcdBbfiUHyrkzPbRP8Jgsq+bhhDbMDQkXZKXOg5HPzqe1j66eGghM0FviX4kUfv
         2GEMSYx78bi2zYGmoTRcSvvIOIt8AvAezRZKpcjFkBZvrO8LKLGZKobsHbCIOrEk3Q8T
         Gaw01/victvJy3xyVyqBuow1Q/iF8syitBv32+TTrUPc5YwVckIGGuH0497z7r8HYGUm
         00YB5Tp74wFIChsLjDufhCPYyTfgrDQHGvw85ju8E4Jbhq2zsijEoqpYxe4IPPZSnt50
         W5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469010; x=1790073810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P6/E0n0oXj35RKNOrfB7WlcbfXYrFEXx2o5InJpzTZE=;
        b=Ax+rXVaY0UAkMrOTgH2erwperMUGp2fIG9bjg5adZJ2vu2QcbysqaZUi04ig2/nwSV
         tz26mCouFP/vDyzmLAEKcZFOSXNEcN7g6i0hXyjmOi+paeoNwV+DkEm6ectFshn6BjUf
         /U7sVuWU21Nvc5LY6LfCLkZocj3+2ri3EjW65My4ch1vng8Riwohs+FfmbbFZbuIhDUy
         qGBsEtlte3zno3GKcYQMy4rGYcNtJSES1oV60NXWuVoC3eqbSxsJBbx9SAN0dEyxwL0B
         YlE0kwBU4oEmU2GwsDXIshTOpfMLGEGyL1L35x8fFBc+TOBZxNRH/CMV2C6mfL1BywbR
         Ikcw==
X-Forwarded-Encrypted: i=1; AKwUvBwoyHTGF5FratTsanofkvgRqls/rNGjzbTRPiPBz+AF97Cvq/PPvTsoXiS48qFII3VuyPNIyQN8QXB21CM/wA==@lists.infradead.org
X-Gm-Message-State: AFuF++lP6+MAGwjQ23xp+eTCRG2VqaVCsiuYXqbE9MKXUuGtQshW36vC
	CgwpGcBBD+T1r49iJXf/6eAhIlfG1l+G01C5KzSVR3gsaCNzx8NfLZxa
X-Gm-Gg: AYBFou1xI2lJX1XUvE5FDXHtvdz7QuTuttH6u8TpMftZNIzChBOhglFRpL9quh5KswN
	nVfcwrRcJUB8Ejj0iZZL2r3OqZ/lcUmlpicqd8lcw7m0UeqX6DwSigJvMBJGxSH8tdJ7GVdzh/i
	PIVlwFF7dxh7gKqxIoOf/i0eGPSlSUfFFeBp0sIzS6PCviPx09Q955z3FMlN9bm9DRqx5o86/aC
	suOuogV2peoJVeTyM9RGgLiWwczTRDC6+BhE5KL8QLgWzodrzpO9T1RDrykHK1Z8IHZEgYGxtW/
	qs0pAH1wEd7p/IAKUs1B4xDhWAXPNn589s61hsLBtU8R4iPsvMfPpyILbaWeuK6jewWJ35Zl1H7
	k00kH+OE32TxFsu0jC7I2YXDGAaog0mwhn4+VrphHDaQz+T6ouTghi8tQAoI+cd8xz2rXqCdn6o
	3qELtbM80auW05lEE52yoJyxgEFu1pybGpZA4U5VxzTFluDV2IXeVg4vfauLgpaz5jZvGhfvCPI
	esWPPb7pO2cbxUxIrPH6wlfW8YTHkR5vEq5F6Di3bAabvmRfAhE89e8BtXw8ndmqQXZ
X-Received: by 2002:a05:600c:8b54:b0:49e:7a00:b9a5 with SMTP id 5b1f17b1804b1-49e8222d27dmr8972995e9.4.1789469009914;
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:47 +0200
Subject: [PATCH v2 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3576 variant
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-2-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1762;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=iI/cZyNcu0lJPo6qa1Mf+1HxYhdTetig193HzvnkFFo=;
 b=zvkAUWKH6xsfLa5omHi8dFMZ76+DIzxdxeGwkj/eZhqT0s0dXZoIPjUvdeXPdhzqLFeXe0dAw
 Nxt/00tRo0xBDfkMfHqcmLZPm1clsJ5PnYNVdOmNhuGDzExnxy8Wr5M
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114332_193000_F456C02C 
X-CRM114-Status: GOOD (  12.54  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
binding. Unlike the RK3588 variant, each PHY instance only has an APB
reset line, so add the new compatible to the single-reset group as
well.

No fallback compatible is used because the RK3576 DPHYs match neither
existing variant: their control bits sit in a dedicated CSI-DPHY GRF as
on RK3588 (rather than in the shared VI GRF used on RK3568), while only
a single APB reset is wired up, as on RK3568. Falling back to
"rockchip,rk3588-csi-dphy" would make the driver request a second,
non-existent reset, and falling back to "rockchip,rk3568-csi-dphy"
would make it write to the wrong GRF offsets, so dedicated match data
is required.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index 03950b3cad08..92d0c961f4c4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3326-csi-dphy
       - rockchip,rk3368-csi-dphy
       - rockchip,rk3568-csi-dphy
+      - rockchip,rk3576-csi-dphy
       - rockchip,rk3588-csi-dphy
 
   reg:
@@ -89,6 +90,7 @@ allOf:
               - rockchip,rk3326-csi-dphy
               - rockchip,rk3368-csi-dphy
               - rockchip,rk3568-csi-dphy
+              - rockchip,rk3576-csi-dphy
     then:
       properties:
         resets:

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
