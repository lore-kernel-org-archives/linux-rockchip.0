Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC59EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 16:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0BZs/9puLRvovjDTMqdR6kVkkOxsfftVLP242MC+Tc=; b=BMuuIImQsNKbcn
	kbxS5qGXEOvAQ09+xbveGskGjx81ESvfhtXJiphAnHkceMJ8BiHYV6q7du0SmRxWitdg70EgTzr/A
	Z6tMYKAPKmrZSpVa9MCoe13E2V8OCqHtfOEzoEzdFR82VSSS8UYDLj+p2cZR8Qi19OBjB5fWLGcM2
	Y4jPcVd+u1puzGN7K6O/oyxlDZEgJtkp7kpGpW8EpIo5tFG8oRBYvHMs00kwEIFjaOI+0P0wYjDcq
	ZG/N8bHRzsqSPO5D/DMjeMpkN74NGhtFijycBi92AYpFsrY03bdE9uw1Ta9ZNu9ce9knXFvVqMjON
	lQCi0pNNc/OoGfGm7PSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHTpz-00Exs5-5u; Tue, 08 Feb 2022 16:59:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHTpw-00Exp9-G8; Tue, 08 Feb 2022 16:59:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHTpq-0002ya-5o; Tue, 08 Feb 2022 17:59:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add the i2s3_2ch node to rk356x
Date: Tue,  8 Feb 2022 17:59:18 +0100
Message-Id: <164433936977.231183.92484649914361985.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131153457.391460-1-michael.riesch@wolfvision.net>
References: <20220131153457.391460-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_085928_560878_7F05B67D 
X-CRM114-Status: UNSURE (   9.96  )
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

On Mon, 31 Jan 2022 16:34:57 +0100, Michael Riesch wrote:
> Add the two-channel I2S controller I2S3_2CH to the rk356x device tree.

Applied, thanks!

[1/1] arm64: dts: rockchip: add the i2s3_2ch node to rk356x

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
