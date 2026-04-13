Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AFFF531CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpV9tcD83BR8xgNqqYKxaIuUMkP492a/3qZIlHwNZV0=; b=JxwGgdrNlW+mh4
	F56wKSRRp/miPG1DEzXFEpVmNiB4x1CxCZnXxfTqYKc+qtFnYbZeHahxpCGjDf9KQUJkksFxShRit
	TIpwU1W3G6WVDq3klBM+GWQLejemmy/9l+GzOww+qyyS8c5tQkd5C4VvJJf13kL5J/BgDHx6kfBaV
	pIwLdsAmAgRS1B2cnV8Nug/ULc3+Kiw/LQt3krZbVzSiLpi7/fvPfg0p2l3jWdDIXViu4PF7AwJox
	gaFowj958jGDl9yaixX+JpN0uTngZdFgI3wKjxqsWNc6ToxelaHDqxSXEaANB+XKTc4jmLAF2kXbe
	N0d/nrzFTjFUmSfKR6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN8R-0000000GJqZ-2VWm;
	Mon, 13 Apr 2026 19:39:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN8Q-0000000GJqD-1PpY
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 19:39:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B81194418A;
	Mon, 13 Apr 2026 19:39:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0F19C2BCAF;
	Mon, 13 Apr 2026 19:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776109189;
	bh=xTJICU61uWhPhfgMFUbMpWDNifDbHYgS743TqTin9do=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=E6r1gMp3Osy+qHhNCnJ9e6KzMwjd9Oj633+ci824omd6ylTe8nlj0BgShPY7Cash7
	 G3Uietb95YyWZTXJFRD8zxl9yQmv5k3SxiC1tOMnzOo4lJPr29WdYVYv1AxQVF2cNF
	 qq+wIQ43GCDqTRVv7zbJPzICfCrplziIVHBwSIyXm2bz/O/hUuB8myOUOxciwfKZKS
	 UdgOiuLVT0xG5Lq4Fv3U1pRndRU9/yZnwa+Q68BTYtwgYl0M7c1JQTb7rPsRxHHlhL
	 BrvPly6dNLKfmHYM5b3eTumSMoeo2RUQVWXFDdV1QRmgfNSbgrmJIwEodaMGZo5rDx
	 Hhtiw8CnIIsXA==
Date: Mon, 13 Apr 2026 20:39:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 8/9] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260413203940.0533f1d5@jic23-huawei>
In-Reply-To: <20260330195853.392877-9-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-9-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_123950_417870_FB0F6D2C 
X-CRM114-Status: GOOD (  11.88  )
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

On Mon, 30 Mar 2026 14:58:52 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
One very minor comment.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> new file mode 100644
> index 000000000000..80473c07c6a4
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

> +
> +static const struct iio_chan_spec_ext_info inv_icm42607_gyro_ext_infos[] = {
> +	IIO_MOUNT_MATRIX(IIO_SHARED_BY_ALL, inv_icm42607_get_mount_matrix),
> +	{},
	{ }

> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
