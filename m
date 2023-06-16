Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70815EB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeiiMznkUbW7IpDP0Fyv9Mzq1f1/5CS4dH18wIuejjQ=; b=X5rLbfQulTYIAY
	V1DSkPXLmd/XP/pf2yHs+njaTEmkEGEpIC2aN/cq71XF4Z88mKnP30iYynuOHG+IzQjTqLoIP4ar9
	Ki/aPk4a5cxjgAvR7GBIeLAInJciM9HDwb34foZxjOwrHeOottt/bCwV9DxwlgdHRj8qIngxmoiMK
	T0m5PtQngRn9TCbPMZXmb+aEMXXlk0gj1EipNSjo3Nsped2EsR09BZJFseHFeMuu+vSwFfjm8w+54
	iZuVR2igC9FSqD7vOvhy8NhRIFgydTi4bg2AFSi+vOtQT+JItgnZywPVDVCE4H6RkW/PQPTaqiuuq
	o0oZiS2hy0srmiJF5fuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2a8-00Gxr4-1n;
	Fri, 16 Jun 2023 06:05:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2a6-00Gxqj-2c
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 06:05:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 529E0618D9;
	Fri, 16 Jun 2023 06:05:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 151A1C433C0;
	Fri, 16 Jun 2023 06:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1686895509;
	bh=FzDDNPNYOwo13RD4KhYBHnL5WU5dlJvvuFXByHSyYnI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QHHXl8ijtGPhR5emf8yS4Au9GDHbhkHxznQiyGaj2L1KeQps3CWmEKxoH2qhf2ibH
	 QBHXBi7n+0MNl5MiQW8i98WyNtXr/p1cC5nqoDusWOAE6c6SYF4DsZJ3y4Werw1MEG
	 RjhSiP3gM1xIbJnqgh0Kg9Ev1Qsc4rLPQ2UsHfMM=
Date: Fri, 16 Jun 2023 08:05:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: Guenter Roeck <linux@roeck-us.net>, heikki.krogerus@linux.intel.com,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: usb: typec: tcpm: add get max power support
Message-ID: <2023061639-emerald-endorse-2f64@gregkh>
References: <20230616022157.25877-1-frank.wang@rock-chips.com>
 <f6c9fc11-df51-5ff8-c744-3325c20643b0@roeck-us.net>
 <45886fef-b84a-5704-0a08-100a20296323@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45886fef-b84a-5704-0a08-100a20296323@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_230510_912560_B4D537AF 
X-CRM114-Status: GOOD (  15.02  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 16, 2023 at 11:13:08AM +0800, Frank Wang wrote:
> Hi Guenter,
> =

> On 2023/6/16 10:26, Guenter Roeck wrote:
> > On 6/15/23 19:21, Frank Wang wrote:
> > > Traverse fixed pdos to calculate the maximum power that the charger
> > > can provide, and it can be got by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
> > > property.
> > > =

> > =

> > Wasn't this already v3 before ? What happened to the version, and the
> > change log ?
> > Or is this a completely different/new patch ?
> > =

> =

> Yes, it is the v3 patch before which has been hold for a long time, Gregkh
> asked me to rebase it=A0 and resubmit, so should I also add an "RESEND" t=
ag in
> subject?

Yes, please do, otherwise we have no idea what is going on here.

Please resend v4 with all of the change information.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
