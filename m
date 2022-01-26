Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77AA0C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewYgAA5nI5Mihemek8E4T0QvUFJ9qD8PVKDVZPmyFTo=; b=OsdLNeqBSqyNcN
	teTsMtzX7lce+c3HeJ57h2Vo1HpTY6pWNxlRLDvuKavn342Zf+OLFmDwIAA/BwmzxxWE6cWvbw8A4
	ZLUCOctjcvrRRN3emTj/APwVmy257QOcovCc1nqwMB3h3PJpMdVztJLTD7aHWceHi1bKuVoCHnnBb
	4uDY4Ga60ixki20fZ0bBAJ4S3Znky0OA16lXmc2X5sHzEvX6ZMwOguBbn6BfaaUnT0CvMT1a5ZYp2
	jz4FJbsy8rF2UHLb42D1WQSWVPYnFpBxWCqTZbVzQZsLASI8TRJfK29VQ5ZGDPpbPXBUFL28iCb2v
	5OPILEwo+gKOMQqltONQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCmCy-00D2kH-Rg; Wed, 26 Jan 2022 17:35:48 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCloz-00CtyY-Dq; Wed, 26 Jan 2022 17:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643217034;
 bh=kUqNJVfSqN8rx5gjFfwJ/0lwW2NKaOjKFQh3mYmuad0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iSY12iRc7lPsUnuh9tapUq7GvVpRQ4GITj+6rEj8KPPEjQK0790cKMU52Xq/HzQu+
 AWFgv4GgRX9jXKE8CZQzbmspwVgv7hpwP0ujAjuc35l4YXcrT+P84oG4J2CrZ9UTf0
 0SJ8eLPTPqjTvjBQ8XokeXXQeZ/lgdnStvH7wihw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.153.46] ([217.61.153.46]) by web-mail.gmx.net
 (3c-app-gmx-bap59.server.lan [172.19.172.129]) (via HTTP); Wed, 26 Jan 2022
 18:10:33 +0100
MIME-Version: 1.0
Message-ID: <trinity-29a2d337-830f-4ff2-861d-bbe695726bbf-1643217033760@3c-app-gmx-bap59>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH 27/27] drm: rockchip: Add VOP2 driver
Date: Wed, 26 Jan 2022 18:10:33 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220126145549.617165-28-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ymDBYVjKtSQdPfmVcjBk0159dDQ4Dupgs3VpHv0SQb4JX5jWMDtAhkONitEkb+tvDkUwE
 ATKd2QG3EPsSyJgf+Uq6ZLU/XV06rJ0v1fpfZwrOXlrZFgVojhg0PuIM/jBv9vRSf+oIxHnVpsym
 3N3dSK6El+MIdPp4a5D7MpzNWX16ocB2YpMSKth1e53UDwJAGousLjFtu4GNo/EEorf02UiWGaNf
 aqYoKiam5NXlrk8CJ9aJBQxeWdxSG7qTYsGaQl/kpeGUH90qS6Jkx6gPDKfhY0mStbMGnZoh3don
 ns=
X-UI-Out-Filterresults: notjunk:1;V03:K0:LXbgsP9OhrM=:vUyBSYaoC+r4+1AkJqjZXQ
 AH2W08ld/yXoEcf943VwyRs6jzjnVz6vU2yIMf1ynN0ip0DfuMtLFnAQ3cnKATp6qGrntYx8d
 dtKxDEohJcMsmoTjfWjQ1iPkpYKW0hYvdzyCGjkMybaAd2NU4B5iWmAqPARUHhEbvdC4bHBe8
 6KP81XLAPZdFG3LZe4TJ05v3c6FDgMaID+rxZto6WY6bVXmj1p5x7wOsC5l+OMn82X9jihpQo
 dBkLP/fY4HBeMb4ah0IHzKtT3OAXo9IAXIVusMOtsqBxkiT71B9rE4sKuXimy+xMhBbCDEeq5
 0D6z5n1HL+i6Qh4oDQ8cgOAoRrxeip6Rl4ESrR9eV8RIV0aalpXOQ6eCmBWgpFsZYJTsqHuDd
 228UIg1XxU7z9A/hqxHH8x7YL0GDz3RqVofaBPd1n97qA9c+cUeLX5DuJa5nUA+vANA8ZP1t/
 wk0H62wNW8QUTo7LnPJYtRP8ahykXgYsk2Lq32Z9viTeyOqVphfuXjKNTwCPPOEdp8tz9bJ/m
 qYepkZQMBv+3v7TG9Mm19/eNSUDu2Mnf3E8TZ+zmi3gKIW+a/aLU62W0lYO0TJlabctyhXZ9K
 vIIOH+FsZdMl3JTWWrIqvB/lXlbVI6zkSMt3L/xlvP2lFbkX7aY/DQ2Mofc9+q4zB/jZljrGX
 HLKSlaS5yLO4e79jpjDfo/+o+7PnD/KeuFSbBGXuh0/O6yrV3FlX1MPIQ7ErZYYMXd+Sq3WAk
 nEXCCChM14DAbICUX32jrvJE74kAvasEHX7K/jc9WfqUPTKdOY6T0RrVgFtorIsotM0ELp0x8
 Iw5SM4njxe+BL42vZbv1DcQzS0dKuk9cmkba417pV2gTxOhTg/aL3Bd8CpxhJ51ZsSUI4KD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_091101_779354_676C84A6 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
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

Hi Sascha

tested full series on Bananapi r2 Pro V0 prototype (rk3568)

4K@60Hz
1080p@60Hz

both look good

Tested-By: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
