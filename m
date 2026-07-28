Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 304ACC54F56
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 19:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0asOsna/uOTEmYpE43CaNOZ648/Rj3RRp5MjoVQYMUc=; b=S1GyjYdIIZXE88
	IC9KAiUwzYQONvyKYrtQb7/GMyxa5pfHOA9crYnfX6wLL4B/1OUqxlBG0RF9oWEFKWKGPwaZ0saqA
	3zwsj0QYzKv/i7fgiYJBjjNZpfEaBvOiyJZkbG1Hj182+abHWl+eGe6lGwsE8j/Lu6c5q02wYNT5Z
	VvWYsyUsHSQExr/14CLptQSOpHfHNpN6LAlpfYDLyP5x0lz9oG42BYkJcbC5G73FwtLOxoxRb3E+B
	i3lU4105zPJWCUN9SmU4B7kwWxyPrUUYwYIY9Aet6FC3JE4Kdr8xBhFfJkvgz35t6Ma7rktPTE7FK
	xaSCIQpgdjIK1AsVULTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIE-000000067eY-1tgA;
	Tue, 28 Jul 2026 19:16:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wonIB-000000067cP-3yWt
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 19:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EEmBmwtUxYixgDDvolM4waYljKOFYZdLR/vUhPt1oKU=; b=dDAIIRH2zMqHKkENbt8s+Nxetl
	sUqR17+shS7adYNSlgpELENo5qYRTjmZ0O/2IMBrteZAeuLK7Q7IVwVxPesZLxwbBQLAinswt1mtr
	q41fP+9yiBeyS1yAc8rOIAPKraP49UMzBrpWeJEWEyFfLUw13S1+5zRMNgP6BFZyjPWruazGdj4cP
	kGCNf5YngBjZ419vjmhLiUINwnyNXSisYsgZglA6sY+yA9J5oKRNSrp3oQMK0WrkI8yZuu6OApKa7
	bZ2hWunRaQgnbuqwAP66nupA5xksbaLKY0CyOSqpf6zLIs+pKKETvqFIsQy1VoBDWUR8HV5Vhj8Sq
	mHzb/zJA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	Vic B <linux@vicb.net>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix label of sys_led for nanopi-r4s
Date: Tue, 28 Jul 2026 21:16:34 +0200
Message-ID: <178526609481.300371.14540350960348344552.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <al0cKhqvPbBO_5q8@vicb.net>
References: <al0cKhqvPbBO_5q8@vicb.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_121644_050117_2EC2D7A2 
X-CRM114-Status: UNSURE (   9.46  )
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


On Sun, 19 Jul 2026 20:49:14 +0200, Vic B wrote:
> This commit corrects the system LED configuration for the NanoPi R4S by
> replacing the deprecated label property with color and function.
> 
> This changes the resulting label of mislabeled sys_led from red:power
> to green:status, while the labels of the other two leds stay intact
> (green:lan for lan_led and green:wan for wan_led).
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix label of sys_led for nanopi-r4s
      commit: f4fb08d6d735ddd64ae507e0b32679df0135cd8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
