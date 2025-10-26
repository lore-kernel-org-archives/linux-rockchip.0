Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF10CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 06:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z3CJLfCI2jAIc+zIX+O5sH8fpTuOQOSGy8+1fNjP6vM=; b=EGKgyOmo3pYWHR
	1skMM5Q1jLWDcLzog9DCsqP1vVyksjPTx7D2CChGNjZyFt7UgPdGR/zBj90q1ao8K8/YWHdcD6M4H
	FWriyuWpnsX3EZLUG+OmmCJtg+4HFB7zM03ipixJcLynxDMiQ7n5PNtzeFetfsmUTG/ohFc7SZTx9
	4V9jl9fKIi/O31zL75QyefBLk3Aa+lYwET4ie/vX/3h3BHgaQVXc+ZuCmh7kFTsgCX6dEYaEvcV+1
	DuTuvSMzUdtscCZ7T5myUSc28MOLjf4kB1dncDNIN7OyUs1mu+UPgbE0IkAOmpLjg6x3tdCc/5DE3
	aHkePek7G0Z6+seWCBKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCuGj-0000000C5Gy-1Weq;
	Sun, 26 Oct 2025 06:30:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCuGd-0000000C5Fo-3cde
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 06:30:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9443c01a7336-290b48e09a7so43653495ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Oct 2025 23:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761460215; x=1762065015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IRxFuvKApk33BC3d8xXXeSMvlG/sWU//suNyfzB/QNw=;
        b=Jb9vQbFl9LsFThcZMdruK9Q4cLR8aWX4QxICRW3P78Ipa4YrDb9LwkB3miC/ZD0HG9
         n/o2+MJAJvtGNBXBd035YkMKMezgVuY6OfkYCQZHwxRPXkh5v7WwmdG4dB0h7SnKjx2E
         +T+XeB65m9JsOuHVvTDihXE1MWFaS+eBximmY5lg5aEXJL9yV//l3gWnE87yfS66+97F
         HltHjD49HjYUFdjQZeGfWXfTY/vlps/m8jUfc/eJjmlUQaQp5Qyzhv8+YoLoKkUtDbu5
         royqXpQf2UQwFN0a4TtM36FBwpItZxe0JALK0sT9XNFTsq01jAHsrd1EFkDn2P3fiKJA
         pQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761460215; x=1762065015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IRxFuvKApk33BC3d8xXXeSMvlG/sWU//suNyfzB/QNw=;
        b=NZB6tNbXTAyrgd6J3ryzCuMewaZ7EnSDiwX5vK+maWPTP8JmHnt3CaxbBK7xlaQ+bB
         xJac+FdskuHC01R0ZRGl0gcWN720M3XfZC8pmPv1UOftcAM/pn1wR5U48sdTOiSlRSFg
         khoyOVeKrPt+APzJR79tha3QPLTkSzcKGMVnemoqvcTN2VG4x8+oeotrcxv36ORawziJ
         bXKtkYgxGukmHpGaLZObQKGlqrHTLLMflOXDFE7zgRzcOsfPggQh3I95PEl45v49InxO
         4vvkz53wV+0rT2hmREkLk9wf6SrKO+ojNONB2NzMgaxYaOaHVlEwNy0y+Xbm5b8JMoqT
         6KWA==
X-Forwarded-Encrypted: i=1; AJvYcCUk2hHf3toXqHw7OD/RDRqB89HtLHW76rkhK4V/VFSLvGWyQtT1bYN0+dNtNwttdehbMquiFmhLB98Ha1Q/2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUmjAx7NM4utiX0QlJyj/dN7Z6g3czaDs4YZjt7SX/dxCgQ4Qh
	n8BF0On0ctBw6FCwQx+gJ1u5sJZD7QIxvvZ7d6dXpG2khsT5n80VlZmS
X-Gm-Gg: ASbGncuDCSXsLXzPaeyeFcw/Gwbr/K7BdUQyZtYkNyTlFt0+MtJ/yfOweU/D9WwP+Az
	UvtMeFnuX65C4FpfbgdGXJIE9Iv2AesmJtzi+OQPF/2Hchkkt3T526kMbAlwtRY3bg9Sy0iy8jx
	lPj00CLlQ7XR2VqvFl1zjJ9PoDB5yLcLNrgqglbAf5b66rnBbYTefLwQUvm728vIPQmjKAVkJO8
	w29sOTTWa5ByrtYdcs0IPXQXCBSGuiU4IveJ9YZTIsZmP7QFvKtKlPuGUiLfaMhKoM8/QFcsCpp
	ZxDa4YergRyXRw5Oozczz/a1JjXtcnrQOwF0Ou8W4lJe3W+aSeA7bt1wwejNRnZ+WC2514ZT3p2
	o+rXoHjBour9l7MNenDGWndWUAFL9LqINsrSwMCEz61iAO3srJxSwMs6vpRtZN+jOvlewej/MV0
	Q=
X-Google-Smtp-Source: AGHT+IH7PDnopz1QlhAta2BSK/2CCRB91dAXRXofbVcqthVpmjY2bJvJp6m9EQhBul9G/8U3I0lZNQ==
X-Received: by 2002:a17:902:cecb:b0:290:c94b:8381 with SMTP id d9443c01a7336-290c9c89dbbmr456083105ad.7.1761460214815;
        Sat, 25 Oct 2025 23:30:14 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0a60fsm41583865ad.39.2025.10.25.23.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:30:14 -0700 (PDT)
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
	stable@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 14:28:31 +0800
Message-ID: <20251026062831.4045083-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251025_233015_936339_9083984B 
X-CRM114-Status: UNSURE (   7.47  )
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

Add NineTripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Cc: stable@vger.kernel.org
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..37687737e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1124,6 +1124,8 @@ patternProperties:
     description: National Instruments
   "^nicera,.*":
     description: Nippon Ceramic Co., Ltd.
+  "^ninetripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^nintendo,.*":
     description: Nintendo
   "^nlt,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
