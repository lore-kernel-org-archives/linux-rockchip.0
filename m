Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D975C52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 21:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RT4G6OkdTIcQExI/xiwW5f10JOsh7PozlnJqCL14BvA=; b=VHS7z7PvmK/M3r
	QiTQkTKSg4WJTzmaGoKgWfMYjgB392bULWN0EffxhNt7XPEiFn9YD32eIHVLKuGqQ9KcpJDMq8I1q
	OpRNLw3j0nYXgKWB8l6OfoSWh09foiEGQhJCS4uA387zod9sJ2I73/QcEmVrszYLC0c970ns3fmYQ
	hRm02rijRItOhSzOXHKiQLUQLPsmYNM3OC/CtjJy808Z6SSEPiyhK1LM4n6UCnmB44aLuFUtzTt77
	hSJlNmhNqVEg5eWC2v9xEkuGp+PysuaBXWFNz4FtToSeggAwkImCnFYhFSw5VqRMVWHcF2hqdwouG
	Wf18F7BKHFfqET8Ic3Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seLwB-00000008NAs-3Eb6;
	Wed, 14 Aug 2024 21:53:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seLvn-00000008N9M-2DRL
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 21:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hCElnUP5OM4oZWFtkQ09mnjhrNyXiNJ1Et4ltpy9AKI=; b=niQyKgx7qSIgChRUhrA1B2Vt6J
	6tX+AXD4NXTc337XVeUk64/Dlo4IA2jyt8XK3zzwxalcmMCb66f4y29zMvunNULB8LAYlkHiPyc1G
	3XCRDZ7Gk6+82mIeB2uTPByHRD8iej0eJD4VHLfMuym3QUtnmKYvT4hUTDU0AA+3LZ5anItNnoQ6r
	VXgpwLl7wf/EAj7pAvSiaKFpp7Uia919PARZ37GdJ7YHoUe5tV//AZlrI24HldxUxg0gwaD8SKtIX
	ducdtRd5hK6MjLT4IS9jzsIuxlXFx1PtSQC1V/Zszf2jL7PHe38PoV4I2VjYyMo+Kb4s4TfkWMZrF
	FJyraslw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seLve-0000iu-NN; Wed, 14 Aug 2024 23:53:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 23:53:13 +0200
Message-ID: <3456551.yMk1gmxOD6@diego>
In-Reply-To: <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com> <9908246.lRi8OiJO2u@diego>
 <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_145323_609499_B2C81B30 
X-CRM114-Status: GOOD (  20.60  )
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

Am Mittwoch, 14. August 2024, 22:04:51 CEST schrieb FUKAUMI Naoki:
> Hi,
> =

> thanks for the review!
> =

> On 8/14/24 20:30, Heiko St=FCbner wrote:
> > Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
> >> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> >> RK3328 chip.
> >>
> >> [1] https://radxa.com/products/rockpi/pie
> >>
> >> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >> ---
> >> Changes in v4:
> >> - update compatible string for OpenWrt
> >> - drop A-b tag
> >> Changes in v3:
> >> - collect A-b tag
> >> Changes in v2:
> >> - fix typo in commit message
> >> - add missing --- in commit message
> >> - add new section instead of new item in rockchip.yaml
> >> ---
> >>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >>   1 file changed, 5 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Doc=
umentation/devicetree/bindings/arm/rockchip.yaml
> >> index 2ad835f4068e..1d426d4e1928 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -790,6 +790,11 @@ properties:
> >>             - const: radxa,rockpi-e
> >>             - const: rockchip,rk3328
> >>   =

> >> +      - description: Radxa ROCK Pi E v3.0
> >> +        items:
> >> +          - const: radxa,rock-pi-e-v3
> >> +          - const: rockchip,rk3328
> >> +
> > =

> > Please don't add a separate entry for the simple updated version.
> > Instead group it with the original Rock Pi e above.
> > =

> > For how to do it, look at the Radxa Zero 3w/3e .
> =

> https://patchwork.kernel.org/project/linux-rockchip/patch/20240711210526.=
40448-1-naoki@radxa.com/
> =

> is this right way?

Nope. You need an enum. That's the reason I pointed to the Radxa Zero as
an example [0]

So your entry should look something like:

       - description: Radxa ROCK Pi E
        items:
          - enum:
              - radxa,rockpi-e
              - radxa,rockpi-e-v3
          - const: rockchip,rk3328


that way the binding matches against both:
	compatible =3D "radxa,rockpi-e", "rockchip,rk3328"
as well as
	compatible =3D "radxa,rockpi-e-v3", "rockchip,rk3328"


Hope that helps a bit
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/arm/rockchip.yaml#n844



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
