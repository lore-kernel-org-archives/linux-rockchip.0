Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BABB31125823
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mtv0s4LZsEm5M+9PHcJiDUKUTLrMvtKHBnnBiTiX374=; b=YuUxZFqpS1MtG1
	qIs3GP+Mpzm9QxKGLuhfJVzGlma8+M+U/RjYg8Wc1Yz79U5U8bU3P/lHHZ94Rqky8XoE5cQVhJ/lX
	2MymIsMd0UozQGuOllZ7dm0VAqjYtGXM6io03/XJV/H5I52plmWdVjEvEzoMydttCALsfEq61wpeH
	kNkz6VmM7xnI/F1WzTpQer4nu/VhruoyU+5buzprCxPPf+J1rOU7INdyux8NM8vHQsyDF1W5cqlCp
	JktMSMxNIm6Dz+nKzptUasuifncmIrKP8E+DEra1QP7zg0d2kCQiOKvL79wypHP8Px3sYk1HhNseJ
	cHDIDDqHII4iT+mha57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0K2s-0000000BfUs-0Sfh;
	Wed, 11 Mar 2026 13:56:18 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0K2p-0000000BfUE-0IQj
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:56:16 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-2ba895adfeaso12185507eec.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 06:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773237374; x=1773842174; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wsNfVZt6GLcKlOBtv1buOE4N+3eK5BD7iSdzAmdz13w=;
        b=g0BUqBXaxaR2pTV08L8WIr5r4boKgopY0cmcblrryAO/jXMJd3muAwd2VTIIdMCOfC
         6pGb20y9uKW0hLM19kZSMNRRbrluJnKznXgOXFrULmgkO+IJeQBWc4DZPsjUrHdEn/eu
         AL+9iNF1Z5co+IBfyK6dGmCByrCGxQVUsh8CCxzK7x6Wn3HEeL6pxv7Ntv8xV+TK99dR
         o3cOQJEO0R6eFTTK2vMpNb+wVEmybfEN+aMm/AxBEdN5qiIWg6bKiJ/UH4/WQ95me6Ri
         PWPzwRySe6pVtFNUXlAc5sOWQvmEjsY/fIp1alrx3DvoEwuw7MVic2xvPVWC84xhjuOX
         hd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773237374; x=1773842174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsNfVZt6GLcKlOBtv1buOE4N+3eK5BD7iSdzAmdz13w=;
        b=wi4YL6tB5W2rjLLF9w2tdRpdzznejIfiAVFOygkkRBermi4rJ6JCfdHzwaHXWOxbFe
         k9B2JumnaZVX70UiH/rt4z3L6goUjoRFc2TjWJD+sKcWSc3N49AFUnZwOJdsB3Jo5bO7
         Q+iwJk74CmKWrj3YekJ+5hT7m+mxS7FAA2lZ5s8M+BJpowaDWs06bHI/n6tVPLW7jUpv
         Xb07wDgbcJRVzmveSEtkjzggHF/xgvWngU4KZPs0oKt5p9iUi48IMj66U3RiChl1npp6
         lvUiZECcI6yTeFMkYnmNTR1IhCRzaopS7SoR+UL5k8R9GKA0CTTYFzVswtr/Qa4aJH2L
         c8zw==
X-Forwarded-Encrypted: i=1; AJvYcCVREGksYWkNzovC+7ekarmE15YB+Tg3CS1jrU3bQPIfh4hkpm5d9QTycXL9thbtuOb/J52vztTRE1WG8mS6LQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yywdj/xYLhRNun5QBr8+wOa5Lggx7cgAb2AtsdHGkpe1cdm7jG5
	ZhkkkvMMislwqMfwOA8LevcNw2XvURCbW81rQnpR/Nc6TeGmqGzsFILJ
X-Gm-Gg: ATEYQzyfrTSkMVoJ1BHh2Z/PQsmSAGwzXwsEdZVUcUpM8bgt8vasVU7KT3AgtgVNXSh
	IAXmm4ljvaX5RUPEoqDFD/YVX0hYcnZParXsH++gSLNgLS3a+Vuac07lhNIfHZUvtPump4FN5IU
	tlA9BP9/xkTI3yndQMgNEIEsHqymQ5k9bR4ikf2pMWlJcgQDL8T4muVZ3D8sRysN0tMc+NWv1GS
	tKu5d73g6Ywmg9j12mlQNADsCm62otB2Ms9JvY1sJpUM6I0METjIp1tULNjMBAiz6FOWHGpvh/t
	CR7ghMqj2TxrKvNZ5XGTK430nYRURuVpuzqt9XqqkKTvPwrIhm2DhcVFPnH8siJVDK5d0ekQZ9s
	VteR4hC8+jUdVEigxszrxL/NBB/WCvJyCA/fxBYsfriPjywxxkvtyJIKyfOw+H5R6gj2O8uXud8
	bEBuHRjY9m8aPHW8T6K1PDVc+wy4kjLwem4SxgWFi6ddnKmHvDQ8La4sh2lu1qv//nzsxpxQ==
X-Received: by 2002:a05:7301:1002:b0:2b0:2e5:228b with SMTP id 5a478bee46e88-2be8a5a87e9mr904558eec.33.1773237374035;
        Wed, 11 Mar 2026 06:56:14 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:866b:f519:b5db:1242])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8a8338dasm2608352eec.6.2026.03.11.06.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:56:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] ARM: dts: rockchip: Fix LED node names on rk3288-phycore-rdk
Date: Wed, 11 Mar 2026 10:56:04 -0300
Message-ID: <20260311135604.21634-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_065615_098709_66B40D55 
X-CRM114-Status: GOOD (  10.37  )
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

From: Fabio Estevam <festevam@nabladev.com>

According to nxp,pca953x.yaml, the pattern for the led names should be:
 "^led-[0-9a-z]+$".

Change it accordingly to fix the following dt-schema warning"

leddimmer@62 (nxp,pca9533): 'led1', 'led2', 'led3', 'led4' do not match any
of the regexes: '^led-[0-9a-z]+$', '^pinctrl-[0-9]+$'

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index d411fd9811fd..46362e804daf 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -125,25 +125,25 @@ leddim: leddimmer@62 {
 		compatible = "nxp,pca9533";
 		reg = <0x62>;
 
-		led1 {
+		led-1 {
 			label = "red:user1";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led2 {
+		led-2 {
 			label = "green:user2";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led3 {
+		led-3 {
 			label = "blue:user3";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led4 {
+		led-4 {
 			label = "red:user4";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
