Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1568C63777
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AC332145D
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xs5B+Yz4";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlNpl7uz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2AC332145D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M64qXHsnJ/7Ueg8g1zfFe4F75AV9jPzBcqJTK0r0qVw=; b=xs5B+Yz4YXLUSx24JQbeQ04LX
	F8HV5wSSMBG8AORsnVhr7w/Oe95xAcQ0fjL3h7eQn+Qfr3qoaTi75QfJEDEi6WIzLEH/Fj1ulZ8rR
	1SOdZyegFf8UtAw4cfUG5F2nSW09ohM+4JguKpuT2h32Gh0D4EKCrh4CGpmmpBrgD0c6U/MPymi3O
	9PZyymz0VzdkwDb2qB0K2ZLe2AMZld9y+Wnfmlff+n/4LFIpqgsdShFKdMp8phgKDO0YeiGPR4SxB
	rfdO9SThkw3K9nMLKJzPWsDBXd0otl+eEhYXLovmWO5ewxvooMIg1wmcWhEhE/BmoK/I7mMoNI0DW
	depOuK0WQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiBn1-0002wf-AG; Thu, 26 Nov 2020 07:34:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiBml-0002sw-Qj; Thu, 26 Nov 2020 07:33:49 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B81902145D;
 Thu, 26 Nov 2020 07:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606376025;
 bh=KDD41CmV4iq/zVokYN1U7B8lL+F2kYydcU65HLWjkW8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DlNpl7uze499uv2DWFselQ1kdIifK/GUCMrX6ao2fwLQNUAOVZ4cpupYIFK4eZYtV
 pnmNejo9TYMrkjAiX5zSEsT+0y6PRFaqICe0cUUc3EOlKFm6U6vgOEouc+Vni0J8MG
 Z+4gua/i2YgqhOmFbbpNM6/qGXOUtdXF4BCPUN98=
Received: by wens.tw (Postfix, from userid 1000)
 id DD5025F755; Thu, 26 Nov 2020 15:33:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to
 "host" for OTG
Date: Thu, 26 Nov 2020 15:33:34 +0800
Message-Id: <20201126073336.30794-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201126073336.30794-1-wens@kernel.org>
References: <20201126073336.30794-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_023348_017370_7B30FD56 
X-CRM114-Status: GOOD (  13.69  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The board has a standard USB A female port connected to the USB OTG
controller's data pins. Set dr_mode in the OTG controller node to
indicate this usage, instead of having the implementation guess.

Fixes: 2171f4fdac06 ("arm64: dts: rockchip: add roc-rk3328-cc board")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index b70ffb1c6a63..b76282e704de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -334,6 +334,7 @@ &uart2 {
 };
 
 &usb20_otg {
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
