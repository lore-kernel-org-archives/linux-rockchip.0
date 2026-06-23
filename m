Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AFB5CDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEI5WsQF14PdaB5iu1WCk2ZWtTkB7fA1knxgLNHBIZc=; b=adDjjQVz7cKQFj
	CPH3LQAZRInn2RT+hseSw4JJFnXECElkE0/TQ4l/K+mhV9Ht/2dwlGCob5F9XJFYAGvU+Kvm83hag
	9nOXYzqdiNOTjZBBLzZ+zhc9iP6wrLTZgzs0/5taAzFc8zmx4AzmPXerFaprzkuO4fpBFnUgqEK7y
	Bd3oSNp2HNwrcSwXc8t8iHtukCN+E4CUE2s9T+mR+A8lxRzPwjhO3ToSWu60wF5Kve3qrW5cTGU0P
	nXeoJHEPiZaALBwJ19cEB+NjilfDw/Z6opYGJJDRUrZrx5OqFVToUeuz7QYMXqkWS93DEqZpLIziV
	HzdGjRvzAR4y6uAmAJ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc2qh-00000006WFl-15UB;
	Tue, 23 Jun 2026 15:15:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc2qf-00000006WFc-1qxB
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 15:15:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D7914045E;
	Tue, 23 Jun 2026 15:15:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA0E91F000E9;
	Tue, 23 Jun 2026 15:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782227737;
	bh=IPOBmqwVoyjRS2u66O6YAVJSo8yViJnEx+BNzty711k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=COSxw0gF3QYuNJh9ZJ5fqD5kq/uiYqZSDMIVEkJqAbInBUU6mfevw8xAX3lrOhr7D
	 rRyaZDnooKcpcVnE+vaibH+IHcdvJmnPooj//fkwNiKtJoS+pww2yPlQ41T9a3sQsF
	 UnVnkNIkalwiYHlkpv9VfK2M17gPYXeXKqS8+Tt/gNtz6iO7hrsTM2LJPUETGLBzSN
	 h5ph74zMF14l07AqIQtAfQMFEvSSCi9Jztm7bs9WuZWiSKPAyN5MHgZZLq0kW4psYK
	 1z37dYL6gHV7M1aIu7F/sW1N/UgoVcO+Z1OodHFUmF+iiOS7wu9u1y6MxlZka6TMT2
	 KVrsYfQ2Ux5dA==
Date: Tue, 23 Jun 2026 16:15:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macromorgan@hotmail.com>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH V13 8/9] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260623161527.7b7b0ccb@jic23-huawei>
In-Reply-To: <ajotNPhg8fR3tLZp@ashevche-desk.local>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-9-macroalpha82@gmail.com>
	<ajEhr0JIQwzRgoZa@ashevche-desk.local>
	<PH0PR19MB997338E86152468CE26F60953FA5E42@PH0PR19MB997338.namprd19.prod.outlook.com>
	<ajotNPhg8fR3tLZp@ashevche-desk.local>
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

On Tue, 23 Jun 2026 09:52:36 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Jun 17, 2026 at 04:10:49PM -0500, Chris Morgan wrote:
> > On Tue, Jun 16, 2026 at 01:13:03PM +0300, Andy Shevchenko wrote:  
> > > On Mon, Jun 15, 2026 at 12:25:51PM -0500, Chris Morgan wrote:  
> 
> ...
> 
> > > Can be some of the code deduplicated between gyro and accel?  
> > 
> > Probably a fair amount, but the deduplication will likely need to be
> > undone somewhat if we get buffer, WoM or apex support added back
> > (I don't have any devices with such functionality, so if anyone will
> > do it then it won't be me). I can refactor more if you want, or we
> > can keep it split like this to make it easy if someone else wants to
> > tackle the buffers/IRQs stuff later? Your call.  
> 
> Just asking. Jonathan, David, Nuno, what's your opinion on this?
> Personal opinion is to avoid solving the issues that do not exist.
> If you are not committing into those features, let's not prepare
> driver for them right now.
> 
Agreed.  My only exception to this is normally when someone tells
me they have the code and plan to post a follow up set very shortly.
Then I get a bit more relaxed as they chances of 'preparing' for the
future being relevant become much higher!

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
