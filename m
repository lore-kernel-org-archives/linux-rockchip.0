Return-Path: <SRS0=jnQU=DB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79DE5C4346E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:35:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 227632067B
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 06:35:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JwW1H36g";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=endlessos-org.20150623.gappssmtp.com header.i=@endlessos-org.20150623.gappssmtp.com header.b="CNwT7A48"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 227632067B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=endlessos.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HvDc1Mk8J4YlAgbKJcgKBNbZy1SONtx3lk+HZ4m2ojw=; b=JwW1H36gTxY5ZP3VnNwSOLZzEW
	ROZYo2EpRZSn5q7qmdyDFiEtE0Jw1rHRRC8nFztXLUJSBckHhRB91qrhsti01reVNhFLyZ2S2KqhI
	85B4tfo99rb0R75qdBFYN/REESAH8VU0/dq0Zihv2QfIpZA1CkE7H0B8WNqPzqa0/ekY1A9kIeOkx
	ubL8TV/b154cq8JH8GMveVX9Je3GL9I6W2H3YYyBwO16j7UoubmPZ72HYrCzuIE9p6WeAcpwGzCWE
	VeoKkXYDlIfpIMVbqwtu2k2nMBZS2oDKLDdbwPc1YzqQqW4dNWakczqtegfVAHi3CQOWScUL86d4K
	cqJBWvtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLKqs-0002qQ-GT; Thu, 24 Sep 2020 06:35:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLKqp-0002pJ-Eq
 for linux-rockchip@lists.infradead.org; Thu, 24 Sep 2020 06:35:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id k8so1287410pfk.2
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 23:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessos-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cMk5EkO4+a7or+6O9dGbx3RFLRF/gjrDA61H05E6FkU=;
 b=CNwT7A48Bv2tL3cgjhSN+QqVUZyOE4oH0z/QPxXWxHlfvRHPpqeNrgMWakuntfufGc
 6KUk9TcIO4PkswHtuWMCf8r0mqTH7vFuT/bBhZeuy+TzYNKUXRoJdaXK4dG2kfEf6gk9
 Rs+I9bobAz5kV/oNMpcu35ByBl0v2BMQslpfYGtbn+BM6zjiNUEgodgm/4r34wcvNwjn
 2UZSNR3oyiG2TOzi14qu9qp3NluDDlwqlAsjDtGiwA1n+eCdk+t0tAvQNAGekqGpvOW0
 AfujOjW5OyTXMvkODohRmQk5rm5/k6ztAB9NzO9IKQlmmQAsxA4HMGEoPuDQUbYpeg8O
 Orjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cMk5EkO4+a7or+6O9dGbx3RFLRF/gjrDA61H05E6FkU=;
 b=clDM/nSNzZq7NR4crViDRFi8gcMGp2nY4bPdDwQJVmAtp8S7dEQqnV5EEbWw+uUOET
 8+fAphbtqaXWRiHjVtZAnvmy3JwpMTnjJ8RWxDygY6TXVDa3AAF+CTKymAjBwhWViZto
 aa/Ses+3lnxqbV6yaI1bLSrlnOZQyxJoh/h/24nTwWyLiy9viX3LCcXY+BmqBexBJCqu
 ATynR/AcWJfq/kWHpOl3lBtW08dRo6NYPxAyGDfZQaI2I2R77H2M1CkOQLmuD3kiDPbz
 xZTNseMx/YF0vaCUkzrk316hGbJDnMVfd9SJ4ytsYREJp4SkK8k81H1IvH8ys4MbsvBQ
 vkug==
X-Gm-Message-State: AOAM532VdYD3wg9tpVRoGPiSmsChb/G+dDCLKKO49pA6b1bozZOvtj+L
 siiYW5+FtG7qtKtIjmxRclsdzQ==
X-Google-Smtp-Source: ABdhPJxRtZ216lgi7xyFj9DVfZBzPvh8X3PV8a9E299xrYCeK5YYgipOFzUGlybGn6AWVn8DDIuoiw==
X-Received: by 2002:a62:5b85:0:b029:142:2501:34e1 with SMTP id
 p127-20020a625b850000b0290142250134e1mr3072236pfb.58.1600929329001; 
 Wed, 23 Sep 2020 23:35:29 -0700 (PDT)
Received: from starnight.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.googlemail.com with ESMTPSA id f4sm1691321pgk.19.2020.09.23.23.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 23:35:28 -0700 (PDT)
From: Jian-Hong Pan <jhp@endlessos.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Soeren Moch <smoch@web.de>, Tobias Schramm <t.schramm@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: disable USB type-c DisplayPort
Date: Thu, 24 Sep 2020 14:30:43 +0800
Message-Id: <20200924063042.41545-1-jhp@endlessos.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200924_023531_533339_21E58511 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: devicetree@vger.kernel.org, Jian-Hong Pan <jhp@endlessos.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux@endlessm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The cdn-dp sub driver probes the device failed on PINEBOOK Pro.

kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
kernel: cdn-dp: probe of fec00000.dp failed with error -22

Then, the device halts all of the DRM related device jobs. For example,
the operations: vop_component_ops, vop_component_ops and
rockchip_dp_component_ops cannot be bound to corresponding devices. So,
Xorg cannot find the correct DRM device.

The USB type-C DisplayPort does not work for now. So, disable the
DisplayPort node until the type-C phy work has been done.

Link: https://patchwork.kernel.org/patch/11794141/#23639877
Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 06d48338c836..d624c595c533 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -380,7 +380,7 @@ mains_charger: dc-charger {
 };
 
 &cdn_dp {
-	status = "okay";
+	status = "disabled";
 };
 
 &cpu_b0 {
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
