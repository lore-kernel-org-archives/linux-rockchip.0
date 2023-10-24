Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E50C00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BnzRWhIJ0L0WM2JcRYmpEcUDDcH/NlW21BDprEoH2E=; b=0lBW2YKsqYBg4K
	LWJIf0+y3FAFRqfg5dFVYbaITVZE9gmYz++OyFjTReV1JTyMcEAASJ9RVPBo8jbDnd6E9Zq8DSYQP
	mFyaNQGAFejKEMzlzc67UJX9h0muiVS1KSDGRGt9jn+fAD2s4y7hNZweRpih3iaYWw7JImhEeskqj
	BuEK515CtKUb6krJEKu0DySRfBsoEHw+wS+ojM1P848eZK0y0k67FnK3JQRq5l/NeBGl98EsEMzua
	anLnE65kEBLjD66m6aRN42Eqoxm++5RjkrZjzsbErZYhMxXF8vmKLwTow6XZcNXQpTePSg6Ugp5Hh
	itQJHKOHkZ1m4ny75oHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ4F-00ADIO-05;
	Tue, 24 Oct 2023 15:11:39 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ4B-00ADGB-2b;
	Tue, 24 Oct 2023 15:11:37 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50802148be9so1825146e87.2;
        Tue, 24 Oct 2023 08:11:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160290; x=1698765090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjok56bysgEIfmMlNTMUS4bt0vrF/tKjOL5ojA3lAj4=;
        b=tjbGoMO6v8//AUVT3obCvS4tgKEI/Rlco/OnQntS6MbGh+NhHLQX9XkUImiNIs51ul
         ooLAuA66QIamM5VO/mXJTSjXK1Z+VrhrVIrd7njiwzRLZXJdiY9k6E25wcjqMv/TbThf
         9+6sJm2+u5Soo/C/zdpt47d/KdFTJez5ejZ+iKWTv+/tDAV7edfMBtEg1gFtiiC73gYj
         /Wk7tcSY2J04/TIthrrEJd4Bd72Vs/hTG3KeBCJxkPK+F27miIRMQxQUSAGNMcpq/mRT
         3epELZ0py8zlBMkc9Cuq3Ks+dcUFlOpRpI0hqSli4VjCTfEuYlha5bVeWAcf//nms4D7
         1vMw==
X-Gm-Message-State: AOJu0YwwDpYOYdW6oCP8v1y4VAF1AWjuC34MvD3MoSFtajv5N5nlihLf
	dcS2sQe1+bBaJQzWc4WgBdLvi1sAu+/lrg==
X-Google-Smtp-Source: AGHT+IGkjHyMvDG6EAQb0xFxTYm/TJqjLv5oKQpSlEQCC5DMQ7GzGPx+GItLE8HrsejZLx1NRhEskA==
X-Received: by 2002:a05:6512:48a:b0:507:c872:7f84 with SMTP id v10-20020a056512048a00b00507c8727f84mr8633008lfq.29.1698160289788;
        Tue, 24 Oct 2023 08:11:29 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id b4-20020ac25e84000000b00507cee141c9sm2180259lfq.32.2023.10.24.08.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:11:29 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 8CFAB1645; Tue, 24 Oct 2023 17:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160288; bh=L8JeOW9o9OlpyYp8SHB1xCbEeYmEJRvMKzVVwI04Dng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j1ljPPjtyuxI9/2QJj4h0I/7na6spbL0XYBllWdTXVy1fMqjHsHn7Lll43LTe3a0c
	 CWQ7BL1jl5N9W+OQvpFms0mcUaPKPt+Kfjpz9iBguQScf/efv43NS9rD5k/a149MGH
	 ajERwI6/KmxGMO0bLIp+S2b5SZVgV8pIy0hw4cOU=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 6DD0214DB;
	Tue, 24 Oct 2023 17:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160244; bh=L8JeOW9o9OlpyYp8SHB1xCbEeYmEJRvMKzVVwI04Dng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uPFkoJhQzCTotouNSHQ5d5yXqQtgVNvrxssQNIiRGjZljqNeSck3cOMf+Lqe98O4F
	 DFpvOEt+sQYUASd80WbXc+0bVXhId8ouznlvWlOUafB+CNUKeXDSWddDj12DKJyNXn
	 4jYl42Aiwaf8K2+7KgAeZClh7mrFfXknuXjdwWro=
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
Subject: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Date: Tue, 24 Oct 2023 17:10:08 +0200
Message-ID: <20231024151014.240695-2-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_081135_840843_F2AC77A1 
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

and snps,dw-pcie.yaml does have the atu property defined, in order to be
able to use this property, while still making sure 'make CHECK_DTBS=y'
pass, we need to add this property to rockchip-dw-pcie.yaml.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 1ae8dcfa072c..229f8608c535 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -29,16 +29,20 @@ properties:
           - const: rockchip,rk3568-pcie
 
   reg:
+    minItems: 3
     items:
       - description: Data Bus Interface (DBI) registers
       - description: Rockchip designed configuration registers
       - description: Config registers
+      - description: iATU registers
 
   reg-names:
+    minItems: 3
     items:
       - const: dbi
       - const: apb
       - const: config
+      - const: atu
 
   clocks:
     minItems: 5
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
