Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 150B9C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 10:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S5+bn5ZCqSGgKfwh2nHPxlh7s5iwn4DFMqZNiHpHZzo=; b=zpEBGVgp92vxlQI341MqhQMmw1
	tnjV2zZG8S+TyLfwJszHR11SkZOoi1p80PEo1S5id3NBfpzjZnkYihE9Jmqk8MR27v74o8j6xFowQ
	EWyrYsZ3/qLd+eS068hzvQMMiWpJ3aRObAUsQL4zT2V9L5smOYjZ83y28n2319rzzHXtbfiFaQbd6
	oqkB7uBRMVhHPHkY2arUG7GGkxQvFpjoplJestRK8enSyuJnqCXO9YLak5DWJESh5aa6PkQczjhVh
	w5ZANME9nXGGru3AIHfkJQUPkOTs2YQNiwW1H26VQ0LhqPjmpylbyzeVHcH3mVdAByTeOEnd7H7/w
	TSNvoI1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fRy-006WH2-7p; Fri, 23 Dec 2022 10:38:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fNx-006T1U-H5; Fri, 23 Dec 2022 10:34:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3FD6361EF0;
	Fri, 23 Dec 2022 10:34:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71693C433EF;
	Fri, 23 Dec 2022 10:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671791672;
	bh=pEi8Xz8eJjlzeyiiqC2lEqhANSejOYDD0mFpyX2uWuE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=eW2jtyLMcW3/uyA2m81/elhA84ITXUJule7OAiN127fzxnFeDPL0Fq46yzyM813kn
	 ih9KB2sABJCG5hny9r8ntswKfpvPrlCTm348KMDCQRfGCxZH49ygd53GlKyTBGYn4C
	 A6IoWRNEBJX/KtKL0aD6bju7wlTuoA1sF8JFcFU1ozhn3SxsgslkwqU6JfN5LkxIoJ
	 RZubC+ZApPOsHTZF77HRVRf7rt5TDHVHo43Uda8zvlwHHmZ4Ik0KHXtZH788SvS7S/
	 9B4e/1M2jwRk0Qd3pswBk5z/dQaik6BuVMC+EQLg2XH5Oihj08k/el83ECY8aVgczb
	 MNeESw4sEqg1Q==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-rockchip@lists.infradead.org, Johan
 Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to its
 own schema
In-Reply-To: <CAL_JsqLo4qZRTOu7UR_AN_jHNgiFZp39dsXYwWnD_njyDQfmAA@mail.gmail.com>
References: <20221219191038.1973807-1-robh@kernel.org>
 <20221219191038.1973807-2-robh@kernel.org> <87bknya5lv.fsf@balbi.sh>
 <CAL_JsqLo4qZRTOu7UR_AN_jHNgiFZp39dsXYwWnD_njyDQfmAA@mail.gmail.com>
Date: Fri, 23 Dec 2022 12:34:26 +0200
Message-ID: <875ye29znx.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_023441_761302_911E4D22 
X-CRM114-Status: GOOD (  17.73  )
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
Content-Type: multipart/mixed; boundary="===============6265841792397821621=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6265841792397821621==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> On Tue, Dec 20, 2022 at 1:37 AM Felipe Balbi <balbi@kernel.org> wrote:
>>
>> Rob Herring <robh@kernel.org> writes:
>>
>> > The rockchip,dwc3.yaml schema defines a single DWC3 node, but the RK33=
99
>> > uses the discouraged parent wrapper node and child 'generic' DWC3 node.
>>
>> Why discouraged? Splitting those two separate devices (yes, they are
>> separate physical modules) has greatly simplified e.g. power management
>> and encapsulation of the core module.
>
> Sometimes they are separate and that's fine, but often it's just
> different clocks, resets, etc. and that's no different from every
> other block.

Right, then the argument is that all other blocks are not modelling the
HW as they should :)

> If there's wrapper registers or something clearly extra, then I agree
> a wrapper parent node makes sense.

There's always wrapper-specific registers. Some wrappers even add custom
functionality. IIRC Qcom added a HW-based URB "scheduler" or some sort.

> Otherwise, for cases like RK3399, I don't think it does, but we're
> stuck with it now.
>
> Also, we have this pattern pretty much nowhere else and DWC3 is not
> special.

No, it's not. But it could just be the first example of the driver
actually modelling the underlying HW.

In any case, I was just curious with your opinion that this model is
discouraged, as it's not stated anywhere in the kernel's documentation.

Happy holidays

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEEg3wK/NVnD14JZqsmho6y4DXKpEQFAmOlhDIRHGJhbGJpQGtl
cm5lbC5vcmcACgkQho6y4DXKpES1VA/+OxcarujRFwHa95+X7YWZNI3bmUDtKLPg
zOuwZkJQMoBBmV1QrVIkSmewZR2eZUmrYznXlswNWu3wt2UsCvGfFT3HenhSko17
ZdT8suhbRWZwDaQNm4uDeP9z+37gKn5NcwA6namgAVymsAb/voLQK/bkNth7LupJ
eY9Lh7D3xTfO1eZ23fBd9AQjQZGa6r7FKcH5tCwO4X+2OLWNY08hGTZVRfoJoIyZ
pJNt0rorl/a21j5JeGQwO0VST2/cQHmRDMzdTc4/3KFiy4Gx3Qq5/cp0Klv5qZ8y
vkKbCoZpxCgnUqc0DwxATeYVtQXnHnzoO0ahHgA7kM8Ap9DJWbbvZq+WupHXbmzK
P0eoRAS4V3OlG7GCjRFEU6TzrsVjl3Tgm+ILc8yiUXVlQcq40I1BXwZtzgY+qNVy
Lk4Z2ZLXDi8MKilK64bHW9dZaJq4k5ZjerXgFQYW2bvUJT1rk9EP+tisanKLelpS
Oggd3zZRk9PCg0cAvvN/4OOmBa/PtINXHX5Tb9zjVSGgbjqRDGJG+BfYpQ/ZTOF+
+qFx0ie5fLktEwcHGlqx/IZ0lFqOc6iSRDMzIJBnfVx0aanuuk/S+cAiTAg5TLYN
pMcfABi0dtDsanrSVlOGd2SOW1019+rPlN3jemigQ8dTawudC0/A93l65/4qyGiA
+R+1a/ubZhs=
=MZmx
-----END PGP SIGNATURE-----
--=-=-=--


--===============6265841792397821621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6265841792397821621==--

