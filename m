Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426C3C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Dec 2022 08:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYknvZK+9Lmb2f4bYHMSW2jRyEPKy896VRhUFsKqViw=; b=cYERDQb17di2eO
	tWGeCc3I9flyCLPg+J9k7Gi+zj/xTawB8XxE4GHll/hEPuWKqQ0Y2kWHtSGPhdA2z9PODZL0Xu8+h
	+xXhrSzwvAp6z6QMtnXBygf+32JJzkCgWpwh/91iXsYRg1xxrK5OATvHXV+oo3HfkTU/OOxFnYsHT
	HkgrCTH8biRIxGrWo0KFwbJRXaBa7b8sGjP9Jotakoe7aa3pkGgW8quTR72m31VdQHRNLoYvclHP/
	16AnzKGCT6BarSLzxQAsmfrNE3Bhi0ZFCC4uNM9QQOcc7ljCKp8TmpOqHcVGy96Vz/ElesS8Detgh
	FuzAr1tw8J2tuNz/Oi/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBB00-007Ogw-3R; Fri, 30 Dec 2022 08:44:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBAza-007OUW-1U; Fri, 30 Dec 2022 08:43:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7FF72B81A96;
	Fri, 30 Dec 2022 08:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D86AC433D2;
	Fri, 30 Dec 2022 08:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672389830;
	bh=oxPX55GSzrEg4Xut6zu5HPxj2Ni8vtV2mF93cd30lns=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=roDK69SfgitggRUmVYhS1zUe2p+s9s47eId7r7uDqmn66uyeyQS7KtAAgRa1c8/OO
	 Wl26PgoSJLBGjFFLhssXINx0Wz7ZM5ueJIvqltcGObsUGXUCLeDATQZn7lxDWsOdhu
	 qhtYL+x7ynbWQj5eCAE63YIAXkN7PQWC13jfG0fTgWagj0LhwbtzLAL/cBDw1YnLtg
	 Y+6jYrOa7UTTB3JkKQIpoV76+3fBhJc/JEa0BO/xvlpmBq+T4Z/54tou5W/e1VO/f8
	 qN+nan6MDluay6Hl3ME4LQmmYow8WdR5YalsUzIl8eCJe/e9PQ2fMenyJqIwmJe4ro
	 guFTz/dtfpyeQ==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Johan Jonker <jbx6244@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
In-Reply-To: <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
References: <20221219191038.1973807-1-robh@kernel.org>
 <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
Date: Fri, 30 Dec 2022 10:43:44 +0200
Message-ID: <87o7rlffi7.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_004355_631336_16DC1A1D 
X-CRM114-Status: GOOD (  22.93  )
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

Rob Herring <robh@kernel.org> writes:
> On Fri, Dec 23, 2022 at 5:57 PM Thinh Nguyen <Thinh.Nguyen@synopsys.com> wrote:
>> > Rob Herring <robh@kernel.org> writes:
>> > >> > The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
>> > >> > allowed by the schema:
>> > >> >
>> > >> > usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>> > >> >
>> > >> > Allow DWC3 nodes to have a single power-domains entry. We could instead
>> > >> > move the power-domains property to the parent wrapper node, but the
>> > >> > could be an ABI break (Linux shouldn't care). Also, we don't want to
>> > >> > encourage the pattern of wrapper nodes just to define resources such as
>> > >> > clocks, resets, power-domains, etc. when not necessary.
>> > >> >
>> > >> > Signed-off-by: Rob Herring <robh@kernel.org>
>> > >> > ---
>> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
>> > >> >  1 file changed, 3 insertions(+)
>> > >> >
>> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > >> > index 6d78048c4613..bcefd1c2410a 100644
>> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > >> > @@ -91,6 +91,9 @@ properties:
>> > >> >          - usb2-phy
>> > >> >          - usb3-phy
>> > >> >
>> > >> > +  power-domains:
>> > >> > +    maxItems: 1
>> > >>
>> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
>> > >> maintainer to get comments.
>>
>> Felipe is correct. We have 2 power-domains: Core domain and PMU.
>
> Power management unit? Performance management unit?
>
> That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> can say 1 or 2 domains, or we add the 2nd domain when someone needs
> it.

Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
the world? In that case, dwc3 expects 2 power domains. It just so
happens that in rk3399 they are fed from the same power supply, but
dwc3' still thinks there are two of them. No?

It's a similar situation when you have multiple clock domains with the
same parent clock.

-- 
balbi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
