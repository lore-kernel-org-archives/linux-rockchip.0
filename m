Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDA57C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 14:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3O+1RDUNWQun5aRUX/onDNnIxEy4/1U0qI72b5pPRw=; b=xlAneb2OZ6hxdd
	vbOIF11+ex9eSJTi1Wlb37V4CosKn3Uw0B5B+QUYC3BxUMEjpTEHosZuoOd8gYyRAXh3wyuulC6FH
	oABv60KvjL+JGsYA10dYJtRcJVjTzGiiaQOwOsGosmsAF0b1EsGZXq9GIK37Ow5XGQrhzQBDQ3f4d
	C7XQlgC+mfVMycSPRnsjD/E7x5sZnRwFypQ4AoDXSTHuu8MK8ndNw0Paii7yo+gHf3cunECXb9KBX
	Z/4qSjWV4VR0gOv1BGaQwk4AxgHdPdQ9vtoez4CWgRCFfG9KLF5Pk6HQoLmrUt45SO3JrGHdWNg0R
	OOgexCz4dA7oRcFzZIHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmcN2-00GM0b-G3; Thu, 05 May 2022 14:22:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmcMj-00GLpP-C4; Thu, 05 May 2022 14:22:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2AE3106F;
 Thu,  5 May 2022 07:21:56 -0700 (PDT)
Received: from e120937-lin (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 694763F85F;
 Thu,  5 May 2022 07:21:55 -0700 (PDT)
Date: Thu, 5 May 2022 15:21:53 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to
 boot due to firmware bug
Message-ID: <YnPdgUvEvitCPbfG@e120937-lin>
References: <1698297.NAKyZzlH2u@archbook>
 <20220504132130.wmmmge6qjc675jw6@bogus>
 <3764923.NsmnsBrXv5@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
 <YnOrTRZyRbmmQMVR@e120937-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YnOrTRZyRbmmQMVR@e120937-lin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_072201_551482_790B48E4 
X-CRM114-Status: GOOD (  32.40  )
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

On Thu, May 05, 2022 at 11:47:41AM +0100, Cristian Marussi wrote:
> On Thu, May 05, 2022 at 11:40:09AM +0200, Etienne Carriere wrote:
> > Hello Nicolas, Cristian,
> > 
> > On Thu, 5 May 2022 at 10:03, Cristian Marussi <cristian.marussi@arm.com> wrote:
> > >
> > > On Wed, May 04, 2022 at 07:51:45PM +0200, Nicolas Frattaroli wrote:
> > > > On Mittwoch, 4. Mai 2022 15:21:30 CEST Sudeep Holla wrote:
> > > > > + Cristian
> > >
> > > +Etieenne
> > >
> > > Hi Nicolas,
> > >
> 
> Hi Etienne,
> 
> [snip]
> 
> > > Having a quick look at TF-A SCMI code in charge of this message (at least in
> > > the upstream):
> > >
> > > https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/tree/drivers/scmi-msg/base.c#n136
> > >
> > > it seems to me that the bug lies in the fact that the BASE_DISCOVER_PROTOCOLS
> > > response message built by the function above is not properly sized: the trailing
> > > message payload carrying the list of protocols (after returned_protos field) returns
> > > always a fixed arbitrarily sized payload, possibly zeroed if fewer protocols are
> > > carried.
> > >
> > > IOW, even though the answer in this case carries 3 items/protocols, the payload
> > > is anyway 8 bytes (with the last 5 bytes zeroed), while by the spec it should have
> > > been just 4 bytes.
> > >
> > > (in fact testing the kernel fix on a JUNO with last SCP fw release did NOT expose
> > > any issue...)
> > >
> > > I think a fix FW side could be something along these lines (UNTESTED NOR
> > > BUILT ! ... I Cc'ed Etienne that seems the author of this bit)
> > >
> > > This basically mirrors the same checks introduced in kernel...if someone
> > > is fancy/able to test it....
> > 
> > Indeed the firmware implementation is wrong in TF-A.
> > And also in OP-TEE by the way:
> > https://github.com/OP-TEE/optee_os/blob/3.17.0/core/drivers/scmi-msg/base.c#L163-L166
> > 
> > @Nicoals, do you want to send a patch to TF-A, or do you want me to do it?
> > 
> > I can fix the optee_os implementation. I'll tell you when I'll have
> > created a P-R.
> > The fix is the same for TF-A and OP-TEE.
> > Proposal from Cristian looks good to me, maybe simplified:
> > 
> > ```patch
> >          memcpy(outargs, &p2a, sizeof(p2a));
> >          memcpy(outargs + sizeof(p2a), list + a2p->skip, count);
> > 
> > -        scmi_write_response(msg, outargs, sizeof(outargs));
> > +        list_sz = (1 + (count - 1) / sizeof(uint32_t)) * sizeof(uint32_t);
> > +        scmi_write_response(msg, outargs, sizeof(p2a) + list_sz);
> > ```
> > 
> 
> I don't think list_sz is properly calculated if you don't rule out the
> count = 0 case (did the same mistake in Kernel at first :D)...if count is
> zero list_sz ends up being 4 [(1 + (0 - 1)  / 4 ) * 4] while it should be
> zero. (...and 'if (count)' also avoid an unneeded memcpy of zero bytes)
> 
> Moreover reviewing my own proposal code below it's probably easier to use
> some sort of macro like ALIGN(count, 4) if there's one in TF-A/OP-TEE.
> (...checking anyway that can handle correctly the zero case..)
> 
> Thanks,
> Etienne
> 
 Sorry this was meant to be
 
 Thanks,
 Cristian

:P but I messed up the snipping

Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
