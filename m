Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BAE6C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC10A611AD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC10A611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AjC5mRN02kbxlCrIIxiNFGcWTlQSRFQQrYeSeATJ2Us=; b=FpiWlVbLHJUIeKADfgKY5OEIX
	nCrs/ZP4FXdGs6zfSLMnN7F/r/u0LNN3mtuPCOgE8+RW+gdC4NLqqL3jZFr0N9gBU7IU06drvxYFJ
	+jTPE3leuzllppHbUp33d4I+hnoF98lO/zruVSmYpWZ2I7GCrPrI+VIewOoRQQO2Vr25aD11X36kk
	iofDHIxNtV+YLoipH6eaEt8LDyYHTX1l699fsDGy7EF7OifWmMDT4++2FuCAVe7sg4T+d6eU0uJAQ
	qDAD06BUHeBYn3xhoyGQVeJHvlFqcJ39RItVL2EnNSrKtl6GGeD9yNlY3YfbluWVJXFcq8Wa+ASf4
	O8o81VH6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqYo-00Fl5i-JS; Tue, 04 May 2021 08:37:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXe-00Fklr-CO; Tue, 04 May 2021 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=+RRARDka6A+KGtukkewqSVnGjKi76VXqHlFd9I0pNV0=; b=AAJp5f5t5ETeiN1mZY2uCgJ9R0
 v1bLDwxCellVHoIfEfqLX0IFOESWRAZMhDOIbdeIE+Ih8UGWiaLQCsATLKxydyuAiQo3dEHpfpIJh
 PqO0Dv0Bwchb9qAsV5KLArNV/WkrEYTwTSi6TxuhS6R6nixe/RhZzCO86WWQ0uttkJ5e/chSZTo2H
 RyabDXz1OuAtsEiznRx6HnNB6y7R4n2Xi1Zi0PnN2fb+ef+mf24/H/7f9AvLUXuJDWNpRFFb/q9q/
 kRTjTKKJAaSwtNlr0UdS+PLeZ7VRmsffE79+5stSV2nhR7edOhcZynC26tWtpx5RfZnggNFvPKlGQ
 n4jfKIPA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXa-003osg-1q; Tue, 04 May 2021 08:36:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67AD7613C4;
 Tue,  4 May 2021 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620117385;
 bh=FTUYwzBsfmH9HtTIoXaIZ7BmgshUPslDQNyHscw0au8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wj85VQOMIqoP6o1odMBeCc74EpJjcuxewMDwf2J8Nt/K+Ko5H659agmD0TAPXvhRQ
 WWkmUs7JwENIPVTB9RB5kGsvd6EhA41C99XOekyd9q2ZS1i7y3dXBFxtUFixZdC89G
 9f1sfTCq6KoOiyR7CgzCVD1qTOHPb0DUbzXrZ2JVZuggXBYkl+R9qtlMCRRYq2RwgT
 r2M6DDcfTlAG8H03u08su9GW2sdBJ/1PbNPCS/bXch3uYjYKb/9e4kfpq1yaCI4B8U
 TT8hDv/8rjwm5+F6faMivN5oeZLpINXimzR/pC1jaMwXUIPd5zt69qNoCCHukPQdlI
 nqEkUr16HifcA==
Received: by wens.tw (Postfix, from userid 1000)
 id 380F55FB8B; Tue,  4 May 2021 16:36:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Cameron Nemo <cnemo@tutanota.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/4] arm64: dts: rockchip: rk3328: Enable USB3 for Rock64
Date: Tue,  4 May 2021 16:36:13 +0800
Message-Id: <20210504083616.9654-2-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504083616.9654-1-wens@kernel.org>
References: <20210504083616.9654-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_013626_202244_D5186E2E 
X-CRM114-Status: GOOD (  10.87  )
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

From: Cameron Nemo <cnemo@tutanota.com>

Enable USB3 nodes for the rk3328-based PINE Rock64 board.

The separate power regulator is not added as it is controlled by the
same GPIO line as the existing VBUS regulators, so it is already
enabled. Also there is no port representation to tie the regulator to.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
[wens@csie.org: Rewrote commit message]
[wens@csie.org: Rebased onto v5.12]
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 3bef1f39bc6e..1b0f7e4551ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -381,6 +381,11 @@ &usb20_otg {
 	status = "okay";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
