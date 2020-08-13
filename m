Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36AB9C433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 18:17:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4CFB20791
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 18:17:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="soZ/zcfB";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EsyVyGGa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4CFB20791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WgjMyWWLEwjgoiX/Y0CG+ca23f1h1VIWr5AqFYUGxOs=; b=soZ/zcfBJAqZ8xsuID+0ylhfrL
	F8VX3o+sCUne81aDNEWFJIa2+5E1aurUlOZlBcd/7iB0Y1YL0ABKArEkYPQA/W7UdCB0yLV1zXbBb
	Y6peG9S8+UGfvm6gjRuPaBJaip4i/8k8m15yELKCogxwlasgF/VpvgpJwvUMa8tDOfk2QPsyhHBm1
	z95K4EFLQR4ts9MHpF/Uxf6VS7jdax87NTF1Dltf6VZNoVvyJn/aNWPZJAvWpqMicq2m7v7Q5HLmk
	fLfcuSKYCyTDKOpnC5s4PcwykWcQ0aB8JmnKtWfhoBnGTib/5ISyOXBQb0MV9BbZm0s+Xd2N6tDP0
	QRC0jz6A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6Hn1-0000yV-8E; Thu, 13 Aug 2020 18:17:23 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Hmx-0000xG-Jj; Thu, 13 Aug 2020 18:17:20 +0000
Received: by mail-ej1-x643.google.com with SMTP id f24so7203244ejx.6;
 Thu, 13 Aug 2020 11:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eHl87Tk9sNCP3OVqberPWxWI3WHAWf0EaAib5QaPo5Y=;
 b=EsyVyGGa6ULP6GtzdOZBejj4tSea3XXh3+39K0aPLizW8EUzwetXOW0zugIPEBSY8R
 Q+JclRuxd9CBSKJ/lt2P3SVzhdLyEKP5ntcIftzfhQtU2RCG7wn8r8PY6mAMmZr+kwUj
 EHfx5QKuqYeHxCzqN8vxSGOVMFBV7QLvdjZvO/9BQpPFq85YWFNcssUeNAgHHK/qhY6y
 vgeu9J9F32aXNszrBxQB9UyCyqlPyOHRegYdI7zNwbQlQBEZ5NjiToHAmYrgb9x5PVbQ
 xJ2CzJ1bYZQQl7yM9gQqaFmtM7oJzOnCl5qL1e6spdXyhkfCwrM/hUkOjn2uKNjsgvkr
 lJoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eHl87Tk9sNCP3OVqberPWxWI3WHAWf0EaAib5QaPo5Y=;
 b=Yb4iVyw8NN7dHs6Qvg3J1t/wsLn2ZxdVAbmZSDQoelWVna+D6WxSCvcuI/Z24isUvv
 EZz7rovrYsHWk3O9tgRCzYBxhbUlkzGjQdglSDXcuERGIIqZhxwwrw2j8o7xdqPtk7BC
 h0n4Z1yxpUAuFYO06PJDMv6WoD19Nvch0FPB4/TykR3EjndtYcsff34ow+p4Ct2DGRY4
 roIr0pgMH79kVdKG6smgOoqBisMcdcRf8b2n+Ksyaen0837toIQYXqwTS4GJB+FX1KFR
 h1PlWZ+nLAUgeHDtjxEzRtwc898Ppus3UoZtnk6JWZ5xh7sNyXknSGmifmsnqSZqjjr3
 eUQA==
X-Gm-Message-State: AOAM533Eefl3cCG68ppP2tjtq5PG8n0Yw596iYklW94ZV0b/qAAOAggp
 Xx3ZreOJGWUiUd42Qgilfww=
X-Google-Smtp-Source: ABdhPJzYEM+kZDPWxa4+yFv0i/r3XjVFOzaNT+lmp/cSEMTvsbpUCv35HJzUQYAzXmZw+t8Jdw14KQ==
X-Received: by 2002:a17:906:938f:: with SMTP id
 l15mr4597829ejx.539.1597342638224; 
 Thu, 13 Aug 2020 11:17:18 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w18sm4887647ejf.37.2020.08.13.11.17.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 11:17:17 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix cpu-supply for rk3328-evb
Date: Thu, 13 Aug 2020 20:17:11 +0200
Message-Id: <20200813181711.15906-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_141719_662584_8F57E072 
X-CRM114-Status: GOOD (  11.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The property cpu-supply should be added to each cpu separately,
so fix that for rk3328-evb.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 1969dab84..a48767931 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -70,6 +70,18 @@
 	cpu-supply = <&vdd_arm>;
 };
 
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
