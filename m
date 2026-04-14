Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D59BF9D0EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 18:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAj/nHTsXU493CZdV0Jq4Bx+XXFcaKqLlDQ7p5wk5eM=; b=l8BK0Ew5x7E/Ft
	MPf699f/xmmXwISwJuJIdmU13fW+gWbdKzfai2q5l0gPj3IoXcqHd2+gVXf08MqpUrIgMp1H+r52b
	d6/XB8OUCdc5XiNDXWt81j8eC+rBCcCGmmSTftZ5WaYQ3g08522SO7iI0fvyu33nkxkt/MFEzhzfM
	HQWq69Bp6GLGQ8bzWuaQAXWfqQBFy3zFpKcKnoW5od5L3dUGfNZ+n6RblNoHOqCfuTQQUxxy1CoLs
	u9MqzFdB1hUs4bG6FueFYelq15bqJb5jzWLwuDQ6ni4iFChf2MydvRNsgD/ggHc9ibDJ7SFuCXAJP
	TqXnhypkYjDLYa0W+q+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCiVs-000000006Qt-1FXI;
	Tue, 14 Apr 2026 18:29:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCiVo-000000006Q9-45b2
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 18:29:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C3E8443F4;
	Tue, 14 Apr 2026 18:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00AD6C19425;
	Tue, 14 Apr 2026 18:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776191364;
	bh=bZhOSn23zxWxgujY4eCddNVUXmuhP+1hxbBgE3l3NJE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RzdLSAF7SCjY1x3Ksr02OMk2D9F+QBPgy0OglB9AUj5Ow9wfpjacx2uJoEjD0jetk
	 6e6Zn6hj3HALkv8OGTy0B857v4C38fgEQ3o5DPp4uLakPld8UokMiVHd7l0y2kiV0B
	 /q3McSRY1rV8Rifen3pPi+QfzO9EMX0dB6TQ25Pl/Bx3FQ3cADcNksK/RpBFCYIfnX
	 lpaMN1UPQ6KY/9NlIuHkMNWHbA53SsBXl8pYXY+7mIcw232IUeatRRhb/507jqLFnr
	 h51yCifXOVLvAewTmqdfHhRkvMpD/wMxZhkv6LvlcXz+ecd8kIqXULyyY1Jd/juw0e
	 jI7D82POV3pYw==
Date: Tue, 14 Apr 2026 19:29:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 2/9] iio: imu: inv_icm42607: Add Core for
 inv_icm42607 Driver
Message-ID: <20260414192914.3661409b@jic23-huawei>
In-Reply-To: <ad3paMbRXtq6BrCu@ashevche-desk.local>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-3-macroalpha82@gmail.com>
	<20260413200547.75bfd672@jic23-huawei>
	<ad3paMbRXtq6BrCu@ashevche-desk.local>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_112925_063634_0536E657 
X-CRM114-Status: GOOD (  12.00  )
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

On Tue, 14 Apr 2026 10:14:48 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Mon, Apr 13, 2026 at 08:06:54PM +0100, Jonathan Cameron wrote:
> > On Mon, 30 Mar 2026 14:58:46 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:  
> 
> ...
> 
> > > +	if (!conf->temp_en)
> > > +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;  
> > 
> > Could make this 
> > 	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL,
> > 			  !conf->temp_en);
> > Not particularly important though if you prefer the if.  
> 
> Isn't this becomes FIELD_MODIFY()?
> 
Yes, in this particular case as the bit has never been set before
this line, they end up the same. If the compiler fails to notice it
doesn't need to zero the bit if conf->temp_en is true might make it more
efficient to do it the way I had it but given this isn't a fast
path, FIELD_MODIFY() is fine.

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
