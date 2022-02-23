Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A93C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 23:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0U+SHmMv/a8P1Ghs9eOeaToV6AtbLw0FZ6qJ8kIBVE=; b=NWR0kfL0nu3QdI
	IzYcW/X+84J/+UQBCeg6VEqchxNkortG6te3c3yRw8GBCLtDtPjXkQx1KaEGQYExqP8cbmaqKvKX0
	eI27FjgoePKC2hrluv1jz4VF7Q6QfCoAkdZ3CBMHIk7xZjMUi994CT6MPfqZPZ5tv3Pb8Ce+UCVwW
	Sm2OkPJUXDST/nPWpDINdRXMNbqWV31bCtfeQVQec4nZy1uvWCpsLTFiUcHDiSpWRnzJ8JaSUPZSo
	lZu9bRHp7GMx30CmHUGM2dxsjZaJGZramujQgcEue9KMH/gtB+7xLnUvHXnnfUMF4A99jqy74JZMl
	xubjXXpWJs/ftcacBdNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nN1JA-00GIHT-Ds; Wed, 23 Feb 2022 23:44:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nN1Iu-00GIAi-14; Wed, 23 Feb 2022 23:44:17 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nN1Is-0005mN-0x; Thu, 24 Feb 2022 00:44:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add the vdd_cpu regulator to
 rk3568-evb1-v10
Date: Thu, 24 Feb 2022 00:44:09 +0100
Message-Id: <164565984100.1356028.6052687711038538689.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223162054.1626257-1-michael.riesch@wolfvision.net>
References: <20220223162054.1626257-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_154416_091256_317E3C09 
X-CRM114-Status: GOOD (  10.16  )
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

On Wed, 23 Feb 2022 17:20:54 +0100, Michael Riesch wrote:
> The TCS4525 voltage regulator provides the vdd_cpu on the Rockchip
> RK3568 EVB1. Add the device tree node and connect it to the CPU
> nodes.

Applied, thanks!

[1/1] arm64: dts: rockchip: add the vdd_cpu regulator to rk3568-evb1-v10
      commit: 738bbac5612236bd8734f12bdc0122a591b0cb25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
