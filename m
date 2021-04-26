Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77315C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:59:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF0A0611F0
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:59:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF0A0611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Axqe2R/xF0evhkebrVs2eyJHquI2DcCVn1GsqTNtIMo=; b=Y2fcd691pjhODrELrGIy9LOUF0
	rV0YV5CSnxDEumrTihbiSpJfHC1LTaC3CZPSlmXpZvjR28NkCaBD35gPk1T2WfF8oVl4BRc0pnsos
	LV67n6D+gXELrTH1tmR0w4PvPiYby4Wo+2oh9mUYsk79IsYtScvMDSUxfJc4NHUZSRNxo7VPYqWBn
	bhZ6l9xHcl9UOeuaNW/RMLUH4e8lwnAdWRuwZsFghxtLmhdkfxNZGE/PetGmOICjl9BhHQ9bZf9Ii
	UUEp0igGzD2AsYZP1AuoEXss4z3hTMFzQmW0486e782IndZm8qvlh3/DdgkZw4w+zWHYheBEbMQ0q
	JF/0hf3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lay1g-007Mk1-P0; Mon, 26 Apr 2021 09:59:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lay1W-007Mj3-HX; Mon, 26 Apr 2021 09:59:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Q6Q06vdndk5dZvxLlm+JJQqmLdifkDgd+B+gs38R5Iw=; b=4bbVqLqJZpDKhe2p7BLHm2fkTx
 0MHBO9SWupEl3s6CCDwyM4T18K1W8f6Xdjazk+/n1Lg72RsTTw6eo7Yht52KtS5UFnAeFhlQ7/RXi
 +bkC6ZvnDaAW7drGmh4uuXRf3ofSTxvjtAhUsKNY4Cvfa2w2zOIDE+gK0Ns+RlmU07+aIF5Xymdne
 7PnR7xXq84wsj1Nvddr/U8Fr1qhYVG5PSG7hRo2f2c5c/dBGee42l2HmCO9vE6xbdKl4Z5NSZZjBb
 n5H8hBDf/uI/aCsS5soBX0S3ecSUWVctmTNJstfMjPgKuTkuo/5arxsn2+PuWRJNRjN+K2/9Ur4s3
 TTLZiD7w==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lay1U-00FsiG-5t; Mon, 26 Apr 2021 09:59:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD9D1611BD;
 Mon, 26 Apr 2021 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619431162;
 bh=Eo8NG9Ku8sejeKmIVqKHo9XuftmdYKyt1K/FbjHeb6s=;
 h=From:To:Cc:Subject:Date:From;
 b=JwF3hfw7NUXS91lbnW+cWlgAHGQs0NQ7P/ATY9Ts042O9qLyncQ2QSIJs+zbT+an6
 k+vJ81LQ7MsDdf+sJf0f22rZ+Ji886NBs0OZvf4/FPXXQVbEOMCiSYaUMB5PraidaS
 JykACDxEDr0a/jbx+cWW5plB3vOjfQuLcxqhUlavhiaLEllJpPwhfOTiFibWfGf5uV
 WF0dWYqDX3xzptmZohi9GQg0MPIAm/oehfA6UJAkukNkOvgwBfoP5fEfkfGLK+U20n
 7Ie8rOjDZX/zqh7I9qxCnLf3iOZ6ay1OSN0YbOwK94LjwjE/F6owa5tRD07VsnSL9J
 9rV1VFuMzIDBw==
Received: by wens.tw (Postfix, from userid 1000)
 id C2D935FBEA; Mon, 26 Apr 2021 17:59:19 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3328: rock-pi-e: Drop fephy pinctrl
 from gmac2phy
Date: Mon, 26 Apr 2021 17:59:16 +0800
Message-Id: <20210426095916.14574-1-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_025924_275654_023D8A21 
X-CRM114-Status: UNSURE (   9.29  )
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

From: Chen-Yu Tsai <wens@csie.org>

Turns out the fephy pins are already claimed in the phy node, which is
rightfully where they should be claimed.

Drop the pinctrl properties from the gmac2phy node for the ROCK Pi E.

Fixes: b918e81f2145 ("arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 07538951a3a6..018a3a5075c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -177,8 +177,6 @@ rtl8211e: ethernet-phy@1 {
 };
 
 &gmac2phy {
-	pinctrl-names = "default";
-	pinctrl-0 = <&fephyled_linkm1>, <&fephyled_rxm1>;
 	status = "okay";
 };
 
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
