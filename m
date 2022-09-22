Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B862CC54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 13:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLVn5qlK6HbhOYhsvORYFC7ATtGqWLlozjHDY6L4ICM=; b=GhAjz+bCm08xGV
	Ok3UwUjH2HjUdV+HnZ4n6DER8ng4uiJIcvedIGTDYgpmTkJLzN7ng1zXEaq6hfkZZo+Z+cXcocvgb
	zm7iX8LoeDAruSQIoSASRfaMQS9pkqPM19t8ZJUJpaAjr4Fwvpyciz6GwWdHTUw7W+EFJwGy0g5CO
	HeVwJYGb90aGm8a7Bv1H0ZvVqcih5c1JnzhPcO0SYkUPrCjHs+ugOV7JJtYmGuIGX9arPlSU5zyAt
	FKuZeJ84RW5KKRRclSSzfcoDKTN/dJMo96WDZs0a3oLQIVPRgVN6HH4r84UqwZ+9MirkOAidUcK4s
	dLghXV1COUfeOtMl1W8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obM5L-00FcEO-Fg; Thu, 22 Sep 2022 13:17:47 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obM5I-00FcAH-LE
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 13:17:46 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4MYG3y2prdzHng0;
	Thu, 22 Sep 2022 21:15:26 +0800 (CST)
Received: from kwepemm600014.china.huawei.com (7.193.23.54) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 21:17:37 +0800
Received: from huawei.com (10.90.53.225) by kwepemm600014.china.huawei.com
 (7.193.23.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 21:17:36 +0800
From: Zhang Qilong <zhangqilong3@huawei.com>
To: <heiko@sntech.de>, <hjc@rock-chips.com>, <airlied@linux.ie>,
	<daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-rockchip@lists.infradead.org>
Subject: [PATCH -next 0/2] fix PM usage counter unbalance
Date: Thu, 22 Sep 2022 21:21:05 +0800
Message-ID: <20220922132107.105419-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm600014.china.huawei.com (7.193.23.54)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_061744_890573_B9231279 
X-CRM114-Status: UNSURE (   4.90  )
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

pm_runtime_get_sync will increment pm usage counter even it failed.
Forgetting to putting operation will result in reference leak here.
We fix it by replacing it with the newest pm_runtime_resume_and_get
to keep usage counter balanced.

Zhang Qilong (2):
  drm/rockchip: vop: fix PM usage counter unbalance in vop ops
  drm/rockchip: fix PM usage counter unbalance in poweron

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  4 ++--
 drivers/gpu/drm/rockchip/rockchip_lvds.c    | 10 +++++++---
 2 files changed, 9 insertions(+), 5 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
