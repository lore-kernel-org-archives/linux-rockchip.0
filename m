Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CBE6CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 18:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcyO28qK7tSkQRkTADvHGcJhChjkEhRFCp1b/okZu8U=; b=Wzvvz4T7JtmCcp
	xElYuc70va2mnuCZwzHNXR/04/i1F8x6VYpvCpx0UYeYekzlnSKRPYiBLpapzd5RntGdXgeZMbiVI
	OMFJCXgUAyuXo+HWNbf/GcaXsgLFERT1MTKnVJNO2CbbrZSVaWyiPbbGD+/6Z1VhSCSgqxwxtSnM8
	OG2i+PQ5RBooVE/aqXBFCRq4/B0rGKhiArsOd139KZaGOmqkCqEOkkT1Hyl456chCB/7x4KegHOyB
	UMV6hz6K0glEnLHBU+xS1EcOQYVzJEb1xQH6Nb/e9UNdb7ikgF/mfhJmmsmGu9vwqIYqTn/X2B7YZ
	oTporSqtOOFylr4jv/cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQi-0000000H9PB-28od;
	Tue, 14 Oct 2025 18:07:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8jQT-0000000H93g-0wSA
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 18:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DgS+NBRZ5meprDicmbCbMq8Y1cdxTX/xG2+nCSlVa7Q=; b=S0qvk2R2u1KZkuHrcvuzi4k3N7
	hOi/qvW4YSP6FTZrfLLPexxOvNW6npYimuZ0gXjzaCzXvzdhKc1/yP9DS9KkVodHIIdMzvvzmmmWx
	SHMhRrguSkM28KL1bLp/BXCx1PabyLlcaJ4KoAiHMUvi3TE7D1+cjBHv5PR+1AAFlFLvLVGAiIFTu
	uuABaFUhh9dGXzM+5lzaUbl38mSCbBgmmD0BMPoqpoBpkfUX3NL7rdCV133WjwEJQ7tf7rXMJqUdU
	1itUs1sWZxxgZtHFaFghwM/13uwwXfGbJhNXWa8VhMlYzJ++Jh3dSyIL3SPuapIMqhTlbEFv2Zjmp
	mt/uUS2w==;
Received: from i53875b75.versanet.de ([83.135.91.117] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8jQ9-0001Gj-BO; Tue, 14 Oct 2025 20:06:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	arnd@arndb.de,
	bjorn.andersson@oss.qualcomm.com,
	ebiggers@kernel.org,
	geert+renesas@glider.be,
	krzysztof.kozlowski@linaro.org,
	kuninori.morimoto.gx@renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	nm@ti.com,
	nfraprado@collabora.com,
	quic_tdas@quicinc.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: defconfig: Enable Rockchip extensions for Synopsys DW DP
Date: Tue, 14 Oct 2025 20:06:32 +0200
Message-ID: <176046473171.1662867.17938708004609069998.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251013090955.48832-1-andyshrk@163.com>
References: <20251013090955.48832-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_110709_316725_A5DF8CA4 
X-CRM114-Status: UNSURE (   9.09  )
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


On Mon, 13 Oct 2025 17:09:33 +0800, Andy Yan wrote:
> Enable Rockchip specific extensions for Synopsys DesignWare DisplayPort
> driver. This is used to provide DisplayPort output support for many boards
> based on RK3588 SoC.
> 
> 

Applied, thanks!

[1/1] arm64: defconfig: Enable Rockchip extensions for Synopsys DW DP
      commit: 642f2879816801ce3e9b00e90c5ee8ec6265c0a2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
