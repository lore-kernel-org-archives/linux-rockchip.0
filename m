Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50458C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 08:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ/UyziLZiTjhq7N69Kuq1mBqiJSIFqBzumhis36CEw=; b=EXr+e5hotLninf
	BI5csdZoI5TOswjjsJhgy6//jmJEAQ7B8HFAAljdCGNqIVdbWnve9BI/eTKmmb9qQQa5z8Ei/rYkS
	R0zsBOyEw98uGIIjw1Fk1wg2KknQ31ltZWaFA2KbgzV4TiEiMulTgYtl9uQ0O/LhcCTzZtzfb/+Do
	i4OCwFhgFMifzsRRB9dw1poAXL6Qftr0+2qWJQAXuzwDM6GWXkmYmcvKFSbiu8+0FruHtEOUZcor/
	ARPKdJAjY6SvEovy5akwKrrVTs2vH/R7ww+0YrK26pmKv3bL4p8pXA1nIuxMRXKKt4WFcEGjYDAI6
	LlmduMjeHdmHmkpRUnyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnZXc-00000006l5S-3vMv;
	Thu, 27 Feb 2025 08:46:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnZVf-00000006kOa-30rA;
	Thu, 27 Feb 2025 08:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5MZDY9LEAwQLaGy/5t3sedQ+InC4HHqCTBWMRr1Rdmk=; b=RVbL21y6Trpv8FYuCJuwa0q4YZ
	j6HQ7xFe55AuYT7lmC4Gf/GF3zjg+r5aQKTMTGLeNnFQJYre3w3w3Ux794RbN9DfuaX2UQtpDjiuM
	rHTvDuY/Qq6BX0S7zNx68eBQWt7IotR24gJ1OQHNawYd4PeQW5OLCJG9NLdLVJJDiH0GmZo9o4o06
	FTod+l+W0JiOW5Zn1u2MuNumi6eGa79l86OqXBZwChbF0luXJm49t/JSp6qRU3KPwnO7lOs9CsLcP
	/+7xIDnXjuSkMJ2F+BcUF/uD1LZLOIpV9Of5VOF/lAAE4kPUiKQBkWh9BVCgUAK5ccCiLTZgte0Sc
	d/zLl4nA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnZVI-0007pV-G7; Thu, 27 Feb 2025 09:44:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: rafael@kernel.org, dakr@kernel.org, hjc@rock-chips.com,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de
Subject: Re: [PATCH 1/2] drivers: base: component: add function to query the bound
 status
Date: Thu, 27 Feb 2025 09:44:23 +0100
Message-ID: <12995210.iMDcRRXYNz@diego>
In-Reply-To: <2025022153-outdoors-snugly-3967@gregkh>
References: <20250220234141.2788785-1-heiko@sntech.de>
 <20250220234141.2788785-2-heiko@sntech.de>
 <2025022153-outdoors-snugly-3967@gregkh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_004447_748879_9C0165BA 
X-CRM114-Status: GOOD (  21.68  )
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

Hi Greg,

Am Freitag, 21. Februar 2025, 07:14:07 MEZ schrieb Greg KH:
> On Fri, Feb 21, 2025 at 12:41:40AM +0100, Heiko Stuebner wrote:
> > The component helpers already expose the bound status in debugfs, but at
> > times it might be necessary to also check that state in the kernel and
> > act differently depending on the result.
> > 
> > For example the shutdown handler of a drm-driver might need to stop
> > a whole output pipeline if the drm device is up and running, but may
> > run into problems if that drm-device has never been set up before,
> > for example because the binding deferred.
> > 
> > So add a little helper that returns the bound status for a componet
> > device.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  drivers/base/component.c  | 14 ++++++++++++++
> >  include/linux/component.h |  4 +++-
> >  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

just for safety and not stepping on people's toes, does the Acked-by mean
that this patch can go together with its user through the drm-misc tree?


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
