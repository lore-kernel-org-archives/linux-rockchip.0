Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB900C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWNm+D/FB4TaaItRG/VPpLqfp9fhI7u6wDgZH/Ki0Bw=; b=lSedw3lTYJK9qX
	2lcZjEdSnnEA0jbQ1Ji3LIVWZ/BqAu1zUdWSUvGB9HFZS66bBSYPfuYaZsePuPhwznjg5Sbns7gfP
	ViwXa8D7jAB6+gFIYs5QRaH3dLX3m/iuJdo0TkXui26apkq09oyvev6SvQbJf6xa/7OJ4IG5SVYzw
	p7Q+9gTMgI8CTQqbwkgsMtHQdg++fOQwyiq8y1F8LSssVcGdBpHywgBoNtw6xgCZ+534No7UMDxYk
	bkkn3n6aGhLlGxEDDp6uMiS1/5Lw9Oy3Qb86el1Nvh6xzqxG+xTag/8Fngtl+HObWN+8PuXIQ6wjR
	BnfAhVGrSU3eHY8ZXGsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqf9-00000001k0F-2pcg;
	Mon, 25 Mar 2024 20:11:19 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqf3-00000001jvM-2tCs;
	Mon, 25 Mar 2024 20:11:16 +0000
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4V3PDj3HrVz6K5Yf;
	Tue, 26 Mar 2024 04:10:13 +0800 (CST)
Received: from lhrpeml100003.china.huawei.com (unknown [7.191.160.210])
	by mail.maildlp.com (Postfix) with ESMTPS id BCB1A140A35;
	Tue, 26 Mar 2024 04:11:01 +0800 (CST)
Received: from lhrpeml500002.china.huawei.com (7.191.160.78) by
 lhrpeml100003.china.huawei.com (7.191.160.210) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 20:11:01 +0000
Received: from lhrpeml500002.china.huawei.com ([7.191.160.78]) by
 lhrpeml500002.china.huawei.com ([7.191.160.78]) with mapi id 15.01.2507.035;
 Mon, 25 Mar 2024 20:11:01 +0000
From: Niyas Sait <niyas.sait@huawei.com>
To: Jonathan Cameron <jonathan.cameron@huawei.com>, Shimrra Shai
	<shimmyshai00@gmail.com>
CC: "heiko@sntech.de" <heiko@sntech.de>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "max.schwarz@online.de"
	<max.schwarz@online.de>
Subject: RE: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C
 bus
Thread-Topic: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C
 bus
Thread-Index: AQHafsr0Wl6sT07ewk2P4IUJwaVt4bFI4A9w
Importance: high
X-Priority: 1
Date: Mon, 25 Mar 2024 20:11:01 +0000
Message-ID: <78763d69bae04204b2af37201b09f8b5@huawei.com>
References: <20240322103521.00001a12@Huawei.com>
	<20240322155146.22755-1-shimmyshai00@gmail.com>
 <20240325154150.00003bde@Huawei.com>
In-Reply-To: <20240325154150.00003bde@Huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.48.158.103]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_131114_148955_011FB19E 
X-CRM114-Status: UNSURE (   6.91  )
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

> Niyas, could you forward what you had to Shimrra? (I can find it if you don't have it any more).

I am on holiday so only had a chance to skim through the email. By the way, the half-baked patch is here [1]. 

The patch only supports fixed clock sources and require further changes to support multiple clock sources.

I will have a look at the discussions when I am back. Hopefully the patch gives some idea. Feel free to take up the patch and fill any missing bits.

[1] https://github.com/niyas-sait/linux-acpi/blob/main/0001-acpi-add-clock-bindings-for-fixed-clock-resources.patch

Thanks
Niyas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
