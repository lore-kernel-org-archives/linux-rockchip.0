Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7DBFEA803
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 03:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4hRW60Fdo1viZOnbIvbBjN6jqlbGJX5dnmQm6FAfXw=; b=JbTXBO79XnX1nk
	revKqN1FEdCgME3+mBLAJhi90dhPm00VDKJqzsMdZXKMRwdg7lsvL3NBpRvSw55QC7XjptPOjIhwL
	7BVZShlND1McG+L/M+q18Ht66LW8VXF9HGa8+ajNr6LW36q1gLQHs8dMzSGi9r7oe+UT9ivq2WztW
	+XEKAjc7yIU3QezWLjOEbhecyT4T+gMfcK1gPzBEQ0hthAWfLhK6uk6updfKvThAkL95kivu7ubDu
	B/lyWyBeCiJRKWFQHVkAekSDrePC2sMUHrlb+R2S4A/IXnV7zFgHNShuF7hrb5dVp1kZ9BYQqNrd+
	QizJhaLaCPI0snl+7UeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5FAY-00000002byR-2GXT;
	Wed, 25 Mar 2026 03:44:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5FAX-00000002by5-3Vq2
	for linux-rockchip@bombadil.infradead.org;
	Wed, 25 Mar 2026 03:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=IhuRCOI2Huaf5BeKcgnhFE71gyol/CkXPtMzZK978Y0=; b=kpAxpYy64OkD8kCkhOTVrr9eLn
	GqaQHEFSauYxCvUdO2E+M4KmRgPTq1GYEme8gWqaM3KbS9D9wcl6hJRvsTZQsH3/1n4CqUXEosUYx
	48mx+Jp1FnIK6TG/fkLR1ZcIGSbJa7bz5XePpRtYPVsSZA4mxaxHNVgbBbyRkkHOCLGZIA+DoO6iV
	O3P/4qBlnIMx9UkYCh+FctKWOqZvj1bhERsnQpkuS3jkfS+MAjxrpGdGiT9PELYQY6PXWld5xsgeF
	cN0KROh81zr6RWGVrWS65a3AUy9QkJdGrYuY8w7/+Gg9Qf2VjyEu7N+yU9qDzURGxF8+8fg/i9DF6
	vkW5xWuQ==;
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5FAU-00000005Lz9-0Qi9
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 03:44:32 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-2bdcf5970cdso445727eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Mar 2026 20:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774410268; x=1775015068; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IhuRCOI2Huaf5BeKcgnhFE71gyol/CkXPtMzZK978Y0=;
        b=q+cF7kRdWdlLuqz5GkX7rDHIzN9N5XxEdhawGeFGr72G6LQvOxZzKzvh1+cmzlTAXu
         NTGmawrsI8/Gafb9k8RLtMzUlFA3FImiIqbWu73j0IWP5Rw5zdpWANnYgN3h5a+lhOGV
         1J8Dl0BRX0tckdu2G1sVT3l6NiS4ZKY1ilrmwj42wiAsblKLOUft+BUgE+EtxGcDevbk
         fmtN2GQQ8Xax31w1Nf5VbiI6TTG23pfwQKIp6PSPexvkx0M3zVOvQs474UJdG7oqJg/Z
         JgfDCXj355aVR9OEbQoczkCeXJgo3GozL2/nrQUc11DclGXe7P2/JBvalw6TNpfDBohf
         z65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774410268; x=1775015068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IhuRCOI2Huaf5BeKcgnhFE71gyol/CkXPtMzZK978Y0=;
        b=KPoaRx++c3bQ9q63Ed22jBAQMQ61mh0hY8+E1pVKYyGQACcIO+rT5R8SkVUbtyCJ3q
         as3Bhm7SRG/4UtRtqBYc+U6l/on0MorNtos18yOtz/rieQHxY88yFX5d6wGzQZgAWUXY
         v2in1VKuEopF3vtmBDQQOfm688CifOSQkek1iMuWqOVE9sx1/07PZK2nZZtIBoJy+sex
         oL+lCzRrXbUTSiRUxUC04mp7CUNtSvooSR/tgvN55q/imcHDxsfS+atQSXRVgvJp07HW
         fZK1Op36B/ndnntVUoBZsaxpTR9Se4Vd2dJ/DpPLpE+rMnPi0xbkO+QIxGAoy3O05vJe
         Acig==
X-Forwarded-Encrypted: i=1; AJvYcCVLRiuuR91DFqcA5jhZCjdPSYC304UxT8DAGewAoCNe1gISsf/6W9UAmY5Vsd6pwGzHQy/1G8AVBwSRkJY+bA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZ2o79WOXsexqYaP/jyC5H/iGMwKZBSGlyQ5MKWjBgLr0aXzK0
	f74xNN6ekMWWsaPQQ9//lnZz+T2fLQcpXU+DJJcfZ1XoDK7R+RcasUM7
X-Gm-Gg: ATEYQzx13Pwv/naF2DjahicJFQcqwA/82ATw0gHFcFFok0DydPsCdH2w6U+fvujtXNi
	lCysI1K9ASuSyfKrnUFEuMzsCjxgfjPUTIQkCc36eyDon4Q0gdlnqA3xTx3RyRngslJPaPew0Rj
	80l+9XKz+bcEGhj0njZbT6lUUpmWaA5wwg9lcXpyakPJBVAVI7KDz9cneAR+6zh2GVOwIvjEofL
	nV9PTtnwqZfhvEeWB/VOjV9ycloL6XXvLBZJwPnUQruYXbjMUlHkh+bCvPWh+abp1qOsGgXxH52
	cHxpvG9CgbvKbuPmcvE9OxG0ZYjo6t0qr2G/PY6twr3DeNB5eFt29q1TT+dJjkrOyf5FoSEJzlv
	JJqF0PCNBPiBwSrdBHF6bi6rKRj+cbUnPUD0C3XribRi49/JWuel+59Bp8TUJ6x/uGezw16cHGZ
	C68axRLJaESDOSnegWH7JJ0tMoyd+F0g3KWQm1aIBhys2uATncgt5xQ/PNLd6W8G+T
X-Received: by 2002:a05:7301:2b06:b0:2be:6693:9b4d with SMTP id 5a478bee46e88-2c14b4f708amr2708211eec.9.1774410267461;
        Tue, 24 Mar 2026 20:44:27 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a686:fd7f:70d3:9156])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cde3bsm16989603eec.20.2026.03.24.20.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 20:44:25 -0700 (PDT)
Date: Tue, 24 Mar 2026 20:44:22 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <acNYJ2dyPaEzabYL@google.com>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <DGZJBMG2Y738.2MU5LXVGEDD47@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DGZJBMG2Y738.2MU5LXVGEDD47@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_034430_306368_5C6E047B 
X-CRM114-Status: GOOD (  34.13  )
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

On Wed, Mar 11, 2026 at 01:43:15AM +0100, Danilo Krummrich wrote:
> (Cc: Dmitry)
> 
> On Tue Mar 10, 2026 at 10:03 PM CET, Robin Murphy wrote:
> > [ +driver-core maintainers - async probe question below ]
> 
> <snip>
> 
> > I'm guessing it maybe wasn't anticipated to have bus drivers calling
> > device_initial_probe() from within async in the first place?
> 
> I think this is not limited to device_initial_probe(), device_attach() or even
> device_add() would have the same problem. I.e. the driver core simply does not
> consider whether it is already running in an async handler when it is requested
> to run probe() synchronously.
> 
> A simple workaround to this would be to check whether current_is_async() and in
> case it returns true just defer probing in an PROBE_FORCE_SYNCHRONOUS case. This
> would at least be compatible with the guarantees given by
> PROBE_FORCE_SYNCHRONOUS, but it doesn't sound quite right to me -- guess I have
> to think about it a bit more.
> 
> In any case, given that this is not a supported case, this commit seems to be
> wrong and should probably be reverted.
> 
> I think a quick workaround in the driver core as mentioned above is not a good
> idea, instead this should be properly thought through.

I think the bigger question is why PCI does something different from
every other bus? Why doesn't it rely on driver core to bind devices to
driver?

> 
> > It may not strictly be the fault of this patch - clearly 91703041697c 
> > ("PCI: Allow built-in drivers to use async initial probing") is 
> > implicated in this too - but the fact is that it *has* exposed a bug 
> > that needs fixing one way or another, it can't just be left hanging and 
> > impacting end users.
> 
> At a side note, I think device_initial_probe() was not meant to be exposed
> outside of the driver core in the first place. As the name suggests it is only
> meant to be called on the initial probe() path (i.e. the initial probe() path of
> the driver core). It seems to me that it ended up in include/linux/device.h
> instead of drivers/base/base.h by accident.

Yes, at the time when async probing was introduced driver core was the
sole caller of device_initial_probe(). 

> 
> The original commit - commit 765230b5f084 ("driver-core: add asynchronous
> probing support for drivers") - introducing the feature even mentions "manual
> binding is still synchronous" in its commit message and I think this has never
> been changed.

Yes, when users "echo" into bind/unbind sysfs attributes they expect
error codes to indicate whether operation has succeeded or not. That is
why even if driver is marked as "prefer asynchronous" in this particular
case the kernel still binds driver synchronously.

> 
> So, it seems commit 91703041697c ("PCI: Allow built-in drivers to use async
> initial probing") relies on something that might work by accident. :)
> 
> So, I wouldn't rule out any unexpected side effects entirely.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
