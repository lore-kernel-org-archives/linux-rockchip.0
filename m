Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32302CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 10:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Se0bbDiDWes7tAv49oJPQRaHPOPlpB7j5LkuXnt4TmI=; b=Xr2JOklahPbTMU
	ntH5gf3qUeU5/T4DZCp7F8GAAKwTVAugEDqRNjme1PocvGHufT6mxVcqBqnYP+QJ3QcM9bVZnvHxj
	/0cYkIHI7aMbKj1cLkPPlLoJmDahPaBbGmre9i+RNhLirThXjiwIV3St0hsevPIXjVY5m7DDa5o9A
	0YR8YXSgYuDfvkcqHWNCjP1yzO3NSFVQBrWXBo/si4tcw/IIXiZlVnujhE6miO8o29zE1BGyY6YI6
	PlC2jQXhCivPh3GbCFIkZ8vMg8rz5CcbcKMsGFsqNwZoEpa4dA5yGNYH4d4pNEkPzIAqyWjchbJ0C
	2jE1FAWOSFeqwxEWpn4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPdX-0000000CKE3-1aax;
	Sun, 07 Apr 2024 10:20:31 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPdF-0000000CK4e-1kvf
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 10:20:16 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2d4a8bddc21so46621631fa.0
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 03:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485211; x=1713090011; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zm0CQFK2zv7ApnNYT3L03j1/+cA4iy8BnGCrLtvzqTo=;
        b=KgJZX4ebU28dgQOEcjbNzFJ+VBfMkc4i2ktdqA9wQAvdUfPCRznvWbJmnkU2Wzdh8q
         bTCuH71iWrMbKJ0SxzipT+Ghy0YvC+VvSamFsGPAlH9a3n1efy9/AkQUOaxkk+RgIBxq
         lfyqqrr6/JrhT4A+lEkndD242iVjrPFr3T7w3VRG7Za2NlJejdHspJwjSUlrx+xBzNik
         mbM6KnIP6lhol+OOpOh/CW2XBOnbDX7Tx3HpK8lYRDs0W7IVUtlpUf8ClF5tiQQHEhna
         BvC1SjiP8irs+NKxWSkm9PHnB1m5g643f/1842pl3L0NszBMg9sZ0mp2dDGDn71JPs1g
         qwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485211; x=1713090011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zm0CQFK2zv7ApnNYT3L03j1/+cA4iy8BnGCrLtvzqTo=;
        b=kuv99QCzyiA4aYMPGsTXuWWiEYG3Ow1SmXdSQDgz2h8DTNPxtiKfWpq5Ey6m2VMYCR
         ia4PG68ZQrMYZW9LYKsAxqV08Vw/FkStAeDIQTP8lr8YHj1SuZReiWt57JAEZfaK0vmP
         6MFIHuHyKqf2m0W1Z2z0O4yyQqCmEGdglMJcevAwgcp94z04Ks+YC2997id+mY5+d8T0
         GMLaG1Qtb4cEHBiZbz+XnwiRmvxOj6jvpy2+yvshg2p9AFqQn7ARmM5MqwzqcI/otYu9
         Wxz4zQTgaiXkpxS6St0SvkDTs5+lf+2wCyGyYy3G8tYgAxkBqIpMogl8lpbjBDYmVrT0
         hV7w==
X-Forwarded-Encrypted: i=1; AJvYcCVz66Epfo952YDAA/Vm5FRW3MYmfigKJEkMaoHZp1vsmX5mmIZxRhXNN6O0/h2S4Aa4QBf4PbkOabx1Cke6X8NGX/Gp90VPye5as5r8wlCdQY9K
X-Gm-Message-State: AOJu0Yw0Ct4+DrZ5jPCsgTSyKXe2CY6OBFOnCMqELmbxeW1yodkN6QMN
	XuUxKix2tiscWT1uATKJlsNLuhASDWy7pTC1qZqDzyFp6gT+bf+YlLO1MjH1GIc=
X-Google-Smtp-Source: AGHT+IEgAjSogfT+sOyuptAU4z+kLewM7d8oyVlExMI6z9adAX4hTN2911WGxmZGRduXlgbWJAsiIQ==
X-Received: by 2002:a2e:9045:0:b0:2d8:681:dc9e with SMTP id n5-20020a2e9045000000b002d80681dc9emr3876638ljg.41.1712485211048;
        Sun, 07 Apr 2024 03:20:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id f5-20020a5d58e5000000b0033ec9ddc638sm6354395wrd.31.2024.04.07.03.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:20:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Will Deacon <will@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Kettenis <kettenis@openbsd.org>,
	Tom Joseph <tjoseph@cadence.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] dt-bindings: PCI: mediatek,mt7621: add missing child node reg
Date: Sun,  7 Apr 2024 12:19:59 +0200
Message-Id: <20240407102000.37213-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org>
References: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_032013_517873_8AC91FB8 
X-CRM114-Status: GOOD (  11.31  )
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

MT7621 PCI host bridge has children which apparently are also PCI host
bridges, at least that's what the binding suggest.  The children have
"reg" property, but do not explicitly define it.  Instead they rely on
pci-bus.yaml schema, but that one has "reg" without any constraints.

Define the "reg" for the children, so the binding will be more specific
and later will allow dropping reference to deprecated pci-bus.yaml
schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/mediatek,mt7621-pcie.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
index e63e6458cea8..61d027239910 100644
--- a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
@@ -36,6 +36,9 @@ patternProperties:
     $ref: /schemas/pci/pci-bus.yaml#
 
     properties:
+      reg:
+        maxItems: 1
+
       resets:
         maxItems: 1
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
