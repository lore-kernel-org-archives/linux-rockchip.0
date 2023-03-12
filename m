Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC2D9C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 20:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2ygH9OBhcXFt8eSBoDRaB+FEQSd4styx50lhBGpQpI=; b=KDj5KvbolbjkO7
	iH11COViYhFCTCaDJ9awrQHHE9Da17kkx5f3IxtRSBwYIJu3V5uQMHg4KJ3563BFMYQyiz5QuMu9s
	raeKrQGGOjudpwslQ9SEpar2gnYwGu3snlNqX5+hEec+MOQlTgr5e2+dmKjUQOi5+mSPZ4hvFepn7
	0+FHOVbcfdsECmp5p9Gv6bjrux7cY1vwz9qyuNlrDM1zSUl5OqYjA3/HGZt35ZTtT9di0H3H2RbmI
	1TiOm1LFArs7PznTQQBJtz21g+cXK1uMsG5KXtBXlM03qYwDoPFpWn3lFDCR9t40At0oGY3WbOHmD
	87isat3YN47BbaW2FwmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbSbE-003XLX-Mr; Sun, 12 Mar 2023 20:47:24 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbSb2-003XJ2-Hd; Sun, 12 Mar 2023 20:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1678654018; bh=4pAmK4fjzhlvGfLZZeoG0S8kt9yvbPZjFMDbTBvuG5c=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=hz7WEffQeoM0FZrUA3yvItW06R8I5igc8EssiUE1F6jhHOu60ao66v/+fzWBsbrWa
	 17ty6RaNGsyeTedg4Pekjj9NLeZpwrOWNLfgRuCuKw1SYH5YuFI/bPpRZ3d9ISs8od
	 ws8cP160dVEJR3rfp+g8A+wlHA+i0OM1darR1GYI=
Date: Sun, 12 Mar 2023 21:46:58 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Mark Kettenis <mark.kettenis@xs4all.nl>
Cc: Robin Murphy <robin.murphy@arm.com>, pgwipeout@gmail.com,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
	s.hauer@pengutronix.de, frank-w@public-files.de,
	ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
Message-ID: <20230312204658.qibiabohxwv2mn5i@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Mark Kettenis <mark.kettenis@xs4all.nl>,
	Robin Murphy <robin.murphy@arm.com>, pgwipeout@gmail.com,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
	s.hauer@pengutronix.de, frank-w@public-files.de,
	ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221021153913.l5ry6v4mcnzcmj2v@core>
 <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
 <20221021193248.2he6amnj7knk4biu@core>
 <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
 <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
 <875ygbsrf3.fsf@bloch.sibelius.xs4all.nl>
 <5a8f9934-1959-7962-d575-e3c2f5bc6ade@arm.com>
 <CAMdYzYrXp1kgdRpBmnfiFrXcdkk6_oWozpywgCYbNo_MU+8+=A@mail.gmail.com>
 <34c3daf3-88f8-0dc2-026b-95ca075195b4@arm.com>
 <87y1o1buef.fsf@bloch.sibelius.xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y1o1buef.fsf@bloch.sibelius.xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_134713_089271_55744E61 
X-CRM114-Status: GOOD (  34.65  )
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

Hi,

On Sun, Mar 12, 2023 at 09:13:12PM +0100, Mark Kettenis wrote:
> [...]
>
> It seems translation isn't actually broken.  At least I got it to work
> with a slight twist.  What seems to be happening is that reads (and
> writes?) to the first 64 MB of the PCIe memory address space
> (0x00000000-0x03ffffff) don't make it out to the PCIe device.  I
> suspect they are somehow claimed by the RC, maybe because the BAR for
> the root complex isn't properly disabled.
> 
> If I change the PCIe bus addess of the mmio window from 0x00000000 to
> 0x40000000 like so:
> 
>     ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
>               0x02000000 0x0 0x40000000 0x3 0x00000000 0x0 0x3ef00000>;
> 
> my NVMe drive seems to work just fine.  I picked 0x40000000 here
> because it is nicely aligned on a 1GB boundary, which matches the size
> of the region.  Diff against a recent linux-next at the end of this
> mail.
> 
> So what I think is happening is that Linux is allocating resources
> from the top of the region.  So only if you have a more complicated
> PCIe hierarchy it ends up allocating from the low 64 MB and runs into
> the issue.  OpenBSD on the other hand allocates from the bottom, which
> pretty much guarantees that I hit the issue.
> 
> Now this could be a driver bug.  As far as I can tell BAR0/1 is
> properly disabled, but maybe there is some additional bit that we need
> to set.  But I don't think there are any downsides of my workaround.
> We can still provide a ~1GB mmio range; it just starts at 0x40000000
> instead of 0x00000000.
> 
> Maybe somebody can test this on Linux?

There were other discussions and patches posted, and further testing happened
since this discussion (just by looking at the dates...).

The result was: 
https://lore.kernel.org/lkml/20221112114125.1637543-1-aholmes@omnom.net/
https://lore.kernel.org/lkml/20221112114125.1637543-2-aholmes@omnom.net/

The changes for pcie2x1 in that patch make PCIe work on Linux under many
different device combinations, incl. with various combinations of devices
behind PCIe switch, etc.

That patch includes your change, too.

(The patch is not correct for pcie3, see discussion.)

kind regards,
	o.

> > > b. We do in fact require IO and Config to be 32 bit addressable to be
> > > fully compatible.
> > > 
> > > These issues are compounded in rk3588 where we have much smaller
> > > regions in the 32bit space for PCIe, so a definite answer on the true
> > > requirements and limitations would be quite helpful.
> > > 
> > > As always, thank you for your time,
> > > Peter
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index eed0059a68b8..218e51f41852 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -983,7 +983,7 @@ pcie2x1: pcie@fe260000 {
>  		phy-names = "pcie-phy";
>  		power-domains = <&power RK3568_PD_PIPE>;
>  		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
> -			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
> +			  0x02000000 0x0 0x40000000 0x3 0x00000000 0x0 0x3ef00000>;
>  		resets = <&cru SRST_PCIE20_POWERUP>;
>  		reset-names = "pipe";
>  		#address-cells = <3>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
