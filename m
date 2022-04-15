Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8190BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 10:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9g6YJFtgh9BiDvznmRDKAYCCgK7qF5AavhIae1/OQvw=; b=n0MHY6jq5OUqfe
	wDtJz5zpuhZayvc+g4wRVbUJTHqGDDF/yVP9sghHR4ndm9y3q2VMNWpBytrBuvs3pMrLXhdGdVrW7
	AkueXFq2YcRC2npr42pzes0HlI6Q8ejsIWQ8ewEKldqe2VkAv3NR1k4Q2hcf+ZXUsti5b5P/v+OOq
	bMC5W8rmTDfyl5Tgm4Pzp7zwak/773wNw+Q0b4LPS7b1haS3KvtTTqEH4KRqAGGbNyl2oR6CHxrdt
	tdxwY9sFl5KOyXymZ1ctx/4S6BfM4AkHCemo9B1tj0wwTLxff20zBqpT4gAXddkpt1T/Fvq90T0XV
	RJ8NMMf4Z5EJuWg+g3XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfJXJ-009hsP-Cq; Fri, 15 Apr 2022 10:50:45 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfJWq-009hfE-Ll; Fri, 15 Apr 2022 10:50:18 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id 90FCB10081B;
 Fri, 15 Apr 2022 10:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650019807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=rWSR2rltVSUqvyGXpreg4LKaYlPdzHCHZKQnQuzQnac=;
 b=xUd3kNr59wxtB4msvT494ZDjLtPGFK2Eao5k2wCfFkX797f0ZGnEx7MqIRLZRGsNmeoq/W
 HwUfWTLtSNjBicxyr4ZSq0QYmBhKX7lVsQkxLxOBpH7TAtpV4lw0IDwN+xALSspcFa/WeV
 bLFQvXcg0Su6INsAnWX9cg51/g3bJew=
Received: from localhost.localdomain (fttx-pool-217.61.153.244.bambit.de
 [217.61.153.244])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 641E3100501;
 Fri, 15 Apr 2022 10:50:06 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add hdmi Support for BPI-R2-Pro
Date: Fri, 15 Apr 2022 12:49:48 +0200
Message-Id: <20220415104951.27104-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 56e09033-23d0-4d9f-9f04-5ff42bb46aaa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_035016_932164_7AAD35A7 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series adds changes to Device  tree for Bananapi-R2-Pro to support
HDMI output.

It is based on "drm/rockchip: RK356x VOP2 support"
v10:
https://patchwork.kernel.org/project/linux-rockchip/list/?series=630407

Frank Wunderlich (3):
  arm64: dts: rockchip: set display regulators to always-on on
    BPI-R2-Pro
  arm64: dts: rockchip: enable vop2 and hdmi tx on BPI-R2-Pro
  arm64: dts: rockchip: enable the gpu on BPI-R2-Pro

 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
