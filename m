Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 284F6C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E691E611AD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E691E611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TuKnbbD/x9yD/goGSHurUifGH7SiFFMQg4rtfKmYfQ0=; b=bK6UvciqeNSoBHPhcSGneySW8
	75oi4PkpLsvsoYoDr8jZGETfbpyK74AXvO49/iqya2ZnvvAKFZosxX35DWofIiHe87sS/jRoEy7/Q
	fxp0U3YSyL/+tyKTey8nUGSL8n+pprFnoiwtKbguFs+Vv8j+cYubQPWcJbDI7kRtr9dn2HHVctoeG
	U7OQLTigkmuiaKdA3yzeCoJX/hv2mrW88rxVbostRTegP+TuSsiufGbj2/czTfVBm9X+Zn8HZuzcR
	JNjhrxcLSy0X3XYaSbUY6L8kRbraX0hB61ET8jVsvab76F0EjBu9dfDcRIuJaDJj44JaZN2FE3B8Y
	gsUYYhKPg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqYu-00FlAg-OY; Tue, 04 May 2021 08:37:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXe-00Fklp-89; Tue, 04 May 2021 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=vG3g9zHu6gHT/olz1QQ25fCpq/NaprdvMGcTVdCvPig=; b=F5nhQCFJTZcPt0E6CSHiBGO6Ky
 fMQg2VlQ3rJzfs5wjNOb2JzsWwUMUtIIrTrbybYY1fBvKVau8rLE63rIP7v80ihV+SdSC9hZ0klIo
 Wx5xhtDwMeblnaYm4Io6mkhfKiypdEkaiE9jlEKzs0S7DWHnAHtXcsJYe3Kqdf1iqKcSvfFKACCjn
 tw6/RTNZNQAJdnpc64DH3WeH9NGUQ/vf5tHas+sqlwwh8tzxawGZj21XI2NxutrU8jSITX6HaVw4q
 rFib1x3pw/jLtMUndro0iUiHygb+WnUl+917A4rc1dqZW61BIy2gwkGixH8O0Ow+9lFfsKytdXE8x
 zm4wvqtw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXa-003ose-1q; Tue, 04 May 2021 08:36:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FE7E611AE;
 Tue,  4 May 2021 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620117385;
 bh=NZ1P6Y4yYep6ONx/AY6RH6/uPPDWwuWoLAXJG6Alasc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l3nR9wStIGk83O8g6VvXTVQS3MiTtcFt6g7UEIQtt0EoYa2gzhQQdv00mS4mVeOWc
 qnVAO+f2MtARtbO+Pm3MKiWTxmKoFSxlQki8Fc6gARBu0YXLf6YNciLvlGC6BHAI6D
 E7aetaeKOMH3aEhH1IjfkzMVEF9HuPfaFqtGAbNaVDbfHPl8nSv2H2fiEqpwuhUlrN
 3Pvgb0l+p1qp3V39pNAXKRTRAffA1NnWbJjgX3/PNiXcGyiwIVf+bk7ZmjXPB+5Ugn
 9AblgommFCWx6/CyCJ5TAsBbG4oc862eFog6/bDpU1ZUDHBs/YNhSvtoDo77NnP40a
 kxPAsGXMv3xLQ==
Received: by wens.tw (Postfix, from userid 1000)
 id 397795FC12; Tue,  4 May 2021 16:36:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: rk3328: Enable USB3 for
 ROC-RK3328-CC
Date: Tue,  4 May 2021 16:36:14 +0800
Message-Id: <20210504083616.9654-3-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504083616.9654-1-wens@kernel.org>
References: <20210504083616.9654-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_013626_149523_06E66A08 
X-CRM114-Status: GOOD (  11.46  )
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

Enable USB3 nodes for the ROC-RK3328-CC board.

The separate power regulator is not added as it is controlled by the
same GPIO line as the existing VBUS regulators, so it is already
enabled. Also there is no port representation to tie the regulator to.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index a05732b59f38..bdf0ca07eae9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -363,6 +363,11 @@ &usb20_otg {
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
