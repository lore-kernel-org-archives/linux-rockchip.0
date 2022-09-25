Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A97B1C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIoP/9eLItqzSz2hOQ/mrtiVTVrbqdeM+h5gJWOR3oQ=; b=dNkLuVdHWsQEjD
	qadzsNSuMCxFvBAOxEoa4lZE52lbngnWsXahmJ6ZXjNKZijB3uYVI4L2ueBm+s8Vo5zd0g3ITLtXL
	qtM6Tj7OnpgDrEGEdY+ZX84khH54qxEhQ+EDPeaTBwmJ8iwp32S2L+8/L+3J13o+XQGDr55AxDwuy
	KbSG/c4zk2pHB4XDpkUZBUKW/NvgBxmpUgT7fHJIIjIHe2nhHf+0zb5UHBIfnHUxkLnXcFsNo96VR
	3whN+WLVJYJGQ1EbU2qkFJ54mTM5kFznuzpsZSWPcPPcakHvcRVNuVbrzPPDNECCNkmsVTjoZWXRS
	o4Thkgk7e3pLInR5YeJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocR3x-00DZSO-Ke; Sun, 25 Sep 2022 12:48:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocR3n-00DZMk-3r
	for linux-rockchip@lists.infradead.org; Sun, 25 Sep 2022 12:48:40 +0000
Received: by mail-lf1-x12b.google.com with SMTP id s6so6959675lfo.7
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Sep 2022 05:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=k0LfxC9fXdLeVg8llNzyGQ2aBnuToclD1TAWlwxISbg=;
        b=2WCPKE4YIUXioVBIwaEN+GiNbb6cBHV2hWd/nOKEiVQeECh7yUNLrsZXUmj356yc9Q
         PrmP98W9mY0koDEAPY9WWhT/DDHrM+CgPmRBX8pK7eHA79Ytaxxwk0dcbrHX7ZmggZdU
         FV1K/dedeI6DzbIut3OULpJ0RZ+ij1/n+0URvI0Kr0pypvW1FODBCfvSBM0j1+SfoWrh
         gTZ7/+a4C32JDSiUNFSWAtoG75x8KZfhenj6xdZQYzbvaxuTuNo4ngAZp3VuEmvatXq4
         zqFqRsiggVqezPpAnCONNB3ycqvG5/kBAy+ZE0stuc6pcDSWuu0pi846f6sA/4lk/IiV
         CYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=k0LfxC9fXdLeVg8llNzyGQ2aBnuToclD1TAWlwxISbg=;
        b=KP/Q54AahDZ3vdBDgiMO4NlS1nhO3tHA18EDy4s324jbKTZo4lpSdj+9h48MU4jiBg
         GoKGdLgkhQxZxIoGIyVfUS7KMzCq6HbeghMUpJGYgMrjrPifaJmOuci+WQJQZuJ9nIJB
         aZk0Rj2qp7KDhq9/ybqqNOUOsuWig7SwUnwAbXlV+z+Pu/I7/gS8Yc2E+digwkfIBsYm
         0MG3/fjuH8r3tVU5D+ieqTyr5pmgbaHXPyJGl9LcwaDFySFFN5XYJ6cq2caC2yKTMKNr
         hljZr6kyqXISh/xz85YApYtHeKzwfwH7rq2US/Nsw3mjTiYMsx/DgN4s2tBuFaT3eF8R
         74CQ==
X-Gm-Message-State: ACrzQf2fMuoarZurcTP/zsxvs/EsZm/IGHz7Yx6TiEhF2LI44sS1Mx79
	Sj1ZOhmm0kIX1fW3f8dhzGrhMA==
X-Google-Smtp-Source: AMsMyM54CDUIlE64+P9Eriqk9a7+P7Az0vpqkB2ry9nh3ZRl44jQqzOS2CeqezxlCs4Jw71ozzWBNg==
X-Received: by 2002:a05:6512:22cf:b0:49e:860d:8f4e with SMTP id g15-20020a05651222cf00b0049e860d8f4emr6654780lfu.584.1664110114439;
        Sun, 25 Sep 2022 05:48:34 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id q7-20020a19f207000000b00494643db68fsm2204936lfh.81.2022.09.25.05.48.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 25 Sep 2022 05:48:33 -0700 (PDT)
From: Lev Popov <leo@nabam.net>
To: Dan Johansen <strit@manjaro.org>
Cc: Lev Popov <leo@nabam.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date: Sun, 25 Sep 2022 14:48:24 +0200
Message-Id: <20220925124825.71786-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <ce61fb9a-dcf4-27a2-ac03-62060a1512f9@manjaro.org>
References: <ce61fb9a-dcf4-27a2-ac03-62060a1512f9@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_054839_163639_7D4B8F0B 
X-CRM114-Status: GOOD (  11.90  )
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

For "Quartz64 Model A" add missing RTS line to the UART interface used by
bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
match the boards physical layout. This changes are necessary to make
bluetooth provided by the wireless module work.

Fixes:  cd414d5ac1fdeecf0617737e688a1af00858253a (arm64: dts: rockchip: rename Quartz64-A bluetooth gpios)

Signed-off-by: Lev Popov <leo@nabam.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a05460b92415..91908081c5ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -740,7 +740,7 @@ &uart0 {
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
 	uart-has-rtscts;
 
@@ -748,8 +748,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
