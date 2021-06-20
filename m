Return-Path: <SRS0=GbX+=LO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7C1C49361
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 04:42:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89FB4611BD
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 04:42:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89FB4611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SYBJDMPuTODDkhRGsY+jHkgC1JR2hHhbA75RTZUA/oo=; b=4E/iC58nSyT7EV
	eHQBj8oe8YSQGAR5DXEDhUznVGJTk6H6F/wGh4YQKSFVmybp/+vAzpU5M0qd8uRQH7qy8aiUb3/eA
	fDfFY31JOaBDqbJ6uVoSkHCHHPl3v6DJ1Q7EOiInHhnySh2Up2nTiWftruc1PSMydvfmyRmD31Pfv
	V4h0j1vkJRSfvXRppDGwsTUsF4gzKDA6UWgqrfhARQqGxi0ZgOvq3xrfd9nnYn96WexBvk6GFJT8m
	lKoCf2xJ9ZJDIPeXiH//wIdyrdsYLt2DZEVMYDGzBbpgb87MKFCWxXsXCXqtXh1VL/2NLssPlQZCh
	9b+4Z+6cCjfhdC+239vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lupHZ-000Smg-2U; Sun, 20 Jun 2021 04:42:05 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lupHM-000SkI-3o; Sun, 20 Jun 2021 04:41:53 +0000
Received: by mail-il1-x129.google.com with SMTP id i12so12099226ila.13;
 Sat, 19 Jun 2021 21:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Auirp+Jz2MDqf2r2ES/YFzAEpckdtisnPPAwXVaOT6I=;
 b=bzIbyG1/szcELa5FlvFZ7lDJ7mZEJTyYKroe36+/wg/Z5p3ANQzmkY24pxniO1Idu3
 EjahKNDs0VhsLKYv0+t1cslp0NY4q4z9WY3D/N8A4cC9UvPqdMLXPrDBvlBbSED9pKmn
 xNFO4V28msXevDqg14MgaklKXAZ1BGAE8I4Zl83yBqqHQ+ivZviZbwK++4v8RSDZxdah
 VVJgRpam0WSXArpDXO8YfPmGUl9osvajPPxowFk2QwW0/rfnWBPmz1MSFtjZPXMqW0eJ
 ji2Qpj1Wf4ouw9YnmP/ScZABBWt+T/2WAyxfehBryEEM2TOg2JwhST29SHb8SZ09iJmY
 8mhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Auirp+Jz2MDqf2r2ES/YFzAEpckdtisnPPAwXVaOT6I=;
 b=RQKUMvUdJVCCJIdoJfBJcPwm+eSCC6H4uMuJiaRseBXDKWFYMZAOQFPQVFVK6Wy/yQ
 0pfWu7ibeUZ7jEyPDx5BM/CRWg8i5g2QdbyQ6XAjiPX6BkL5GWTW7hrpWgHfPLAdJMIw
 gY5BNYDRt2AmCvVWMF/AMmhwm+wdvQPOiAccOB/OSLksdI97T+DJPp9J1tob89IHjSvL
 o9WJG0Q/GpsdMWR9v9QOUMKcsCmdPnwGljOwl0q8r3iGdL0K92nQkdX6/mjkY8DbygTn
 k80+d0ahRrVTmveiJDxRo65IMMHHyIgPU8T9XZVrC7PHzgl93scE0L4wzYv07goWaRiI
 n1yg==
X-Gm-Message-State: AOAM531qRTWvtyopVT1a8AnTOoE9lYpQ4LSEBVmp0E1Xjvgc0QqpmUCr
 vGVESuAGQxQ/0eyHy6K7IJQ=
X-Google-Smtp-Source: ABdhPJwPKiHyEjmmMj3lbeEi4CF8atUFyNoVJMemXd3iNN7/nXzETZtHCd2Bo9jdzMrVhGZRtELi/w==
X-Received: by 2002:a05:6e02:524:: with SMTP id
 h4mr5653046ils.255.1624164111172; 
 Sat, 19 Jun 2021 21:41:51 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id a11sm7360909ioq.12.2021.06.19.21.41.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Jun 2021 21:41:50 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Pavel Machek <pavel@ucw.cz>,
 Marty Jones <mj8263788@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Sun, 20 Jun 2021 12:38:02 +0800
Message-Id: <20210620043802.6580-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_214152_203369_EF978351 
X-CRM114-Status: GOOD (  12.07  )
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

NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
stores the MAC address.

Changes in v3:
- Added address-cells and size-cells

Changes in v2:
- Added the size of EEPROM
- Added `mac-address` cell to pass the MAC address to kernel
- Removed `read-only` property in EEPROM node

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index cef4d18b599d..2813c4a0378d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -68,6 +68,26 @@
 	status = "disabled";
 };
 
+&gmac {
+	nvmem-cells = <&mac_address>;
+	nvmem-cells-names = "mac-address";
+};
+
+&i2c2 {
+	eeprom@51 {
+		compatible = "microchip,24c02", "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+		size = <256>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mac_address: mac-address@fa {
+			reg = <0xfa 0x06>;
+		};
+	};
+};
+
 &i2c4 {
 	status = "disabled";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
