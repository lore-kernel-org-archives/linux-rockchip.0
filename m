Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBDA3C61DB3
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 18:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ruMVey8XnakVrKjoB0ih1+fBlZ2cu+sp5PaQfdsh700=; b=RgVyoicD3fUkST
	rLG0ujsxJIHOUFHTLRP4OEA0B2Y8VKJ3sCEZ0HvskSkt0aZWkG4qrIV62ExcbRafG7wTx1tsVsEsw
	UOM17YgQ9PtAT25nTX+azy6xZmFjXcoL4+qSRms3LJTg115v7xoHmhJ68pTIs8/v69Pfb19pl+eyX
	3imJa/zuhFpOfo4iFlUbW+E4YCp6Kzd89mrY4a4HqyipNsI4TZIsBOmR+SccAZgf+6a0z5HlV7O3x
	ugiU8gJrJuRDkE+Hwr/EZ76Mt/LcjSu4X1UYT6O1iKis6b0Shw/xSfIptsrWPeYTQ3cLtQHX1abxO
	Bx8pVv1u8neU+n0Lw3RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFJY0-008B3G-Jq; Tue, 10 Jan 2023 18:40:32 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFJXp-008B1U-16; Tue, 10 Jan 2023 18:40:22 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1673376017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fEfXsgBd1LmC99B+Al8GAmqxqDkNECh3tsz7Y3yfKM4=;
	b=sZ1FXre8TI9Vm9HIYakFSROohLhzmpQ7RqITp06wSLFYc3bAOE0m60JCOKICjjME/ujFuB
	nZW2+b8ZkrVe8MfcWn531pqhkqpG1yNokxSAeNf/RfySi1u9a5yoIaA04ah0s/xkcXuZNp
	gne6TSBCT5avZBN6ZK8KGMMjbQmRAi+u57EFsPWhIH51oi+VxLZjiiwwkcN2RfJ+6kjWCw
	Sv2AXpaDrB0ByUAFoEhVeNVwJ7vlHRpduUMpi4gt5QzqPqSamqaNXArcUZcPF1cqwhthbd
	cxuXft+CrR4NIhx2limtkzcsHItPyvO7d9MszuvQ4/h1caJCzku1HWNJ5aE89A==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCHv2] Follow-up patch rk3566-roc-pc audio nodes
Date: Tue, 10 Jan 2023 21:40:08 +0300
Message-Id: <20230110184008.21492-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_104021_512755_F4B6BFD0 
X-CRM114-Status: UNSURE (   6.38  )
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

Enabled hdmi_sound
i2s1_8ch only uses a single channel
i2s1m0_sdo{1,2,3} and i2s1m0_sdi{1,2,3} is used by pcie

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index e60643581..42889c590 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -216,6 +216,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -481,6 +485,9 @@ &i2s0_8ch {
 };
 
 &i2s1_8ch {
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
+			&i2s1m0_lrcktx &i2s1m0_lrckrx
+			&i2s1m0_sdi0   &i2s1m0_sdo0>;
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
