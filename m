Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA43DC001DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 02:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4HQc0vVvH6guTeYGyu+IXjh4k8RiQ4Z0HGI6nTTCCEY=; b=Z4lCYwma+snrpI
	K4eVk7Ne4fHsl+UwcdqKL8GvwO7swRKlJh+/5uHzjsVuZhpuyha/V627TEfInDXeCAsvESM6OkFDM
	VoXDGPS9Wg6UOpMwOWxj2DKflstecO+u3wvg+2rBGLOoS0ZbRSStkxgfqk6b5x14XeylcCksMPYoN
	JakLfPukcF88nKqxrlVWR2n/lTbV/S9SKjqRG5OPpvuocdSK7hjXZupCfU86vyh9YciJlfQC4wn9Y
	CN2v9rOj5ybK5xtAilJAug8UByDiEiCg/2+X/c8KPvJ7GG1izq1qTTx5qsGvVeREUXK+O9/Lw2vwJ
	VB+kKmW3DrHjkxihXOZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRONE-006UW5-20;
	Thu, 03 Aug 2023 02:47:36 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRONB-006UTi-0O
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Aug 2023 02:47:34 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RGY7x0lTwztRnt;
	Thu,  3 Aug 2023 10:43:57 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 3 Aug
 2023 10:47:19 +0800
From: Ruan Jinjie <ruanjinjie@huawei.com>
To: <sylvester.nawrocki@gmail.com>, <mchehab@kernel.org>,
	<ezequiel@vanguardiasur.com.ar>, <p.zabel@pengutronix.de>,
	<linux-media@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 0/2] media: platform: Do not check for 0 return after calling platform_get_irq()
Date: Thu, 3 Aug 2023 10:46:43 +0800
Message-ID: <20230803024645.2716057-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_194733_313969_2D65285B 
X-CRM114-Status: UNSURE (   6.65  )
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

There is no possible for platform_get_irq() and platform_get_irq_byname() 
to return 0,

And the return value of platform_get_irq() or platform_get_irq_byname() 
is more sensible to show the error reason.

Ruan Jinjie (2):
  media: camif-core: Do not check for 0 return after calling
    platform_get_irq()
  media: verisilicon: Do not check for 0 return after calling
    platform_get_irq()

 drivers/media/platform/samsung/s3c-camif/camif-core.c | 4 ++--
 drivers/media/platform/verisilicon/hantro_drv.c       | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
