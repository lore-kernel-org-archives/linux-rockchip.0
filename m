Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7363BC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Qpz332NlCzEm9yfd/VlYLSppm/79WIWgJLEm03Ms+o=; b=cwAqndEX14KHlA
	CQtXWoMk25gyPTicuVkvzoGgmRJ0Xxa14o+nFpaNnWx5jZ4zekipwRDlU1P/B60yxDmbgxSY2I0ph
	2KnifAPjSnzuAsI7DXyjlL3WLRqcdTD8yGHX74cqOh0GsZyhTzxLO10oJ12hObYpLAdQg1Cm8XR1J
	OHFNw7GIonzs0GCXJ6iePcLdZCnwksRVHaaitA0Asgjd4mgiFOawi2pMj6n84+71gy48PU0mnRcUQ
	UHRNw9wdg+6g3vFjphghGrsOjYVdIo4zg5JuH+ieQhVMUqoW7eqgwHU26bJbhyEqc4Ip+Uk6+fd3f
	L5Okld5e/zAjzmu9CZEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olAkD-0036sZ-Hx; Wed, 19 Oct 2022 15:12:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olAUl-002wnM-Uq; Wed, 19 Oct 2022 14:56:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7B931B82420;
	Wed, 19 Oct 2022 14:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2560C433C1;
	Wed, 19 Oct 2022 14:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1666191393;
	bh=TM4wgjfRG/tpZ3xsCpLkHBSysgXbD+pBzv+iwSUm6kg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hlsw1Gwy1q7/79w+6D6j6HBbTG13TcCDZAYvv6gU5AroS8Z+SjnpAMdNs1Yuxv2FW
	 WNUr++fT7x1cg0yRThZSaWWywiq3ROpZ+xnyobtCxDH7za5iLD8l2JHJNCtkoETgga
	 oUAUYNhU4hgpb7jTpu7k2dS3oH9KmofD/O26Aus8=
Date: Wed, 19 Oct 2022 16:56:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: lower rk3399-puma-haikou SD
 controller clock frequency
Message-ID: <Y1AQHqm+cOmrrveJ@kroah.com>
References: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_075636_217771_7117EE97 
X-CRM114-Status: GOOD (  17.34  )
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

On Wed, Oct 19, 2022 at 04:27:27PM +0200, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>

You can not have 2 authors :(

> 
> CRC errors (code -84 EILSEQ) have been observed for some SanDisk
> Ultra A1 cards when running at 50MHz.
> 
> Waveform analysis suggest that the level shifters that are used on the
> RK3399-Q7 module for voltage translation between 3.0 and 3.3V don't
> handle clock rates at or above 48MHz properly. Back off to 40MHz for
> some safety margin.
> 
> Cc: stable@vger.kernel.org
> Fixes: 60fd9f72ce8a ("arm64: dts: rockchip: add Haikou baseboard with RK3399-Q7 SoM")
> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> We've been carrying this patch downstream for years and completely forgot to
> upstream it. This is now done.

It has to be accepted before you are done :)

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
