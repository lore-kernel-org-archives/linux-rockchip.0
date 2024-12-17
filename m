Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08562E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 13:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD5YbqnzB9uyJrtkIxGkmHZRY/v8Fc3dNNQJ+jUDmE0=; b=y2z6diitZ5EQnz
	/QqwDX2lm64omEXKshwvKvGyz9kfG1skNm6QhDgz7+cpFaGaqW2a+RZ39HjV/ubQKGc//bQUBW+kc
	/JxwHXZp8aR/NR3Aw0Of+fxS192Hqxor4c4Wkd0M+YJ7DkNhB69wbKbNpTKRIUL2UmErM6zpS9GEH
	XJllgp0GINBkdT1Fkn4Dy+FqCZQeIBuKyzctZtVruWRommxmpH2oN8qefJXjmUnqYVWweDMii0VVh
	pOlDfmFnXUwXP60MWstXIt67M3we/lAQcgMTA51gIJivLU7SnQCjUVv5FCxxBCLRZd8nzQeGJzhIP
	sTmC0/lTpSF5kYiUDGVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNXcz-0000000Da5O-15xw;
	Tue, 17 Dec 2024 13:28:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNXbt-0000000DZoW-27JM;
	Tue, 17 Dec 2024 13:27:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ABB7E5C62EC;
	Tue, 17 Dec 2024 13:26:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B085C4CED3;
	Tue, 17 Dec 2024 13:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734442056;
	bh=pvcne/S7h5GxuzsVAtKGGhSARJDAW+nt0TG3iuNsj+g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dzzba+p5x2f9pOP97NAyWQKMZ3yTMna2Ad+pX58avKeU2yFyyQdarWEghTmw8+66h
	 abU6dXZkGNvlWdBV0iS1sr982UgTK55tTr6Ttf1j/cjJJ6cVaP0uoy7Mrm7W4BE88E
	 zwyajdVFB0FYkIjC1Bg9CasIMc/+HhA3r2S1VyV8kFb00lN5Ok12faVXxzJxIIuW8i
	 Ph3Fdc7X+yRLKW0Hx4joeiDV3oHTEf9XGLOhx3VEW8eZeLC2HbwXWLpL4BJQs8ywnC
	 Ex5oFJedrH5e2Z+y2d595wZlrFJQ/n1uuaPagbTrxpkzEDUeovaIu1Un09AaxuRBVt
	 PF7q5s6+ezhNQ==
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 linux-spi@vger.kernel.org
In-Reply-To: <20241208130311.1324024-1-jon.lin@rock-chips.com>
References: <20241208130311.1324024-1-jon.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip-sfc: Support pm ops
Message-Id: <173444205510.31817.16108705113990702119.b4-ty@kernel.org>
Date: Tue, 17 Dec 2024 13:27:35 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-9b746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_052737_591368_DA62B515 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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

On Sun, 08 Dec 2024 21:03:11 +0800, Jon Lin wrote:
> Support system_sleep and runtime_pm ops.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip-sfc: Support pm ops
      commit: 8011709906d0d6ff1ba9589de5a906bf6e430782

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
