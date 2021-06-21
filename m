Return-Path: <SRS0=N5vj=LP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29C62C48BDF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 02:57:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E107F6117A
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 02:57:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E107F6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPDO7OjBWDbMi6QZdKgHUzXBy99DekYon4Kf9klMa5w=; b=CQwKjlVOuEc0IR
	Vw5HCeBsgwhIMUjfCUbPSxF9eaTkcuStOrn+zyH0vb8dKWF6uPRlFs9UuywdxiIjaRT8OsRvjnDEd
	PG0+EPuPD8SkqdB6SRfcQY9Dg+JLR1g9MTvw/U8wU8aVkjBzTJgCJI1+X9woFhrbscaH5cVFkt7PW
	l5dagQU4jDyqKQsg/UTWuosr/WRm+0QE6D49PoIgk5es+U/oNGpPHV9dmb9glOlPGP4DM418ijMaR
	PfHIm//e8X4jfi/RQvzaUzcLmzuZyHHn4cTqS9ej85Ljo8KBXsKV2ojM1K3FxlAf/cXQ4CQD4NDh1
	aHpi/7pJ4IzaLKIlfYLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvA8B-001uyp-Av; Mon, 21 Jun 2021 02:57:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvA7y-001uwt-5r; Mon, 21 Jun 2021 02:57:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 496B21F40112
Message-ID: <62c3e6bccfb3d8c0ef6190861a8608abff34e885.camel@collabora.com>
Subject: Re: [PATCH 0/5] Rockchip PX30 RGA and VPU support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>,  Alex Bee <knaerzche@gmail.com>, Chris
 Healy <cphealy@gmail.com>
Date: Sun, 20 Jun 2021 23:57:14 -0300
In-Reply-To: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_195734_374883_72AAD06A 
X-CRM114-Status: GOOD (  10.19  )
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

Hi Paul,

On Thu, 2021-01-07 at 14:40 +0100, Paul Kocialkowski wrote:
> This series adds the required bits for RGA and VPU support on the
> Rockchip PX30 SoC.
> 

Do you plan to resend this series?

Alex recently renamed [1] things so some tweaking will be needed,
but it shouldn't be complicated.

[1] https://lore.kernel.org/linux-media/20210614213215.99389-1-knaerzche@gmail.com/

It would be great to have support RK3326 and PX30 :)

Kindly,
Ezequiel




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
