Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E273C83F1A
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jul 2025 00:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/pRxPNdNyqjdshoiUO2SFEY47TCN4Iyd6kx6S+ZbO4=; b=1XPBi7Jh4r/3+4
	mZWr+SUg2vJpr1l2F6l5oMLFiV0DjFB1rLQjK86Dr/iRqEAoBcdezoIVUhNhpjrnjS0a48PK5i7XM
	bXYHCCITEYD6TnYELOtgIQkFWFYC5iLK2zCn5SOzKzfiwFslHkw8WocdW8Z3ClabVKLMXDLq4XHFF
	uFUyWsSaBUex4ifN5pYvS4+comMbaU8xR6LY9vLFe6Pux4qpi1HPm0yvzTsib7AHtyu0xumaKJnvv
	MbSC2NCNyLJHkkLgoGYzO7OYtOBFITgDM3E/yBUQse5HH3kXxdsoKuLdOWf6/TLbNqIa1htkypo8g
	jeK5By+y1gY5TnrsEUtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaNsi-0000000G5nv-1U1l;
	Sat, 12 Jul 2025 00:14:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaMsA-0000000G0Mh-2o1a
	for linux-rockchip@bombadil.infradead.org;
	Fri, 11 Jul 2025 23:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8LDE70R5JjThoFdd2L3OKHpcpW3XXZNALjGyWglv7UQ=; b=oWlAAowbuF/s8HTZ5Cqxq4KBSP
	2Od7GhwRNViv7gAg5DFZr/6fcYs3SXyTcq59x+xrFYqHlrcTVOy7gkyapoXwlU9lWFmA6sa7Apu1o
	5q3ky6MFk5Lqt4gvTCahZ4ofqsJLmwDd8sBaI6gx1+cDeEZBUv9vm4K7YzWFlQkjlgceGspvw3bpS
	C1WzwHNPz4nxFL5kq5dfmyasGfL22wHve1wTqN/bIlhiCqmIOGRUoJubgkObEe8+R1Q7qC6j6W9a3
	K9ccZcFAM+I5Z7tXuHc9F4ZmnqI7U3Zp/AJ+mVnA2Yh/4Z8B3Asj5fzVF8ajYfdqqPTWHGnsIHUK1
	apqnb6GQ==;
Received: from mailout.easymail.ca ([64.68.200.34])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaMs7-00000009NdE-0LoE
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 23:09:41 +0000
Received: from localhost (localhost [127.0.0.1])
	by mailout.easymail.ca (Postfix) with ESMTP id D3A22E09F6;
	Fri, 11 Jul 2025 23:09:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo08-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
	by localhost (emo08-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMJOQ1O2aY1L; Fri, 11 Jul 2025 23:09:30 +0000 (UTC)
Received: from ymir.lan (unknown [73.95.76.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailout.easymail.ca (Postfix) with ESMTPSA id C8075E09EA;
	Fri, 11 Jul 2025 23:09:29 +0000 (UTC)
From: Dmitriy Filchenko <dmitriy@filchenko.org>
To: joseph.kogut@gmail.com
Cc: conor+dt@kernel.org,
	derosier@cal-sierra.com,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	honyuenkwun@gmail.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: [PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5 IO carrier
Date: Fri, 11 Jul 2025 17:09:16 -0600
Message-ID: <20250711230916.2089410-1-dmitriy@filchenko.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-3-8d96854a5bbd@gmail.com>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-3-8d96854a5bbd@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250712_000939_380394_4D96134F 
X-CRM114-Status: UNSURE (   9.00  )
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

Should `vdd_cpu_lit_s0` and some others be in the SoM device tree instead of the IO board? I see it on page 18 of the schematic https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf

Additionally, I am getting the following during boot:
```
[   38.190604] rockchip-pm-domain fd8d8000.power-management:power-controller: Failed to create device link (0x180) with supplier spi2.0 for /power-management@fd8d8000/power-controller/power-domain@12
```

The device is an RK3588s CM5 on the IO board powered through the barrel jack.

--
Dmitriy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
