Return-Path: <SRS0=E64z=HE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2EAC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 14:57:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F6CA64F55
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 14:57:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F6CA64F55
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C1hSxedyEMk5/wyRYuFLFKqnMJlUBUWBRWleXgQRPPc=; b=RWIOfHkS8422RlKuzGgpDSiqW
	FQ41g0pA/oVvsDN3/VCgsXAxO5fWzPX65DLWYsWYuiQcX16daOmCLH4lMgq+XccI4loWvhcGm5meL
	XZ6H/QERMiBEkiLWymaC1thIiP2q1YpjHZIxaYpOk9giiexOL9QKEJEPNffCcUqCxpFi1Lb2B6Mh/
	fyfcGArBqMor/bgXXQJZpsKo4CXX0mQHF0SjNThKy2aWOK7bazABM7ZZJNSKso6wtGhGmId0hpW5o
	5h/TDSYOMoW+yibfG5IFqNb1vWvpoiMWCQw3O4UuUrYQp2qui2Q4a2iWkyCFB66n+qQz68d7oqDs1
	ajkQT68BA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6x7E-00043S-Qo; Tue, 02 Feb 2021 14:57:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6x6q-0003ro-Gz; Tue, 02 Feb 2021 14:56:55 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l6x6n-00020V-Vp; Tue, 02 Feb 2021 15:56:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 5/6] arm64: dts: rockchip: add cif clk-control pinctrl for
 rk3399
Date: Tue,  2 Feb 2021 15:56:31 +0100
Message-Id: <20210202145632.1263136-6-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202145632.1263136-1-heiko@sntech.de>
References: <20210202145632.1263136-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210202_095652_705769_95AE2164 
X-CRM114-Status: GOOD (  11.21  )
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 cmuellner@linux.com, hjc@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, sebastian.fricke@posteo.net,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

This enables variant a of the clkout signal for camera applications
and also the cifclkin pinctrl setting.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 5d2178cb3e38..7c661d84df25 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2102,6 +2102,18 @@ clk_32k: clk-32k {
 			};
 		};
 
+		cif {
+			cif_clkin: cif-clkin {
+				rockchip,pins =
+					<2 RK_PB2 3 &pcfg_pull_none>;
+			};
+
+			cif_clkouta: cif-clkouta {
+				rockchip,pins =
+					<2 RK_PB3 3 &pcfg_pull_none>;
+			};
+		};
+
 		edp {
 			edp_hpd: edp-hpd {
 				rockchip,pins =
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
