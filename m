Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A9EC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 22:05:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E62A60462
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 22:05:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E62A60462
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=twZTON5d2lXdkHw+JM5TMoWXxZZDSc7Ib3aCUDEQAt8=; b=YRgQUgI16NR00X
	0nZRhU14TQ8hDpp5siYJ7Pov7ifEOXsLAZurRg0BvA/QQPgPIVrUfjkeSCEA0TNyx3wkmYuEMqLNC
	Kl37KNa5GGIskeyJQicik/Vt/BruwZLPNgrg02Bd4eLsiUkPH98gCnb0x3FTgHqAPWk9EVoQdwwQh
	VyQe2PRWsY1sgKJr0753SUitJmC2jZ4UTSb6dmcN9/TLZvL5MqjxX7lxZBHkpNx/kxNWOUZpOyG13
	TR5jxZY4+Yz2E6tPMx9KrxS96o6Z3C1t/tXMMSkJ6ty/X+qdSn6ox5Hz1Ez0bv93sTqL6BlWDrsCt
	zb3P6xz0pw+DUmeSGiHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBlUw-00AvwJ-5B; Thu, 05 Aug 2021 22:05:54 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBlUj-00AvvA-8Y; Thu, 05 Aug 2021 22:05:43 +0000
From: Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1628201134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=n9PerTqiOhSYPAMhgipyu0mDMtUeEGLOP38xaaVz54g=;
 b=n5YRiBm8ER+k0J5kntSZAUKoN2fk3mdzRN6iWZHaYnVqweiiGyauJgZGBwydjph9wTrX6D
 eIIiKym2ZZx18Qxd6ZQUr9iV4bsW7BgxwnJguLQ+/r27ZjhkiESNZyzODtWiHxP6N1u5xb
 XWhK8H30Da9QScTfAXtkqV9vyC0niFE8+5L1J7vnnDLdvvAnKYh8T7/FlY1UdFwY6IkPMb
 wqz1AaxfiDMesBEC+yNTRE9jn1Mht7kNo6gCckm1Uck1hQ7Sv7cMif1lPRQJugQGaLbb0H
 hSRYJ2wsjdfJiji8LzqaqNcOXc1AzlqfZpwGFqDJvdw4+MKoe/Xa61JESd6RMQ==
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 strit@manjaro.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Setup USB typec port as datarole on
Date: Fri,  6 Aug 2021 00:04:27 +0200
Message-Id: <20210805220426.2693062-1-strit@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_150541_653588_B35BEC8A 
X-CRM114-Status: UNSURE (   9.97  )
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

Some chargers try to put the charged device into device data
role. Before this commit this condition caused the tcpm state machine to
issue a hard reset due to a capability missmatch.

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 2b5f001ff4a6..2115e03a59d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -711,7 +711,7 @@ fusb0: fusb30x@22 {
 
 		connector {
 			compatible = "usb-c-connector";
-			data-role = "host";
+			data-role = "dual";
 			label = "USB-C";
 			op-sink-microwatt = <1000000>;
 			power-role = "dual";
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
