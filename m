Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2F4C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 23:39:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DA4B61494
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 23:39:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DA4B61494
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:References:
	In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GWKm4NabX74kqoq5XdxJrRbMM3UzALmQiL3wUehmwuE=; b=IbmjQ9DDbXuktN8mEdilK/o0L
	BJbv39Q90MDm1nenrMGa1PLg5YeFbDeX7s0CxHEv+ZxNS3fd869iA3MXILKwz+RikY3RirvqZrxdE
	tmwenPllJmhpgJHyRnoXAMqN06uHsrytyur6gYgnyAPW5/Nalp+c/gsl24bwWIVky1ZLQslJX6Uc7
	MLMF8RVfRX7cvrgIQJ8+r0ML6MHylrrzPzeRw0IPJdtX6v4ng2LtzubwhJeOZxl+BK34bA8HXhlxL
	i2vBhcLZSo40B1datIgt4b5pgvgfrGAVwGnf6aiFhExh8xWZ4shlRT25kYSMed7eVViCYJd8TIjmn
	ve0v+gloQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGs89-0005eM-Lr; Mon, 01 Mar 2021 23:39:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGs85-0005cy-OA; Mon, 01 Mar 2021 23:39:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E55F6146B;
 Mon,  1 Mar 2021 23:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614641949;
 bh=FC5E0jgM2oYDDQU3j98r7awtXgaJzsC9gg9QAlFAKC8=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=ge/cQFMMzNZ8kEJ0nCBHlFyfI4rzjL2b8N5jGL5BpTA8jXuBqFqNgQQpRhhNYGwGq
 bUnqFurDNzQFkgb0UDk4R7yex3dETJDiPrY2ftRv8nGc5Cu/H3eWZ2vVF8aNNgPWuc
 meTwGEMNlRALGaEdKlzO7J0BCQt/irAzh/Ae0/Il1qcMmMuV9C+pege+buXLNUgar5
 cfco/rKBuz7jM+/5FGoBRM+KDPzmWM7tb/9cXBL5LVo0ONdfrPOd79PcM9nXbrdOOe
 wvYmeHaSjTAYQhTw3/ISwovbx+1S04PJIs/2rbS3+isWqtTmDbw/dVEuN0JWbzYjDA
 FZ6/3JAPi7iWQ==
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
References: <20210225125541.1808719-1-arnd@kernel.org>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-Id: <161464187231.31555.17379793263807156995.b4-ty@kernel.org>
Date: Mon, 01 Mar 2021 23:37:52 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_183909_885890_735CC9FE 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Kochetkov <al.kochet@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux@googlegroups.com, Vincent Pelletier <plr.vincent@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 25 Feb 2021 13:55:34 +0100, Arnd Bergmann wrote:
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: avoid objtool warning
      commit: d86e880f7a7c5b64a650146a1353f98750863f21

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
