Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D7B1C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 20:40:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CBB71613A9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 20:40:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CBB71613A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cc/ZirjnF+gORUkKDVwSl5FPgrKlLyh1rqUyNMhJeGA=; b=cNOds8+eIknw6L
	AHRnd5+L6rZowv4seIgEbBuvcGT1a4iMKGzzUJTE2eAmrX289j4eTDlX2UpaIzRv7BHJvHYQpfWPg
	Gk6Rh5W7fJawIyzkJ4j854Cy0phWC7NxIU2ATc6xdli0tiVagH+JJgVsiH/P15nMQI3s8UnB15yPm
	OPTbhwdzmmFbbvyiJ42g3KTLY3d+ZZKSW/ImS/esRIg7XzvBMBl/xwcKXhWfYO5H6srYgvwSW/PyO
	Ffnsd9K85I50WDlFUDnsnatjxtw2IxGWy5rCTj1+vkyes72N+H5WhKA6Ja+hiXNtAs5iq62i4tAkB
	WFnaDCtUwGQnkY8K92Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3lfv-00F5T7-Ro; Wed, 14 Jul 2021 20:40:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kkO-00Ed6I-3h; Wed, 14 Jul 2021 19:40:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D5254613E9;
 Wed, 14 Jul 2021 19:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291643;
 bh=trteg84HErb6xW1RjbmH17U4+O+oysBVVdFM4E+QcaM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mew5LqD8t5v3Q6MjUpe3/j92eMEFvUnLYs0BQj7gX0zs8YmNEJoKMaM3513xJHlyS
 DUcgnyEjWiz+h57dAe+6h2N3EN8sEgQsGJVf7udQxvLDV3kgi4lY2QvnwzUs2bBe16
 72zPrUvFvsO7aA64hjdQgsDaQwmN1uephMMz5eNx1cz+bsgxYgWJhAr3eFq62tDmq5
 5I6wbpi8TkI/xsrFMFQQOCCO1sd2YiUYUT9p67D+BfG2iF/xpPTl1UJdvZdTMhsjjo
 28FkN6/MVArvRZsmuPET5EDZk3rHDh9WQQpwoJ7VFHNT3RbY5I4e6mInbGJtDhGMNq
 xuD70Ue+YDx9A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.12 005/102] arm64: dts: rockchip: Use only supported
 PCIe link speed on rk3399
Date: Wed, 14 Jul 2021 15:38:58 -0400
Message-Id: <20210714194036.53141-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194036.53141-1-sashal@kernel.org>
References: <20210714194036.53141-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124044_220011_940F0EA1 
X-CRM114-Status: GOOD (  10.15  )
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

From: Peter Robinson <pbrobinson@gmail.com>

[ Upstream commit 954d5986afa50c178ea7554e6abdd611d08f5ade ]

The max link speed supported by the rk3399 is already set in the
rk3399.dtsi file so don't set unsupported link speeds in device
specific DTs. This is the same fix as 642fb27.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Link: https://lore.kernel.org/r/20210413141709.845592-1-pbrobinson@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 48ed4aaa37f3..476787027e03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -504,7 +504,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	vpcie0v9-supply = <&vcca0v9_s3>;
 	vpcie1v8-supply = <&vcca1v8_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index fb7599f07af4..17ba7c3d9a9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -469,7 +469,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 7257494d2831..bc385ad45a13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -324,7 +324,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
