Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D700C46CA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 10:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kVhPa9qXz/Hlf4v5PhMkjawjrmN2MIjK5MGj0/RkTo=; b=Fp8cxPqig4X2EX
	zRTIfL1/bnZ4hRPo2e3CfCeItZ7/YJPdb5nbn8Z17W2ktUhjttEOLe3EQYGtUCi1DXSuAYHBqw2AW
	1nzeKJeP/9fRmyf5oyzeMS8nGJahUpOuJTuF1gsYc6CMANLx2aVndr2cU+593j9ghuZX08mvEvHGU
	c8/68/2gUrBABYlKxBsVzxVO0NAKGD9mrLvxAZrUZjNlQRdcb1TDRLnTf2+vMJqspnaSUQuSOi/AV
	lyEyFAWsw2Z9Bd2MCvcxeIgw97DzC//l03WJcOidWibg2X/UCJbW1E47usgaqYAYQgGV938DLazM7
	/8VtYzXVT/WVoEB2s4Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5uu-002qQu-2L;
	Fri, 15 Dec 2023 10:59:40 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5uk-002qJ1-1c;
	Fri, 15 Dec 2023 10:59:32 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 50BF21C0011;
	Fri, 15 Dec 2023 10:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702637968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NwCEqhIB/m1Xd4kCz0qdCqDRDePvez2pQRCwuqOV4ZI=;
	b=KrghQkKrpsxYdQauxe84Sg/Go9uwdONNpyxxXQMVFLydqJOgp1RQdc3LjC6+WOppmRzc3p
	JLohDKjjvYEPXdct48HLB4000RC5TeTZDr6TRdxz7Pp/KOjeVS/ksu4K03YALsHADP/I5Z
	SWFxxqiLVSVL/jrq5JsoGEU0fZd9BIeqF7QDT6ooLII5eoi1QIxHNoJ5YU3BnPH8ZKSJiq
	t9trLhJHoQLaj1SV3Hl8rUzV3SDkgjgYUy97pwH48pTdDiSlDxOqVco3B1K3wKxu9jowYg
	dV8FHcEJIEmr4/cBdTGaaqT/oZZLBRdvBYy20gScnCEyOI67kBfAjj4gTBjrSQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Pratyush Yadav <pratyush@kernel.org>,
	Michael Walle <michael@walle.cc>,
	linux-mtd@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: rockchip: Rename a structure
Date: Fri, 15 Dec 2023 11:59:26 +0100
Message-Id: <20231215105926.499291-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211150704.109138-1-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'2ca8718be0c469a99435f6330904364f8dc5a094'
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_025930_674584_373B9971 
X-CRM114-Status: UNSURE (   8.85  )
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

On Mon, 2023-12-11 at 15:07:03 UTC, Miquel Raynal wrote:
> Robots are unhappy with the ecc_cnt_status structure because the kernel
> doc says it should be called rk_ecc_cnt_status. In general, it is
> considered a better practice to prefix all symbols in a file with the
> same prexif, and thus it seems more relevant to rename the structure
> rather than changing the kernel doc header.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202312102130.geZ4dqyN-lkp@intel.com/
> Fixes: 058e0e847d54 ("mtd: rawnand: rockchip: NFC driver for RK3308, RK2928 and others")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
