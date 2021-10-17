Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DF3DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:45:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D19B61054
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 11:45:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0D19B61054
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ys/c9WC4AelTLn4KA+N910xrbsdxjPhsjjnzPz9GMg=; b=hEnPc9/OxWVEvM
	TGL2SW0oGo6Na+fpzOOsiiBbhaFIFSd5UkBbV33+k9ytv+Z0kH9/4rNs+mQNf5DK1Y+5Qypx2QSNA
	kbmXImAWmeFf2YSFOXyl6qReXQLMOkUUbn8yMqUgFyEaPJ8I2n4Ro8XzkbjdRix5k3d0J0oiylk1u
	R8aan5Iren90aSpU7Gz3sKJZzAyv2HkNlp0FOeazSHHYhERwmt1hF6xDNkvQ9yLQoVy6DcLEtJwMo
	eOpOkEJGEqzJDVL+nJ4xA2K+Xf2MAfDdM41XhHzHWqWQgNTuiKhPM70c4lHujNkmPnb67X76bfz9n
	8mXCGfLBdcYQfJfNOyTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mc4bZ-00CHAj-PO; Sun, 17 Oct 2021 11:45:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mc4bM-00CH5Y-4k; Sun, 17 Oct 2021 11:45:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 011D360FE3;
 Sun, 17 Oct 2021 11:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634471115;
 bh=ohuMuYmmuyqyemJ4Qv+2X0qk6HWlk0oTy0Gz89ptlUo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ba2+hAgqogX5pyL/+cDfcC/L2/wrEGbJ9jKoi7XLGpqxScs6BytFNYjroMCWo/BVH
 V+GJtRe3JCtiIzpaITvLkS+jLIvdiSb32DsLjoQ3NldEKjX1Yr1DFm8qn725IcxcSv
 jeT3TatImQUuV2OsfLKFo+Nm+84zySMQ/ebFVXr/9mLOLZ/9UAQQRUOge9SjHjiOSr
 ZzcA9VZGfmETOOswrvr4h/N1OIO26N6D8Bkr4ffpswJF7NlbOTyIBoNsIwRP9e8+IO
 +X1ZiW59EdhB9dS+GW6CZDTQsdmututWLb5IXDOjZttz+DPhGsDYCvPpsdTHpiDOkn
 aXlduszwQTqEw==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>,
 alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>
Subject: Re: (subset) [PATCH 0/4] Getting rid of the reset controller in
 i2s-tdm
Date: Sun, 17 Oct 2021 12:45:06 +0100
Message-ID: <163447061131.1864024.8259786717418291207.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_044516_220397_1E925B6E 
X-CRM114-Status: GOOD (  10.52  )
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
Message-ID: <20211017114506.ldAr37fll0z2VfqYZT76jMrpZFI4SptP1h5kGr-lt4c@z>

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
