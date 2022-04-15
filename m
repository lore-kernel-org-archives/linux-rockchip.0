Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7EBBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 11:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vnWvn6H0dUaslkjY9jcQEeWhl16bpuq4JV2IeAfsT8=; b=q0UMBT8KIWkXEZ
	unl+7xLBHLiPWKCa3hk+eCrZBLVg/RsbEnC2OBkyGwYE1/p7ubqp+6y+CLp2Az67eNJ1yxjP9VV5w
	/MGUE28z8eNEYdl2jwcIGTmHxhAsTJ+Y6fx38YfwoGzY6piCy6HCmrTIKPIXXumFS/6ULv+mQJqJq
	Hujh55prWWJAjnsprUPSbFBzsURH7fTqpAOP2Xaatss2WLKkyz2WH/28xKjwi6PUZe267PnI2F+2c
	EoMowcnayJAJ0UNdEWZY02OOiBy/QCqlM98Ay/01ve+94p9F8vbg8hdNQUDGqK4iSw8WAKlrzBvUR
	KcK31wQkfRcWhw15Fwsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfKPI-009s9D-Mz; Fri, 15 Apr 2022 11:46:32 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfKPF-009s8Y-DZ; Fri, 15 Apr 2022 11:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kxc9T+YmUkntjESaace9DUZMT9xh/VGpJbsX4b1xNhA=; b=QpNZanhdbt2h22Yyn3PDrPmN/W
 c7i9nWyKnjhldyXFgjcMUAVkRyHBxFUa5+6XhPO75fQ44w7VdNPw6uSGv6c8nUyv8Z/BJBctencM2
 8b6mut/J7qmugrxIq1QbP8JyRy6i63GBLs+B6HPm3cT70PW3HjQNERTcjSZPQBMfmwlk=;
Received: from p200300ccff0ff7001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0f:f700:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1nfKOf-0001qL-Om; Fri, 15 Apr 2022 13:45:54 +0200
Date: Fri, 15 Apr 2022 13:45:52 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, Sandy Huang
 <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Alistair Francis
 <alistair@alistair23.me>, =?UTF-8?B?T25kxZllag==?= Jirman <x@xff.cz>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Peter Geis <pgwipeout@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, Thierry
 Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 02/16] dt-bindings: display: rockchip: Add EBC binding
Message-ID: <20220415134552.182b49a9@aktux>
In-Reply-To: <d5bb060e-5964-db0d-ca93-5f73ee9277a3@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
 <20220413221916.50995-3-samuel@sholland.org>
 <20220414101548.2b9c3dad@aktux>
 <d5bb060e-5964-db0d-ca93-5f73ee9277a3@sholland.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_044629_640308_9ADE717C 
X-CRM114-Status: GOOD (  19.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 14 Apr 2022 22:00:09 -0500
Samuel Holland <samuel@sholland.org> wrote:

> Hi Andreas,
> 
> Thanks for the comments.
> 
> On 4/14/22 3:15 AM, Andreas Kemnade wrote:
> > Hi Samuel,
> > 
> > for comparison, here is my submission for the IMX EPDC bindings:
> > 
> > https://lore.kernel.org/linux-devicetree/20220206080016.796556-2-andreas@kemnade.info/
> > 
> > On Wed, 13 Apr 2022 17:19:02 -0500
> > Samuel Holland <samuel@sholland.org> wrote:
> > 
> > [...]
> > we have sy7636a driver in kernel which should be suitable for powering a EPD
> > and temperature measurement. So I would expect that to be   
> >> +  io-channels:
> >> +    maxItems: 1
> >> +    description: I/O channel for panel temperature measurement
> >> +  
> > so how would I reference the hwmon/thermal(-zone) of the sy7636a here?  
> 
> It seems the consensus is to use a thermal zone for panel temperature, so I will
> need to change this.
> 
I am open to anything here as long as it fits together.

> I think it's best to reference the thermal zone by phandle, not by name, even if
> it requires extending the thermal zone API to support this.
> 
maybe referencing the hwmon might be interesting, or we add a hwmon_iio
adaptor. The other way round it is there. The thermal zone stuff is
only needed because hwmon cannot referenced directly.

Regards,
Andreas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
