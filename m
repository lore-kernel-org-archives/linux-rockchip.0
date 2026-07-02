Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFDDFC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N8y1qAXrbpYWxH8BnY7bXvAJ1jy0bQbkLIq2NNlnPA=; b=s6P25qz4+BmE9J
	UaZJCxTZ+CEfsEMWSLUAxrro3Mmf7ZpeX0kMpgVTdO/+dC/dqydsU7ejs3Ext2xa5Hn3Qdm3S389f
	ChaFzqrY+hVkRvgsl5NiWSZ81nh6FrrklAOzrh03t1KRaRaar4X7o/+rIYkT3e1UGg7iDVjDYnEvi
	jcf01u0dZtYdK0acGK/Pao5ibniFJkOqUE/7GOuuRkEXixIb/01V6ERB4A+rJvChfr9JSD2xBpspu
	+4rZRou/toIbxTxEb7Y4aadBH/JaNjMpc5wF7+hfTAE7wYNAWeSXHgo632U/R3eB/otK1iPju4/J3
	WGu/E3PS/tUG2oWnIm3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJF-00000005TJi-2or8;
	Thu, 02 Jul 2026 20:46:57 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJA-00000005TG2-2T23
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 20:46:56 +0000
Received: by mail-pj2-x03.google.com with SMTP id d9443c01a7336-2cac82afba7so2493585ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 13:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783025212; x=1783630012; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=ZzhgBEqrNvpdlJHZLr8c785+ArZK1XHHWvn9nZoJtisj1GuTH311VwSCxREKlKwNAX
         h3pNm65ou3xCIQMie6dOnoPqEOgA4qTLP0vXwaje0LylBTLhyMvOrjzc+skNFeN0MmZx
         Z6QBiq8x4brrOc/4YFo+xa+f/PII2FF+WKZBHO9gF2GHEjFg5APBQqmrhTmd66AIUlfV
         bkBS5GCxXfqqvpaVfXOarXDVSWEWQXU7pagJKG6NZ6+eBFh7lzF4jOe/HDgARWnKEiP6
         Wo57QjB+C53pKaHFe3gv64FzOSdR3sktA6O/wmu+8vnOMsxunBbNlGEeuswBQ44Eup0/
         f3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783025212; x=1783630012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=HmIxiz1jabkranxQhfsEnFsBfQIhlZSNTVD6s4/dy4gkcx6xEJyMSXkoT/dRfhLg3T
         cP5tmJg299a/CfmZQQ6hcfy55F19zCHGpPInv2pMkiYfr0vWsM6hEPOUxDbh3eQL2crn
         mYL6h9BbyHQa4XyZkbGYtXcJnxfpNv0sOrJxHsp5AKBrgBKxiIy0wE4L7zgvYGnGm32j
         veih6WuyR/hcbuu4DRT4zzfsUfdc1TSx7Q61oT63JI54/N98VL1CHc9SWqEVDzPnNw9A
         cwVI6Ek1vhTmHaACFjxIpo0BlCk7/DwTXw7wWZi9UVeJ89l2foyQLGlGWLmsiFklKL72
         zynQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp/L58L0zY6EG8UFXi+q7tv6G+5ctQToW9VocX4fkhGM34FFxo7pK/URUEnJMb9LHLwlbk19mnzhCaDXnagHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVc/YtSIa058oSastxCMMO+Zq4AXgunsAlblPQYxncA1G8Ns2U
	yYoS60dvVJ3VM1/6pAOskMTwhbgf+DMnByEFBtzRLtfaxECf7HlmH2mn
X-Gm-Gg: AfdE7cn0aL8hV/3KCUr07XpG/9gCTLyE+02/lLBWSDpTc4CVyI3irmVnMhDmAWabLqd
	0L3+/oJiLtyVOT1C2oZaahD6HX/bPjz5dmPckw60za2HXH0sdK9B9ts2fbWcVvFDImPKf1aH6qt
	mC5EthWsSVXzsJLajOYO036kUouBz17iy+vJJTGybYQp+zZLjWx/zK11u8gATdn7Yg9DNfxiZf0
	NIFAt283QlJ5b2DCBjBu4Ncs8JTXld4yoNjLFBV07S9A37mBrptym/OuLGRs0C5LsaHh+8+cqTg
	8uxhcLF86sO7vNA8JlWjhL+nVSDfr2LVpvEwai5IGqgZDjTaWhRpC/AL9bQ+9oaQOQAauYki78h
	ILDVNoc92akC4vIpp23SgcndGSklmXfQCCATjehjYQ51KZv2VcR5zCeE/JOEL64/iLZs5Nh/ZB1
	rgVsLpcRQNjWU=
X-Received: by 2002:a17:903:19eb:b0:2ca:1479:d9dc with SMTP id d9443c01a7336-2ca7e739bfamr80838845ad.12.1783025211663;
        Thu, 02 Jul 2026 13:46:51 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a9004c1sm18654065ad.21.2026.07.02.13.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 13:46:51 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Fri,  3 Jul 2026 04:46:28 +0800
Message-ID: <20260702204628.2407308-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702204628.2407308-2-coiaprant@gmail.com>
References: <20260702204628.2407308-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_134652_628398_30093C26 
X-CRM114-Status: UNSURE (   8.78  )
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

Document the Graperain G3568 v2, which is a development board based on
the Rockchip RK3568 SoC.

Graperain G3568 series also have an SBC series with the suffix "box".

Graperain G3568 v2 belongs to development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d0..9eb2f66ba3856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -684,6 +684,12 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
+
       - description: H96 Max V58 TV Box
         items:
           - const: haochuangyi,h96-max-v58
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
