Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3181C3DA41
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 07:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cYZIGyX4mZ5r8iYlK4/cuA5/4cUPpaxc+Uj8bnxT+cg=; b=o3+kb3mZlejtKbqGwnre3BDHD0
	eHg3w64NCUG8pXfvgsRJ5PJ6GqPSMGa7Wge33hZsGzG3lgcktlZhws1Q8hOEmBBEubbo/QVei1Ge3
	E6UKTnGCJ1ZmVVbL15IRJocOwT3536Alt31BIQb6w7Msin7Jdodj3BbTHdKSBeB0HmMhdurlD3SM7
	4zWdzoSD13GTFHrAh9/UKOjtfN0Y9zbG9VJ71hDJvZwOtaQTBs81/T/4wKJtWu0GuBzMXfJEtpGVP
	mmV62uMRvLWMeTnX8neaqDLOHDs/kykhTjFLxf9m8fxRTf33/Nd1Z1LIFuu6bKLdH3QNxdTg8OzeN
	zwddCecw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR5Iq-00000006EU1-3YU9;
	Tue, 09 Jul 2024 07:30:20 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR5IY-00000006ELp-47Ko;
	Tue, 09 Jul 2024 07:30:05 +0000
Received: from mail.maildlp.com (unknown [172.19.163.252])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WJCF73k6HzwWd4;
	Tue,  9 Jul 2024 15:25:15 +0800 (CST)
Received: from kwepemm600007.china.huawei.com (unknown [7.193.23.208])
	by mail.maildlp.com (Postfix) with ESMTPS id B1012180AE5;
	Tue,  9 Jul 2024 15:29:56 +0800 (CST)
Received: from [10.174.185.179] (10.174.185.179) by
 kwepemm600007.china.huawei.com (7.193.23.208) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 15:29:54 +0800
Subject: Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
CC: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin
 Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso
	<tomeu.vizoso@tomeuvizoso.net>, David Airlie <airlied@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel
	<p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	<iommu@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <ad2628b2-aab2-2c7a-d4df-5356c55fae39@huawei.com>
Date: Tue, 9 Jul 2024 15:29:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
Content-Language: en-US
X-Originating-IP: [10.174.185.179]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm600007.china.huawei.com (7.193.23.208)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_003003_371232_D59E8DF7 
X-CRM114-Status: GOOD (  10.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024/6/12 21:52, Tomeu Vizoso wrote:
> This initial version supports the NPU as shipped in the RK3588 SoC and
> described in the first part of its TRM, in Chapter 36.
> 
> This NPU contains 3 independent cores that the driver can submit jobs
> to.
> 
> This commit adds just hardware initialization and power management.
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

[...]

> +void rocket_core_reset(struct rocket_core *core)
> +{
> +	reset_control_assert(core->a_reset);
> +	reset_control_assert(core->h_reset);
> +
> +	udelay(10);
> +
> +	reset_control_deassert(core->a_reset);
> +	reset_control_deassert(core->h_reset);
> +}

Seems unused.

> +void rocket_core_reset(struct rocket_core *core);

> +void rocket_device_reset(struct rocket_device *rdev);

Ditto.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
