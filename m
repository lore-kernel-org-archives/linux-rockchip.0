Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46242D38FF9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 17:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSCAJNx5V2D3ZWnmgzXqfiGByHTdtqZjSFuQ9xAjjn8=; b=BB2oa4n4JJzehC
	KA5UEW60MkbHqSUiyA2DnXBTu/4BjhOu5U1RAdAs0uo+TnHu/b7gEsLCKwW3girSvRA2S7+MmMttM
	zeZfMlzIaiGQoPBrql0lmDtQpQwSLI9Lb9wR7j7x+nMIGz8t15lXdEWd2EFaif6GpR/DYwSJTK0rB
	pCK3MiGJQMQJtZTHrxwuorSjSLuVBVOF4NWkqVjzbr/ba3ozmIpmu+YQEcjO1q+n4/jY1ssuVZI0u
	1u+DTq1sjAIsfLFWJe8NiUwXofE1BXeIKWdXdSeXbgEr0A0wp9kRF6ERxpUmY7mHaKTYjjxkRJyo/
	dKaiqm1sbqTYYWeDLE/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg4iR-0000000A99p-0JWO;
	Wed, 14 Jan 2026 17:31:31 +0000
Received: from out-171.mta0.migadu.com ([91.218.175.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg4iN-0000000A98k-4AJn
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 17:31:29 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768411885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0YPRVG2Kt3RIzXwQiUJV9LIgvxAOvSvPHT6ORBbUlgE=;
	b=AaxY7tfnwX2HhjTNbqdTaSETNtcnp69xmApYFC0xRLe1aYNrAkN36g4+U1K71jPkz/mZnT
	5XCGPSsZpGk6qK6lXUbZ/EPRL6GjsNdx10ERPBvdviA9nu2FPKWc4yyLCs/VVBvSbOB56f
	Rz9U6ZUh6HVlBVg5wN+5TYiwgJFe2Ou4ccK0yZARQ3E+DVrty8bjgmyaMOVeXWJW+WcGxK
	bTBr8PpUar2hX6gmqZGa+LKM0mNksI9B2A7OkD8s5IriaCnwQMQK7zhQpmPBGL08fEeDwY
	GjxemZpCwft0F+ZbxxFUht8HDLB/eXdiyfalUTyNlOZtIFUtWGxO7SYKfhkbug==
Date: Wed, 14 Jan 2026 18:31:23 +0100
Message-Id: <DFOHOZTANT92.38TTTMCKWID54@cknow-tech.com>
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: "USB mailing list" <linux-usb@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
 <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
 <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
 <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
 <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
 <91fb697a-7bfa-4e26-85cd-40810a8d2be5@rowland.harvard.edu>
 <DFOFCN7H0Z10.1FAC3SN3TX79O@cknow-tech.com>
 <febe88e2-9abd-481e-af9d-3f0825ef204b@rowland.harvard.edu>
In-Reply-To: <febe88e2-9abd-481e-af9d-3f0825ef204b@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_093128_456125_91FF667E 
X-CRM114-Status: GOOD (  12.39  )
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

On Wed Jan 14, 2026 at 5:07 PM CET, Alan Stern wrote:
> However, I agree: 30 seconds is _much_ longer than it should take to 
> detect a newly plugged-in device.  It should take less than one second.  
> One possibility is that something involved in waking up the EHCI host 
> controller from its runtime suspend may have caused the delay -- that's 
> why I asked you to try turning off the controller's runtime suspend. 

It may be completely natural, but I was surprised runtime suspend was
involved at all. So I'll definitely do a test by turning it off.

> Also, I'm not at all familiar with the particular hardware used by your 
> platform for receiving wakeup signals.  It's possible that a GPIO 
> responsible for this wasn't working right and that's why you were 
> getting all those warning messages.  Another reason for wanting to know 
> what will happen if you take suspends and wakeups out of the picture.

I think GPIO is involved with wakeup signals ... sometimes at least.
I added the linux-rockchip ML precisely because I (strongly) suspect
there is Rockchip specific part to all this.

Cheers,
  Diederik

PS: I very much appreciate you taking the time for this 'debugging'
session :-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
