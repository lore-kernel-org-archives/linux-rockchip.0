Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523A0C47074
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrSdI5R5G06WG2F1EdAXVachnSQJax8q5dqTCWdOkiQ=; b=D15XhJnQNK1dmV
	wuC/tfYL6l2606l25WG7BcfGERPk8ZucJYlB0AJwqkcUxX86yqWkKb+13zquO/gDHVfhmTBwgVPcx
	zPFKXDOv57ZURZJm1suPwBm77ATRuyDWSlp5lL/e2+xUqRU9To/faTccMuWnxRx/bHoFGS5lXWddD
	PcIQlQVrJcfhnt280HirZxfkLD1hlqrmWXIN2ns5PFDxB3cp0jCQ5xtJPnXxPKeyE4Kc0/2erKYQI
	qKlxpqBpUWANmlYyS7ERSh/Yg0UG8BUFiAtgJmsGU9pH0fNm9DpqZxcfHiZNKVm6LaUVb7/WiER1W
	ozFgoUJqgxlzLzm0LZJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMY-002cDa-0t;
	Sat, 30 Dec 2023 11:18:42 +0000
Received: from forward500c.mail.yandex.net ([178.154.239.208])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMM-002c19-22;
	Sat, 30 Dec 2023 11:18:32 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:12ac:0:640:b64e:0])
	by forward500c.mail.yandex.net (Yandex) with ESMTP id CC5A6609F0;
	Sat, 30 Dec 2023 14:18:21 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3IVUxO8g5Ko0-JextyKru;
	Sat, 30 Dec 2023 14:18:20 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1703935100; bh=NOfOR3WmGBG8VnmZCdu7/HLUZv7HTJnYt7hUccOv6xE=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=m+rfidmsZ/CdVddtHvA0jnJXUCLjwn9mQAKFeYvf8C1aCHZHgsUOA6ZACwxskwEmf
	 0G+UIkaOTaZ6Y2/qsGMvmIoFaqcfFp7OwprozFZ98nMD43FikXC0c+MLL4WLvTcDFB
	 f4CJlj58u53DO42igxCvqW76SpxmSOzw10PmnLpU=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	inindev@gmail.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add NanoPi R6 series boards
Date: Sat, 30 Dec 2023 14:17:59 +0300
Message-ID: <30c1c7eac02cd32b76edb77572523f6ad8de89fb.1703934548.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1703934548.git.efectn@protonmail.com>
References: <cover.1703934548.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_031830_879025_31788954 
X-CRM114-Status: UNSURE (   8.22  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add support for NanoPi R6 series boards that based on RK3588S.

NanoPi R6S basically has:
- USB3
- USB2
- eMMC
- 2x 2.5GBe & 1x 1GBe ethernet
- HDMI
- SD card support

Unlike R6S variant, NanoPi R6C has PCIe M.2 M-key instead of 1x 2.5GBe.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ee92f0535..07c4eb828 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -225,6 +225,13 @@ properties:
               - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
+      - description: FriendlyElec NanoPi R6 series boards
+        items:
+          - enum:
+              - friendlyarm,nanopi-r6c
+              - friendlyarm,nanopi-r6s
+          - const: rockchip,rk3588s
+
       - description: FriendlyElec NanoPC T6
         items:
           - const: friendlyarm,nanopc-t6
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
