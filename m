Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDA0C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 16:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jsqpr2MW/vWwy7lxA8PIH9rqyBSxzbozx5zYJINODA=; b=qaPESvGgmOSSfU
	uY6mS+azJmMa25FhnjHE9f7AKs6AGft9lXDjcnGoCpngHQ4hqjZXN1PMGHsPwpWBL+wGInq7kaQ7y
	8A42CpV7eopr9pkpgMEPQ+2Gvc88+BCYrWXiAhxP5kjADBqrkQAeMkzBPUVHJSYDU/p12CKj5UkU6
	Dkg2nsj2RjmhJ1B0Xp5GesWvM79u3zKAUXo0nvbFrQovgm/2O/EqOk73EmjuTLO0QmnZbsuDxqGcx
	ZI/PfV1ZHh5vRE0OO/SjNWhm1qn+X3GXh5193vgFbgrMsTxLE2o32JanydHQzr66Ah6e4nxWAEFct
	p0kau0V2K0MFcMH+iZQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og7DY-00F6zH-HW; Wed, 05 Oct 2022 16:25:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og6yw-00F2tT-Mf; Wed, 05 Oct 2022 16:10:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80C4A6175A;
	Wed,  5 Oct 2022 16:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69966C43144;
	Wed,  5 Oct 2022 16:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664986245;
	bh=2kAcxYh/aDNzXrxp4mtWajIo28uI6uHs4/Lk0YeAACs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=oATKaZ93ZEoYuSpBeoQ4oPNBMYIVBiss066ImimQvT2C3chmDp1w8+KMhcesaONbF
	 nsFGIxkTqHzGT3EsZTtwMg8DUnch7YUdgoOPYK/qj/+1qsj7IZg5JupsHJiXxJA5GK
	 D+gyKwwFd5qKjVYoavo4bZz/IKHyTBXBNUfTQDvY0b9Om8JwFFf25OJmERaBk1jMXF
	 gD5oacXpyogd0H8hyHKyMpbrpkA2QuQT1zSKW8jIocKLkImLkkpgedN7QwJ+yLsfOy
	 KhpIWhssaQ/NCeiuQVpolxTvuUW9p8oGpSQ3+Vo982Mxm15wboxXO6h3da+i7wc2fW
	 xmcAB1q5qDDHg==
Received: by mail-wr1-f50.google.com with SMTP id u10so26544084wrq.2;
        Wed, 05 Oct 2022 09:10:45 -0700 (PDT)
X-Gm-Message-State: ACrzQf3KlK6X40spH9CnIetr3+W9yBnVef+LrvNuK+N+IJrkFH8uF3eR
	zamd87hbmW2XIKeKBdeDmGTrmOhvyiM++8IJtJ0=
X-Google-Smtp-Source: AMsMyM7uvd/Y7yJn8mca9vBdHt6k+1Qqil9T1D/MPy/es5QUUYqMnoFlEATJ/1BSFU9T8qfAdzLVLvWKR+5I+O6j2I8=
X-Received: by 2002:a5d:59af:0:b0:22e:32be:60f1 with SMTP id
 p15-20020a5d59af000000b0022e32be60f1mr310576wrr.81.1664986243596; Wed, 05 Oct
 2022 09:10:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220902184543.1234835-1-pgwipeout@gmail.com> <YxTDBpkllQjf0nIW@matsya>
In-Reply-To: <YxTDBpkllQjf0nIW@matsya>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 6 Oct 2022 00:10:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v664UnNC_UP-yFFLD9gCLnc989VAvUw1BghrctxdmLfVDA@mail.gmail.com>
Message-ID: <CAGb2v664UnNC_UP-yFFLD9gCLnc989VAvUw1BghrctxdmLfVDA@mail.gmail.com>
Subject: Re: [PATCH v4] phy: rockchip-inno-usb2: Return zero after otg sync
To: Vinod Koul <vkoul@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Samuel Holland <samuel@sholland.org>, 
	Markus Reichl <m.reichl@fivetechno.de>, Michael Riesch <michael.riesch@wolfvision.net>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_091050_833338_78B018C9 
X-CRM114-Status: GOOD (  13.70  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Sep 4, 2022 at 11:24 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 02-09-22, 14:45, Peter Geis wrote:
> > The otg sync state patch reuses the ret variable, but fails to set it to
> > zero after use. This leads to a situation when the otg port is in
> > peripheral mode where the otg phy aborts halfway through setup.  It also
> > fails to account for a failure to register the extcon notifier. Fix this
> > by using our own variable and skipping otg sync in case of failure.
>
> Applied, thanks

This should have been applied for v6.0-rc, not -next.
We now have a v6.0 release that doesn't boot properly on RK3399.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
