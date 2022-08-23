Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26DD7C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfyKFZju8Em6sPzI5fTm92A/zf9Ff3DoLErC1lhdiLc=; b=f5f2J2rSu3Sqsq
	cnr4y3mxTTxm3YentFOY1/zaw3lhgJfB+Ah4AEaiUKyNpf4JaT1Rw1/gYCov2fGI1jySbepRslDJO
	fbqN5IPjcI/9Ok9YLDrsSG4d36e9IvVG0WwJUaDBvQtqf5Fu15rbwhzbTZYLnD3wJX7If5L4LEj+y
	abzK+0jf437oDKhxYIAfZvAkX5/Db6sw9boe68g0C3SA+MEcMLyPr+s5hAbuf8ycgZLgYANZLza6R
	kT5HfIkN9U/s0geg6bgtNg3+NuoN2BjENLiwyanqlkeONh4PlloVyOVo4A94ACPgqH5XjxGw9SEJi
	BnDFGcPeXHwQnTn2GSiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTIb-0060WW-68; Tue, 23 Aug 2022 12:46:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT9Y-005vqE-2D; Tue, 23 Aug 2022 12:37:11 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQT9Q-0004gV-EY; Tue, 23 Aug 2022 14:37:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add analog audio output on quartz64-b
Date: Tue, 23 Aug 2022 14:36:56 +0200
Message-Id: <166125820548.1301371.13535238054179966253.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220721083301.3711-1-frattaroli.nicolas@gmail.com>
References: <20220721083301.3711-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053708_274295_D499A560 
X-CRM114-Status: GOOD (  12.73  )
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

On Thu, 21 Jul 2022 10:33:00 +0200, Nicolas Frattaroli wrote:
> This adds the necessary device tree changes to enable analog
> audio output on the PINE64 Quartz64 Model B with its RK809
> codec.
> 
> The headphone detection pin is left out for now because I couldn't
> get it to work and am not sure if it even matters, but for future
> reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
> schematic.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add analog audio output on quartz64-b
      commit: db7ad41538439a3dcfebd738959c7526b4e7d528

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
