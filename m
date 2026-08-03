Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A51FC55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 23:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBEJd+Noys05GHzW+JIl1dAdkMLESK8qvm4VXH4NV4Y=; b=hpPbe0AlDVA13u
	33JroZ/KewAicHc7t0zWvCC5sm+eNU2UzYK7GNve49YHywYkG62+uWqfs7WvlbZdNtGUgjjQ44SS/
	h9WA/UTEgqmjaIVuES5byP/rLoatF7U56C4Re8FbSFIyOSthFom8zw09BBnsUdhdi5HwTL7AUO+D6
	5lXQfpynidrETiC6QCVUY0R5MaPZbHuigsDndhMDvOvNWhNmqHRkfug3a5JJpZ5GGXWaEnC0uDbER
	NW3hnKEFYfEay2ruDzYNsxbnXJfz/HuaSw2YXMpBY1Z1l8Kp+iYWlsn41RuGm/uRlbfUghT8Rfcx2
	JPzPRjuXXBRWnxZGasmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr2PV-00000000izl-0oz9;
	Mon, 03 Aug 2026 23:49:33 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr2PR-00000000iz9-3OCn;
	Mon, 03 Aug 2026 23:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:Content-Type:
	MIME-Version; bh=QB4+0hrVE5CLViaBG7l1TtGnXdcyF+FMaF/t4P5YnK4=;
	b=C+/jDnhpBlG3rJ6eHnHrXsiZYBRXkTnlCyXQR5tj1iQFAF2uLO/QbQijhaQQDg
	TmafTQ/DVm2pQ3yjBs1rWaa6bMoIp03Cs6whKsUlpKOi9HS3ThIwXXhOQHgZFHkq
	ypu6hRiKhuI3Kl1zZCSLN0KArjBr7MRDYwuBa6oAcBk0s=
Received: from 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wAnoEvyKHFqO7S+Ng--.58495S2;
	Tue, 04 Aug 2026 07:49:07 +0800 (CST)
From: Zhyi <zyheihei_123@163.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [RFC PATCH v2] arm64: dts: rockchip: H28K: release RTL8211F reset
 before MDIO probing
Date: Tue, 04 Aug 2026 07:49:06 +0800
Message-ID: <178580094649.8348.12264215435109995102.h28k-rfc-v2-withdraw@163.com>
In-Reply-To: <1e8da54f-ef87-4d31-9a0a-17c0ff66bee0@kwiboo.se>
References: <20260803104646.26836-1-zyheihei_123@163.com>
 <178577533421.26919.15449256732994709630.h28k-rfc-v2@163.com>
 <1e8da54f-ef87-4d31-9a0a-17c0ff66bee0@kwiboo.se>
MIME-Version: 1.0
X-CM-TRANSID: _____wAnoEvyKHFqO7S+Ng--.58495S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF45ZrW3uFy8KrWDuryrtFb_yoW3Arb_Ka
	s0kryDWayvyw4rC3WrtF17XrZFk398CryxtrW8Zan7W3sxXFZYqr9av3W0vw17JF4Ivry3
	GF90yrn3CwsxujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRE5Ef7UUUUU==
X-Originating-IP: [240e:390:2ef3:c801:e498:7ace:78bd:b49f]
X-CM-SenderInfo: 521kvx5khlsiist6il2tof0z/xtbC9xM912pxKPMxQgAA39
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_164930_252149_E300FB44 
X-CRM114-Status: UNSURE (   7.69  )
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

Hi Jonas,

Thanks for the analysis, and for the pointer to your earlier write-up
on the rock-3a issue [1].

You are right: GPIO4_C2 is the RTL8211F reset line, so describing it on
the PHY node is the accurate hardware description, and the MDIO bus
reset in my RFC was a software workaround rather than a correct device
tree. I withdraw the RFC v2 change; the kernel DTS stays as the
accepted upstream commit 145d4af4b204 ("arm64: dts: rockchip: Add
HINLINK H28K").

I will follow your suggestion and add the rk3528-hinlink-h28k board as
a target in mainline U-Boot using the board-specific device tree, so
the Ethernet PHY is reset before Linux starts.

Thanks,
Zhyi

[1] https://lore.kernel.org/linux-rockchip/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
