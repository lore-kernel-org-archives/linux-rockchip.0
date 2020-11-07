Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D744C388F9
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 07:42:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B93EC20704
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 07:42:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LjwJ9WGX";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="yJWvWc/g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B93EC20704
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8DfiSqK4bAwuz3CDXek3sTbg+UMbYUmmqubRzf7ziM=; b=LjwJ9WGXhXfcITpVm9iY+3OwM
	Bws6ILi4FNtnQ5BXDDPdqHhed2iKoHoqllkIXniYkTt3vHTHPfQHL2TtooU+Oi/WQOkVjAc+rIa/4
	DbeDNi9kPuIbwyRj+CdFqL7y250O6PVW7CZ8qXA41guyuUuZKyN8LgWUWJdfvAksUD1/tMpdm1bO3
	SO7Rvag5q60MzrpKUcmvpLyrazEdCMMNgMqmxp+Qte1LMrKNZuQQe7nt8wvrtSAUCjhftlFHEEQM3
	/kQqlAV7qaXx6HYoKJzfORIyFictRDVw2og4Xge1AzmzNLii0+6izP7DYw+kQXzTFcklQ0HB6P9mr
	KkplBxr9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbIrx-0006iN-AP; Sat, 07 Nov 2020 07:42:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbIrt-0006hN-Ih; Sat, 07 Nov 2020 07:42:38 +0000
Received: from saruman (88-113-213-94.elisa-laajakaista.fi [88.113.213.94])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59D7520704;
 Sat,  7 Nov 2020 07:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604734954;
 bh=/Nx6GNYibA0Lp1RdYl6hW7mxOH1UmCuCU069gcP3gs4=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=yJWvWc/gNpkadD/OBa6LLOUQYL6IcWGLhyGAubhPqCRQpETfryX1TqTXPwCaLL4I2
 bNvFriX3YULOj+h/2cDmF2FEACQZnIMgUwwJ7Z03QCmkwtxTZyeTqCuYeHP2/92A8+
 gXfhw+qaC6jJ+Mcdj2KbxBgSIiLimY4U8GaGM/mU=
From: Felipe Balbi <balbi@kernel.org>
To: Lindsey Stanpoor <lindsey.stanpoor@gmail.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
In-Reply-To: <CAEr9=gsH2UhjMO_55FKmGKS0DYrT_-XKf0iwCKCNc93epbiXNw@mail.gmail.com>
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
 <CAEr9=gsH2UhjMO_55FKmGKS0DYrT_-XKf0iwCKCNc93epbiXNw@mail.gmail.com>
Date: Sat, 07 Nov 2020 09:42:26 +0200
Message-ID: <87ft5ly5nh.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_024237_684876_D2F29430 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, heiko@sntech.de,
 cnemo@tutanota.com
Content-Type: multipart/mixed; boundary="===============7915712669328863781=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7915712669328863781==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Lindsey Stanpoor <lindsey.stanpoor@gmail.com> writes:
> On Wed, Sep 2, 2020 at 11:12 AM <lindsey.stanpoor@gmail.com> wrote:
>>
>> From: Cameron Nemo <cnemo@tutanota.com>
>>
>> Document compatible for dwc3 on the Rockchip rk3328 platform.
>
> Hi all,
>
> Wanted to give this patch submission a gentle ping.
>
> Rob Herring acked the documentation changes, but I have not heard
> anything
> from the USB or Rockchip maintainers. This patchset would facilitate USB3
> support for Rockchip rk3328 devices like the Pine Rock64.
>
> If there is anything I can do to help move this along, please let me know.

Sorry, it had fallen through the cracks. It's now in my testing/next.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEElLzh7wn96CXwjh2IzL64meEamQYFAl+mT+MRHGJhbGJpQGtl
cm5lbC5vcmcACgkQzL64meEamQaRDw/+N2up7hCZG55bDPN8oLRW452ZCzSwXD70
l5s+0/0dgPw6mwsSoOH1Xd/tPdtLS5gAgnNCYZzBiiCgFBgeaHKwQQ6vweSKLRRG
BYWVAQuU2dnEZN2lCq29/CilnywKd8Rx05V1UDtoHcVPmioMi3Z8F957s5ggAo+w
6GgrjcI2h42zsm13oqOgBAU92gik5toDEzVjW999/oGOdH+aZFLd5k3GC+nTVlmf
AOwYDiRAHHHcIWfbKOz2ZtpkP31b++y4OcNUzZPgIIp+WO5kNm+BiSjuC60kAAuL
kyC1WOg1uOXRP6IYQp3l90tO8VV3ZHshxxeLssbQ70TMggZacCCl/pg5qR0I8/Gr
G6SM1bpCIhlw9LwTF0rstbvtFUVVWEWQvfmpKaQMlFvi3bcDPbv5Q/94pYvwKemK
ieD+dK0K9ZvNAQe3+CqPqH14tIbNKZ8E/u/CFp+kItL6pUf+iVfd7urFbn+Ye8A3
EU1C3iJEKNiwoDGPWJUB13DlqgyJyn0AC8twRhB1dvqW2B2+GqU7tTfKzYvFDJx4
MAVBSVKmdTUUT6idPFYbo9BvK84tz9EkBcOqYXEKvEL0LgKgbfD6rOKUxcC3p+GV
BKUkhMVmTFGGcRYsYZNytla0ioWJ+Q880PA5pQ1WBoXyHhpw4EC11tjQoEgQLcDs
FcTTx6Jz0S8=
=ZUy6
-----END PGP SIGNATURE-----
--=-=-=--


--===============7915712669328863781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7915712669328863781==--

