Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B97C5C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 07:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtlB2iWN6dUXD6SLvFk1BywTMhmgvCpCwaAPTk37HPY=; b=E3BKQtsDs8VvF+
	UJWiWk4aRyBShmg73ehsKmAj1FNh9RUwgGqEUEqYdPB709KscDA3HSeyhak0uGteNT+OLYSu4O2lG
	ODLk7PTRZcqO8kFmJa5DzohMWNYaFNjFR26RPXz6miLDGd3owq8Zn1zFqDw7CgOoPlRnE3RthUWO+
	q/n7/u8WPwKXhv/xFDEvsJAsOoUmw50y77RX9bI/Wm08+plm5YToMF5okc077LW7w34q3jZW1CzaO
	QVAHuSWjjQYmtB9BqyM3gziLv6p5uzn9TMIETOYTgT70OKXFqnQZC18yhnbFFweb9aR/AkdiwlzOM
	4zEw+ZbCrFgeaH1lSxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYTG-00000006HXD-2MKo;
	Fri, 03 Jul 2026 07:37:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYTE-00000006HWy-2FYU;
	Fri, 03 Jul 2026 07:37:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 065FA600B0;
	Fri,  3 Jul 2026 07:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A43E41F000E9;
	Fri,  3 Jul 2026 07:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783064274;
	bh=BNjc89ZTwEE6sAh5F09SyQEpJODWyJuS+YsA1L114gk=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc;
	b=E7fzZHQjHbuqRbfY5w8N/zq/LIGZMJY1SK41CeUUib7CZ4WxWm5MqtADiZytRVf8k
	 B6AmxstGKgmn9k/gnWEMrYU/U8prhEH9/KBSrez2/6+NEuF1ehCnCime+EeHT7H/Vc
	 3uPHNJ7e7l0I0rxnW+Hr072aIgsDpQNOHShnhFE32hDNXp6obtBsRggP9gjJ9qOPxF
	 gm5mTrJ5kP99/8S/EVRiBrZq6SeYg8SxwOWKk+cApIcZjDHtKLqJQAQJJvgyCJU9Xh
	 uvtmeyMNf/xe4qOOa2+jWsvz9DD00nDyID+u4LEyyFtC11nrDHmkAIGykMv8cZ9zSV
	 H59njUBru/Yjw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56D2B39389CB;
	Fri,  3 Jul 2026 07:37:38 +0000 (UTC)
Subject: Re: [GIT PULL] Split <linux/mod_devicetable.h> in per subsystem headers
From: pr-tracker-bot@kernel.org
In-Reply-To: <akdIS8mW2IubUWQh@monoceros>
References: <akdIS8mW2IubUWQh@monoceros>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <akdIS8mW2IubUWQh@monoceros>
X-PR-Tracked-Remote: https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git tags/device-id-rework
X-PR-Tracked-Commit-Id: 995832b2cebe6969d1b42635db698803ee31294d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d2c9a99135da931377240942d44f3dea104cedb8
Message-Id: <178306425679.2510133.17664517627067155845.pr-tracker-bot@kernel.org>
Date: Fri, 03 Jul 2026 07:37:36 +0000
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, Raag Jadav <raag.jadav@intel.com>, Sohil Mehta <sohil.mehta@intel.com>, Dave Hansen <dave.hansen@linux.intel.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, linux-kernel@vger.kernel.org, Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Dani
 lo Krummrich <dakr@kernel.org>, driver-core@lists.linux.dev, Jonathan Cameron <jic23@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Pei Xiao <xiaopei01@kylinos.cn>, Shashank Balaji <shashank.mahadasyam@sony.com>, Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>, linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>, Hans de Goede <hansg@kernel.org>, Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org, linux-i2c@vger.kernel.org, Daniel Scally <dan.scally@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Tianrui Zhao <zhaotianrui@loongson.cn>, Bibo Mao <maobibo@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, kvm@vger.kernel.org, loongarch@lists.linux.dev, Geert Uytterhoeven <geert@linux-m68k.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mark Brown <broonie@ker
 nel.org>, Takashi Sakamoto <o-takashi@sakamocchi.jp>, Wolfram Sang <wsa+renesas@sang-engineering.com>
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

The pull request you sent on Fri, 3 Jul 2026 08:04:04 +0200:

> https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git tags/device-id-rework

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d2c9a99135da931377240942d44f3dea104cedb8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
