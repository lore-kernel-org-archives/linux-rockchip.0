Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EFEC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1psyZfV0WfbZSRF/KwEV5F9mdMd3yOQA2xy9Gzy6ux0=; b=fjrQGa9ZnJy6Gv
	MnDX80GuNurcU30zD3gaZ3LZ+5q83bTURieg2ur/6s607nlsoHpdPHQo03zkyO5/vlDcqFiaGKnXx
	y3zEAWsmBKfLASnI/0X7vseJzdz0IYCmDS61AbC12vLE/jXKIAPmJTOcO4IO7WjpGwUf8F8BVdHK6
	Yo2YaRCFIJ4A1ivPTnOm5h25P6cqIJs+KrczTqkuaOsN6c5W5WksUz8AIDuWy98Kn8LqvjcVcilSY
	NuSbEbtfs8p9mytQnmKmAmbmYlIYmIulLzfqTfPS+bc2EYrxtv3yBlB3WIEeMad+MXdZalvhEK5+n
	i6k2Ild44Ohbm/t7W4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outrj-00AOQH-EZ; Tue, 15 Nov 2022 11:12:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpn-00AMvr-0X; Tue, 15 Nov 2022 11:10:32 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpf-0007ai-Ka; Tue, 15 Nov 2022 12:10:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wens@csie.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt
Date: Tue, 15 Nov 2022 12:10:20 +0100
Message-Id: <166851058430.863884.3049189227884445450.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221106161513.4140-1-wens@kernel.org>
References: <20221106161513.4140-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031031_084868_E02AFE2C 
X-CRM114-Status: GOOD (  11.25  )
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

On Mon, 7 Nov 2022 00:15:13 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Ths PMIC's interrupt line is tied to GPIO0_A3. This is described
> correctly for the pinmux setting, but incorrectly for the interrupt.
> 
> Correct the interrupt setting so that interrupts from the PMIC get
> delivered.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt
      commit: 562105c1b072411c71ac2202410d83ee79297624

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
