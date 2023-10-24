Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8B4C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVZGlG3+jVW9X0SoDk9Y+70UoC+0//NOzYxjprzMmaQ=; b=5AE/Fpni8RC36w
	OElKEKva6WKmHBt7swjB5N6kV29MEUNTeVTPozFTBSLJcsVmg7znlcUOMi91BrEVVX6moVi2fHIB3
	1vcMuiC4AJ1Shmll2evyQPQuqOLi/4XUZKs4NIbnXXmNCzo2NjRVGMRkSipq+eoeCxlNSX4CeFzlS
	xDQjFsrtW4HoAX90t2J2xU82dOUhIgpJ79emcu9vq9r4cME4mPAZ9s/Nzxw/ahqe5sB+x/nQV7SKG
	dthdwELEs0+ZzmfFh4AZkiEzr2g1wxllgctlV4BgQkfu0VNeSpF7rNpNDfLR57eqzHti8j/hveQ60
	w9IYv60J9xDBAi7kZfNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ5D-00ADb9-18;
	Tue, 24 Oct 2023 15:12:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ58-00ADYy-2F;
	Tue, 24 Oct 2023 15:12:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507bd19eac8so6732957e87.0;
        Tue, 24 Oct 2023 08:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160353; x=1698765153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9N9/+NUa+wHK0HF99kAFQH1PWNyZJRmq/sRYP/HtkeM=;
        b=FbzEmBPQF+dBu+KL5pzR7+1h9M6uyF8UwehHGgIrc//Qc+nq0jrC4Vwxa+LC3RhwLV
         ny5JK7nboizeIne3TvxkxHqrpl+Q2Buv5DaK8E4vyO3VvSqaV+ztpS6Qbq2Tjjnf9cFn
         LyYuJWE5ATPnrGUAyuWtzJIyEYu5KASGuGYKggrmqNDnLxXDlqdngaet1uVARBGDuz5a
         GZNA5Po28grJCCH4ExGvZ1ebIzm5QVuP4aoP1yqen+qYXKRwk4FheMMSGNSJOAuVrvaR
         +/1q6r1ZE6tv6w6VNwpWX4Uyp4JGQeAgrjvL/GtsVkGaBZKqZlk8Xky/2eCqMi0glfDK
         KucQ==
X-Gm-Message-State: AOJu0YxzDUp63ME5/tKYBowr3eg3/34A3X+npz2JeYgDBo222KgJSBw3
	OWOI/76VWQpVXFHEdI9YFiifZSUvpatMZA==
X-Google-Smtp-Source: AGHT+IGYwB930iBZF8HAUoC/Ga6QrjB3rp/fPGAjLW/IHdCXxVBuKd9aNdkhtk79VChRpA2gJXmVPQ==
X-Received: by 2002:ac2:5183:0:b0:507:ce49:81ba with SMTP id u3-20020ac25183000000b00507ce4981bamr7510588lfi.67.1698160352754;
        Tue, 24 Oct 2023 08:12:32 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id o7-20020a05651205c700b005056ccb222asm2148654lfo.105.2023.10.24.08.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:12:32 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 86FF91645; Tue, 24 Oct 2023 17:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160351; bh=nOWykBjoXapYzbbqt/B6vaxHD5OyGUKgl7kHm6hJUts=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CfqMVtKXdWU4nwYfFVHbHd9bg4JIR981xpUEQ0AEOJcJjjGKbaKWn4SYdsFRNw4W5
	 ovfAgmi81UefW/sTD7NR9/3uhC0KEK26qJpEvWUyouNUZf4AtXdEbYwUgJW1wECZRB
	 1fHoIMOyt5dcRRtT2jqNjuC3HxaHMZVqtgkYxG3o=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 57FF514E7;
	Tue, 24 Oct 2023 17:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160246; bh=nOWykBjoXapYzbbqt/B6vaxHD5OyGUKgl7kHm6hJUts=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WAnZ5gtPK8mM3eEH4aTkJGHHxRvBNJtNK4kGrk0CYhTG4AEKnQKNIPRPCcuti4T1E
	 7oJX1wj0eJ132vMInhvaOTYDmRkFXrouTOzfMVtn3QlFbek8AjJWbl+NL8vVFrDoIt
	 IHHPQpg9jT9kIiC17HA5YFoWQQzPPZ0VnyYB0UAk=
From: Niklas Cassel <nks@flawful.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 3/4] dt-bindings: PCI: dwc: rockchip: Add dma properties
Date: Tue, 24 Oct 2023 17:10:10 +0200
Message-ID: <20231024151014.240695-4-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_081234_736442_04D3DEEE 
X-CRM114-Status: GOOD (  11.39  )
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

From: Niklas Cassel <niklas.cassel@wdc.com>

Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
using:

allOf:
  - $ref: /schemas/pci/snps,dw-pcie.yaml#

and snps,dw-pcie.yaml does have the dma properties defined, in order to be
able to use these properties, while still making sure 'make CHECK_DTBS=y'
pass, we need to add these properties to rockchip-dw-pcie.yaml.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 229f8608c535..633f8e0e884f 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -35,6 +35,7 @@ properties:
       - description: Rockchip designed configuration registers
       - description: Config registers
       - description: iATU registers
+      - description: eDMA registers
 
   reg-names:
     minItems: 3
@@ -43,6 +44,7 @@ properties:
       - const: apb
       - const: config
       - const: atu
+      - const: dma
 
   clocks:
     minItems: 5
@@ -65,6 +67,7 @@ properties:
       - const: pipe
 
   interrupts:
+    minItems: 5
     items:
       - description:
           Combined system interrupt, which is used to signal the following
@@ -88,14 +91,31 @@ properties:
           interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
           tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
           nf_err_rx, f_err_rx, radm_qoverflow
+      - description:
+          Indicates that the eDMA Tx/Rx transfer is complete or that an
+          error has occurred on the corresponding channel.
+      - description:
+          Indicates that the eDMA Tx/Rx transfer is complete or that an
+          error has occurred on the corresponding channel.
+      - description:
+          Indicates that the eDMA Tx/Rx transfer is complete or that an
+          error has occurred on the corresponding channel.
+      - description:
+          Indicates that the eDMA Tx/Rx transfer is complete or that an
+          error has occurred on the corresponding channel.
 
   interrupt-names:
+    minItems: 5
     items:
       - const: sys
       - const: pmc
       - const: msg
       - const: legacy
       - const: err
+      - const: dma0
+      - const: dma1
+      - const: dma2
+      - const: dma3
 
   legacy-interrupt-controller:
     description: Interrupt controller node for handling legacy PCI interrupts.
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
