Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B95A3C07CB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 10:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NR2f7Eb9jj4wrxAUXsFoc4ttsa4xBY1L/ywmF8zXQuQ=; b=qyiDT15qfqA/8BrXi48TNTOOo4
	mmiyetOPuxmoVsq/T1JVAPH+HfRNXyaezPbABgXYfy1FA8CpUUZab7jEocFdfcvEcO8PT54zCLrBY
	ZQ9FIKg9dpUOLuUKZBP1/bo2FtLDQPX8N2pY9W8EobJ5ao2LcVMbJ5sEENQcsxSPr3gHyDA7yCsRU
	hd9nTf8slCKyy66XdwXqAeRYiKmsLqhOkwhpW0yNVBp65FkfhsdzcgntKj6pc4paiSTBteKNqm878
	lDts72vMjr5Fuja4zfpEbE2ZoqGPY8EA1YKeVr8LWkzyG0uEoQNs3uzbNPW4aD3JJComfWQTm712P
	AJBzagqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HZM-007m8c-0E;
	Wed, 29 Nov 2023 10:13:24 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8HZJ-007m6d-02;
	Wed, 29 Nov 2023 10:13:22 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bba1dd05fso2536744e87.0;
        Wed, 29 Nov 2023 02:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701252797; x=1701857597; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=gCZTkTf5gNqH/rsoLk7etD6DwWJwR710k5LJwshNSuI=;
        b=LOOpuyL0LDHXRFsulWzpwsYFA5YJdY8PUD3OHCJjAW2uF8Xdb1KcZVMkV+JB9dEpuf
         hJemocrZ/CYJKKiFK9trQyZWHKe+JwjUlzjgTVU/eY4a0mUVPdOcBNqXtc0X2Q5HHFl9
         Y9Ju/vgsqeUT25JsDSHETGl6E5kk0hWBGPuM86eQpbWMpAAtXHH6/08nxCntT4tpzRCP
         fxaTeX0fnGQizQ1oj01n+r6vTL4xaLL1zKTYSHj4RknKhAXFh4ympnqK0qWVkYNhIIbK
         t2Ui4Oe1vNbAi4cxqm7Ls61d6ewA3dcANCvtaEj1vnBhF9Sxn82tOHHm+UwTTh4b0Qhz
         fMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701252797; x=1701857597;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gCZTkTf5gNqH/rsoLk7etD6DwWJwR710k5LJwshNSuI=;
        b=IYGacpn/c2RIbbdV04+PH8jWmxSvbPDnh2YXbPYzD9Qnob1w25QleKSLHrkCimDoE2
         IOBw27V6+jAB4ZmpuyKOGLKPHQ5ZYEiiZWb29nKicUL01ShNo04uECyi8yzXp1IGYh3S
         zIbnIxAKH9iDduHOoT/XUbZjKG2QF41pulQGTi58O0LdkT2j38eErEOJzP04xwNx/7h0
         RHb6qoPPwJxtLUTfXp6OCOwyJVNkjMjG1eBtsyDnQKIdd5LZ/nwxcywZ0zrtJtG0HcbH
         LS+8B/cOv9iZA8UDc1DaN9s2IiFHihyE33myOPKAwgit5rOV94ANwxKJMdvGuhlIgujA
         CFFw==
X-Gm-Message-State: AOJu0Ywm+St2k1G8EzW6cO8QFJ9811ecp2ObUQgtHU7NA1Ra7DPUxzb/
	hGLckZQrfvz89WcTZ+axrvQ=
X-Google-Smtp-Source: AGHT+IEqoByK4nUUfepBkFUQYGj/+qIG7mkFMGeDo/wE/qhqodU6sLdPk1cmUua5FNVdwpoUj02mkQ==
X-Received: by 2002:a19:f60e:0:b0:507:cfbc:bf8d with SMTP id x14-20020a19f60e000000b00507cfbcbf8dmr11730596lfe.16.1701252797196;
        Wed, 29 Nov 2023 02:13:17 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id q9-20020a0565123a8900b0050abbda2c52sm2140292lfu.157.2023.11.29.02.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 02:13:16 -0800 (PST)
Date: Wed, 29 Nov 2023 12:12:59 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>, Sandy
 Huang <hjc@rock-chips.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <20231129121259.47746996@eldfell>
In-Reply-To: <ZWXv1Oi_sH0BRWao@intel.com>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
	<20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
	<87h6l66nth.fsf@intel.com>
	<v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
	<ZWXv1Oi_sH0BRWao@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_021321_047221_6A3AA7F7 
X-CRM114-Status: GOOD (  11.60  )
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
Content-Type: multipart/mixed; boundary="===============3012702153943617406=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3012702153943617406==
Content-Type: multipart/signed; boundary="Sig_/qS7Sjt2IF0HAAZwDWVWm5Tz";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/qS7Sjt2IF0HAAZwDWVWm5Tz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 28 Nov 2023 15:49:08 +0200
Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> wrote:

> Should we perhaps start to use the (arguably hideous)
>  - void f(struct foo *bar)
>  + void f(struct foo bar[static 1])
> syntax to tell the compiler we don't accept NULL pointers?
>=20
> Hmm. Apparently that has the same problem as using any
> other kind of array syntax in the prototype. That is,
> the compiler demands to know the definition of 'struct foo'
> even though we're passing in effectively a pointer. Sigh.


__attribute__((nonnull)) ?


Thanks,
pq

--Sig_/qS7Sjt2IF0HAAZwDWVWm5Tz
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmVnDqsACgkQI1/ltBGq
qqde7A/+LfG5e8v6ABH2JqANkfijej4EDU9sSC3ZWBaUspi3UJEY1U0ZrDHgQd27
lLSoxs0tguK5Dtehhk/Mn4S1XmyDtRrKNB/2L/rNqilREqQa5ciQG9OFjpqnepS2
3kONuuooZchgnujkUjmgCg+L1X05peA166I3R9MkD4N3eqBH++XmohBaeUJDpUnN
n1OATmnWyX2df7p/qBpOhVaNT+zu8HCgsIZq//PDNTxQxmHP5CPqbxbxuBjcwFHt
bX1coZ602jx16CsrwaVYgVsHehXW0ru901OSPJ4flgpx/EyAjA4hHuVg+lJIZKqs
wQRR4p/QdyBRULqGl/+4VML92ccuHFCedEtbLyH+RXSTlM547Q9nwtUPw1lB7tYQ
Zx0BchNXyqKGnYvQUx5rTpJlTjwwq/IqkGkXnzpc3tIuj7hNTXEE1+3voPqNlnlU
J16Lt49s2r4J2ufAykGzgqC19HM5baSykl006GFCpzLrH6iETMejOymRxAFlnE8m
NdVHVD2YMPW9c21sJ+UjfbGrvF3H6E6MYZLDQLRnL44aHuYkCK6uSBfpgF1ugEqP
Tzqd5wGEhEeH6OmzYEiwWHBkNJdiGnA4yo1dzpLdgdGaEKHRfdcGePGcNlLdtNcI
AQZwl9NR+mk0zozfoa9HsXTUv+Su0TXpgD/prZ7PyqzSeM/SmkE=
=Sfat
-----END PGP SIGNATURE-----

--Sig_/qS7Sjt2IF0HAAZwDWVWm5Tz--


--===============3012702153943617406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3012702153943617406==--

