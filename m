Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CAEDC5DF97
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2026 12:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6r1JjFOUveJbWs/z65gK7Zqcv9fS9+yP/iVTlDwPnH0=; b=SORJVesDWlEuGI
	Z08SCvxB5eTV3LlZCMxVvDG6TSO4sEnfMlSUHUaspfnxMeOB53Z/kKhrCGgHjYTFe1k2rKZ9N9ykv
	7MoEFs9sx6eDRvqPloooh5D2/6s6KSdsmeJnWKsI2hlzgMs/XEkQzaEdewEOlVJJwdtrhrDkmp1C/
	ufQnfz9heT551IYoutG3bouCfsCGDFJsBmsMdUfzudkX9MFbkyusilnZdGLvh2Abfer7fL3MksmD0
	bbq7Filh8xtPXjCr3fGwocNyo8AD0yYepB442LJy9wXHFeFF4kznYsEECMqlQCj8wo+PHK9assFl8
	wUDLT+DovYNd7T5q2nxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCs2-00000002RUy-3M1W;
	Wed, 26 Aug 2026 12:36:46 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCrv-00000002RSc-1bOk
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Aug 2026 12:36:41 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4998b5a63e2so7116485e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Aug 2026 05:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787747797; x=1788352597; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=W53+ozmmytCKTsz87hYJRPt8O2Llloot50egnShiA6I=;
        b=HLwZ6cUNxV+0JY31KlMXXAPxmr02ohzge+Wnw8QQGS3F7A5Xgd6HI0J+NNGtvoSmP5
         K97QfA8nD3bQWM+5Wcn1KItwxjR0PUGPsLwBb8p6yQsavu0+YBsRSMu/p9vcFn6JKMrk
         eeynwxyeXa3vQ0mMtJlKUH/FbdXKndlREBNqJKeUjHDB32gggjnkmJM4E7ulMxOYlB2+
         FqYzB9gTHsQcDXCdtE+EbIZmh2YydF1oiO/MlreR2jl1vD+XLGtIbHL69DtYO+KzBlT1
         GfDgPEY1inl6sjSQA6GkIpd8u7TAyc6tGh4GQnhc1M1v0v2bj/LwiUcALoxECQkm82dG
         5/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787747797; x=1788352597;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=W53+ozmmytCKTsz87hYJRPt8O2Llloot50egnShiA6I=;
        b=lbELAF8DSRJweuu7xNVnA0fLS/KLhvpTsxS/tSGhHlkQT2akeVPpX3m19kOC7CBRUR
         h8+H4B5qzziaZ3E29onXATXYXbewJKdhiEN0cesydN3/T9lRCFFsxD1WeHEYZ07r/S0g
         7bRIqS2DpnqA3mdQoBCxUQx1xrGszMjRIlKjNWdPVejVXUpNBpB8CfgIQqkhws6H3yaH
         Y8NtYYndUDDGb/v8uvJry4qP6TtF/UUSV3KAfKkz2czaWDFO0BzcNQLOOu4/76oZSA4J
         TP8hYfw3TX+lh/bdfvyQ870tC/i4XJ1RZ6ZTB9lxd7UgfpecTq9o4yiPVzWp7EHqSGbj
         CPuA==
X-Forwarded-Encrypted: i=1; AHgh+RpNsXP89gxnqYmJDHBdU2EcGrDYpeU6193hLGcpDTJ3bb36yAzrdjq/FpogLpjj7uA5KdqyumHjCtaqxZOOJg==@lists.infradead.org
X-Gm-Message-State: AFuF++kPtBMmkVkHRRiOPAshZoly2j6Lf76lm5hldH570lblwm5eLtbf
	pljyOfeS2NBWx2xl3A8lg82hMfGCXxSDqsFyE7WHPvzwYN/S+ZBGu9Om
X-Gm-Gg: AR+sD10j6VpQ5/DXLk1d6992QSsrC8NW2Fha6vQlBBxKcyn5pqUSi1RkqAj1uEYzFx6
	fkcgffO1/mij0+ww6VMQL5f+vdm8+jN44E0UREOteTYNyF1PldGXJcH4nPCby20eGP/2YJ5Absl
	6nGFpKJEc9YAztYn50tHIUb0X2tbMvhQ5pqJwcZv1OYGlYqB7HltQw68ERKALE0lOt8tcsSabJm
	fNrF/Ce5M16BSg1ulJx2lNomJy+QLc6ODklhclL8JEh9UrJsmo1wkrk8R50U6KgIkgaVH8znzuk
	NMNQf2TXstBNRkzitvxQgz9KdioQidsrdFGzIFlUrDZOF53H0oxIgOx0hK107pgIywIu8I2wofm
	iN0azJc0gL5GMkpCsJp+jlktoCu4Is5RklfuYYxRezPpS7kvdkYuWSPMgid+pCVpBJfo3uekqDE
	R35/6+vVkbb4+ZFd50evU6w5uRfpqmO8xnxogp3rnzRqTBBPJ1JZtEQeJWfayMWowXY3YG28S+H
	/+rKIHlNrykoBWu0E7HLYgbjc25nKoubqSmwZwCOdsZMxc=
X-Received: by 2002:a05:600c:4503:b0:499:8b13:3a98 with SMTP id 5b1f17b1804b1-499dc6f6856mr63320205e9.4.1787747796976;
        Wed, 26 Aug 2026 05:36:36 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499dc977692sm26009465e9.6.2026.08.26.05.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 05:36:36 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Subject: [PATCH 0/2] Add MIPI CSI-2 receiver support for RK3576
Date: Wed, 26 Aug 2026 14:33:48 +0200
Message-Id: <20260826-csi-2-rcv-dts-v1-0-bcd8d459684d@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACzdjmoC/0WNQQ7CIBBFr9KwdpIyMAV7FeOiwKBo1Aq10RjvL
 loTly/5/72nKJwTF9E3T5F5TiVdzhXkqhF+P5x3DClUFthi11ok8CUBQvYzhKmAMRJdsEoH7kT
 9jJljun99m+3C5eYO7KeP5LfIfL3V0LTM/p2+WSpyDfmoyHQQxv0DULU6Wm1Rkutn+ZG4oTD4y
 +mUpr5xgaK2FFWsb0RytiOjmGg9xNYZJM1RS6vF9vV6A70FmTnwAAAA
X-Change-ID: 20260825-csi-2-rcv-dts-7712bd834de6
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787747795; l=1518;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=bZCTslaMfY2yHuls00yoeNHJSejBPMWhnKOx5GZU7Pk=;
 b=D5SZuHOEZFLq4kV/bI0disa6qhctUgipBPOTdKl3tjbmw47te+DHUq8yqwhgqFIQKWdbWjzoB
 vOdGow0S2mZD2zoH8t894Bq5c5ei5wyPao485qKRl2S+x7izKKzRIWf
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_053639_439890_977287A3 
X-CRM114-Status: GOOD (  10.67  )
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

This series adds the device tree binding and the SoC nodes for the
MIPI CSI-2 receiver units of the Rockchip RK3576. The receiver is the
same Synopsys DesignWare IP as in the RK3568 and the register map is
identical, so the existing driver is used unchanged via a fallback
compatible.

Only the two receivers fed by the Innosilicon D-PHYs in full mode
(MIPI1 and MIPI3) are added; see patch 2 for the details.

This series depends on the RK3576 CSI D-PHY series [1], which provides
the csi_dphy0/csi_dphy1 nodes referenced here.

[1] https://lore.kernel.org/r/20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
Amin Gattout (2):
      media: dt-bindings: rockchip,rk3568-mipi-csi2: add rk3576 compatible
      arm64: dts: rockchip: add mipi csi-2 receiver nodes to rk3576

 .../bindings/media/rockchip,rk3568-mipi-csi2.yaml  |  1 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 52 ++++++++++++++++++++++
 2 files changed, 53 insertions(+)
---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260825-csi-2-rcv-dts-7712bd834de6
prerequisite-change-id: 20260819-rk3576-dphy-2304f848215b:v1
prerequisite-patch-id: fbe2d84f88709b8bf846debe6b8ce62c4392ca63
prerequisite-patch-id: 9bce33933ae69e8cc7f7ef2f0d9acb969620bc85
prerequisite-patch-id: aca697161c21e19fe3a7f62f208da0f6c3b666e1
prerequisite-patch-id: 8f45701f840680a35e044f43ebd3087282847990

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
