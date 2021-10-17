Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31103C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 12:36:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9915D60EC0
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 12:36:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9915D60EC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iD2yAUW8X6xiMn2f5qzFucpRLj2MoawkDOLAsOgbwbc=; b=NalwP4x1sFRWxD
	aIMOnnz6i5uSH3lq0KdLn51yaetWdKpCjKoPMGbC6zzX4CiSdDeLT3Z6uKLvq4go64EWeHK00ja9h
	OOk43OjNEz4U+uVbwlZn+AXvrn+dO+kXrvzt/xttiTdPrmkWR7YjshGVUfNJ2i5Jx4yOK+K0Rmlad
	5/71Y534DrNuZrZuvdDp0vfX/mFsNnwthekr2O7/ofPF7d2ldpvezklkdAv65PkpO4qevFOjswHxC
	dWu2CQ0yf7+xJaw3VdY+J8D+1ddEWmufnKkxInkLWnHBZR120nP5IB1WCjWADQP93pWu1Vbc35Upt
	fLPXc5uLp2QonZ0o60Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc5PA-00COUb-Pv; Sun, 17 Oct 2021 12:36:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc5P7-00CORz-0j; Sun, 17 Oct 2021 12:36:43 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mc5Oy-0002zk-CQ; Sun, 17 Oct 2021 14:36:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/4] Getting rid of the reset controller in
 i2s-tdm
Date: Sun, 17 Oct 2021 14:36:30 +0200
Message-Id: <163447418314.467969.12281084994764198106.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_053641_079690_249CD6B4 
X-CRM114-Status: GOOD (  13.00  )
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

On Sat, 16 Oct 2021 12:53:49 +0200, Nicolas Frattaroli wrote:
> after some discussion with Heiko on IRC, he has admitted to me
> that the rockchip,cru property, and its corresponding half a reset
> controller in the driver, is weighing heavily on his mind.
> 
> The background is that if the lrck only uses one clock for both rx
> and tx direction, then according to the downstream driver, the rx
> and tx resets should be asserted at roughly the same time to keep
> things in sync.
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: rockchip: Add i2s1 on rk356x
      commit: ef5c913570040df1955dd49cea221783468faeaf
[4/4] arm64: dts: rockchip: Add analog audio on Quartz64
      commit: 1938b585ed19bb01969b4e923664db88c5ee8798

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
