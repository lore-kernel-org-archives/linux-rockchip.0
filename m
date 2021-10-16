Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 012C2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:50:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 750CF60F70
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:50:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 750CF60F70
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJbSXIcEQb1aQfLLvnbMmiphcRfmDwtfvsilEWK+gD4=; b=pZ0GHH5eOPqfpr
	V4qgPR535XB+MI5JK8kSduC+8cg1NfgG1r2eN6ecvoZVIv1RVyKgkjW+m1VWXQ55JDLDBWWoLlcFU
	kY92LlMIUAsstk62w5SsyOOfUgnOlp0KYJ1fAjbiq2jF1kzQwUKj6iwNrXck8m26CTmQ3Ic135LNk
	nFsfZFXTTi5LcVC16SDLBt4xlALpdlU+UT+b161YMIih+kwGIETQfnNYYDg/EacQ9d4OHnKo3+7nH
	ucQbfSEsCxbRHBZRLVfjoL6nT59iwmhd9+5vLLhJvdawMYlP1qtqhPp6sz5TSiFpObA0Lq4w9xYrD
	140C0O63tP5xGE3x5nAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mblxG-00AuN7-9I; Sat, 16 Oct 2021 15:50:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mblxD-00AuMR-Lw; Sat, 16 Oct 2021 15:50:36 +0000
Received: from p508fce7c.dip0.t-ipconnect.de ([80.143.206.124]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mblx1-0007WI-5i; Sat, 16 Oct 2021 17:50:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] ASoC: rockchip: i2s-tdm: Strip out direct CRU use
Date: Sat, 16 Oct 2021 17:50:22 +0200
Message-ID: <1782571.1Dz21PRzoM@phil>
In-Reply-To: <20211016105354.116513-2-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
 <20211016105354.116513-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_085035_752827_AF22258D 
X-CRM114-Status: GOOD (  19.98  )
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

Am Samstag, 16. Oktober 2021, 12:53:50 CEST schrieb Nicolas Frattaroli:
> In cases where both rx and tx lrck are synced to the same source,
> the resets for rx and tx need to be triggered simultaneously,
> according to the downstream driver.
> 
> As there is no reset API to atomically bulk (de)assert two resets
> at once, what the driver did was implement half a reset controller
> specific to Rockchip, which tried to write the registers for the
> resets within one write ideally or several writes within an irqsave
> section.
> 
> This of course violates abstractions quite badly. The driver should
> not write to the CRU's registers directly.
> 
> In practice, for the cases I tested the driver with, which is audio
> playback, replacing the synchronised asserts with just individual
> ones does not seem to make any difference.
> 
> If it turns out that this breaks something in the future, it should
> be fixed through the specification and implementation of an atomic
> bulk reset API, not with a CRU hack.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
