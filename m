Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0B1606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 20:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OqxGdP8K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=IR6OE6fI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+Pj5DdszKgTpRWu+H3NZ92nX+6m2SLOMdRoRmb+aVgU=; b=OqxGdP8KPLhO/3N8so9+wM2tNN
	gelkHke4s+KIP6+EeCeM4sNJr1gGwfjZobgdrjzGsS0jZwTP8VZ/Qco9CFBCeqCGYtp5SEu3K5YkX
	MqKKnYb9w2ysacsXkqHvG0/vXyu9TPdKZ8qU3cF8TzGKtdtFLKhrMJYpOttInQDxc1YFyez/UJiKI
	QdFxsQks670GbelGQpbWEj3RoZhNdlo/SJQXI8XAKV2rRItcOUBiHW/9FPcN3gdkE0N+ypiVqezAW
	2EQRT6zPTfdV9dvXLSjDA3HDyIzWjNkDggH7lX5EebjP/VQ+wJyXRDauvpZxcnDanGIW17DMv0QjN
	WUHAGsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxNV-00000007kY5-1YcV;
	Tue, 24 Nov 2026 20:44:37 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxNS-00000007kXE-08Mc
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 20:44:35 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-9495e8ae239so563989885a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 12:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795553071; x=1796157871; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jyAVIemv4fWXyD+LtqEPdzMQSiUFyBaf0aWHkJ+3gZ0=;
        b=IR6OE6fIgq9JmKV8BZEUTTS0aZAbrKWb/eQcFciXldZWQTaMUAU7HW+nkADtX3bUXv
         XxcdVfqZk5A2c259Jn+i53kDzL6U/iD8aL5vUy5IM+qBUFeGupA6y61cH7BVrEJFD/IH
         L5piUOk3VrIOJq4lPriXBfnqS3FCxWYhLlV9ECgefhzVdXE3rTkruoCf22uAtpgveba7
         M/MxFKcbD61WuppSm4wY/3HY/kVwIJv1zIlB3VDJwajJvpYmUKW+EsIjplt7IBhkn7uI
         rCOYZImhmzm21yro5w5Wzd+dHZ2dBdilWaw267d0uyF0EAc8xvv6mDDMJQIuJCtyjspO
         OvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795553071; x=1796157871;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jyAVIemv4fWXyD+LtqEPdzMQSiUFyBaf0aWHkJ+3gZ0=;
        b=vqYyN4iL/GdbGne0wYR7KhWyqtQhIo1xnfa5paIPZCaKwJDCAmu5zU8vX40FoPexHu
         1DViEyXPBOBv1EYXZb0iMJFmFFkmFSWVrdlFvrS5zuDGoppkZmWBFEDjZD3hmIx5lR7W
         c8aj4bZECTgsxitTfxe9PRljJyQ9xAhcuYpxsv2m8E3lYapJY7DlWIBigakst5a+4SXq
         nbWpe+HYZ5JkDjSEfQAieMPrJyC6pbKeRRPnn5w7895b4r5l8cSwNEF6mAyQwDMsiXTh
         ALBAqJebuEei5lAEHs/jqi2JnymR8JCmX/0ZwMYya714XXtbZpmL1MJEBbs2VFk5qfTT
         edjg==
X-Forwarded-Encrypted: i=1; AL+hErE4urpiXth8HkVgYgJzIHrokQxNEZL1Y9RTjvzERAZSv5pKkyXSFoKhcffhgiohqOsp3m+So+kaL7fjVdoGOg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8G4wE7ZtSHrZP6156V71mZA3QmZSkUl1hQcpDG8THYw4NJCTGe
	foFG7imLX6FeBSE8wmIVL32nl/f8zLgvP8WIa4rrDMg7mhNWMiFvTuG3orlg0pnDs7E=
X-Gm-Gg: AZFdTZd2F7PxpBzhqdiULww0CZFcpn7E2xxHe3HoYsFTLYWUqU/BCvGeC8ReDf4pHbj
	WZsEfCV2tCxI1h7GdYqx1kvZd6MYZdIHbaFtbcNZmMWtruDYp6UrBI4MC61IeWvsoMVBsiul9ei
	Gq/5/11yq+7qttfepjj3jg1SfZy9KjgX1AqCj/JQPkYrEhFkxkknyeit4ndYSD6v5khx09P39dG
	fRJyynYyIWkbKjtjcTPTw/lbi4tdAIUA6oCoK7Qmoc2nA7CC1pFnF/IlVnKO9thinnx4onWl0t0
	8nmCfPWzD3xiuxabNXNATUAGmKrjRUCa3wuVBQPhHGHAEVT6qS4+QMdWFLCu91pfzAtexo7c5It
	5PO01W//t2lDy5HcDxNWhOhL+a6Gm7IUY2hBDcKqs3GqeVBG1BxF9bJRVQdlXxlqQ1XU0v5ubaj
	fJQJziOH9RXBz9c3iXmdAhcUkPjodUP+jHTTdx4qpiOXsRgyrO9LlGuKHST1B7AF+/QUcgz4aB/
	jwfHKlWLMEXRjuVkJ4flPvUTsgVLUMW3kQD2kKmGclBmQK4ggIgKUsxlYC4DwvSTzT9Bsk2jA7y
	0FNOLFPCgtK4XWsolSkFwsMzG7OEjENXLus4yZNr/GHzUfnYSv3PIyI=
X-Received: by 2002:a05:620a:45a2:b0:946:2a0:a11b with SMTP id af79cd13be357-949ba9cddeamr2766829985a.35.1795553071093;
        Tue, 24 Nov 2026 12:44:31 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb418241sm1116481885a.38.2026.11.24.12.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:44:30 -0800 (PST)
Message-ID: <31ccb07818b643bc483e07184d7ecaf918be84ca.camel@ndufresne.ca>
Subject: Re: [PATCH v2 01/17] media: rockchip: rga: zero cmdbuf in shared
 code
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 15:44:27 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-1-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-1-23aa2cb74e61@pengutronix.de>
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
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_124434_140949_AD43F65F 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3353531673963470023=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============3353531673963470023==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-rmu7i0hUOnNVmWqXcZ0e"

--=-rmu7i0hUOnNVmWqXcZ0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Zero the command buffer (cmdbuf) in the shared code instead of the
> individual RGA2/RGA3 implementations. Besides centralizing the memset
> operation this also uses the cmdbuf_size member for the memset size,
> which is also used as the size for the actual allocation.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c  | 2 --
>  drivers/media/platform/rockchip/rga/rga.c     | 1 +
>  drivers/media/platform/rockchip/rga/rga.h     | 3 +++
>  drivers/media/platform/rockchip/rga/rga3-hw.c | 2 --
>  4 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index be1bc8ddbd03b..4d7b0a03820a1 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -443,8 +443,6 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =20
>  static void rga_hw_setup_cmdbuf(struct rga_ctx *ctx)
>  {
> -=09memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE);
> -
>  =09rga_cmd_set_mode(ctx);
>  =09rga_cmd_set_trans_info(ctx);
>  }
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index b3cb6bf8eb863..bd0afd33affe4 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -41,6 +41,7 @@ static void device_run(void *prv)
>  =09spin_lock_irqsave(&rga->ctrl_lock, flags);
>  =09if (ctx->cmdbuf_dirty) {
>  =09=09ctx->cmdbuf_dirty =3D false;
> +=09=09memset(ctx->cmdbuf_virt, 0, rga->hw->cmdbuf_size);
>  =09=09rga->hw->setup_cmdbuf(ctx);
>  =09}
>  =09spin_unlock_irqrestore(&rga->ctrl_lock, flags);
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index bd431534d0d39..2b4f5694375a4 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -152,6 +152,9 @@ struct rga_hw {
>  =09u8 stride_alignment;
>  =09u8 features;
> =20
> +=09/*
> +=09 * Requires that the cmdbuf is already zeroed.
> +=09 */
>  =09void (*setup_cmdbuf)(struct rga_ctx *ctx);
>  =09void (*start)(struct rockchip_rga *rga,
>  =09=09      struct rga_vb_buffer *src, struct rga_vb_buffer *dst);
> diff --git a/drivers/media/platform/rockchip/rga/rga3-hw.c b/drivers/medi=
a/platform/rockchip/rga/rga3-hw.c
> index c4a71306278ba..46ba6d270f232 100644
> --- a/drivers/media/platform/rockchip/rga/rga3-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga3-hw.c
> @@ -261,8 +261,6 @@ static void rga3_cmd_set_wr_format(struct rga_ctx *ct=
x)
> =20
>  static void rga3_hw_setup_cmdbuf(struct rga_ctx *ctx)
>  {
> -=09memset(ctx->cmdbuf_virt, 0, RGA3_CMDBUF_SIZE);
> -
>  =09rga3_cmd_set_win0_format(ctx);
>  =09rga3_cmd_set_trans_info(ctx);
>  =09rga3_cmd_set_wr_format(ctx);

--=-rmu7i0hUOnNVmWqXcZ0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX3LAAKCRDZQZRRKWBy
9AhMAQCGhrDq6Wo05uGIwcgUspFxMR11dARVIwEBmUuM3LVIJwEAocRRq6OhxGmC
mVkh4hNw4ukUg+HMXCrf96F1LggktwY=
=ZVCJ
-----END PGP SIGNATURE-----

--=-rmu7i0hUOnNVmWqXcZ0e--


--===============3353531673963470023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3353531673963470023==--

