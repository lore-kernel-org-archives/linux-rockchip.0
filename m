Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71DFC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 12:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwjeXMJLJdr6JohI6JsxRwI6Q+JVEUmAyJHg/+3491M=; b=5GYyT1ZSPaWnCs
	NrtQZLgrr3TdKWJRhrqTjYeJ0dS6JaNq88kbLbK2uz/RffKz0I7Qci7zZyVLRXzWfCUQfiQI3tlMY
	GGJKKNdlBDEgKGrZ4ckno2tjZZZsMFZaZgsyYUGv81V+RJhAXTg+5vUgByhpsD2X17V13BLUrOy89
	HpwwjtyhvMlPcdf1U212RPcbCPl3UqnfmGU7w/SjocGDbadKkx2lYrZAnTQAJyQk2DK7RIuaxT4Jv
	Ec5IGqCm+WjFrw6C8kDxsK5K8ZBLTZ0QdJiHWY9wybVoBDsHuB6NnYXhzST1GBzufm3vfevGEWlkT
	RNkdqRZi8lfnZBW0ZAzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAr0R-00AFnz-1k;
	Wed, 06 Dec 2023 12:27:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAr0N-00AFmn-2F;
	Wed, 06 Dec 2023 12:27:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 44839CE1D4F;
	Wed,  6 Dec 2023 12:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22F61C433C7;
	Wed,  6 Dec 2023 12:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701865672;
	bh=dlj/YCXcrqa1hzDWlixfpmkm6MqvVIgbXbMVeW4nZlc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OdeFo0jiIjPqrDwRBwUjKRUeRAWf4059fHqTteSj0VHDrhWaMF+HEv2ZEZXedaDgD
	 cfBHYtyFxqH+JV5AqFf3PFYnIKwQyoMzTeMiltUvDH1l0gc/qxW1GK7pIXTfA0T3El
	 mGm2yANxGVzo6lPm0xnEorK/v8O5vDSn1LEbPeo6cpvQPXu2c4+U1a1P2kR9gSI7aP
	 WjdU8Z01ATLX+YfrqDuGqGiA3gCBLuKP/VezSEx399xilXDYKDIofqpyY3w3mbk3mx
	 cDTMB+pPNwGNwwomuaU2RETacF60AKssiVMh8BlQg5d/UF6h+gm2Ddam3/tXBs+euj
	 /3e7uFW/S993w==
Date: Wed, 6 Dec 2023 13:27:38 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: fix potential spinlock recursion on poll
Message-ID: <20231206122738.cnnjxszz4g6zak3w@zenone.zhora.eu>
References: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_042755_977569_D6119B00 
X-CRM114-Status: UNSURE (   9.09  )
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

Hi Jensen,

On Wed, Dec 06, 2023 at 05:06:40PM +0800, Jensen Huang wrote:
> Possible deadlock scenario (on reboot):
> rk3x_i2c_xfer_common(polling)
>     -> rk3x_i2c_wait_xfer_poll()
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock);
>             ...
>         <rk3x i2c interrupt>
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock); (deadlock here)
> 
> Store the IRQ number and disable/enable it around the polling transfer.
> This patch has been tested on NanoPC-T4.
> 
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>

Looks good,

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
