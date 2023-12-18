Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51263C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 10:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CJXlwdKo/VTNy1NwSdlS6XzDWa42FZmzEL/l1de2k0=; b=drnf8rK4j2v1SN
	A2pMwK56fHfTG6fiSatmEhC3uBVDtBPfWusd/tD9kc6ukN9I42sTwZ5PpwhdFnSO0HusvMiprBxv4
	9DKGoJECU46OuEgs6QIfeMR06GW5bG0GzoIUiKR/Dty+81SIOj3qpZ4/ozV6u9siGLZ82i7wfrhTh
	IksUhDvFA51SfjwV/wYbb7aPSraXBFRVmdZR1dUDEiRVx3WtIYuhetuguKqyfkmLaLDG/SlQt6Qxh
	pnabVu1duoTSm1zcVjQxOrARQ+HO2Dn/cIR9o3a5dHcR4GQtO2TdtKQpczLjBUe6MOyMoSEgWfDPG
	+5+fxwu+7ZZcJ0VALGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBIT-009wET-0p;
	Mon, 18 Dec 2023 10:56:29 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBID-009w6g-28;
	Mon, 18 Dec 2023 10:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=gwe4z
	CDjtQz1QKeidqQfolK+ZN+4nQnHqxy78omjQGE=; b=XPqW6oTYieu8ROm5Akl3l
	jMmVSzu99c8+QMhO68cwiIQmDLML2nrU38ZjLiJNFalFhCN1/oFL6Xsm+galhFIZ
	BmFvUDtAvVmMZB/Hz3K8RZjbXpKHKNXmDju3R4uZbUFJHd6GqjrSCMG6b1mLItm0
	Twq1MXzgRS3/zyoTvJs0bs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wDn72EdJYBln1v+Bg--.7214S5;
	Mon, 18 Dec 2023 18:55:31 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhengxing@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 3/3] ARM: dts: rockchip: Remove rockchip,default-sample-phase from rk3036.dtsi
Date: Mon, 18 Dec 2023 18:55:23 +0800
Message-Id: <20231218105523.2478315-4-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218105523.2478315-1-andyshrk@163.com>
References: <20231218105523.2478315-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn72EdJYBln1v+Bg--.7214S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cw15tr48GFy8uF4kWF1fXrb_yoW8Cryxpw
	13ZrZrGw4xKr1fZasrtwn5Ca9Yyrn8Ga1F9r4xJw1Iqr12qr95GF1a9rZ3XFyUXw42vayY
	9F43Xry2ya9rZaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jdZ23UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgVKXmVOBAp8owABs4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_025614_119097_7EA84533 
X-CRM114-Status: GOOD (  10.89  )
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

From: Andy Yan <andy.yan@rock-chips.com>

This should be a per board property, should not be put in
a soc core dtsi.

And when this property convert from default-sample-phase
in linux-5.7 by commit 8a385eb57296 ("ARM: dts: rockchip: fix
rockchip,default-sample-phase property names"), the emmc
on rk3036 kylin board get a initialising error:

[    4.512797] Freeing unused kernel memory: 8192K
[    4.519500] mmc_host mmc1: Bus speed (slot 0) = 37125000Hz (slot req 37500000Hz, actual 37125000HZ div = 0)
[    4.530971] mmc1: error -84 whilst initialising MMC card
[    4.537277] Run /init as init process
[    4.550932] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
[    4.664717] mmc_host mmc1: Bus speed (slot 0) = 37125000Hz (slot req 37500000Hz, actual 37125000HZ div = 0)
[    4.676156] mmc1: error -84 whilst initialising MMC card

I think the reason why the emmc on rk3036 kylin board was able
to work before linux-5.7 was that the illegal property was not
correctly identified by the rockchip dw_mmc driver.

Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 5344803442a1..466952bf9db4 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -287,7 +287,6 @@ emmc: mmc@1021c000 {
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
-		rockchip,default-sample-phase = <158>;
 		disable-wp;
 		dmas = <&pdma 12>;
 		dma-names = "rx-tx";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
