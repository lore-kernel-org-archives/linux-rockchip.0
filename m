Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E74AC433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 15:19:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B35D22B45
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 15:19:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B35D22B45
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=katsuster.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FepRp/8Y+2ypIRxHJWQqVg4H7RNvLEopNx0/+gOlFI0=; b=itMP3iNgVNMrtFACLrZ3kqFjH1
	2l1wjmfdf37Et5BTPGpx/GIScHo8z5H5ft53hUVLxRKqHBnNXFcFUATPu6KMEkQa21OIFRrM5hDqk
	f4PiK/kC7dvrIUJqr9ytLrRKGKx53Fvz3zQtKpJBsFskIYqQ8YAG2cjI0ITuGISyufxt4A+h8VgRN
	FNXCyYorW/FKdgOcg3WYppyB6vDZwp94RFf3dmippS4m4aIm3SjHqrIma/dQVB6vCZNukgJB1jCCQ
	kiWcAzMbJXIfcmabc4pNgEfuwIS1UT0ed/dGRA8a0zq89AOqIxN1dbwOzVrV7i3i8pEnVaw9rS9Hg
	ksoExOKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kycV5-0005ob-3n; Sun, 10 Jan 2021 15:19:27 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kycV1-0005mN-UK; Sun, 10 Jan 2021 15:19:25 +0000
Received: from fsav110.sakura.ne.jp (fsav110.sakura.ne.jp [27.133.134.237])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 10AFJGvx074003;
 Mon, 11 Jan 2021 00:19:16 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav110.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav110.sakura.ne.jp);
 Mon, 11 Jan 2021 00:19:16 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav110.sakura.ne.jp)
Received: from localhost.localdomain (80.57.232.153.ap.dti.ne.jp
 [153.232.57.80]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 10AFJEmw073988
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Mon, 11 Jan 2021 00:19:16 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: more user friendly name of sound nodes
Date: Mon, 11 Jan 2021 00:19:13 +0900
Message-Id: <20210110151913.3615326-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_101924_310940_DA559B09 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch changes device name to more user friendly name of
Analog and SPDIF sound nodes for rk3399-rockpro64.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 58097245994a..5ab0b9edfc88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -72,13 +72,13 @@ sdio_pwrseq: sdio-pwrseq {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "rockchip,rk3399";
+		label = "Analog";
 		dais = <&i2s1_p0>;
 	};
 
 	sound-dit {
 		compatible = "audio-graph-card";
-		label = "rockchip,rk3399";
+		label = "SPDIF";
 		dais = <&spdif_p0>;
 	};
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
