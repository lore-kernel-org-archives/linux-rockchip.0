Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F9C9C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Feb 2022 00:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmgMHLWZhSbpYi9vFgcp81WgWoEV6E0oV+ehtDwxOtg=; b=TpFMx9Dhmi8UkZ
	/+T3me4bYTpHnz+gEYoDvUYIKRx9YFMQWG3fw/921V7NA8lBtMjAaZVIhNuBTPukmb6nYXRLmfLiC
	/P0NRYMlQFypBR8yM06LyFZFmEpEPPThgdfDAfUzj4H1Qvf2n2ijGLdgd55wswCOB6Xn4Gh47FPZw
	0FIQOp3oIoi7YkuGMIedBTnZfTMgFF3xdJ00Oa69cdxWCfTJpmCXATZVK+BX6rixrhVSAkZlzZr0K
	Jub0q+moFLVuBHukHY+lWtxeE9hG2d+schtuR4It1YbAXp5oMF+YoQCp/hBbP1p7oz2m0cdIiiu3X
	yaoH5Tnu6JcRrjpVhGoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIgI8-009B09-46; Sat, 12 Feb 2022 00:29:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIgHi-009Ano-8T; Sat, 12 Feb 2022 00:29:10 +0000
Received: from p508fd6ee.dip0.t-ipconnect.de ([80.143.214.238]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nIgHE-0003EL-7u; Sat, 12 Feb 2022 01:28:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: krzysztof.kozlowski@canonical.com, Corentin Labbe <clabbe@baylibre.com>,
 robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: rk3288: fix a typo on crypto-controller
Date: Sat, 12 Feb 2022 01:28:33 +0100
Message-Id: <164462570821.854738.5709330315457571448.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209120355.1985707-1-clabbe@baylibre.com>
References: <20220209120355.1985707-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_162906_310553_F1AEC6EE 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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

On Wed, 9 Feb 2022 12:03:55 +0000, Corentin Labbe wrote:
> crypto-controller had a typo, fix it.
> In the same time, rename it to just crypto

Applied, thanks!

[1/1] ARM: dts: rk3288: fix a typo on crypto-controller
      commit: 3916c3619599a3970d3e6f98fb430b7c46266ada

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
