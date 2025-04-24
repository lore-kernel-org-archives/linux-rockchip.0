Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18653C369AB
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Apr 2025 11:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dt3tdtANQrE1SL0vWKYDNkh98KKMPqa1TLhL8IrYOTs=; b=dYBVK9Xb8oWt+M
	O/B9yifpKRnsoJzlnImbci2L6wltYjRXDakLI0praCB/i8lkC908YmSrYTkh3hqXhYEkid4IX1dTB
	nSsuFVeS1t+5yap5+wpXejDbDANPjTvgEBesnFhjTHxHfX92u1Ni6dOSgym4B43VyS0DpgHsE3M/H
	CBy4w3rzxlTlUMpedPlnQ5xA02X6pUkb1rDdK54J3+Vq69dvtx5GEEjhUoU9SOt3gmirT1gKWz3yX
	6CIINkeKLNN1rpt/FWGkYbsX+k0QHZd7BIG7gKZEdmasEF1RFY5hxEZqU1amC1w/xmjnCVwwSVd0q
	+s/rKcvMtU467MIt/Tcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7v7s-0000000DvAK-0DR8;
	Thu, 24 Apr 2025 11:52:20 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7sF4-0000000DOl8-1qCg
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Apr 2025 08:47:35 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5ebf57360b6so120215a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Apr 2025 01:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484453; x=1746089253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MfUui9CnzkUm11aexUOZ7jdxIuh9w7zKBILc88SrxCE=;
        b=GDxFKwIPXv5RsH1zGzmN3ZBgxpddLvPLKwB0bTfvM57hcv8x5A2C121J/xnPj0h/An
         ixxkAiAyrG/IlYCmCGkg+zywktnKrZDmQK1+EZFY6LFgy4uGpkl1Wo6LZfnpcFvQWzpu
         ttz2BkeV4+bFBITXQtgMbdcCpMkFBYozaODh2899hPBt/m9cI9ZXMoWyxg+ZeO+bMgTQ
         UB8kwp/faIDoWOiFvZQ5FcGRVUG9ajdhYYnuSbCI6egb8zSxdI/FY1zaAv41Y7uJ+0de
         KWtdslVhQGajvkBwKW/I8ryPmRJIOAaMYQzWH1BgTWJfNNMDIIlVwJS2oRiwGzz4cJz4
         r1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484453; x=1746089253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MfUui9CnzkUm11aexUOZ7jdxIuh9w7zKBILc88SrxCE=;
        b=LhcbW0zS2I4JqlX3pItC2ZMjUfZhK6IB8HLABr1ug/KMlOY04vqndNMdZE243QV3ss
         jpcdkvhzGeXw0xzDrYqzGPFVYBNCJT/ms/ACcqQhxn4jt4Y37qUzo+aZyqiedMUio6rL
         Z6NfDLw/15o1eTQM6ERMT+ec2c3y4zge5G+kH8bRCa7SyKqWy+pQX3kpMBYlAIX8oxax
         Oz635/sD+4iUEATdpglgX0XdXTS/rc98Lcy8L1GUZFsgAZ/O9R92iFTAgpT+XbQWB4cV
         o9hPKe+qvmQBRBxSFll2TREQtnlRR2Y7Xw4oQbN46tlbl9DjXQxm/w+saqPlfqQba48M
         3XXw==
X-Forwarded-Encrypted: i=1; AJvYcCU4tLHJ11ZGliNxgAG6QcqIM7lCPBx4clURjwX5Qnnl7+HJdgdkvtegsQEwXMwObZeOrxoS6j1fIOzrsvD+fg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPV2eoDQHWIZ7sqsI1kBh/aO9uBn4RrTfv9XujvqVYRSx+T/VA
	0yBOSrYNtzEbvasCx7Gc9nCw6BbqNoUBVleSXgTMLOwHJQTZ7rEMSC/FwZOCsl0=
X-Gm-Gg: ASbGncuVFpI0E5uMWCOZzp1UB5chPvmKs79BT0qxoEs0GmoES2i6K6xflyQBUpItB8n
	rcDWzRXcCRdC4jlyA1SynkPZJgSTlIbKtYgxAYI0gwY0Lxdkepu2Igq1wA6PUafUoBD1MyqQ6PQ
	mH0h7/1wbDxiwSfKXr9ccw6F1zItRWVxWic7uLDqO/BkdeU4deXtt3YzHzNivbhvjuHCIbESJ+r
	oVqZr1WiyZyuaD6dXfUdX1IHTQQ+CzLboUikuE34JxqteuIVoHnb7MHIDga6Nu01JDmPfCEN8Qi
	kdz57AtfZLQx7g2jNhJr4+tIUqHiLhVduUbb7zNsB5lXsqilGw==
X-Google-Smtp-Source: AGHT+IHLFoX7CwatJ2mbMZsle/jLjUcm5nShwK0CF7ojgyWJgAROD1BSTHdg9v5UKfR1EFXoUy7vkg==
X-Received: by 2002:a05:6402:2111:b0:5de:ce71:badf with SMTP id 4fb4d7f45d1cf-5f6df23404cmr585098a12.6.1745484452651;
        Thu, 24 Apr 2025 01:47:32 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6ed416ceesm810348a12.52.2025.04.24.01.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: Align wifi node name with bindings in CB2
Date: Thu, 24 Apr 2025 10:47:29 +0200
Message-ID: <20250424084729.105182-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_014734_480044_E0AA5BC5 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  rk3566-bigtreetech-cb2-manta.dtb: sdio-wifi@1: $nodename:0: 'sdio-wifi@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index a48351471764..e7ba477e75f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -775,7 +775,7 @@ &sdmmc1 {
 	rockchip,default-sample-phase = <90>;
 	status = "okay";
 
-	sdio-wifi@1 {
+	wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
