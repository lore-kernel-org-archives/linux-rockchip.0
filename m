Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD55C38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 09:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xb+psPNtKXoW+ZvIPLxVhoynP1pi+p8rJZQ5YddHJBg=; b=WyaA48HdvgpaL4
	y88/McuY0PbBDOkw4Ag52R5t9h6EuFonSAQsz18Jv2IUAiu1cbywcmJD+GNFWAwx8l/oP916kdL9K
	QN7L+gXrvlVJ+yYIZjQ76DFvIPqg+gzCUbh81Pkvy3lMXFIQ18zz24wrn4KVQShF4S0txPa7hTYfW
	JKVOspEKgx2CvHZWEzkJlcxCXG/fZW1puqcHyCBMldEduqDPSBVWPPrFTBofvv29N5b+Ae0yMF5EF
	sx+DpGn0zDWlnPqiLcCu4mFcuHqSV5lY8rgJxnO8YLplxVG2UjKVa9Bmk/VMoYF32fhzqIRyq5wVC
	ZKTkOfq/0DiZ+L7y/sZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opR2F-00A2Vx-9L; Mon, 31 Oct 2022 09:24:47 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQym-009zbO-LT; Mon, 31 Oct 2022 09:21:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68FBE113E;
	Mon, 31 Oct 2022 02:21:17 -0700 (PDT)
Received: from pierre123.arm.com (unknown [10.57.7.107])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 28D193F703;
	Mon, 31 Oct 2022 02:21:07 -0700 (PDT)
From: Pierre Gondois <pierre.gondois@arm.com>
To: linux-kernel@vger.kernel.org
Cc: pierre.gondois@arm.com,
	Rob.Herring@arm.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 18/20] arm64: dts: Update cache properties for rockchip
Date: Mon, 31 Oct 2022 10:21:08 +0100
Message-Id: <20221031092109.533495-1-pierre.gondois@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_022112_782349_4689ABB8 
X-CRM114-Status: UNSURE (   8.61  )
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

The DeviceTree Specification v0.3 specifies that the cache node
'compatible' and 'cache-level' properties are 'required'. Cf.
s3.8 Multi-level and Shared Cache Nodes

The recently added init_of_cache_level() function checks
these properties. Add them if missing.

Signed-off-by: Pierre Gondois <pierre.gondois@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 2dfa67f1cd67..dd228a256a32 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -96,6 +96,7 @@ CPU_SLEEP: cpu-sleep {
 
 		l2: l2-cache {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 49ae15708a0b..8741914cea44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -102,6 +102,7 @@ CPU_SLEEP: cpu-sleep {
 
 		l2: l2-cache0 {
 			compatible = "cache";
+			cache-level = <2>;
 		};
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
