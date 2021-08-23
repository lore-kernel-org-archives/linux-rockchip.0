Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C9E3C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:38:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D38F961374
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:38:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D38F961374
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/ca5TaCMXkeNunE05tRPd/mrg49JpwKzkRVA5ES57U=; b=KtBV/hasy3IOt6
	b9VmpUErqtgpyAg4a6npY0zw3SvwogrNJQY4KV5/lsx4vVtBDm2OkZux4Dzf1xloc0ZS1U+qFO/th
	GJb5XGRzmWr7fxjJsfFLGTQDZlmpqg9V5qicr7UdaIJ9bj8fBYQcC0R3JaDPKuNk/9x7Tzx1kCoMD
	6EvPp/5J5L2NeLQOniNQTrfWa9rp7NIhVwIONA08T9xAWl93h2x4jxFgKoMF+q0jqN/FrpekAhN8X
	Ec/dTU6CrZhi1NqTV+yBX27MW4qU1Qlu3mdiv7LA3/2KaMHlkgbOI3G3Ua5jTC9R0Ay2pUf9nMJHP
	IM9ELe5HXz/FLxGckj4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIDu8-000CG6-8F; Mon, 23 Aug 2021 17:38:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIDtu-000CE8-W3; Mon, 23 Aug 2021 17:38:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2662B6136F;
 Mon, 23 Aug 2021 17:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629740302;
 bh=00YwudNE7MR/TP/XvuAZxtNITWiXbC+Ci4XZyCUewy0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X8icCSmOFJ5Pw98KDv4nkG7yd5EuXm0NfskwmHuTJWGvSuh1k+oEnRXKO53hdiduf
 yHLo+WCWt2rJmDidJL6T42lKNArYegyF6Jjsv8sHA+A8QHABxxtvNMUD8fbwOs9STN
 eGQVYNGrWuTwB0LT8U9Q7Nf3QSVr0kiHyCRztFRMBiY4559LVVMNqgbAJDojwqyygr
 vUJuR9T0vONXL8zIdnR4E8vqJu/+7L5ebQnK4ZdA7EzMnQIPUeAuUMnP35SliqnLma
 rO0BMZEl4SQdyqot6XJXmHGrnhm3bNR+xgFjbMssZV1+bUEwWomgnNNfpYaH19lVbm
 yhFXTSIruTyYg==
From: Mark Brown <broonie@kernel.org>
To: linux-arm-kernel@lists.infradead.org, Jon Lin <jon.lin@rock-chips.com>,
 Chris Morgan <macromorgan@hotmail.com>, linux-rockchip@lists.infradead.org,
 linux-spi@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Colin King <colin.king@canonical.com>
Cc: Mark Brown <broonie@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] spi: rockchip-sfc: Fix assigned but never used
 return error codes
Date: Mon, 23 Aug 2021 18:37:50 +0100
Message-Id: <162974017516.3286.9365314960815127788.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210818141051.36320-1-colin.king@canonical.com>
References: <20210818141051.36320-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_103823_090992_73CF142E 
X-CRM114-Status: GOOD (  12.71  )
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

On Wed, 18 Aug 2021 15:10:51 +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently there are two places where the error return variable ret is
> being assigned -ETIMEDOUT on timeout errors and this value is not
> being returned. Fix this by returning -ETIMEDOUT rather than redundantly
> assiging it to ret.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip-sfc: Fix assigned but never used return error codes
      commit: 745649c59a0d1fde9dcc02286f23f8c78a1f724d

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
