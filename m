Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4601DC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 16:49:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8E1423B44
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 16:49:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8E1423B44
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BQPbIvBocEsotuqXosAnti95KQqPXPq+ULO3xYulDQ4=; b=ShoTx3Efs9LuNN2WSt3ohYQ2eV
	C0DSJ9WQ8rHrbv9Y9dQSzuGV/yeaoVWW7MzluqrMuHNlPkoJ+wTDkuhVGt4/5EjlPoluFDCeaO/O3
	6T2EOZcNm5hhOg/hM53TvIBtXg90jWJuZE3PJp4HzVjmIDTi+OM7s32CTLYQjgX0PRUm75kAuLEDi
	/ASXgcDYpoUe0FDjS65g5NevkLvb5UvtSFrhwQNUlLSct4MSXY4gyj5Av20GHSkq4JOWdEOGPD0TH
	GRUWqO/fBAezj6orFkurrH/x4DaAziqO6aWBu2IqPzm2nX3FcrHaDfAk0fjQ+ClSjdLR+E6paCVBu
	6+L0tT3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l05oE-00040k-0i; Thu, 14 Jan 2021 16:49:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l05oB-00040M-Fa; Thu, 14 Jan 2021 16:49:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F088F23B1C;
 Thu, 14 Jan 2021 16:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610642954;
 bh=U0sUa3xcw+nv1r0BXLuDbjLhcPC9SFZOwZMxI/KdD18=;
 h=From:To:In-Reply-To:References:Subject:Date:From;
 b=emFi/wRHv5ubdJF5628DkJv6eLXUljJ8BAW4RShoa60ykQH8J2E4whvZjX74yAnxm
 eZ4QOe4oO+bitt8xiY+D7ecq3cTdZMVyy61NrSpxtSyccEd5JvCJSfu21fHpDqS7bl
 ecOWws+/6t/KeR/AO3fN1bA3pWHZe51wPRaweguUFP6Kp3Fj92h5qW+pNYAFXOAx0g
 Ef3NZMs8EToNJjazAvIVBiGepVk/LZjGC3rrkQrTPakdarBtVwtkVlaKqzRMMTtR6/
 1MNe+bwbWfbUSgGf5p/IA3+Qm55Vz+Ewn0V6/P606f5BYR8C4LVhwGnxNx7ttZtK0Y
 ytHMOJ9EwgK1Q==
From: Mark Brown <broonie@kernel.org>
To: Vincent Pelletier <plr.vincent@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-spi@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Scott Branden <sbranden@broadcom.com>
In-Reply-To: <2636096a3b40febf680f9fff33944a5480561df9.1610062884.git.plr.vincent@gmail.com>
References: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
 <2636096a3b40febf680f9fff33944a5480561df9.1610062884.git.plr.vincent@gmail.com>
Subject: Re: [2/3] spi: bcm2835aux: Call the dedicated transfer completion
 function.
Message-Id: <161064292108.43781.4666703203666297942.b4-ty@kernel.org>
Date: Thu, 14 Jan 2021 16:48:41 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_114915_608913_41F9BD39 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

On Thu, 7 Jan 2021 23:58:31 +0000, Vincent Pelletier wrote:
> spi_finalize_current_transfer currently only calls "complete", so no
> functional change is expected.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[2/3] spi: bcm2835aux: Call the dedicated transfer completion function.
      commit: 7dfa69af2b5a57fcd48c96752818c1fa9925a8de

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
