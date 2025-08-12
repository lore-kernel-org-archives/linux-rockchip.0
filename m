Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F6DC87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajMcBvjiVv94I5nhc083Ge7QLJLaBaL6HjUJCkPqXSQ=; b=uqc2Nq8DFnVwJC8YvFUFKfY3j0
	qn32X39LnI/Q6DAOCGPe6k7zRiLCF5+VVN6SFuY9sw59MVct/EZIK7dJaHE0obyTXXdsdHgV+hi52
	lQrxbUryA+6v4j+paEAh84cr02PHKzwWR+WVD3kma0QIZeTsez2xzHClAXQNhdaMM/aofNvnGjTWf
	v2KmOO81tyLeuZGBNDRRxJRdiNNCRiUmTvbE7CaQl7dfhhfRxGZ3GrxKl2g2YBglfk46B/SQePjH0
	v+P9X2RXqXVPs0lv38j3mFZlEDC85EEIRwEPAED64bJridtZWSSe5OXji9jknZ4+P1OODnO3wR55p
	ccbA8Pqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrmA-0000000BNlF-34su;
	Tue, 12 Aug 2025 16:23:02 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloN1-0000000ApQt-0eQW;
	Tue, 12 Aug 2025 12:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1755002689;
	bh=zMiRV+p+DUcdpzuTRwPcyJNdY52FdWHiETIA/GgW848=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=VYlGXz1hiPGGu1TBTb2QI72OdiYPHXlCYWNxCdy6xpdu/HKnD74CDfQgSt9VgmyYf
	 TylHrl3NC+EFCO4C9GoOVmibBiaDdwiN2rzbgC9ENXuEGN5V4/Yl5lMV2QFV3BtLiE
	 X7N+Ff+Fd0GdMm3zSzN/1GTAfgF/wYBOiLXbTZQV1ZnrcVrUllN80vH61by23Y9x+O
	 fqn7yJvwm/Xfgi1+7qgJNif1EzpVB7LIPAWnjEUfb9uVYHbeAZXd9joP4nipfLn1Cb
	 cLs1aFozax3A9mbZo1gx4Zpd2IIn51u+/zJEKW20JYvGHXl1OsqHCj6CMODtxu3JSu
	 WENTFidEoBo9Q==
Received: from [IPv6:2606:6d00:11:5a76::c41] (unknown [IPv6:2606:6d00:11:5a76::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B8BB17E107A;
	Tue, 12 Aug 2025 14:44:48 +0200 (CEST)
Message-ID: <a66feb89fa02f05b187e5603ffc3b1501ef3cbd5.camel@collabora.com>
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Alex Bee <knaerzche@gmail.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, 	linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-kernel@vger.kernel.org
Date: Tue, 12 Aug 2025 08:44:46 -0400
In-Reply-To: <91864a1c047d2bdfce202b070716a694ede47d5e.camel@collabora.com>
References: <20250810212454.3237486-1-jonas@kwiboo.se>
		 <50162371fd54fc976a84fcf57c9b69112a892c46.camel@collabora.com>
		 <1dd29158-0660-4254-ac00-1316768d9b82@kwiboo.se>
	 <91864a1c047d2bdfce202b070716a694ede47d5e.camel@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mQGiBEUQN0MRBACQYceNSezSdMjx7sx6gwKkMghrrODgl3B0eXBTgNp6c431IfOOEsdvk
 oOh1kwoYcQgbg4MXw6beOltysX4e8fFWsiRkc2nvvRW9ir9kHDm49MkBLqaDjTqOkYKNMiurFW+go
 zpr/lUW15QqT6v68RYe0zRdtwGZqeLzX2LVuukGwCg4AISzswrrYHNV7vQLcbaUhPgIl0D+gILYT9
 TJgAEK4YHW+bFRcY+cgUFoLQqQayECMlctKoLOE69nIYOc/hDr9uih1wxrQ/yL0NJvQCohSPyoyLF
 9b2EuIGhQVp05XP7FzlTxhYvGO/DtO08ec85+bTfVBMV6eeY4MS3ZU+1z7ObD7Pf29YjyTehN2Dan
 6w1g2rBk5MoA/9nDocSlk4pbFpsYSFmVHsDiAOFje3+iY4ftVDKunKYWMhwRVBjAREOByBagmRau0
 cLEcElpf4hX5f978GoxSGIsiKoDAlXX+ICDOWC1/EXhEEmBR1gL0QJgiVviNyLfGJlZWnPjw6xhhm
 tHYWTDxBOP5peztyc2PqeKsLsLWzAr7QnTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVz
 bmUuY2E+iGIEExECACIFAlXA3CACGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sB
 qgcJngAnRDBTr8bhzuH0KQwFP1nEYtfgpKdAKCrQ/sJfuG/8zsd7J8wVl7y3e8ARbRDTmljb2xhcy
 BEdWZyZXNuZSAoQi4gU2MuIEluZm9ybWF0aXF1ZSkgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29
 tPohgBBMRAgAgBQJFlCyOAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQcVMCLawGqBwhLQCg
 zYlrLBj6KIAZ4gmsfjXD6ZtddT8AoIeGDicVq5WvMHNWign6ApQcZUihtElOaWNvbGFzIER1ZnJlc
 25lIChCLiBTYy4gSW5mb3JtYXRpcXVlKSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY28udW
 s+iGIEExECACIFAkuzca8CGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sBqgcQX8
 An2By6LDEeMxi4B9hUbpvRnzaaeNqAJ9Rox8rfqHZnSErw9bCHiBwvwJZ77QxTmljb2xhcyBEdWZy
 ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPohiBBMRAgAiBQJNzZzPAhsDBgsJC
 AcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRBxUwItrAaoHLlxAKCYAGf4JL7DYDLs/188CPMGuwLypw
 CfWKc9DorA9f5pyYlD5pQo6SgSoiC0R05pY29sYXMgRHVmcmVzbmUgKEIgU2MuIEluZm9ybWF0aXF
 1ZSkgPG5pY29sYXMuZHVmcmVzbmVAdXNoZXJicm9va2UuY2E+iGAEExECACAFAkUQN0MCGwMGCwkI
 BwMCBBUCCAMEFgIDAQIeAQIXgAAKCRBxUwItrAaoHPTnAJ0WGgJJVspoctAvEcI00mtp5WAFGgCgr
 +E7ItOqZEHAs+xabBgknYZIFPU=
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_054451_345551_5F904701 
X-CRM114-Status: GOOD (  10.28  )
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
Content-Type: multipart/mixed; boundary="===============5153695969466995627=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5153695969466995627==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-Y2sl7uZiPmx/2tINlSGb"


--=-Y2sl7uZiPmx/2tINlSGb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I forgot,=20

Le mardi 12 ao=C3=BBt 2025 =C3=A0 08:38 -0400, Nicolas Dufresne a =C3=A9cri=
t=C2=A0:
> > JCT-VC-HEVC_V1 on GStreamer-H.265-V4L2SL-Gst1.0:
> >=20
> > - DBLK_D_VIXS_2 (fail)
> > - DSLICE_A_HHI_5 (fail)
> > - EXT_A_ericsson_4 (fail)
> > - PICSIZE_A_Bossen_1 (error)
> > - PICSIZE_B_Bossen_1 (error)
> > - PICSIZE_C_Bossen_1 (error)
> > - PICSIZE_D_Bossen_1 (error)
> > - SAODBLK_A_MainConcept_4 (fail)
> > - SAODBLK_B_MainConcept_4 (fail)
> > - TSUNEQBD_A_MAIN10_Technicolor_2 (error)

I'me getting the same result if I force a single job in fluster. The test I
posted was with 2 jobs. Detlev found that the iommu reset is required in mo=
re
cases on RK3588/3576, perhaps the HEVC decoder in older hardware needs the =
same,
I will try and report.

Nicolas

--=-Y2sl7uZiPmx/2tINlSGb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCaJs3PwAKCRBxUwItrAao
HF5IAJ9I+Gxb7MlBwyEmKIXw1+qOngNv3QCgtFeTxOPKSG0sAWm3UYeR1QhlsMQ=
=9ofb
-----END PGP SIGNATURE-----

--=-Y2sl7uZiPmx/2tINlSGb--


--===============5153695969466995627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5153695969466995627==--

