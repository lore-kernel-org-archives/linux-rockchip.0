Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66826C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 23:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FfWGD2cDxfUs35XgNm9wDfYLnn3e+lFrO48KVPSsSY=; b=4IFESLFJs72qtE
	1S+bfnKc1WVD9WQNNw69jAPpdrfzUiiJaIV1vGReG8+87swZ4OItK5Do0LPBhAzIYcXNGtdA4A7EF
	umvJJ9HbubxEObL8l6oenacptsjCoEeaExywDt0WNx7r4Hf78LwrPodK+trMYScchAfPlIAIOeSSk
	9ffl8K/H2okxlOEtSAJR+4gVA7Gz3Kv9zTbWRIUf0PSykvx+dQGgBbViTtRbAWd6u8w1pWNv5q6VF
	tQKD8fkc8RXg102CWW11IF631KzeZLceniTpcStS9c3yNndv5hjoE/RXirv+37VboOiaiR8hmXRnM
	C1yUoeE1Ze6LKi4erETw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nN1JP-00GIPZ-Lx; Wed, 23 Feb 2022 23:44:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nN1Iu-00GIAh-11; Wed, 23 Feb 2022 23:44:18 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nN1Is-0005mN-8m; Thu, 24 Feb 2022 00:44:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: set vdd_gpu regulator on
 rk3568-evb1-v10 to always on
Date: Thu, 24 Feb 2022 00:44:10 +0100
Message-Id: <164565984100.1356028.13842583732609109921.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223112008.1316132-1-michael.riesch@wolfvision.net>
References: <20220223112008.1316132-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_154416_093313_79F2C265 
X-CRM114-Status: GOOD (  13.26  )
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

On Wed, 23 Feb 2022 12:20:08 +0100, Michael Riesch wrote:
> As discussed in [0], the Rockchip power domain driver does not consider
> the external supplies (such as VDD_GPU on the RK3568 EVB1). In the scope of
> this discussion it has been pointed out that turning this voltage on/off
> on the fly is not explicitly supported. This patch follows the other RK356x
> boards by example and sets the vdd_gpu regulator to always on.
> 
> [0] https://lore.kernel.org/linux-rockchip/20211217130919.3035788-1-s.hauer@pengutronix.de/

Applied, thanks!

[1/1] arm64: dts: rockchip: set vdd_gpu regulator on rk3568-evb1-v10 to always on
      commit: bbe5d394c76bd534a0819f78a900ac1a83f3ee9e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
