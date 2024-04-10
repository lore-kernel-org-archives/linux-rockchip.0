Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4D4ACD129A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 18:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daQxvO3ugeFXcZ6IRn2prVVQdooZtrpHSPYgPT0DM/g=; b=m447e/ND6PQNBR
	xB+Pnn6vdQhlA08JBqtXu8qVfpiMGv5cD98sBNt/trdE/F8/df7/bsMi/5yqj+VfcZZY4GY9RHGFK
	8yWSbB80sPEZWr7zoYcwmScPaS2hL/yGNV9JEUKE1jUIr/Z00wAD+HoMGF7983cFjhtFoH+7WdKfD
	dB1zet0m9ylkyZ9JYDQj8uZ3u/oq5Y6Exu3XbCAigwTHTeSi/ZkxUQwhOPnmiiUPKJwTtTb2CkA/V
	kS4Vy8CiUAjzI4NZg0jaCNYN/wmetwZ7ZQ3QpyDkLKjYUyjfU56sIO9rz4lWmyZOjKiu0zlJZWALQ
	E5Sgm+PpzHTYeQChseZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucU4-00000008RTm-2hJn;
	Wed, 10 Apr 2024 18:15:44 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucTv-00000008RM1-19YJ
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 18:15:38 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-417d092f2ffso241045e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Apr 2024 11:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712772933; x=1713377733; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXX8VKX+rv9zqtz4L9Nra2C1jH70KvWHrUbepIAmkrw=;
        b=kuzCzDKt4vl6psEDjkQ+xmDyDTjX4xrBn3YycIGCODgy5B7u0ssWcAOzviwnoufMSc
         9S1JFni4v58X6lfdd7LslJx/y3aCPdX8hd2FB8bSouCZCCrisoXnHpAzNZeHr8DwJn0E
         uIMi3j2bCafqAqeUik15De783KpAvJUR8fbMMHdiUynzdRQiW1WetvfbSu5am1XP/A3y
         gN/iKPTmmgDfffxr3L2v6CkZCpusReymXyGgmYwCZU/pkftnjGezG/rq/WzK7wajGYZG
         vR+iiLJp7vOEwDAEysQfpvMZ5rydc3tEA5lsUyMsLHBgpm1pbImLQFgu5w8L6LT+X0+j
         KNyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712772933; x=1713377733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXX8VKX+rv9zqtz4L9Nra2C1jH70KvWHrUbepIAmkrw=;
        b=uwGYFvGwRWd6nmVFpDr0ROibvhhFxbiOTV/AcXpYxRT+QvhBMjUaPBPI7MQVU4gD0c
         Hs2y6jOkdDUBgBnouvvNCbbIFFthFCH3BAh6Gvqn+c4cL065nXhbgzNeyG+GLBd0cVpb
         5POV3O6e1EXFEu/WDsHsRYz6B5SH2ILovabTcbC99rOuP+VQtaRoOaG5UzJs7ORwQhi8
         mhPe8BeOXHJMf6H+VNS/SvM0uwUZdiQR0z1XaP00/7Pwep+KdK5XzIadC9HRKwVkLBne
         nBIylenVd5po/Bbtikln9APwKd/LxO3dCeK7qaXF6oN0h0XeK/eaISvPSHR+/ws4fLtw
         20Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVolTqpJ13M57eXtfpuPvwl0Uu90inUO6dDqCms/IgsvlN6AYj4WnzZ+08O9UasDxQn3EnVyJw2neo+TpKOs7KPI74v0aVz9G7yfsAqcpLw7D4L
X-Gm-Message-State: AOJu0Yxz6OSMd+7FKtIdvExFDjn5L9OqKLDXGx3UdzfF9Nnz8CTJSdQk
	ZS/Rr8LzHrhRSOLlSlup1tFlY89EO3BWaGgGNPBCL8U4XRnsy1JtEDiGlQVAjBA=
X-Google-Smtp-Source: AGHT+IGazA6MZys4bTNDrbcrinuoI8bDaxyaA6yDxg8sZ5OMVeOpTl1JLqQsJ93ZXnFnHSgh7rOPfw==
X-Received: by 2002:a05:600c:4f0c:b0:416:a71e:f2c6 with SMTP id l12-20020a05600c4f0c00b00416a71ef2c6mr2275871wmq.4.1712772933184;
        Wed, 10 Apr 2024 11:15:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d13-20020a05600c3acd00b004161bffa48csm3026487wms.40.2024.04.10.11.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 11:15:32 -0700 (PDT)
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
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
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
Subject: [PATCH v2 2/4] dt-bindings: PCI: mediatek,mt7621: add missing child node reg
Date: Wed, 10 Apr 2024 20:15:19 +0200
Message-Id: <20240410181521.269431-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240410181521.269431-1-krzysztof.kozlowski@linaro.org>
References: <20240410181521.269431-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_111535_352683_1F7A3FD9 
X-CRM114-Status: GOOD (  11.73  )
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

Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add tags.
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
