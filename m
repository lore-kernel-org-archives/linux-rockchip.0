Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4977AECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 13:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NoQAOeFI2GFco3Tb+xa9AmHat2rLX5ZCuJC6aNgLto=; b=RZek89whN5TVPF
	E5KQvW2NRyakil53yor1OsAYEwkorwUcOKx/pPb068p/roMmNU5YQ5N7l8gPlCKVgFNGKMZnVjMMP
	Y+x4wLQNMQo0zmRGd7KHhho3N0c3JZiBuXqlRgfdLb0/yzEFqrJFGzlZ9qFL0iRkUKzLHRJ+2/lSH
	j6CmbaRoVTEPqzDJIcTyvlHZXsLWvHd1oQf9Vrc4/jDSoQ6k8wWzn+/ipbOVn8pIhurxVfN1Q1rn6
	RB9dnyOmOFo6ol7oxejdnbnFs2ZJY2cNvN/gz6Xt3bSEMdIJ7NCeYFgewaoTcnxNTqhAPf5Cw7oOd
	UFGptZTXZHM0jTc4yaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj8L-004WAz-9Z; Fri, 23 Sep 2022 13:54:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obj8I-004W9P-7I; Fri, 23 Sep 2022 13:54:23 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obj8F-0007Bj-Gy; Fri, 23 Sep 2022 15:54:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-rock-4c-plus: connect vcca_1v8 to APIO5_VDD
Date: Fri, 23 Sep 2022 15:54:17 +0200
Message-Id: <166394125187.551974.11409905580264087655.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_065422_280997_1F919E0E 
X-CRM114-Status: UNSURE (   7.30  )
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

On Fri, 9 Sep 2022 19:50:01 +0000, FUKAUMI Naoki wrote:
> GPIO pins for LEDs on ROCK 4C+ are in APIO5

Applied, thanks!

[1/6] arm64: dts: rockchip: rk3399-rock-4c-plus: connect vcca_1v8 to APIO5_VDD
      commit: 110a1f0eea148a4c444e2327483e0e765d26704e
[2/6] arm64: dts: rockchip: rk3399-rock-4c-plus: fix regulator name
      commit: a088c855acb85ab52fdbffd9b3473f6c9a3f0b35
[3/6] arm64: dts: rockchip: rk3399-rock-4c-plus: sort nodes/properties
      commit: b153f26d2c557ca49b5f98d256b3e44bc37244cd
[4/6] arm64: dts: rockchip: rk3399-rock-4: fix regulator name
      commit: 69448624b770aa88a71536a16900dd3cc6002919
[5/6] arm64: dts: rockchip: rk3399-rock-4: sort nodes/properties
      commit: 06c5b5690a578514b3fe8f11a47a3c37d3af3696
[6/6] arm64: dts: rockchip: add avdd-0v9-supply and avdd-1v8-supply
      commit: b6047ba2caaca41da8706c66c55f7b34e0714e21

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
