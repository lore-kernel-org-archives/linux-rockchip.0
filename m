Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD932C5320E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 10:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA2Zmxbe+1a6FJ68CTa4QY/3DckmGkul/GYVx/+pj4k=; b=xZNXDLy6xMM7/c
	FMU3oYLaVesYBhhWFbzIrw5RUuETNnNMdq/59CiWTnZNZzeI8lK2pZsOtOkPEowE8bfAsOlerPxAv
	BLJ1roVFyLfne1i76lBr4FVUd2rokiGlixY+3lFAB7DPZAzd+aMsTgzAmoD8J1Gv/FmLP+4RGwwDE
	7db7j8AUJ2JfT9vTOvzeRyBL55stu3I72cH2S+JJWX2Fx63LUyKTPDyjgmUE3JZphooLfyR0WoB0L
	mxmPZWMFSqDkUxnjH5O1+qBDjBh2JzcReKZYvdZgRNW31hGHQNTxFF7E9z/Q9YngSJcqxGbTb8tMq
	jw9uesmVvPyfrGLVC5oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiY7-00000008PND-2hR6;
	Wed, 21 Aug 2024 10:26:43 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiY1-00000008PIR-1J9c
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 10:26:38 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id DD4C2260983;
	Wed, 21 Aug 2024 12:26:35 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id SFrnvKlCR7iD; Wed, 21 Aug 2024 12:26:34 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 25A07261A06;
	Wed, 21 Aug 2024 12:26:31 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 12:26:16 +0200
Subject: [PATCH v3 6/7] arm64: dts: rockchip: enable GPU on NanoPC-T6
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-6-3ecfa996bbe0@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_032637_536082_06B7FCD7 
X-CRM114-Status: UNSURE (   8.21  )
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

Enable the Mali GPU on FriendlyELEC NanoPC-T6

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index c8a8f96ca008..8f1cf81f8f90 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -308,6 +308,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
