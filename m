Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7B6CD8CA4
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 12:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SkXG4GYV9QFaYN1ctUhaP+o4Pi1dbZIB3GfvlOSDhvM=; b=3uDxJ6NoYYWiYbBxO86AZ2rWNV
	keSBdRXXPM43xEULCsrzxsbpTohpH4b4Z1FSSzb0WZUBgrMSnQlJFIBr6blQELH5HSlkMZFxQZqR3
	EB0NLacmlkO6qiqQF2MLY2MMGuNiiF+QWrjQkxAhxcthe0H86OV8tUOgx5zYKzEykJAfTEYRs7lcC
	UGT3/GPjDpF/1awV7FtZZim+q29wKXseL0bNmy2ScBeRv0mc6jA4mqJRTqNNcYtsk4vmiP+DWfJS9
	6jO4ZLL9TWXDr2jKGcbnSLop3VQJqI+KGomNWv6+B6kIKR6hetQ9Xq3IeL55T3ZKnmWpdWPlo8KHK
	cFLJ5u9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvc2-00000005WZ6-19Zb;
	Tue, 09 Jun 2026 12:31:22 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvbz-00000005WYi-04bg
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 12:31:20 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-51776b4de37so43622421cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2026 05:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1781008277; x=1781613077; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=C94jN65NV1jMFkw0SiGcRO5GvFVYe28KFeiin6zr+wc=;
        b=GFFCQLElXwzpz+1ggMPZ5tj07XWhO7llDoRkaBt9UsoA3dhXYDe7XOJHod4Mq90h9p
         vfXDrFf3MISNy7SqG751xMt3dtNbpdNr/Z8ObJuUI2t4zfiJTmcw0SJboq8uuwQGelq0
         u4FNGeUdanZp6Lat3/2WNrlpWtZ1XKwyuL2gINSBZW33LY7Xcvk6M+S0/FDz50PLYagn
         rIyOPD31Bis7xtBdKLS5JHRMF8lSN45kEQdxQr3N3dvuKwJPmXIOve0uRzQd2it9D0fQ
         mMpmrGtxcRwa9sIvYHf9fMK1vP00lknvJpLl3FukpBau/91ntsihJicd5T6sOq2tuTXm
         LwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781008277; x=1781613077;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C94jN65NV1jMFkw0SiGcRO5GvFVYe28KFeiin6zr+wc=;
        b=V+KN34C8gfbZeu7otlJzqvhbmZmcokPunHNAp61IeanIRI8rz5hMkNr1s8AqnUdWrU
         3UF8h1RC2Uq3d5nT+FDlu7FgSymnrS7a6402PYf5bDXP5yAyeG/yd/KZBfSORFXJ7Zxm
         y4DhGKM/EUAabOXSY1UDyWjKrYTrQKAcJ6tQ/1YTUGsvtAikDvwbMSy7rO9+MORTDkbE
         jHgt2izSfy3XDiNfWbAol+UWnt8lCzqtYJS7T2rfdAPxHiPqcbvrmyIOJim9C1ibeCl3
         YwBZnHwESrafAwnuUcXJ8vCFi7+pgMySUyYkWcnYJrSgg3BeZ5paWfDdX9kHZV6E6R6u
         9Bmg==
X-Gm-Message-State: AOJu0YxgKDEieLmOhLDbQQMVBhrbb0cxINdI0pqqXqCjuxqbX4Lc3mnQ
	BTBKmKuvMptv30kZBcJ4RUkuFG/6JCOJWoTvdOC0okeAAiuhFCISaN8C6KjXu+ymmJnUn99pczF
	szPMqsXCK8w==
X-Gm-Gg: Acq92OFO8i6U+f1PkGQjpTdx5SJKWbTp6bRRO8kuUBBG8zBy9CibK+bafRURTSD4Dka
	nBq3k1Gi/Ieezjkbk1iRiDZJuWR1kKQgpALN6+wScP8flJKLLV6yBbG+WxQ69vTP0GpYQNMfU3U
	9RLHQJDzvLTn8unlG8evrJRS+erCQTY9j4wK0BF58evQ9ZYjmABL1wauQD28KcxMJ5kuseyp5Ml
	3/o4g4VaZcu8pLsAoAUwj7y9m1GUStxZwXkcKF5VjcrzLZ0qerZM2D8yyYe21GSbachnjtTHXFa
	HnObkfnnV7wCNzSZctvObEqQCLQIKi4gYokFvqH3gzaMS6b4MgOQxyXsAyaRxMGGSWPgwDAGaM+
	Od9eE3n5diZfVE6gwGrGU4Q2hKb5PrdLZT2mFqYnoG3YJys/oRG571VvgjJIlkwOyVrgPoFAslg
	98tqV+cHwBvA0K7v9M/4DgoaE3dboc+A1L/6/2U/akEhGqhdEyHPaYCx+M1CzyJIEG26fVETkCE
	goK3qZHL+MZSPAh3g==
X-Received: by 2002:a05:622a:6203:b0:516:d781:589a with SMTP id d75a77b69052e-51795b1547amr260801071cf.22.1781008277309;
        Tue, 09 Jun 2026 05:31:17 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-51775c297a8sm181882191cf.8.2026.06.09.05.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 05:31:16 -0700 (PDT)
Message-ID: <169bb3cb1d7e940c43916178cf5cb6dab2993fb4.camel@ndufresne.ca>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Simon Wright <simon@symple.nz>, Detlev Casanova
	 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Date: Tue, 09 Jun 2026 08:31:15 -0400
In-Reply-To: <34662f2d-cdf9-4ce8-a618-12a0f64cd03a@symple.nz>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
	 <5797ac61-dc61-4182-ac60-cc377564ff90@collabora.com>
	 <2565c949-a558-415f-8c79-e47812db8341@symple.nz>
	 <e3b93bda-fed8-4f21-b3d8-cdf28bfaba1c@collabora.com>
	 <4358f22d-247c-43d3-89d4-27b57bbe90aa@symple.nz>
	 <66768711-6943-43f5-95fa-3d97dc638844@symple.nz>
	 <25a232dca0236788c75231c43ee8a01741148c37.camel@ndufresne.ca>
	 <34662f2d-cdf9-4ce8-a618-12a0f64cd03a@symple.nz>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_053119_673693_EC7FE014 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6737206800283186050=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6737206800283186050==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Ygw4GNsgwrgdfSXxFqSJ"


--=-Ygw4GNsgwrgdfSXxFqSJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 09 juin 2026 =C3=A0 20:33 +1200, Simon Wright a =C3=A9crit=C2=A0:
> So it points to the HW racing on its own deblock-context handling rather =
than
> reading stale buffer data. I couldn't reduce it to a register / RCB / clo=
ck /
> gating difference vs MPP either, which is what pushed me to the power-up =
priming.=20
> I can't claim it isn't masking something deeper, but it isn't the RCB-dat=
a case.

thanks for the feedback, and yes, sounds like a workaround is the way forwa=
rd
for the time being (or forever).

cheers,
Nicolas

--=-Ygw4GNsgwrgdfSXxFqSJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaigHkwAKCRDZQZRRKWBy
9JX2AQClZlsNAsGRuhbUXlOOhr/CR4BJx6+IviLaSFmlKtYZmgEAjeawIlFvXd0v
25iDCXueapOnlAssS7K7Qxejh/+wkQs=
=5esN
-----END PGP SIGNATURE-----

--=-Ygw4GNsgwrgdfSXxFqSJ--


--===============6737206800283186050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6737206800283186050==--

