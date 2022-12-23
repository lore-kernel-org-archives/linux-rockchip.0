Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD35C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 10:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXYbZDPurbGtBvRs/QsXF5mB7H5e7hR9EOoNfxaEtBY=; b=j1/Ek4pF9c78FIZ9vm/RbKKjU6
	5NY8ujVZ4pQgvyWqYTFMYf/PjmUX7qiVyBnZz5d7AO3bjHOLWRvZaSkanJduN6my09MXXN7D4Eutg
	BfguifrGSIJJLeUw7fumNjJkkl1JxiosDTnIHPseiNkN4GV71hp7QBNnLOSM0jR2OwNVQqveD8gcA
	AFnf+nmqFI7gEZKlZsVISh2i9naxKHZmlxwVwQAq7LZVLEfNEuqPa2gVAO85Nt7otKFrcPbxGAIgI
	TM5KyIfbURRaJDdOgcY3t5wzuHc7W6DT2PofHA+NPXaFdi5nIzBobXeBFDY4T3+/qk0HayARtGBfI
	2o8vjnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fQH-006UuQ-Gp; Fri, 23 Dec 2022 10:37:05 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fKy-006R6U-7M; Fri, 23 Dec 2022 10:31:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 56152B81D36;
	Fri, 23 Dec 2022 10:31:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 015C4C433EF;
	Fri, 23 Dec 2022 10:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671791490;
	bh=6wmYFAAcZgXeEqTN//fhHTM54kWAbw0UyCStoqODi6s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=BEyR8WP6WX3GtZpTZwyvh6OGrEFdaVlUcmfPF3c/2LEX4kyhwln3qYDDOeVFlTGuw
	 7DrYKRNNPzm2aA4AWpm9QiLKqrk75STh/zZjnVhHDcboCUL8fv1NWdcLfTUP/KyhI6
	 QGJPalphACsy+K7uM6ZKjrNy3ZdPIEK29DPBm7VxwNl3RrElL3xW0W200UGni6gReT
	 bvKOUaIvd04RL0CbsKQJzs78ub+efKUqAs6kAZL/OE+K/Zc/fKOJD60EM+0buIpBs0
	 xk2dGqETA6m4gdoxm37WekG/7yw82X2mM6t9eb7hHOgOpkcbqRRpo1m/wxXR7dSOrG
	 SISfWKOcCFjKA==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-rockchip@lists.infradead.org, Johan
 Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
In-Reply-To: <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
References: <20221219191038.1973807-1-robh@kernel.org>
 <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
Date: Fri, 23 Dec 2022 12:31:01 +0200
Message-ID: <878riy9ztm.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_023136_640027_993A434A 
X-CRM114-Status: GOOD (  23.13  )
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
Content-Type: multipart/mixed; boundary="===============7132403156959080516=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7132403156959080516==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Rob Herring <robh@kernel.org> writes:
>> > The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
>> > allowed by the schema:
>> >
>> > usb@fe900000: Unevaluated properties are not allowed ('power-domains' =
was unexpected)
>> >
>> > Allow DWC3 nodes to have a single power-domains entry. We could instead
>> > move the power-domains property to the parent wrapper node, but the
>> > could be an ABI break (Linux shouldn't care). Also, we don't want to
>> > encourage the pattern of wrapper nodes just to define resources such as
>> > clocks, resets, power-domains, etc. when not necessary.
>> >
>> > Signed-off-by: Rob Herring <robh@kernel.org>
>> > ---
>> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
>> >  1 file changed, 3 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Do=
cumentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > index 6d78048c4613..bcefd1c2410a 100644
>> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> > @@ -91,6 +91,9 @@ properties:
>> >          - usb2-phy
>> >          - usb3-phy
>> >
>> > +  power-domains:
>> > +    maxItems: 1
>>
>> AFAICT this can be incorrect. Also, you could have Cc the dwc3
>> maintainer to get comments.
>
> When we have a user with more and know what each one is, then we can
> extend it. All the other users (upstream), put 'power-domains' in the

Won't that be an ABI break at that point? You'll change the maximum
number of power-domains.

> wrapper node. But this is what we need now for RK3399.
>
> I used get_maintainers.pl. If that's the wrong output, fix it please.

@Thinh, perhaps you should add dwc3 binding file to the list of
maintained files for you?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEEg3wK/NVnD14JZqsmho6y4DXKpEQFAmOlg2URHGJhbGJpQGtl
cm5lbC5vcmcACgkQho6y4DXKpERo4hAApZSXiZmGtrVhLB64SCqHD9+VJbt4amWz
ePO7l7j7gpou9fF4lDUnWBaoAE1xnpv/6Hr64fq5D540UXFW0pfwV+WFMSm86fjU
jlqErZlbMAb/0oj0E0YVBN0zA4Mi7VjWuO5Q99bEdcaBr6aBQAD2/mcODQhfWHbv
ZPmK5psZh/yoeaQBVExyJHPi3Bi/hCpZPhVkWnfUgBEUfGMeNigXloqg0jp8+tzD
ClgH1LBw8dW5Oa2/z63C9XLYGL0KB/gsVMMGyWUY2u2v/xqJ+sLyAPzYX1JIqJq3
MiyKJVSGplfOBa5GSGaKehTfPwAG8Du7CP3K3+9ydU/TWw3lg/fQ5UbYRBr/Q4SC
5S3micolyaEIWkW4XyrWgPSr/eq4A5vVZWRAqEEKvyBGKGxsZZqRkFoxzhYHd8FO
pIkBRI/kLtIhFDkXZ5e1HvmvsGgJJcRAZfawaw8RoY6sJgkQquxgKW3ob7Aeb6jK
seY4rLlxzDmdzlqrPyXFxVNrUNn/JW1KoY5sYfAQumBdM7PSR/xNN1NYAGJAI4on
UpKSIuTwKgMzM6i69wioIRK0QV1y3yvTdYB/umO+YT1sCKLaRX998O2Z33i6TCTv
LDwdv8JqXQFyIn8IecdLA9qsKsqApS67M4n+38SLyBkvttJtNGka1afH5PFJNt95
jLwjgQSUmDI=
=6qAf
-----END PGP SIGNATURE-----
--=-=-=--


--===============7132403156959080516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7132403156959080516==--

