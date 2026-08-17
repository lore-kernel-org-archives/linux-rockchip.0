Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F71C5CFC1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 06:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RBp9P29p2csEx+niRArTl4/nrRvry/DsLFce0FIPMA=; b=eHkuBe7rrj72Wx
	Hd5Q+AEGnkf1SQKT9fdDO5z6YmnzJa7+Ee5A9Mz6SAu73FLg9tBOWn73Ke3JocWLz7hNQbBNUoJhl
	No/lFvvqDVro3afRjyGUcqBSbvJs8/Smt9f0ylKgnO5z9AHy9lw68fTnIqfK2ieoZDmVvUZZ05FuF
	D6NZalB7ywLQ5iPbmsAxpkIopofYYXvCof+JPCx7FbX6bgc8h1vQkFCnFbJa2tQZ/uvi6oOKe6VJd
	H2d0E/U6vRlhTXHTJFeMBaQcnBpnXrAK0NvoU/wIALXJO9aM9WSboGHYDBaDxN2N1AWcDGQlH3ji+
	vKGmrVfCXS7gUJVP1sPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrB0-00000005UwG-1jNG;
	Mon, 17 Aug 2026 06:50:30 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrAv-00000005UvU-1oWO;
	Mon, 17 Aug 2026 06:50:29 +0000
Received: from Vostro-3710.lan (unknown [IPV6:240e:3bc:2e87:7f70:16d5:d57:cd0e:58c1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4a36f9033;
	Mon, 17 Aug 2026 14:50:18 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: andrew@lunn.ch
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	naoki@radxa.com,
	robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa E54C
Date: Mon, 17 Aug 2026 14:50:10 +0800
Message-Id: <20260817065010.4163977-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <6248f137-ff98-4d3e-9ca6-f94741533686@lunn.ch>
References: <6248f137-ff98-4d3e-9ca6-f94741533686@lunn.ch>
MIME-Version: 1.0
X-HM-Tid: 0aa00e7c3e3503a2kunm8aa2e3fb2528f7
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTBgZVh5PHx5NHkxOGRhCT1YeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJT0seQUgZGEFJHkNMQUwdTEtBSk0fTkEfTkxBGB9LHkFOQx
	hKWVdZFhoPEhUdFFlBWU9LSFVCQklOS1VKS0tVSkJLQlkG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_235025_670553_CB818051 
X-CRM114-Status: UNSURE (   4.73  )
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

Hi,

> Both the MAC and the switch are using rgmii-id? How does that work?

The switch driver uses phy_interface_mode_is_rgmii() to enter rgmii
mode. I will change the phy-mode on the switch to "rgmii".

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
