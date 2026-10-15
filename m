Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B662CC6B3A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 15:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD00G5iMot6cBvH6ANCBIK0HiafruhD5HXTpdfmURto=; b=QgGpoHoClCsYA6
	mkAA/tsHBnyokG1C78b2iIzttQWooCXRSp04TPwcX3zgHLrCDHDDtldmt5BNsgdoc+twk14O9l0zf
	FWRK0/DEd7hveAp9R9n/PqmgOIS8QPZCUjgI5CQs32kTCbjps4GSe2fUrcy/uhHlWEprN9CJzpg4W
	TnrX24VfFUezHwR3wrnqS+OKDEd0Yp0cT24MEgnI4c0387P8TJQ4x4QkUk/cpDSdD2iTCaRk+2hXG
	7/iVoQvW75mq94cyqWmqpTlfqpOh5KudCOxToEpF5oPr9XTZ//jJ/e+ciAH6MC15E7xtQrMj8URnT
	bBGRoxT+C6JACUcAkv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNCT-00000000XfF-2dJi;
	Thu, 15 Oct 2026 15:16:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNCO-00000000Xdw-2rbI;
	Thu, 15 Oct 2026 15:16:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 62CAB41454;
	Thu, 15 Oct 2026 15:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 434A31F000C4;
	Thu, 15 Oct 2026 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792077412;
	bh=czOd1zQNZUMw6GYUrJDnQ96E5UzYrct07og54e6yZVI=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc;
	b=FnhN7rn2I9a3CYDafvP6ph9HvJGJLus1SL7dxzz9VKYPUJGPNeLGgEAVgkxo7IXpN
	 ncyBPoZQBK/FMqML0x6qDwqP7pQx08xtTSuniOpfxskxUtHFPltIoaPY5c2qIdUiG5
	 qFxB81eVLMz6xtEcNC7Q3tZ6r8tAbJ9oYOQQQ3DTicO3GmcRaCj59afGJKMbuayn1A
	 GMzBYTkUhDt85X44JI2UsWUztLpbOTxXegYsxEEhUvdTsdD8GSLVFM2Gv0rN241rX9
	 iFwQQ70fMZuKjr9r2bqnUoVBqc8OWW4y3mXmmdOf433kujdenSqi+dTmUk0C2mulg6
	 0Vb8k3sB0qtqA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A3A0392EB21;
	Thu, 15 Oct 2026 15:16:52 +0000 (UTC)
Subject: Re: [GIT PULL] PCI fixes for v7.3
From: pr-tracker-bot@kernel.org
In-Reply-To: <20261014201441.GA1661922@bhelgaas>
References: <20261014201441.GA1661922@bhelgaas>
X-PR-Tracked-List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
X-PR-Tracked-Message-Id: <20261014201441.GA1661922@bhelgaas>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git tags/pci-v7.3-fixes-5
X-PR-Tracked-Commit-Id: 4e9f69d08253471d92bcc46b363fbada06bd59c4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e177c722b3dd9ad432195b5c2cbbfe58c909a821
Message-Id: <179207741094.3496071.13040126142711127127.pr-tracker-bot@kernel.org>
Date: Thu, 15 Oct 2026 15:16:50 +0000
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, Alex Deucher <alexander.deucher@amd.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Oliver OHalloran <oohall@gmail.com>, Christian Koenig <christian.koenig@amd.com>, Vitaly Prosyak <vitaly.prosyak@amd.com>, amd-gfx@lists.freedesktop.org, Aditya Garg <aditya.garg@linux.dev>, Jason Perlow <jperlow@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Niklas Cassel <cassel@kernel.org>, Diederik de Haas <diederik@cknow-tech.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The pull request you sent on Wed, 14 Oct 2026 15:14:41 -0500:

> git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git tags/pci-v7.3-fixes-5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e177c722b3dd9ad432195b5c2cbbfe58c909a821

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
