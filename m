Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA848CCA473
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 14:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K49xffLbDZZI701oB0UxDLyUF8tGTTQQRpeEOxVt6i0=; b=F54OjPDp5SmPHX
	nAJgOdsrWJ+/qOrZ5rlA3vxzqGql42SKfGlgVJMzaNwmX1S6/bXJQRpKZJLYU4Wpau1092T9iJaH+
	fXVO9hmH42ZumR0LZpXshxbE+tCuEIe4vCnIj4dcpDhIzNTtLanpsISSiB3pzVHw3WSJbFbTq4oN1
	zBeNDHINIjXEBkJ5g75RMR4SOYcQBAovjw7FTlGzZ8r2TT8zCIzvagp+wnRQ+RrTn7jGH3VgSsv8q
	4gBTXZA5M76JCUKDOsCEfmYpq4CA7OneFy4rEzM392i1tzUZzteaslfXybw7SJt7Zl63m4bHUGide
	BGDFVsU/sVbQdEoPdZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kPe-002drB-RN; Fri, 24 Jun 2022 14:35:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kPT-002dmv-Oc; Fri, 24 Jun 2022 14:35:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 58A0D62078;
	Fri, 24 Jun 2022 14:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 646D3C341C0;
	Fri, 24 Jun 2022 14:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656081347;
	bh=fES71k0ZtQMfRPu9DCT9ZOVYdQvNBjl3fNHC6w3pSEc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Hsmdt5LTyq7cqedpM7gD3mcbjTqTZVbXcWKBNDxL/nyNXh7QuMwjQ7X3ZkyQfEMS5
	 Kdh+uekKRjxFdw0vb9b8c6lwbHpQqddsFR4oHiVYwa5BNCUy3eHchli72h2SDIuN41
	 eWKSgqEpPHVxgOfnphX4wAtuA0nksQX4p+f8jQbXuc8w9G32PNwcLP4/fB62l3+jqw
	 H0LDGLFIFqEz8Kb63K/UqL4SxCQ3FOJjUFbQiuYnFn8KnA0LwJ/rtjmUCDKd0108Hy
	 cAyth5zSs6zw/PuBediVxP+YxqQUm/7CT5eQ6Td9KeKJ1juFc97abm97Yy0gvZjprA
	 ZtYgphvV7oKDg==
From: Mark Brown <broonie@kernel.org>
To: jiapeng.chong@linux.alibaba.com, lgirdwood@gmail.com
Cc: alsa-devel@alsa-project.org, tiwai@suse.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, perex@perex.cz
In-Reply-To: <20220624082745.68367-1-jiapeng.chong@linux.alibaba.com>
References: <20220624082745.68367-1-jiapeng.chong@linux.alibaba.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix missing error code in rockchip_i2s_probe()
Message-Id: <165608134513.445804.8165290048747586515.b4-ty@kernel.org>
Date: Fri, 24 Jun 2022 15:35:45 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_073547_884959_A2AD384B 
X-CRM114-Status: GOOD (  14.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Fri, 24 Jun 2022 16:27:45 +0800, Jiapeng Chong wrote:
> The error code is missing in this code scenario, add the error code
> '-EINVAL' to the return value 'ret'.
> 
> This was found by coccicheck:
> 
> sound/soc/rockchip/rockchip_i2s.c:810 rockchip_i2s_probe() warn: missing error code 'ret'.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: rockchip: i2s: Fix missing error code in rockchip_i2s_probe()
      commit: 7f6409fd9b54b6f56444edc996cd28059f215415

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
