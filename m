Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62913C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZLGhtrMbXEpb/RztRhWqbYYDtH4ZXKiFAHJpr6FcRM=; b=XEq9WUdwSk8Bhk
	OQ5RnyZrKz47wmyrqyj5tYh466yqXB+8XOXKK8m3Out0GTFRT8TOoinqXBBA7gKhueOOvajCiFjQY
	zC2nYcITSJhSicP/FcDQ7jXNT6SJCuyCnsHCzqfJ5Ju2Ux+2d+ZFV1iIFRWMbh+RpSOf4vtnexVmU
	uwTIdcO/KHNQ/mqWNLWRU79USayGiRn4j9b7L2QeT7M1fbSPeK6YCEX63t0CnsdwkcUAJ1SlauH/c
	InzI76fRDDLQGbaC7XUmnXkboNLII8ULsiqBlhcxXP+e0ichmgBn8fhDWInzgQXTdZ1Fz5MycE9lA
	tLDaHta5kVYtOLcwsQ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyVv-0000000ATrd-1DZ6;
	Tue, 13 Feb 2024 19:32:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyVs-0000000ATr0-07F8;
	Tue, 13 Feb 2024 19:32:17 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyVc-0008Or-10; Tue, 13 Feb 2024 20:32:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Tim Lunn <tim@feathertop.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board bindings
Date: Tue, 13 Feb 2024 20:31:58 +0100
Message-ID: <2185016.Icojqenx9y@phil>
In-Reply-To: <194a0894-a9f9-4c5e-b304-e7278104d8e7@feathertop.org>
References: <20240115145142.6292-1-lee@kyuhyuk.kr> <47795047.XUcTiDjVJD@diego>
 <194a0894-a9f9-4c5e-b304-e7278104d8e7@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_113216_088990_12DD2C77 
X-CRM114-Status: GOOD (  26.93  )
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

Hi Tim,

Am Mittwoch, 17. Januar 2024, 11:03:26 CET schrieb Tim Lunn:
> On 1/17/24 06:55, Heiko St=FCbner wrote:
> > Am Dienstag, 16. Januar 2024, 20:26:05 CET schrieb Rob Herring:
> >> On Tue, Jan 16, 2024 at 09:31:35AM +0100, Heiko St=FCbner wrote:
> >>> Am Dienstag, 16. Januar 2024, 08:24:44 CET schrieb Krzysztof Kozlowsk=
i:
> >>>> On 16/01/2024 03:00, Tim Lunn wrote:
> >>>>> On 1/16/24 01:58, Krzysztof Kozlowski wrote:
> >>>>>> On 15/01/2024 15:51, KyuHyuk Lee wrote:
> >>>>>>> The vendor in ODROID-M1 is hardkernel, but it was incorrectly wri=
tten
> >>>>>>> as rockchip. Fixed the vendor prefix correctly.
> >>>>>>>
> >>>>>>> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> >>>>>>> ---
> >>>>>>>    Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
> >>>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>> You need to start testing your patches. Your last M1 fails as well=
 in
> >>>>>> multiple places.
> >>>>>>
> >>>>>> It does not look like you tested the DTS against bindings. Please =
run
> >>>>>> `make dtbs_check W=3D1` (see
> >>>>>> Documentation/devicetree/bindings/writing-schema.rst or
> >>>>>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicet=
ree-sources-with-the-devicetree-schema/
> >>>>>> for instructions).
> >>>>>>
> >>>>>> The DTS change will break the users, so would be nice to mention t=
his in
> >>>>>> its commit msg.
> >>>>> I notice there are a couple of other boards that incorrectly use
> >>>>> rockchip as the vendor also:
> >>>>>
> >>>>>             - const: rockchip,rk3399-orangepi
> >>>>>             - const: rockchip,rk3568-bpi-r2pro
> >>>>>
> >>>>> Perhaps these should also be fixed at the same time?
> >>>> What is happening with rockchip boards?
> >>> Copy-paste stuff ... boards using rockchip,boardname instead of
> >>> vendor,boardname for their compatible.
> >>>
> >>> I do remember us noticing this a number of times on some boards
> >>> and requesting fixes, but looks like some slipped through.
> >>>
> >>> So I guess Tim is suggesting changing the compatible, but with boards
> >>> being merged a while ago, this would break backwards compatibility.
> >>> So I guess both the Orange and Banana Pies will need to live with tha=
t.
> >> You may get away with it because we generally don't use the names...
> >>
> >> Though there are some discussions to start using them to select dtbs by
> >> bootloaders.
> > Ah, that's good to know (both points) ... so essentially right now woul=
d be
> > a good time to do what Tim suggested, before the names get actual usage.
> >
> > @Tim: is that something you'd want to do?
> >
> Sure, I will prepare patches and send them out soon.

As I stumbled upon this patch just now, how is that coming along? :-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
