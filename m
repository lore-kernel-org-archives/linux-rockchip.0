Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 627DCC87FC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6m9XRBqLx1NpA8jFgOx0MJX6YZhhrc1N6I5bMk1Mxo=; b=z6wmlX43qYOAI+
	Jf34DIuJs2jHbtEEHOxcgWLxPbRdv5JPs1W0vuRIsBEa/5offt5s3c++/qEte5n2DNFKbsYUtOyKd
	MlCjOl6NvGPCujDIzLe8W5dk+PB/l/0kqH6YTB575n8Kh4RmQl4U6qE7LAhbAOuaW1DQwKCQcyKHS
	tMMA1wKZxYEGEsIEQf/UNGrVmHhZBLINngxtArNnRKXKuExdDwK5AaZFN8ntHnpgng1GRNgUhQ0Sm
	Xtk165hqj03WvACADMVPw732MbybRL1ccUm2mXfVp9kor1cQ+yKa//u04GKlrmnKx0khOrGBxtK0H
	VWqndDN2HTS8GYHdffdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugiqg-0000000GepP-3VBu;
	Tue, 29 Jul 2025 11:50:26 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugiqd-0000000GeoC-2bCW;
	Tue, 29 Jul 2025 11:50:25 +0000
Received: from localhost.localdomain (unknown [119.122.213.139])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d9d0f96f;
	Tue, 29 Jul 2025 19:50:14 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: alsi@bang-olufsen.dk,
	amadeus@jmu.edu.cn,
	andrew@lunn.ch,
	conor+dt@kernel.org,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	edumazet@google.com,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	kuba@kernel.org,
	linus.walleij@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	olteanv@gmail.com,
	pabeni@redhat.com,
	robh@kernel.org,
	ziyao@disroot.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add RTL8367RB-VB switch to Radxa E24C
Date: Tue, 29 Jul 2025 19:50:09 +0800
Message-Id: <20250729115009.2158019-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <5bdd0009-589f-49bc-914f-62e5dc4469e9@kwiboo.se>
References: <5bdd0009-589f-49bc-914f-62e5dc4469e9@kwiboo.se>
MIME-Version: 1.0
X-HM-Tid: 0a985604d4c503a2kunm15728bea1d0da6
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGktDVkhNSxkYQx4fT0JNSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKSEJZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0pVSktLVU
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_045023_842989_463AD9CB 
X-CRM114-Status: GOOD (  11.47  )
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

> The issue is with TSO and RX checksum offload, with those disabled on
> the conduit interface (gmac1/eth0) my issues disappeared.

I did a test today and the same problem occurred when running the new
kernel on my rk3568 + rtl8367s board. This problem does not exist on
older kernels (6.1 and 6.6). Not sure where the problem is.

> With a 'mdio' child node 'make CHECK_DTBS=y' report something like:
>
>    rockchip/rk3528-radxa-e24c.dtb: ethernet-switch@1d (realtek,rtl8365mb): mdio: False schema does not allow { [snip] }
>          from schema $id: http://devicetree.org/schemas/net/dsa/realtek.yaml#
>
> With a mdio node the driver is happy and dtschema is sad, and without
> the mdio node it was the other way around.

On older kernels (6.1/6.6) only realtek-smi requires mdio child OF node.
Commit bba140a566ed ("net: dsa: realtek: use the same mii bus driver for both interfaces")
changed this behavior, both MDIO interface and SMI interface need it
(rtl83xx_setup_user_mdio), but the dt-bindings has not been updated.
I think this needs a Fixes tag.

Thanks,
Chukun

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
