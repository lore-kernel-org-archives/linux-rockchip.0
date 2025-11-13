Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B5DCD6E63
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 14:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTmYTOYJWDGX6n3rssPAwFwDMRB4QIy8GLOs80vLWXM=; b=zst4uOQs4fEwSx
	ncUvtNBPIxjOHtkLmLHInH2XuymfZNU4/7SBk8K+L5r8B0TlWLpqDPyoNON9Av5htpSqbPrK8K2O5
	vKRbcIC4H2EugtnNfxol3zplLsxGQ7H5Zoj6bvvah2bzw0ir64NFG5rHfYHE52T5ynHGpprb6euqo
	Ni67bsomRoHl70ezq6CKYmaIE5weJ1hAOCecvLZ8ZY5zR4r7zC8OrjbLoQd+6GkPbH7PixNIF1tkx
	WDN+Cyt4qZXJKWH4GeJ0sSbCj7ra0uxPLgKY17Izr5RT6PyfCOdw6lnpCRRfhI3mp2Q5zRMP6HBC+
	+0c35rSyiUkmO0Q+nd2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJXsy-0000000AaLY-2OO2;
	Thu, 13 Nov 2025 14:01:16 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJXst-0000000AaL8-2WJ7
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 14:01:15 +0000
Received: from localhost.localdomain (unknown [58.61.140.134])
	by smtp.qiye.163.com (Hmail) with ESMTP id 297cfdf04;
	Thu, 13 Nov 2025 22:01:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: alchark@gmail.com,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Thu, 13 Nov 2025 22:00:20 +0800
Message-Id: <20251113140020.919159-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251112035133.28753-5-naoki@radxa.com>
References: <20251112035133.28753-5-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Tid: 0a9a7d85162e03a2kunmbae28cdc135b3d
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGEpOVhlCQk4dQ0tLHk5JHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0tVSkhPWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_060111_848572_444FC6DE 
X-CRM114-Status: UNSURE (   5.74  )
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

> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
> read-only, [1] [2] [3] because they contain factory-programmed data
> that isn't supposed to be modified by the end users. [4]

Is this true? I confirmed that the EEPROM was empty when I submitted
the ROCK 3C support. Based on the Radxa boards I purchased, it seems
that only the "Network Computer" series SBC (E20C, E24C, E52C, E54C)
have production information in their EEPROM.

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
