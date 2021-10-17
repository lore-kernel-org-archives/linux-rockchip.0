Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70114C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:39:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3373661054
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:39:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3373661054
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ys/c9WC4AelTLn4KA+N910xrbsdxjPhsjjnzPz9GMg=; b=jcBVkFPAPWLDJ9
	TVm7HYkIHhnXUFkHjw/UnYmXpspJOER3JY1TNLdP8CtQNIFqvppSe4BLr3mpmZgK9/UhR1FilEzdI
	lzn+SPNyuV2NBsv4AJG8E8wYH6DoaJF+FKQOA8yhCfXEjRGo+EnWQv5WmKP/1XhqERRDqkjQrdi9v
	INfnJDfbb4VMSGBFA3ZqUJHwF0P165C5fKwSu/mx0NoS32PBvPKVlw+8rQaMcTGkMWfCoxheU+Tab
	Y9bZT32YHyiDDwmnh8XWSCXFATLZAs+jv5Tcfqjk5rNEp1l2b4mTS5XT5cIqYFIVQh7fwXAb7JHri
	CyyxLfuadTNStXEK2akQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc4Vp-00CFHn-C3; Sun, 17 Oct 2021 11:39:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc4Vd-00CFG3-Dd; Sun, 17 Oct 2021 11:39:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF72160F56;
 Sun, 17 Oct 2021 11:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634470760;
 bh=ohuMuYmmuyqyemJ4Qv+2X0qk6HWlk0oTy0Gz89ptlUo=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=fv8qMW6bkN0agW2c4cNgIEbetZ3JiM7DYltNzcFsbFJvRfmprlEBrODU/Ql3DOYyu
 r24ViDHOEcEdUQKjXHX9T27Pz5tFz8B/S0UhnwvQW/dJdxty4XeOHaG22aNt8BU2FY
 ba7yPcoY3u6ElSA6/JLK3vW1JnPtrCXAHn/m+nQmoswk6SzNrJBFpkX4YFYqc/dRG8
 jJ/BzR4aY9cT9aMqcuZlOdHUNJDJG0olbNfSxB2K3WjVImjJAigQdMEnXeAFTda/Vf
 h+CApieJzBHKu1aNpRdxo0krso6aVAw5UG8HFg+lx/MRymFZ86mWdNqFagWKiPI2Zh
 QCz/N1vr6jmVQ==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
Subject: Re: (subset) [PATCH 0/4] Getting rid of the reset controller in
 i2s-tdm
Message-Id: <163447061131.1864024.8259786717418291207.b4-ty@kernel.org>
Date: Sun, 17 Oct 2021 12:36:51 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_043921_529122_62472EC6 
X-CRM114-Status: UNSURE (   9.38  )
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

[1/4] ASoC: rockchip: i2s-tdm: Strip out direct CRU use
      commit: d6365d0f0a03c1feb28d86dfd192972ddc647013
[2/4] ASoC: dt-bindings: rockchip: i2s-tdm: Drop rockchip,cru property
      commit: 4e52cb9e2c22c9d860910794c82461064baadd9f

Best regards,
-- 
Mark Brown <broonie@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
