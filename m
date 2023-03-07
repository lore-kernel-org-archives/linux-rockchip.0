Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801D5C6FA99
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SwOZQxRgQDCrsQzy9Nfc+JbvzrlRGPFCicYm/Wm3mM=; b=fkH+7dZmTjaG7y
	1OEfabdvS83C83V/jQhu0CJ5jZwbzEHobPH9hKpt1ZxJtQWgKhThz5eqCIxgzbJW16C8nIMMHW47C
	FPyc8sperMdc90zL36vOLvYmtzBC8Lt0qKRXzJss5vJqv8hwPtdtq53R4GGZbCd5pqhj8VwL1qplR
	PaRVtr068sPBQpN1f126Y97xOpT7gPQuQxYMQsMyPXnaE8v04XqKZafGnIAyWOq/ul+Dv+RARuJl8
	LkLFtBJIUsumh0ptXaxkQTG9OUDOrOYmTNHZg9+xPHYx8BvJkFVLhXrKmDmXD8Ehfj1O+7da+irLk
	M9kHGrtkOaCg28hn6udw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqu-002tLA-B2; Tue, 07 Mar 2023 23:36:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqT-002t9p-KK; Tue, 07 Mar 2023 23:35:52 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqP-00025h-0m; Wed, 08 Mar 2023 00:35:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	sjoerd.simons@collabora.co.uk,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: fix a typo error for rk3288 spdif node
Date: Wed,  8 Mar 2023 00:35:34 +0100
Message-Id: <167823207782.205469.4408552227969535447.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230208091411.1603142-1-jay.xu@rock-chips.com>
References: <20230208091411.1603142-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153549_705368_7044767C 
X-CRM114-Status: UNSURE (   9.93  )
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

On Wed, 8 Feb 2023 17:14:11 +0800, Jianqun Xu wrote:
> Fixes: 874e568e500a ("ARM: dts: rockchip: Add SPDIF transceiver for RK3288")
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: fix a typo error for rk3288 spdif node
      commit: 02c84f91adb9a64b75ec97d772675c02a3e65ed7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
