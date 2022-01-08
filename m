Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41EBC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jan 2022 23:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cUdlaTUfRzFO+ChnQS6mfoSAqm2rPYDikq1H5LNOMc=; b=SxRqZd0QXHS6zf
	DZth22deGz9pyx1p7VSeK9WojSkaBMx7y800uTTgz6Bj8dTxL6pO2xnMy07igt+3pKZxGol77X6jn
	K2zL/BSF1I0szdUnmeY4/eA5Kz9sUZnQrGKnFVd9HtO+su/YckHBmGZs5V2pMDZu+kYT9vzATcAOB
	JnqOrZHN62rlsckpOTDvYZO+v5VJ6iauoY/U7Fa9NAfpax7NYbWFZyjOdPYASVEvGNV67MZpqdYu/
	bKQO+0uaqWMXCRAQ9phL9NA4Chd9xxvBLIWNTmDaZff+iJyqzDYMTL2Tk+W5Snrt6v7M3KHHmCZAQ
	Orqf/AbTg8gJq/sU0Hng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6La9-0078eS-6A; Sat, 08 Jan 2022 23:57:09 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6LZv-0078ba-S1; Sat, 08 Jan 2022 23:56:57 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 4JWcSj2Nmgz9c;
 Sun,  9 Jan 2022 00:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1641686214; bh=Z2n6Y6Sf4Y6Bf2Ppe85jypN2n8Y8lV1D9040Mx5hpos=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ni4KnjOtn+hCc9wZqB4O1lyd/SQvYGeDveDJiVEyqIzfK9xa+8kQssISAVkp10OOS
 QJG+E4XBi/DI9IrVihm8pNKRfTZCFWiUpeYSaANqHiLQuq0Ni5+Hq9janns3FG36Kf
 HRKczCvbqcseuavdP2cQwxe7fy71FhFJj6Gm6Y4uGMMVMQSeRiX37DK+TgkZiuj3fa
 u28xFMriqr/zJvK9WXZtbO48c35IRJ1q6hNu/DUpyyFQUSD8XVJ//1ciCunkK6TGIC
 W3OZnrCmSV3xtiEnJdTHJ2fKvOUk+pZzPnn8646Ku8Z1lL9KH0tHYrreIjGwZuj/iD
 1zclsDw8lR1IQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.103.4 at mail
Date: Sun, 9 Jan 2022 00:56:51 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 3/5] drm/dp: Move DisplayPort helpers into separate
 helper module
Message-ID: <Ydokw2y6w9JlCsgR@qmqm.qmqm.pl>
References: <20211215104318.18866-1-tzimmermann@suse.de>
 <20211215104318.18866-4-tzimmermann@suse.de>
 <87pmpy3za7.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pmpy3za7.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_155656_127236_5D94CDD1 
X-CRM114-Status: GOOD (  11.37  )
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 15, 2021 at 01:04:00PM +0200, Jani Nikula wrote:
> On Wed, 15 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > 	* move DP helper code into dp/ (Jani)
> =

> I suggested adding the subdirectory, but I'm going to bikeshed the name,
> which I didn't suggest.
> =

> $ find drivers/gpu/drm -mindepth 1 -maxdepth 1 -type d | wc -l
> 68

Maybe the hardware-specific drivers could be moved up to drivers/gpu/
instead? That would make it obvious what code is generic and what is not.

Best Regards
Micha=B3 Miros=B3aw

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
