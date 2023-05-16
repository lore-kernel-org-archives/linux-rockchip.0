Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E720C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9znUwJVtlo7fDnej+CeVDPa9x58fN/jJSQSzjpQzEnE=; b=KQ+iOO47ac7aYa
	J/t8Rv/sGA34A1qqp6tZQ3MZunnsrEpWOIAvDFwIhR4gdyaTts4N1kU9tl7LYr0x/rbvgZQNxoTaD
	YuwteAiSLxRgS179EdW4flboWdOyoo7TD6/FDbdibv5JgTY+2xV+pJe7fVEI4r0cza++0j6rIABSn
	YMyKNiSfqO95Btr454q9Yaua4/sx8RCQWRZ6F/+WRHlYU211YLHjvUJmoQcxVy7lInuPS97hO8mxj
	spycQmHWOyHUvqYzgOMmJstN6YN2ES3/9ngbwV/xzGKAW5rFdhL53bRq3YI/ZQw+elSC5v1L4YNqR
	gdnLMJH9CvO+ug8L/prA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywah-006FDX-12;
	Tue, 16 May 2023 15:27:55 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywad-006FBp-0G;
	Tue, 16 May 2023 15:27:53 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLKnf2FhZz67Y3j;
	Tue, 16 May 2023 23:25:58 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 16:27:45 +0100
Date: Tue, 16 May 2023 16:27:44 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 02/21] PM / devfreq: rockchip-dfi: use consistent
 name for private data struct
Message-ID: <20230516162744.00006536@Huawei.com>
In-Reply-To: <20230505113856.463650-3-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-3-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_082751_268241_4B478275 
X-CRM114-Status: UNSURE (   8.04  )
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

On Fri,  5 May 2023 13:38:37 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The variable name for the private data struct is 'info' in some
> functions and 'data' in others. Both names do not give a clue what
> type the variable has, so consistently use 'dfi'.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
LGTM
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

I'm really here for the perf part, but meh, given I'm looking I'll
look at it all :)

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
