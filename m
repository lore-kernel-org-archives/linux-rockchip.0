Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3489C77B7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 14:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehaWRLbZKsCkfE6muhx96m9oGKub/JN5tNAMWD2B524=; b=emoeg1b+Zk6A/2
	zJ57krODN7tvKPb/ULO0cjPCOvaida4IVYxm2gNcN7Q35f0BrsW5LGgoSBPYguQ4ohxOLM1OBHuFK
	CEozgVt0YduCt6kyfAjVL3gsDaNBPBxyQU7O1aFpRfoT2r65OW7Bz6ZbrADM1zEpIfr1vKpb+LRMr
	3crkU2lhok2fsMfQC7umo/V6GhK8PraclHzHM5lvxurTOnqML+rH0Vipt08MJa5YgK4XYgWXiQ4L3
	APAvFloDKvCzDFMyVKuL8lediYT0uo1XxEuJWnw8mN/NIoOE1K4PfewAhJwuh8+PAsmA+5yqliPkY
	n0mEe8dhK/eIdEDtiLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzIQE-00ABAW-2P;
	Wed, 17 May 2023 14:46:34 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzIQB-00AB8g-0r;
	Wed, 17 May 2023 14:46:33 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLwrC31b6z6D973;
	Wed, 17 May 2023 22:45:15 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Wed, 17 May
 2023 15:46:17 +0100
Date: Wed, 17 May 2023 15:46:16 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 10/21] PM / devfreq: rockchip-dfi: Add RK3568 support
Message-ID: <20230517154616.000007f5@Huawei.com>
In-Reply-To: <20230517113828.GY29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-11-s.hauer@pengutronix.de>
	<20230516170435.000040f5@Huawei.com>
	<20230517113828.GY29365@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_074631_462526_4059C225 
X-CRM114-Status: GOOD (  13.62  )
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

> > > +
> > > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
> > > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
> > > +
> > > +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> > > +
> > > +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> > > +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;  
> > 
> > This is unusual enough that I'd suggest some comments to say how
> > the bits are distributed across the two registers.  
> 
> I'd say in version 3 of the register structure they realized that they
> need two bits more for the ddr_type and have put them in BIT(12) and
> BIT(13) of RK3568_PMUGRF_OS_REG3. I think the code makes that
> sufficiently clear and apart from this code taken from the downstream
> kernel I don't have any documentation of these registers.
> 
> Sascha
OK, that's fine.

Jonathan

> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
