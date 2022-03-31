Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82784C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 16:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kBHA/BTiN4vkzKymu3U7qzP4o3vNkNHRbDQqiWqIhI=; b=ngfGZGQ/7c8I9l
	TmrPBm5PLQO6Gn7hNlKX3gmvWsYQDLVJ/fzOR3vaFDU7E6Su9w4mPVU5CHAFloQ48qSOFCds2+crr
	BEf99JpSbyhFck/DSHgOVMiyoEXHgeQbFfRNm289RwytTDTmkBI3fv0v7odWwl0ZWEBhZOS/jiDIv
	Vy4XYK/pqJY7dSxeqSA+YHOTCH6TrwqAozh4Oqshy87HRrUTznwUQ+nGwcNQ7EUCiUjWF+0E2C4Wq
	SSfj7ZD/QsU9ol0OQMMmY6oUZcoVMpdrudlgkwbJ3P1hfnFMMioviK0cyAUtVfxEcwFitOOj7TErf
	tx6dWSiq4Vje2TMCc+rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZxSV-002vCp-76; Thu, 31 Mar 2022 16:15:39 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZxS4-002v1E-C4; Thu, 31 Mar 2022 16:15:15 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y10so28727373edv.7;
 Thu, 31 Mar 2022 09:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OyWs2PSSxtF9m14bGEh5PR47UxvU/WKdZospW5gj6qg=;
 b=HTT6ZLTJNQ8qCXR9E/1BApriM3s3Ljwl5uB1+QOPCmD9psvoOhnTLZfFNEEkMRE6OU
 p3SuGyYZ79+jJfSMICnTyQJ76MyaIiW77LSb5huk41tSyKTdrBerHvsxIWjL+et2YCFq
 xApLDDwOvUYyY4LE0Pas47UHoEW5YAZJiuqdAFVBx79jPpUkLTIT0U1iy0h9i0iyd+tX
 wubws89HwyVj0KL7EXrLucBtfNlk5FGcEdzlD7J6VVXcKnk0n32wTpgSuNq4XxOqBJRO
 tdKEYh/+OfIg3K3jWAJnQ6hW4sMkPjDqVD6CRC/BmyDmJRlH5CCUtn92uj6Fu0K+0hIn
 bArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OyWs2PSSxtF9m14bGEh5PR47UxvU/WKdZospW5gj6qg=;
 b=rFN6aJ/rZX8cr5d7zF+MrBX6zYMx7XSAhfKjToJ/fwCkN9wsDgxhKepq48Q1lEs1A2
 hRjrgVgF9ZRTjCsmMem9D8ONj72IUhwqcdWbIxaFVg+MsbtX9eGszrDZF+GmFrfBVHmO
 gTD2udvQq/6gXOHsv621dxU6k7YBJpgbX8r3xFdUGP6FIkXA3P8Vje4W0N1JnzNaA3hG
 WTisI7zTqKA2WvGnZT5Mqh6NUr0o+bwSGSB1pimiJAOZpCG2aowZAkOUAXmQXvC6XKcc
 QHloseNyKjdr2QAqOXBjrTyoGhLBHkcWQfLtFrgPNdTIGFmzxEuWADu2xQA9KZ5eGTva
 xDBw==
X-Gm-Message-State: AOAM530HIxVg6FB/H3SPttg7KIr/wFXN7Tvl9AIfMMg25Ea4ifz2XldJ
 MQ8jertJj5noQVHBAcx8UeE=
X-Google-Smtp-Source: ABdhPJxr5AqLCJaD0MU5j8UJPoZLzcNzluV9Kl5Rl3Z5NcPq3uGg2l6oeqnVXZHOO5GJumuHPLmwOQ==
X-Received: by 2002:a05:6402:5146:b0:415:fd95:6afa with SMTP id
 n6-20020a056402514600b00415fd956afamr17406575edd.200.1648743308450; 
 Thu, 31 Mar 2022 09:15:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g4-20020a170906520400b006e0b798a0b8sm7600302ejm.94.2022.03.31.09.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 09:15:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] ARM: dts: rockchip: fix rk3036 emac node compatible
 string
Date: Thu, 31 Mar 2022 18:14:58 +0200
Message-Id: <20220331161459.16499-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220331161459.16499-1-jbx6244@gmail.com>
References: <20220331161459.16499-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_091512_474450_7783B0BE 
X-CRM114-Status: GOOD (  12.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The Linux kernel has no logic to decide which driver to probe first.
To prevent race conditions remove the rk3036 emac node
fall back compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 9b0f04975..e240b89b0 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -225,7 +225,7 @@
 	};
 
 	emac: ethernet@10200000 {
-		compatible = "rockchip,rk3036-emac", "snps,arc-emac";
+		compatible = "rockchip,rk3036-emac";
 		reg = <0x10200000 0x4000>;
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 		#address-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
