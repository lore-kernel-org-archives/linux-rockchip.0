Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D9C4ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXiaQRFpjYiUkjZVIX7XWXbINkLU6udNoD/XILiaxww=; b=sHo/42plfPR0TB
	06Ru3D1fIkAkgQHRa1aKvkkmCH3/VCmNfSDz2SpDC8ERfOproePtQ2rLZD3dGb8I/OH0IKcjqrRSB
	cCs5bOO9F3/WGyExOaxNOJanmYgWLGAhDeJtz15cjGsNXkd14dnwP4ttP0YHVxPVdRzURRRJaLXyv
	vO5BUlqiwO9IT7KzVr3gVulwSXZEsxdXqz2KYRIfWpHzGvlBrf6Ok71g0n3cNWMAGyTtESPV1OAT/
	IM7P3KsfuytESmUMDjfRF+E0OzqNlrBUP3nBuY9CoVLI0szSHNEdJF/a9RRdzMM3kO0e7dnk9YZbY
	9ZzAFdWgGdytOipvGIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg0v-003fhC-Lx; Fri, 23 Sep 2022 10:34:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg0Y-003fYH-7u; Fri, 23 Sep 2022 10:34:11 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obg0S-0005sI-CH; Fri, 23 Sep 2022 12:34:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
Date: Fri, 23 Sep 2022 12:33:59 +0200
Message-Id: <166392923326.537565.16273769706056802822.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
References: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_033410_346362_F8FBA950 
X-CRM114-Status: UNSURE (   9.78  )
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

On Tue, 20 Sep 2022 16:34:46 +0200, Nicolas Frattaroli wrote:
> This enables the GPU and HDMI output (including HDMI audio) on
> the PINE64 Quartz64 Model B single board computer.

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
      commit: d99efdaba9027bf70a4f78f42c0ddc0639e0918d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
