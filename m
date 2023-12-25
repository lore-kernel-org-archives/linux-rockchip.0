Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3BFEC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 09:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tsPKNiUBTKTh7rKCoW9HDObJPqEJzvOquFWsXMgHVE=; b=JIMPWfdqTn6vPM
	OIPd6Aws7gJ/kNhqjAEbmuaOzhZsJFYmt7XU1rdRLO91FvrVU43nrnflUBRc4dQkDoPsViQ0rU4by
	pfRbvaVanZX/ntx0qVahsDKoBjqlnabMJj9Jo3SPHarhB72TU9NdCJmxsETqrk5nDJUwxa+6NFSjj
	dHIleQEppMv9CAHoaT4699BZDYnlFnPPKwSkBevNDEXqadVTxp5LahRgpMBlZwpzSrL2Sd/YfUNyu
	wFz8XS4+42dHVIRC0FfCsrZuWhmEG8MdbyW71atO+inw2Q4rF6F+i8eCR5i5nnrkz4jX6233XS0Nh
	GLFg/bhpFwh6QkQYTz6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHgxZ-00ARXg-0L;
	Mon, 25 Dec 2023 09:09:17 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHgxW-00ARX2-08
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 09:09:15 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-781045f1d23so344140485a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 01:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703495351; x=1704100151; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MYR4ugORkCm9lUd3SwQmbuL/VB+Lyezxj5PrvU8ZwYc=;
        b=OgxzrCKrer0Dlq2jzxxWKL2Q0wUN6LnZduUH2cgkrNegn2/MUP5zJFfvKBjjtQhz0E
         wlGq0S2Ke6sb85u8Bt0AlG3vfAZWj6XKO4MSALMmXXFvaIpe3A7gw8dbE6Q8MX7GmooD
         +lzjGRGsc/t7dmpLdWFAZnmCpBvp5fwGcvGfM76ZMANWvz+a6zjlmQPzlZDSqtxq/AaJ
         1v5kSj5Ci7QqICDsHIjoA1lltlrSitJzBOc/F+4XM79ChnonVMePb/ONw5zz3xNjWLG3
         sYApDoQHtCNcFxGfNOKMT8XL9fyOXnojq25KpcuOAw3Z5QaOaEP6OJ9nt+7mEEKtYmXC
         Lk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703495351; x=1704100151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MYR4ugORkCm9lUd3SwQmbuL/VB+Lyezxj5PrvU8ZwYc=;
        b=KCoGRIx5P8/wTuOjFJBpmxaE0/6qa7dfovQEGSWLNvGAzWZFe7DkTXpwVS0aPPf+Ql
         7My5ingUcbAd/1sosIFqhvHGmFCyY5McRLD2hAdjLaNIau6lsZR8dNYUgb6nEuhrmFcC
         uq/iVQBlWILmbWqNfdp9xGhoh4XAgjNBXqvklsr51uFzaz1j1iRkWwuqzKJ5ZUxEaywk
         oYpDdvJgl8+xHOe0gIuqKveZY1N3G227JXDTh5p2Sf44BPF3df/bEOrL4GQOxw17pNAC
         d2viIuteez+Q3Idnffuoo/6+WxM5BZa9AbJzr4grO6cVYXu27GBY7wXM9r5Lx9agf3E1
         cdbg==
X-Gm-Message-State: AOJu0Yy3zDq9U0HwZyLOYqfeOybqFnkwN0K7o0tZXK25PWBZP8d3uB8v
	h1CcsS6YxUN4St2tsn9L1ec=
X-Google-Smtp-Source: AGHT+IFSxC3hcYAg4y3/C5ueydVc0+bs94sOAMzzwMcgzpuwv+dLS/B2jstJ6RTDqL55z0nGZhtqdg==
X-Received: by 2002:a05:620a:1474:b0:781:29d2:b390 with SMTP id j20-20020a05620a147400b0078129d2b390mr6406313qkl.122.1703495350159;
        Mon, 25 Dec 2023 01:09:10 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id c23-20020a05620a0cf700b00780fd53405esm3488798qkj.0.2023.12.25.01.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 01:09:09 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: support poweroff on rock-5b
Date: Mon, 25 Dec 2023 09:08:55 +0000
Message-ID: <20231225090856.3890-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_010914_098900_4F71080F 
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

Allow the rock-5b to poweroff its pmic.

related: c699fbfdfd54630fc51b96da577f02e7b772eb37

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 74719aaf697c..dc7b88f29172 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -426,6 +426,8 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
