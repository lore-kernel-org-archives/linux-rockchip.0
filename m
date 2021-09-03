Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0690C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 15:19:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D430610CC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 15:19:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9D430610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pRI0GviYlIxikLQkDSn5A9EJET0Xo6meRt1VBpS42c=; b=2vRe4Pf+apW2bn
	ZFQ9CHgmY0wDpQ/1v6p4acuids8nmH80swmlUY4sBo8wzq2YqlMNdAZbI2//xqqzwoJMXY9DC/VS0
	cR+IFSzgGpy+uPd5Gxoyi4SU/2Mgg9AQ/8ilGNfQ14rQSf4o0/j5OOld15RmmMA3p2BJygjoFzlX5
	lAOy3kdll1SMOpkSzO4PjL/DM/l7kWk38voOEIpwQGqT7hn+3jfNzNCIxy4N6o5BU+UerLFgmmNax
	YJ2g/iDZZVRE3mjPVoZDuJhjNzhoRZsyEDem1ZsYGON9fPUsYu6SL7EfD4HEcMkT4eCANn9pRm4OJ
	/0qxYWmPL/H9PqzBoszg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMAya-00CHmU-3D; Fri, 03 Sep 2021 15:19:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMAyN-00CHkn-4N; Fri, 03 Sep 2021 15:19:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A61D610CC;
 Fri,  3 Sep 2021 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630682358;
 bh=8G+tliPfC8rLYs7/1T2ci0+LLiBWSR8H0X7JG/QzYpE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aCdyvXI1ACl55zc4Rn+SQ5lST/UT+pwcavYtiotJDJqEkp/OyunApyBwNOPyKNebg
 5jPc8snRshnRCybDInizByx2aVMzfKqlxdXYNgmj5yWr4NDb/n8cX2SKbRyKgjs9oU
 U6Fxjbz4g4pYoW96rgxsbJIugXHe3bCggBgAjEsd9lMT/Z6qfqiTesQw2jnF93nIgO
 Luqy7XJOqEybszrGHPDZAzkcYjzvBK1haiKO+mHWt7uXTd40YPcyBL7Rf8fwnZZi+w
 NkvGhp0QCtDtWEA+l3UUoAbsmXi4/HZBFR1qLpPFip2SJ7aWMRNBN1xpXw/8/wqEAr
 MA/kaeLKk6Z0Q==
From: Mark Brown <broonie@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tobias Schramm <t.schramm@manjaro.org>,
 linux-spi@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] spi: rockchip: handle zero length transfers without
 timing out
Date: Fri,  3 Sep 2021 16:18:43 +0100
Message-Id: <163068228056.51069.15541338141615688512.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210827050357.165409-1-t.schramm@manjaro.org>
References: <20210827050357.165409-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_081919_227802_5198BBD9 
X-CRM114-Status: GOOD (  12.53  )
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

On Fri, 27 Aug 2021 07:03:57 +0200, Tobias Schramm wrote:
> Previously zero length transfers submitted to the Rokchip SPI driver would
> time out in the SPI layer. This happens because the SPI peripheral does
> not trigger a transfer completion interrupt for zero length transfers.
> 
> Fix that by completing zero length transfers immediately at start of
> transfer.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: handle zero length transfers without timing out
      commit: 5457773ef99f25fcc4b238ac76b68e28273250f4

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
