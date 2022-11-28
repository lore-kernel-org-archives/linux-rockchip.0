Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AAB9C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkMAjSg05WY1WISLWeJbdZ2lFVpO0JRC3MbM6TW9U0M=; b=z7pPnF8sweDmWC
	GigvdsDA6cYk5iF74u5t/sLU6cTb3nhUu64dZsNMRLluvBriLhwiiIZJHLFfyT1QMNEAehHjQ6G3q
	CFH/tcnA9A4C9I/KwErA5D1s99kb0wctVfegwiajB1jm79fUBnMGaPTUUV/uIk4/EsvYCb6wyUiD7
	/SWRFH6OKEwU6HbFpeQooFsaUL/PKeCItUpdmp80nv5bR7QFw9rgO/uDenZ91tDveVU8We9r2ZB8B
	pBfl2wRRAOeSD29bRl2gS3yzJ/qgC26bYenL/L5eMrIgFVMBKST8IHm3CaWAiw/Lixkx5V57bXF57
	enabWhiUMufTKFRLjCMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziNn-003JJr-QN; Mon, 28 Nov 2022 17:57:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi7V-0039zp-BZ; Mon, 28 Nov 2022 17:40:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C8A8461301;
	Mon, 28 Nov 2022 17:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2773DC43151;
	Mon, 28 Nov 2022 17:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657240;
	bh=MrcfBMU00PNN/1XsP3BwSi2BpmYNXxD+XJ/jbrqZRu8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ek0zJPHD+/nDDUfUADU6l1Kvn97k3vhdFcEAyt4e4rm+NVPKCC+f8kJNF3o5lfKp2
	 pMdFAeFZ+8gq+/mDvLvPiKHo+G0jHP07YS+3AJ7/JQyiWXGEtyLWFrdgG07+HnRXPk
	 yO8Zb5wTzeT2Dk80AdOHorcdxdFE2HkWKiwdQ/TX8tc9SuuPfvYRgSzbC7eiy2KABQ
	 aFZbsPxlHy5CpEYkPPcqyBwniFrTplTimI3DpII3Pf9qoL60wAeT0BMMoQPnettiHr
	 zlwcn7CX9amLWj+69+LozC0AjSwugLrZ97hSuE2hP1vCU7nxbA1pouwJ1/lpIFhLb8
	 iRhZ9j1wQT5vg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 05/24] arm64: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:40:05 -0500
Message-Id: <20221128174027.1441921-5-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174027.1441921-1-sashal@kernel.org>
References: <20221128174027.1441921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094041_490189_0B05DEC9 
X-CRM114-Status: GOOD (  11.82  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit de0d04b9780a23eb928aedfb6f981285f78d58e5 ]

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/e9764253-8ce8-150b-4820-41f03f845469@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index ea6820902ede..7ea48167747c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -19,7 +19,7 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	ir_rx {
+	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
