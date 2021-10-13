Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3816FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 20:00:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09C4660D07
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 20:00:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 09C4660D07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLAtGxwaPVFSs4C1hE61ZRVz+S1TW5/9CgoUO13AIh8=; b=Im5Xxua/wWS3As
	0N5wMNJFH7CeUM2SSvE4PfQnosxvheYICMGpw2sBOetSvlRt8UfESTSvq5S3PHcKbq5JD3QIpa4ku
	Sxr4pU0V0JHRiLln54Avqoccnk2SCOQFPsGUNcSTvR1/up87Ma0L6tTldMQwc/lmQLhNUK+YFDlp8
	i5NUQvu2E5wo5U4zOldjC7SxKTpqhTx94L+aReeosG3+E+2i+tuFSZH+fQJJGUjpwmRmDiqjTyQA0
	lTmKPEWWMD7zV0pp6iq+hwrAterudw2DA5KyfT6UeDPqD4s9x3/GblzwWlTZcEjViABow3mSNsf17
	3LWoLiFEnUN++4tSLiEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1makQZ-000U0C-F5; Wed, 13 Oct 2021 20:00:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1makQM-000Twk-KJ; Wed, 13 Oct 2021 20:00:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA93E611CA;
 Wed, 13 Oct 2021 20:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634155226;
 bh=4N3yvgen75fiUMMp1UQ7bl6qpKiJf1k2V3H+eS/i6oA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FGPOsxMVdZpNwrDFMRRm3Tq/gevH/3BTBM7lTJv0PHHFl2l6pIQq+O6mp3LPO7B6H
 XElxQsRr9Gggdst2UnDfY+SvCsBxh+It6KWthsUFkTWxq/yownRRKr9djlNgKq1rCY
 rSCEURcOtaTPYSJR3/X+oMmmSLEX1TNEE3SnxS9y8VG3WDxNEN4AYe5qIv+QRp03pm
 FVvJbOCt1i7unVbx1kIquDSJslOYV0Oq3Pw2g9iAf4U3J1OpFJE12B7OMLnnbOo6qj
 1JRW2nfq3iYx/mzncRtScyYeQZuThCncrhsvH7ndrT7aSNrKgWpo1zQHUcSFWWRwZH
 /e0aOwTnONBrQ==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Mark Brown <broonie@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,
 i2s-[rt]x-route
Date: Wed, 13 Oct 2021 20:59:54 +0100
Message-Id: <163415517074.1358186.8845455508599261985.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
References: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_130026_705715_90AC2F08 
X-CRM114-Status: GOOD (  11.50  )
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

On Wed, 13 Oct 2021 15:49:42 +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
> 
>     Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-rx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S RX sdis to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
> 	    hint: "maxItems" is not needed with an "items" list
> 	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
>     Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-tx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S TX sdos to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
> 	    hint: "maxItems" is not needed with an "items" list
> 	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,i2s-[rt]x-route
      commit: 51a67d6e28c6e1f10c8ef95b4f5fbf204ebbeb24

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
