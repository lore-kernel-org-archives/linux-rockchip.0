Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D378D606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 03:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4GVab02M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=NxpNegoc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nq3S6kaagh/w8v1Zeaaf+BPLuv7ITEq4ioqa2H2fg4M=; b=4GVab02MDFOMjE
	7X4pPZkuoH/0Fan2pWjh+dgO01fXuyLd5KVByh9oMCeFfqqs01fIUIDmn9e+WW/lwl9ys2X+c6nil
	nqFxOPK1xK+lpJFJaoRwenJguPJKreOucwhncQaQaPn3hM9vbT/4NqnJhyCr19VBNGYn1kfM79S58
	VMY+IkfOUYWTLqHroqx9PcPpZ5+AQJP2qehdR1LBsBx63OgUzjMtA+BXDm+GGyis+KsTz0V2ceFEu
	zHgILnShDLVtnNvp2r0ED78P8XoMkqN18ZcBUb67brRPufa23XEv4bg4mcFBscaiS9vL7S24ScX97
	ihcFmidrjFM8+9CIwyaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj6U-0000000DGDt-3oEx;
	Thu, 22 Oct 2026 03:04:30 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj6S-0000000DGCu-1wrK
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 03:04:29 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c40b9a88a5dso52011966b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 20:04:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792638266; cv=none;
        d=google.com; s=arc-20260327;
        b=hB5v2DFKkFKP4t5PibSnB5LhNloy9IYT3Iod1fhA3GZ9eh4tPoZnOg6YxeIKjYOQVt
         yFrPR8ETE6DJiDoH2GHJqbCT0Ga3lcE1fQ487DRlZy+GjsUt8gWNbyy4+RKHHDnmxBYM
         SozoW27rxMFGKpUn4F2VWC/ToFcRoDWrPoXd1J2oDNjR0DR8Lkka3MNLGGTD2yXbdyfk
         iANiFbbWKIMg8RAlg5B/Eq5knWLzV1VfeAO7rjFpiNreN1cpDh5V7a5LvPvx+GUp/6NY
         2iu3VtVMWGvzkr/S0Tn6qa6xai2LtTGDvY9PxUREWgqW39p0f1ywOJzETZ84/yDsaE4W
         m+hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SGQyhFT+2bVUEMq+UKAq2bulBZGeiIByCybjssa5muk=;
        fh=393mB7j3eUaGP1T3hKUHCSs4A7H3bBU+gIMTHenP400=;
        b=HXBJtPGrPE0DYmf9jZX20KMAwjr/SCqNv7lziGQHJfT34CsrZxABnBl+pJHbEYtFXS
         lmBx++G0fUnVEwB/NjYioSQkDeOb3L2Gqm7SrPHxtb9F7hBjMo2I892rnaKnu8T1c0Ho
         JktfBuLfhw6lzjQ0xcLuhhz458+RueG2PQH5/V/aW26DhcaedM/JU0wH28CHBaLE1rc4
         a4686Y8+KY6VXHM97WFl3/oQcXkPC/8XZDbD4B9ouuAAUoHO8RBEAJdjTdantnU+0KW6
         ECSsJXiBSC5RVuOhnJ70bOy0e8T+zZlKh2r6ctjw2pbL+57SceT1G22FvGEXJvNcI1LM
         NBlQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792638266; x=1793243066; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SGQyhFT+2bVUEMq+UKAq2bulBZGeiIByCybjssa5muk=;
        b=NxpNegocoTIKautWm7lfGe+hqmy+QWC6ELUfs60u0d2/RNCT4s+kvGH3GtWMu7ltYn
         b1spB9uslegrTPJQU3u7R0bCObs7Wgj1osA/Rn6tkV78iwCKc9DU+MvaDtDxEPjNmTER
         FAcJcMJAmORKuJxkJhBWmwtbnVl7iNkgAM2LkE0kT0bWq8crqu3FlzBZEZ74aZ2oghoT
         ci7jfbcMAI8G94LITEWMluK7RJIZ4Z5r0Ta++zucQmtHQQLbHWMgp16FHzn0Oy2UXZc3
         cJPof/3qPWmWVB68cILxv3DO1+EA+Crc0Wo3pIT5labzyNxW8C4gxhqG7ookVnqtc+3r
         nxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792638266; x=1793243066;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SGQyhFT+2bVUEMq+UKAq2bulBZGeiIByCybjssa5muk=;
        b=cuHxRyrsaxLO32gld9kmp6MJULa7a4JIhLDjBj93jplbfSyYnBSMDCAv65AGRWqSHD
         GpYaPdLMC2M3X8KLNVmEKuLozCDzolvYeTjeucRwW0GLL/fjGO6Oku30wtSjbL7fx9sJ
         o0xyJv+ctFnFHsCaMdCTQ5yZOzUOfagO+ZS3ExIbxGvfDbJnbPQswArsWxqoPuHpPvog
         j75guqDi3Q5mKGWkRUEP1Lbm3v0veI3R/LvLJa5oVVadL3q/mCqWdYGl5bjAgw/+Pffq
         rMoDoxsDrcHEaE6Sea+WijhOr9//xIqKV+W+DXNYtCcdsFix6pnku60wb5X6pFcp/HAl
         jCRg==
X-Forwarded-Encrypted: i=1; AKwUvBy1gh4BZWYBrNAswZX02j4ed8ew9i+2hbbXewVXwANcMKYmuKhO9yyc26rrwQ/dQuKLxGjCprDsOE/vEMlObw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIUYcZt+Y9lEDrIPrErHmuSmtPrHBfc8ix+Kn7/VGyDelSf55aw
	Tb2hwWUj0hNRGWlabTvTLfnJ7UO2hNOzPMsIxd+GEOKNt5Zz3MS7enwcX/tVazin5kZL+AVXMCu
	6+VjDRV70QlJLadGDLGQ+FPyJOTzU7jw=
X-Gm-Gg: AYBFou0GqODLOzcQe+fuMIQ6DmYBUeyqJSZAEWnAL+sEmJ/S3BrJp3NEyMLPKfE+iR/
	Ly1nSqMZxhbjqHkDBqmBJJGo2o7UVx+H+O4u4hMtGhkCADITY7n2uIf0fhy1IWTsLtNhSr0pEbW
	/u/5lklWihpvQI+hyX/VuDnsrp/RNURqfTrpvggaK+Do9V7c3E8jylSOnbjm6dIEpA34ZsSk+uq
	vc87VRCjzHb6E0aG6mBbnkVqANduI7eJnf4DoMjP/TJ4baE9TTYMO9rPHrKKOayRVcYlLfhIqZ5
	hVWLtuzNjmjxENYoG8DH1khTa+7OcT9VCRcLmseJ9E6Y+ZVe5MKMbrwUi2BWyKKK//q91ZtxEtN
	QRq98GW7yuHJRX9z/6Y9RxLSTHEhJrGz/4LZdsSb1
X-Received: by 2002:a17:906:7954:b0:c2e:3f49:df04 with SMTP id
 a640c23a62f3a-c46791a9854mr357604066b.1.1792638266169; Wed, 21 Oct 2026
 20:04:26 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260925041751.495818-1-coiaprant@gmail.com> <382B43FA-B225-41C5-80B6-944D9D2802CF@gmail.com>
In-Reply-To: <382B43FA-B225-41C5-80B6-944D9D2802CF@gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 22 Oct 2026 11:04:13 +0800
X-Gm-Features: AclHuK-x9tgKioE3zW95rXaMi6_YZtM8cmcvfk6VmaCJ91IvPzsI4d9vJZ8M2Yw
Message-ID: <CALj3r0jMLFbz+oa_z6kySDg-3aLaFWtFoKv9VB_qHhQZDpemfw@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: mark PD_PIPE as active wakeup on RK3568
To: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_200428_545527_3B3F9AD6 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNzoyN+WGmemBk++8mgo+Cj4gT24gU2VwdGVtYmVyIDI1LCAyMDI2IDEyOjE3OjUxIFBNIEdN
VCswODowMCwgQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPlRoZSBQ
RF9QSVBFIHBvd2VyIGRvbWFpbiBvbiBSSzM1NjggaG9zdHMgdGhlIFhQQ1MsIHRoZSBQQ0llCj4g
PmNvbnRyb2xsZXJzIGFuZCB0aGUgU0FUQSBjb250cm9sbGVycy4gIEFsbCBvZiB0aGVtIGNhbiBh
Y3QgYXMKPiA+d2FrZXVwIHNvdXJjZXMgZm9yIHRoZSBzeXN0ZW06Cj4gPgo+ID4gIC0gdGhlIFhQ
Q1MgZm9yIE1BQyBXb0wsIHRocm91Z2ggdGhlIFNHTUlJIGxpbmsKPiA+ICAtIHRoZSBQQ0llIGNv
bnRyb2xsZXJzIGZvciBQTUUjCj4gPiAgLSB0aGUgU0FUQSBjb250cm9sbGVycyBmb3IgaG90cGx1
ZyB3YWtlCj4gPgo+ID5UaGUgZG9tYWluIGlzIHJlZ2lzdGVyZWQgd2l0aCBhY3RpdmVfd2FrZXVw
ID0gZmFsc2UsIHNvIGdlbnBkIHBvd2Vycwo+ID5pdCBkb3duIGR1cmluZyBzeXN0ZW0gc3VzcGVu
ZCBldmVuIHdoZW4gYSBjb25zdW1lciBpcyBvbiB0aGUgd2FrZXVwCj4gPnBhdGguICBUaGF0IGtp
bGxzIHRoZSBYUENTIGFuZCB0aGUgU2VyRGVzLCB3aGljaCBicmVha3MgTUFDIFdvTCBvbgo+ID5S
SzM1NjggU0dNSUkgYm9hcmRzLCBhbmQgaXQgYWxzbyBwb3dlcnMgZG93biB0aGUgUENJZSBhbmQg
U0FUQQo+ID5jb250cm9sbGVycyB3aGlsZSB0aGVpciBkcml2ZXJzIHN0aWxsIGV4cGVjdCB0aGUg
bGluayB0byBiZSBhbGl2ZS4KPiA+Cj4gPk1hcmsgUERfUElQRSBhcyBhY3RpdmVfd2FrZXVwIHNv
IHRoYXQgZ2VucGQgaG9ub3VycyB0aGUgd2FrZXVwIHBhdGgKPiA+b2YgaXRzIGNvbnN1bWVycy4g
IENvbnN1bWVycyB0aGF0IGNhbGwgZGV2aWNlX3NldF93YWtldXBfcGF0aCgpIGtlZXAKPiA+dGhl
IGRvbWFpbiBwb3dlcmVkOyBjb25zdW1lcnMgdGhhdCBkbyBub3QgbWFyayB0aGVtc2VsdmVzIGFz
IHdha2V1cAo+ID5zb3VyY2VzIGFyZSB1bmFmZmVjdGVkIGFuZCB0aGUgZG9tYWluIGlzIHN0aWxs
IHBvd2VyZWQgZG93biB3aGVuCj4gPm5vdGhpbmcgbmVlZHMgaXQuCj4gPgo+ID5TZXZlcmFsIG90
aGVyIFJvY2tjaGlwIFNvQ3MgYWxyZWFkeSBtYXJrIHRoZWlyIFBDSWUgYW5kIFVTQiBwb3dlcgo+
ID5kb21haW5zIGFzIGFjdGl2ZSB3YWtldXAsIGZvciBleGFtcGxlIFJLMzU4OCdzIHBjaWUgYW5k
IHVzYiBkb21haW5zCj4gPmFuZCBSSzM1NzYncyB1c2IgZG9tYWluLiAgUERfUElQRSBob3N0cyB0
aGUgc2FtZSBraW5kIG9mCj4gPndha2V1cC1jYXBhYmxlIGNvbnRyb2xsZXJzIG9uIFJLMzU2OCwg
c28gdGhpcyBmb2xsb3dzIHRoZSBzYW1lCj4gPnBhdHRlcm4uCj4gPgo+ID5TaWduZWQtb2ZmLWJ5
OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgoKSGkgVWxmLAoKR2VudGxlIHBpbmcg
b24gdGhpcyBwYXRjaC4gSXQgd2FzIHNlbnQgb24gU2VwIDI1IGFuZCBQYXRjaHdvcmsgc2hvd3Mg
aXQKYXMgIkhhbmRsZWQgRWxzZXdoZXJlIiwgYnV0IEkgY2FuJ3QgZmluZCBpdCBtZXJnZWQgaW4g
bGludXgtcG0sCmxpbnV4LXJvY2tjaGlwLCBsaW51eC1uZXh0IG9yIG1haW5saW5lLCBhbmQgSSBo
YXZlbid0IHJlY2VpdmVkIGFueQpyZXZpZXcgZmVlZGJhY2suCgpTaW5jZSB0aGVuLCB0aGUgWFBD
UyBkcml2ZXIgYW5kIERUUyB0aGF0IGRlcGVuZCBvbiBQRF9QSVBFIHN0YXlpbmcKcG93ZXJlZCBh
Y3Jvc3Mgc3VzcGVuZCBoYXZlIGJlZW4gbWVyZ2VkIGFuZCBzZW50IHVwc3RyZWFtOgoKLSBYUENT
IGRyaXZlciBpbiBuZXQtbmV4dDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9uZXRkZXYvbmV0LW5l
eHQvYy81ZTkxZWRmYjBlNDUKCkNvdWxkIHlvdSBsZXQgbWUga25vdyB3aGljaCB0cmVlIHRoaXMg
c2hvdWxkIGdvIHRocm91Z2gsIG9yIHdoZXRoZXIgaXQKd2FzIGFscmVhZHkgcGlja2VkIHNvbWV3
aGVyZT8gSWYgaXQgbmVlZHMgdG8gYmUgcm91dGVkIGRpZmZlcmVudGx5LCBJJ20KaGFwcHkgdG8g
cmVzZW5kIGl0LgoKVGhhbmtzLApDb2lhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
