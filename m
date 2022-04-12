Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 189C4C43217
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 18:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuSc8/3vif7u2U4oOP25w40k7qwTQodqAJo45WgtB5g=; b=pJmlGPuXGFDyil
	N+uq9G5dHsZiLuGMBL0oYTBqqBE8jW1n1kqydgMWq4I38DwjyfmbJ4vpcvuTJI9yWl8hWGghoOnEC
	sAa0Auz8+EK1io3WM98P+QGWMDn5U37cuFbMyPMr6Kobxr590iV95Xdb0DMYyRm0an/jLxbr2FVxa
	cof/fVJIheZcWVpHGRFu2iEmDO/APqMfcvWvOcTjn+YSIudUoUKUSyUkzFxwyWWMUdQ5R9eCAbw5K
	0S3MAs6xKGMEYFREjMKPISRY2nSjCnMJH/6IePbldrHPjKhCMQg7vNChNif4SEINfGDPbuY/6Bf3V
	iqgeiaOhplbULyW0++mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLiI-00FVAB-KR; Tue, 12 Apr 2022 18:58:06 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLiF-00FV81-1I; Tue, 12 Apr 2022 18:58:04 +0000
Received: by mail-qv1-xf30.google.com with SMTP id kd21so16889348qvb.6;
 Tue, 12 Apr 2022 11:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kQeNukA9v0sAIjhr8IxlYmsIPikuBlNT7ZSLuaA7VkQ=;
 b=JZvxN4mPsfnmiG5M5FNESw8LyxB8P8335VSGyMh2aBqfkwfTU3nXAagfdAxoOfZ19b
 M0Ap25k+3+APXLuufjsZgwHKjMNabZkaM+L9pa71CVbyVmxG2KT0NKnDPNf4D4n159Q6
 DtNJnl4pLxOHvnwc28igIX1HJJT2xef9d+kRQXT6QplUzxLRuBDfkoVHxiwNNK2ghB0e
 7FvlZPe7DpRQAaQH5X6y69mU/tzJgGpf6emMotUifzyLtXSNDDJ1pAsCtQh3OQ1kNWXR
 CwUEoDu+DwE/zoUn6s/00mJk+2Fzkkh3haO2o4XcU75zceGv8q3O9QZWwCmGnMhIz0O3
 CHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kQeNukA9v0sAIjhr8IxlYmsIPikuBlNT7ZSLuaA7VkQ=;
 b=BJzolOpLMu5Zwf08rZL30sJS7I+WeN/2ECyoZPzcVQiHJquV4w5pDA/hpk6PQVk5dC
 DgXKU/5xyZM/DhxZA2A9Cbi7mSShS9xxZs0gE11Vc6STV5SBrErK3Eu3GNt784tAV76y
 ymr42JYEnTMPNBentFTSYLgnKOqWVFWVozqvxG11kiMRlLZmE541IpFYXdjq7Qv3ppd3
 w1taIjySktVwqk7Us3N0kzkA+JKhkf2Wa7Wtt84+KYMYjuZwpmQAdquPObPa4vfB23SR
 DZ54V1JMm4YSlK2UR7yZj0e5dJjZAP1gVLqpniUAH5n/KW7av8rObnNu/HnvXAN9WFb4
 awyg==
X-Gm-Message-State: AOAM533bTPkF2xFhw41VWxxLn6aj2xfXUxAim4pAvvwyhhfZvFp1ensL
 2n/IPytWOSUTEsOzMLSdCPM=
X-Google-Smtp-Source: ABdhPJysK6WBKHFeXwuor8e59pMVwwACHYk61L2WmbC/NdngGu3X0z1pxc3BdsBfNS2XwEHApuqyrw==
X-Received: by 2002:a05:6214:d88:b0:443:e626:40e0 with SMTP id
 e8-20020a0562140d8800b00443e62640e0mr32677438qve.112.1649789880743; 
 Tue, 12 Apr 2022 11:58:00 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a05622a05d200b002f07ed88a54sm1820610qtb.46.2022.04.12.11.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 11:58:00 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Tue, 12 Apr 2022 14:57:48 -0400
Message-Id: <20220412185751.124783-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412185751.124783-1-pgwipeout@gmail.com>
References: <20220412185751.124783-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_115803_135072_4E896037 
X-CRM114-Status: GOOD (  11.96  )
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

The snps,dw-pcie binds to a standalone driver.
It is not fully compatible with the Rockchip implementation and causes a
hang if it binds to the device.

Remove this binding as a valid fallback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 142bbe577763..8dc11fed8a3c 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -32,7 +32,6 @@ properties:
   compatible:
     items:
       - const: rockchip,rk3568-pcie
-      - const: snps,dw-pcie
 
   reg:
     items:
@@ -110,7 +109,7 @@ examples:
         #size-cells = <2>;
 
         pcie3x2: pcie@fe280000 {
-            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            compatible = "rockchip,rk3568-pcie";
             reg = <0x3 0xc0800000 0x0 0x390000>,
                   <0x0 0xfe280000 0x0 0x10000>,
                   <0x3 0x80000000 0x0 0x100000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
