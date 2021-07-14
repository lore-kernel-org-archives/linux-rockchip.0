Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB03C47E50
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:38:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C9EF613E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:38:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C9EF613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nS+VysBAigEzSG0y4ETKnsDuYSOOFIlx8tVFJqzmTn0=; b=cb4l0VXlz6b7Hx
	ef1OkP65GRnRhtc91mGWLjBP6PbN8Xsl7hthcjPehS6q0dhK8aGzod6YN0aQp3F87tr/DkW0QtrFG
	wLMBSBHrhVxkTSyaTyUNH4MFOxHvCD/eyWNZdvJqeKeHwRQGUjIr1G0Z9B12i3BAkSAIt9MJ0YQw2
	prz9A5lusbOqLyI/MHp6cKSu0dU8csw9C2JBSV9TNhANCO8yXN9WEjB0P5QouOpNniDF4QmbyRDcg
	npe0G2YSVb26snehicvRdQDWFEMPmg5bVjuWvSyDTP/cSY5t4i5snz1Hh98QJ5tplqnk4Aui2uZgr
	s4lrlZ2haUYKvI0NefCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3kiH-00Ebnf-IV; Wed, 14 Jul 2021 19:38:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3khq-00EbWV-G6; Wed, 14 Jul 2021 19:38:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBE24613D6;
 Wed, 14 Jul 2021 19:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291485;
 bh=fdX3OWonzQBkMm3CKVLceeQ5nc48BR8fbedd/LnPc0Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pLF8YV4IlUqJA5w89aE7ezPwwv+9k4ZlJTdbL9qI2hFKkEhBChK5xOOoX8LMfP5zT
 PUaKSWEzHwPhP5DIxNydqeTKCeyJX5hC+T9KJrsuS40U7XxiVBc2zFpwL50Z/cXQt4
 dUW/jVCzAWd4xq1spC9t3LF4Jljgs/2HTm/TU2e044NmQ4DuHnkG+eMkYdX3OpNk0P
 3EtdnSMiZ0BVomAzvZPbn+RaJeYcbYgAN513Ogv4zSi6vvFYIg4ci0ivPoEuDlvONf
 +NdLqp624xWe15he1x+VFSOSsxxf2P06gNdQk3eimwBAkwjQ7fhuSPa473HYQ9UbGe
 paoLq2tR3FS/g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.13 003/108] ARM: dts: rockchip: Fix thermal sensor
 cells o rk322x
Date: Wed, 14 Jul 2021 15:36:15 -0400
Message-Id: <20210714193800.52097-3-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714193800.52097-1-sashal@kernel.org>
References: <20210714193800.52097-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_123806_581573_093E4BF3 
X-CRM114-Status: GOOD (  10.58  )
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

From: Ezequiel Garcia <ezequiel@collabora.com>

[ Upstream commit d5c24e20daf09587cbc221d40be1ba92673e8d94 ]

The number of cells to be used with a thermal sensor specifier
must be "1". Fix this.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20210506175514.168365-2-ezequiel@collabora.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 208f21245095..9f02ba7a0cc2 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -517,7 +517,7 @@ tsadc: tsadc@11150000 {
 		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
 		pinctrl-2 = <&otp_pin>;
-		#thermal-sensor-cells = <0>;
+		#thermal-sensor-cells = <1>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
 	};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
