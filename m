Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D287FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQq2tYYxDkDDzCC+2MTlwPw9UgdrvPHOUD130JfhkpY=; b=LjL7FXyjTiT2Ru
	APpnsWZEnlEHYud6xp+EQZk64SgTPf9F4U+xFfZ7/5H23197RJodXYv7I0YWyrYXCSqrEnDuCvkoE
	ed8FdBfIpL1aSwD6F4JZLndX6LJY1FhMnrt9oANBojKiv8/gYwOHrZ22NSz5WxN5BEjTn1ABd+S/2
	zbh1TJcU5AEpySb1A5KveWxx/uTejtNjgPnkM2KnS8Q3mBWFWShg0WA5JJ/IND16Z1ZK8adFpVafa
	0sSd1GO2B92m5w6OzkevcP1CkzGO8NXbPjSHwBoVUv5wXh8IwCEXtmVnLJi5OrIhKdO8RnZE0arTr
	BpJsNm6RmHh0NyrPzxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDIu-0000000FwGX-1IZm;
	Tue, 05 May 2026 10:47:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDIs-0000000FwGE-360C
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 10:47:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B26160128;
	Tue,  5 May 2026 10:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A848CC2BCB4;
	Tue,  5 May 2026 10:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978021;
	bh=32TlcTEMx1Mbzn0Gs/lnWQJYQ/HQQGkV76hj7abltnI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Lq4H0nb5HiXE61wqdYfomuRUiD/XFJrizuaazj16cX+AMeQtPAns4fqnENEEoHLag
	 PwV+IjgIA/8cMIUw7xWpxi+stmkPnj1CblvqwwOwgWxQ1PoVu3//SZgvQBv4hAgmrj
	 3w8+IvDH1PgO3OZ8RvdawYWTdSh4QtsZCqoXN1NDC9X3z8QXwokzsoEHxqFw72m3Ax
	 dhE0Tani24Z7b3BYSA4NQkFYshXM/C3Be/wAqq4GTvLbnccMais6kc9kvqLUCj/WYG
	 mSaDhlqetBgjda78DEd9GoogfqaWcMIaIdqWbemgPmoud3zd48fH54TdZWvoHLn7iM
	 +IgcsDzwDPkWg==
Date: Tue, 5 May 2026 11:46:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 09/10] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260505114651.57adbadf@jic23-huawei>
In-Reply-To: <20260501221152.194251-10-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
	<20260501221152.194251-10-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Fri,  1 May 2026 17:11:48 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
From a quick look, feedback will be near identical to the accelerometer
driver, so just check this for similar things to change.

Thanks,

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
