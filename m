Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D668FF8850
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIgUOUux1JYqthl9G8tzfKbpHekkaOY935ueUzjnWno=; b=qo9QtVIOAwsEPo
	/1B/pHu4Hqx4EiraAaI7EVr5rZFr8rG07o6eU6PQ1CNgA35TO/Q1hlwMJ/N8Xd66BrgBQvraDusWW
	mmFWyVOiEcenHOUfPNUPwe3R6i9iqW23mhyH6ADYnQ77c85EnDhocLVJOJAQpEKqqy6eragIS+D5T
	3tGiqXiNLpthE7lPzqs8YDw7pNds2K6S2exVzyMzQGk5Rs28HP0Hf4/hy4QZuWIakyyef1nqNiMe0
	n+m3qrUAnxK7WxViRn1LWkKauoDISFiwlInBWGU4vius6hlAG6X6XeEk+fbWpmdNUVmfNR54o4GKS
	fr9FD0Co4f0EEW1LAGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH8oJ-0000000Fvav-1kcJ;
	Sun, 26 Apr 2026 23:22:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH8oI-0000000Fva8-0P8a;
	Sun, 26 Apr 2026 23:22:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 894CF6014B;
	Sun, 26 Apr 2026 23:22:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A51F6C2BCB4;
	Sun, 26 Apr 2026 23:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777245765;
	bh=SmIp8IO/MdHTxdBpkYMqcIoU2ScMnSFAPgfF1YMBViM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=a1xV0sULfbhgv7lcb+vY0wyfH8ZOWus2jbjZZlSxQ+P8ZgQIK2K9NKWb7MAtvDZ7U
	 xHemB4kG6r28mWO2YtIdNJBI2GrrETWxp1hVwOv3MhEEcs54oWVB+/MmiYqwDGeVR4
	 /xefwMHjzCrp2K+sOMSfqWCZqqDHU42YQ6vc3tKh04miNypV9rGsxHw9M7/lQfPFuO
	 66OuyJiDEHzM37xgLpflV26Lg+/XUuBUj2iKPP6yMD7b3Eyb7wXmkdtKfFjKJzvg/y
	 bO9Y4t2DcVwKYfjnE46rZc6Lrg7CW0JDPkKucxkGtJ2t6RV2z9BvnTa+Ol2wPzdsIK
	 h295rgmL8YCSQ==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, John Madieu <john.madieu@gmail.com>
Cc: jon.lin@rock-chips.com, linux-spi@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260425092936.2590132-1-john.madieu@gmail.com>
References: <20260425092936.2590132-1-john.madieu@gmail.com>
Subject: Re: (subset) [PATCH 0/3] spi: rockchip: ISR fix and minor cleanups
Message-Id: <177724064669.266775.12560276533670856955.b4-ty@b4>
Date: Mon, 27 Apr 2026 06:57:26 +0900
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1521; i=broonie@kernel.org;
 h=from:subject:message-id; bh=SmIp8IO/MdHTxdBpkYMqcIoU2ScMnSFAPgfF1YMBViM=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBp7p5CWz1j9sFp9KrJIpcMW164Et7JC5XZDwrTs
 WT+w2ulsc2JATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCae6eQgAKCRAk1otyXVSH
 0FjkB/wIMXsUIBOTKU4d38uqNrqkSbKfQAosDvnKwSjle7gXrMfcR8D1ZYy5zmtHT7n2ovtDxR1
 AmSf05TShUO/PEXaEoxxvhv/Y42Euhle8RHQ6k25qQQna52cuhPpZLztgfgL4Usnnx7GCJA9sxV
 CaDQXq06WhUm69R3EplDijMrCJ9e4gVaJavsgYBeoX6fHi9HesglVSR3OUaQb0zgM6jKNj8km4F
 5ggtni1+LuPBshh1rzjQ3w5CQpVazb+F88al4O4NPJ7Jke0DrFGZpH5MSCXcWv3LyMzTkomGYQr
 3mjCGwiOgBUioDe6WtHfiKCY6C0UwqVGJZa23y21TxbEa/1i
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

On Sat, 25 Apr 2026 09:29:33 +0000, John Madieu wrote:
> spi: rockchip: ISR fix and minor cleanups
> 
> Hi all,
> 
> This series fixes one real bug in the Rockchip SPI driver and tidies up
> two unrelated cosmetic issues spotted while looking at the same area.
> The patches are independent and could be applied in any order; they are
> ordered here by decreasing severity.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-7.1

Thanks!

[1/3] spi: rockchip: Read ISR, not IMR, to detect cs-inactive IRQ
      https://git.kernel.org/broonie/spi/c/b4683a239a40
[2/3] spi: rockchip: Drop unused and broken CR0 macros
      https://git.kernel.org/broonie/spi/c/7643978722aa

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
