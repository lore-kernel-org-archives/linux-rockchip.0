Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4799BCCD1A5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 14:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsRF2zJH1vPF6V9EUsOb3ZjTf0k5jsNMo0AkNAyxb4g=; b=Jqm7qa51wlkXYe
	wcpDDryR92rTqGsaSnConapR/i8SkpGq0/Qza/ytrKJcqaJkW+71D+hr9A5VOctRzmH7br7Ip/s4J
	ezjcotjEO3jGCJpmmlZGyE87Fzxr/HYBGhdLhKJUrTG/cvYMw7700zBWJwvCed4QsWOuUsr1SG9rG
	08CQ8Z/GsPds0B1RnikI3Yza2G2ipp04G/Dite2L4Peti0PdeOYmiYqujGU1XAOExrw+zIWwzGF5p
	8awr8poNsrNFWEp45EFB664f+1Qo482KeKN++B6M/B2yEHCQbPw1F4NbU/ZH5X7ICTyGHqbOSDgu7
	9RjCYH8ZSzE5ek+sgT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD1sY-0000000CQoL-26J9;
	Sun, 26 Oct 2025 14:37:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD1sV-0000000CQnA-34To
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 14:37:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-7835321bc98so2942423b3a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 07:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761489471; x=1762094271; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=ZlEQRS+CialTm9kfiEoH5xTW3+Kye5dxfYnTBQmk5KMhityetPsMXTDCg8w/pqudnt
         mYrrMzHZH6OiyWT8R5spPk5okhIysZ7pLppjDuWTtaUsqMoN8U+CMZod5P0xke38ihAa
         2W7fCK5l5mRWz+cjlXrw/yHETuxNTCoBlNTx/j8bC+CPARQ1SKj+L2rNCerk8F7XDNLt
         piwPrSpGHbgEekrVK2i8sxNQZ8H5ujkgeCqshh3WkimDh06hWQzyrggAFXfmM1DChAnj
         E/MfhbWVqV7t+v1TEBI4OhNDFa94gqSdReT1pwQxhNZ6m25T3McxtxJu3GBzNddnxhom
         xL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761489471; x=1762094271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=Zm7OPybZVUX1geey4ZLRu3UnUSUohbTsJral0PvcPfq1U5GqkrwF5a01S0kPrKkrA5
         BDDdsqJpxFKJpYJwUZqjjatrdUkNL4YiByYLwXeU+ehl8AVAoSItt4HsH7hnPdMUtD19
         qVgc2xYneE9mseWOX+3iGeT2+XGnHk8oDIduZvgd5t7cMAhfJllGAmXlk3gbeNPUp7oV
         axDuRD17+dKBM+DJtvXctksxxrPKleRTua0ZpDAqoQn6XEi132tMo0tNFGeXAFxRN3ss
         KAQFugunRvzchsKZ28vKzJx2aqmOGj7NcdB4rmWCs8r9FYioggsohgmMMIZwi2bWU9Qb
         CnTw==
X-Forwarded-Encrypted: i=1; AJvYcCVoD2tlwrqQiuu4Qsmuoy7o75fg7mIdZjTY+mFcPB3Kl8ae/RKAWHiI4XomBvKHjNWTsQ1rVlpWX3NaajJVRw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxfAG/zpPhqEoRV+NRgb/nZe374ovUck4vsp6Hdljg2/Ixd0spV
	qgvDgWSqffnNAJBY1QVQZC+g4xZ/jTBrA4TCvphovNOKP6pY2d7Mr30b
X-Gm-Gg: ASbGncusdik5KJuUt0Rz3ryKbklvXkKCGusFB51RwF2w7fY1yyCFkvbLRMOayWuyjYW
	wGqJaLCcN1Yv6Tw5WFPny0rTb/yR8gvGowhhUxJhyrsh+H2xfhKzPjBuZ+zUVkqEeQ2g18fS7s9
	9IT0g1s6HvVPMJ2gyVByMxmdncWPNnegwnqEMayNQPgiooYn5wAnIE2FTbYz2n0Fg6qNKDizn1H
	eAg9tjsQU8+5+h3pNl1otG0SvlHT4AnjhtHFPm9NSCP3pyy6gR4tCnuz3CCE5/B1ZTtpJwMfbKF
	ZaVx5U0c8wbsSl2kW+yepovvAk/RQTxMBmC/NCYK/7ziDObybGWJAOsjW8gKMyzdhnaNUOJ/mCi
	JVSAMnZkrCC8cNOGATpNkbTkeyO9D+FW7XHnJnv8R2W1QYJkV9IwdY1hR2w69vjXkqmmtu2Mto7
	A=
X-Google-Smtp-Source: AGHT+IGorRTsGK6y1BXq5Jha0i7pSNQnEd4P3A4eW7mtzU1czQ1tha1INqCijpQurD6f2CrckDUokQ==
X-Received: by 2002:a05:6a20:244f:b0:2f0:91c0:1886 with SMTP id adf61e73a8af0-334a86444bbmr46784680637.59.1761489470867;
        Sun, 26 Oct 2025 07:37:50 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128d4d44esm4652691a12.21.2025.10.26.07.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 07:37:50 -0700 (PDT)
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
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 22:36:46 +0800
Message-ID: <20251026143645.917588-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026143645.917588-2-coiaprant@gmail.com>
References: <20251026143645.917588-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_073751_771667_240F41F3 
X-CRM114-Status: UNSURE (   8.08  )
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

This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..417100209 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: NineTripod X3568 series board
+        items:
+          - enum:
+              - ninetripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
