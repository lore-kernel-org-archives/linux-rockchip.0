Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A48C433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 07:36:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 941762076E
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 07:36:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mZN6EOyT";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzu34fbs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 941762076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mMkbPNOP/edpTvTD9/4/CfklOTM/eB6PiapbzMH3mrQ=; b=mZN6EOyTjmmnQDj08VlCTzBeL
	OofnY3jlB6D5eYG6oPwioewWnl7z+0p2fP7DH6GmhAoEYwk3ZZs2dScb7Sy00WyJKR42C3T9Bi1pE
	5aX+f46+rZVyqM1+lOq/G2kCvzUxj6RGm1qHTJUwVIXHI9dzk7G9fRv/KwtgRs0O3L25SgXT9nY3t
	1JD0GNbEfncChpbqEOh0siuNvXpjG9itx352UavG34PJVmMoLcyhRrVPovqO3sPumUMcdK1E9Ngbb
	hBKgncWVlVLjQg7RwegN5TWUAJTn4sYqcDqC6C+CcNuYlsffF61XXx1gHqpMgemzFW+X1S5jNxZhp
	7QEs/hvJQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7wA7-0006Ev-5t; Tue, 18 Aug 2020 07:36:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7wA2-0006E3-HG; Tue, 18 Aug 2020 07:35:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 012B72075E;
 Tue, 18 Aug 2020 07:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597736157;
 bh=FSflGG563MojbZsMsPV+BFtE2GMuiClJfxAeRJzUuWk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Rzu34fbstVr+KAaOvT8HP8j/3BLkFv/Vcs1C9A+4dmJ2xFWgth4FGUk5mmHVXSYOE
 IyB2jD+s7MusjkMTmGFNXJlUWzvvDYMvKu9a6UniNFZmoBC9cUy5JJANjpChQdNS2s
 6v3G/H+ZOKigLTAyGj5YBosyb5j25OJ8syXNsmjg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1k7w9z-003pem-8P; Tue, 18 Aug 2020 08:35:55 +0100
MIME-Version: 1.0
Date: Tue, 18 Aug 2020 08:35:55 +0100
From: Marc Zyngier <maz@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] PCI: rockchip: Work around missing device_type
 property in DT
In-Reply-To: <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
References: <20200815125112.462652-2-maz@kernel.org>
 <20200815232228.GA1325245@bjorn-Precision-5520>
 <87pn7qnabq.wl-maz@kernel.org>
 <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.7
Message-ID: <e2cde177e82fbdf158732ad73ccdc6c5@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: robh@kernel.org, helgaas@kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 lorenzo.pieralisi@arm.com, heiko@sntech.de, shawn.lin@rock-chips.com,
 bhelgaas@google.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_033558_723950_94CA5E37 
X-CRM114-Status: GOOD (  36.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-08-17 17:12, Rob Herring wrote:
> On Sun, Aug 16, 2020 at 4:40 AM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On Sun, 16 Aug 2020 00:22:28 +0100,
>> Bjorn Helgaas <helgaas@kernel.org> wrote:
>> >
>> > On Sat, Aug 15, 2020 at 01:51:11PM +0100, Marc Zyngier wrote:
>> > > Recent changes to the DT PCI bus parsing made it mandatory for
>> > > device tree nodes describing a PCI controller to have the
>> > > 'device_type = "pci"' property for the node to be matched.
>> > >
>> > > Although this follows the letter of the specification, it
>> > > breaks existing device-trees that have been working fine
>> > > for years.  Rockchip rk3399-based systems are a prime example
>> > > of such collateral damage, and have stopped discovering their
>> > > PCI bus.
>> > >
>> > > In order to paper over the blunder, let's add a workaround
>> > > to the pcie-rockchip driver, adding the missing property when
>> > > none is found at boot time. A warning will hopefully nudge the
>> > > user into updating their DT to a fixed version if they can, but
>> > > the insentive is obviously pretty small.
>> >
>> > s/insentive/incentive/ (Lorenzo or I can fix this up)
>> >
>> > > Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
>> > > Suggested-by: Roh Herring <robh+dt@kernel.org>
>> >
>> > s/Roh/Rob/ (similarly)
>> 
>> Clearly not my day when it comes to proofreading commit messages.
>> Thanks for pointing this out, and in advance for fixing it up.
>> 
>> >
>> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
>> >
>> > This looks like a candidate for v5.9, since 2f96593ecc37 was merged
>> > during the v5.9 merge window, right?
>> 
>> Absolutely.
>> 
>> > I wonder how many other DTs are similarly broken?  Maybe Rob's DT
>> > checker has already looked?
>> 
>> I've just managed to run the checker, which comes up with all kinds of
>> goodies. Apart from the above, it also spots the following:
>> 
>> - arch/arm64/boot/dts/mediatek/mt7622.dtsi: Has a device_type property
>>   in its main PCIe node, but not in the child nodes. It isn't obvious
>>   to me whether that's a violation or not (the spec doesn't say
>>   whether the property should be set on a per-port basis). Rob?
> 
> The rule is bridge nodes should have 'device_type = "pci"'. But what's
> needed to fix these cases is setting device_type where we are parsing
> ranges or dma-ranges which we're not doing on the child ndes.
> Otherwise, I don't think it matters in this case unless you have child
> (grandchild here) nodes for PCI devices. If you did have child nodes,
> the address translation was already broken before this change.

Fair enough.

>> - arch/arm64/boot/dts/qcom/msm8996.dtsi: Only one out of the three
>>   PCIe nodes has the device_type property, probably broken similarly
>>   to rk3399.
> 
> The only upstream board is DB820c, so probably not as wide an impact...
> 
> There are also 92 (lots of duplicates due to multiple boards) more
> cases in arch/arm/. A log is here[1].

Mostly Broadcom stuff, apparently. I'll see if I can have a stab
at it (although someone will have to test it).

> 
>> I could move the workaround to drivers/pci/of.c, and have it called
>> from the individual drivers. I don't have the HW to test those though.
>> 
>> Thoughts?
> 
> I think we should go with my other suggestion of looking at the node
> name. Looks like just checking 'pcie' is enough. We can skip 'pci' as
> I don't see any cases.

I really dislike it.

Once we put this node name matching in, there is no incentive for
people to write their DT correctly at all. It also sound pretty
fragile (what if the PCIe node is named something else?).

My preference goes towards having point fixes in the affected drivers,
clearly showing that this is addressing a firmware bug.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
