Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91287CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 23:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fa6VxpcGMoCTn/9A0kvzuemkmNVUu94HhZiODUxPugk=; b=ciMC/ZcDbMLgTl
	rpgJSytx0BIrbo13kCWhuhLJ/o1bGI/yz1NYvAX7aObYcGCUD6qkVNWiFa7xiuzjvth2EUsqVar54
	R9UXVFQWWtJnDAM+JSmQQBfssEtYoj0zUYEysWNm7IsDrb6Cob1zgyTCmRsWypBdxe1StfR3EkPvt
	26SQcUZ7N3oKPgQcGSeU7Am4P4LhN8pdLWb1CSAUq55hPSCmrPixUcQgyuNLJYE02rL8k4WKLFz2z
	cCVsMHbLQ2bAw53Sa7YVlom9XwUSUk83w4weTN9cSaOAAkg04UKgxttemJWOAPoQ9snsAqNbYWjO5
	T/QE1Zz+RluztYGy/gvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCRWp-0000000AgHT-0EwO;
	Fri, 24 Oct 2025 23:49:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCRWn-0000000AgHJ-3QcP
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 23:49:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B1260602B6;
	Fri, 24 Oct 2025 23:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53466C4CEF1;
	Fri, 24 Oct 2025 23:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761349740;
	bh=ZyFTDKIxNzvgRWtwrO/yjPr6c+qow1NEKp1HamVZbPI=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=XlqnJiIYRxG7jDUGlrgYqJuNEyP3QmS68eJ7m8d2MnKUZmQmUwBXHTaojivtAIF7K
	 da6IGCn8dcXFNtL+ve5Q7ealoLlvAWuzzQcg/QW7GYLli7O9Pm7p28kqKMxiscHP97
	 h+JT2tDXQa/UYdhuUY28UgLvVrlcM+aOIS8CotyFn1f/4hdEqnXZ/ht8n6py9E9E5A
	 ZiGh8BrtAYD6BAffx2l+kEHQksGaGKzKbzZon4BTa53+tpL6GsdSJUriDJq85J6Fgg
	 DbgUIxsl9eEj6NfJ1Zmq1OKhqcb207aMPbZBTG252rxtRC6D0bFwK92Pf535lNeTbK
	 FE9dbDbBFcwWA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 34216380AA54;
	Fri, 24 Oct 2025 23:48:41 +0000 (UTC)
Subject: Re: [GIT PULL] PCI fixes for v6.18
From: pr-tracker-bot@kernel.org
In-Reply-To: <20251024192903.GA1360890@bhelgaas>
References: <20251024192903.GA1360890@bhelgaas>
X-PR-Tracked-List-Id: <linux-pci.vger.kernel.org>
X-PR-Tracked-Message-Id: <20251024192903.GA1360890@bhelgaas>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git tags/pci-v6.18-fixes-3
X-PR-Tracked-Commit-Id: df5192d9bb0e38bf831fb93e8026e346aa017ca8
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 31009296f8ff7f4cc8feec9bc02b87573b2aceeb
Message-Id: <176134971993.4096869.5906045247298146805.pr-tracker-bot@kernel.org>
Date: Fri, 24 Oct 2025 23:48:39 +0000
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Ron Economos <re@w6rz.net>, "Maciej W. Rozycki" <macro@orcam.me.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, Guenter Roeck <linux@roeck-us.net>, Christian Zigotzky <chzigotzky@xenosoft.de>, FUKAUMI Naoki <naoki@radxa.com>, Herve Codina <herve.codina@bootlin.com>, Diederik de Haas <diederik@cknow-tech.com>, Dragan Simic <dsimic@manjaro.org>, Johan Hovold <johan@kernel.org>, linuxppc-dev@lists.ozlabs.org, linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org
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

The pull request you sent on Fri, 24 Oct 2025 14:29:03 -0500:

> git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git tags/pci-v6.18-fixes-3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/31009296f8ff7f4cc8feec9bc02b87573b2aceeb

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
