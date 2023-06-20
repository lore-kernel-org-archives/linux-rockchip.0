Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A92EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 14:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iAsHx/OfSw1iSfv4eYIShFiZ8xui9H71nE3EIAPa2zA=; b=JK9gIiVTpuu8FOPZQ6cIiMwwwY
	0/+5GdS6b7u7PhB1kmZIsF+LH1Ei3h+cAT//ZdNgWcoHGgWPnxQ95OJz/g+Kym18NGkdx0Naltk0H
	rfN8dcmcoK+m3SGcvW+NJJSc4EIHPAi96xaXRPGtQtJTEtrZIq5j0UWfXtvkPz3Taz8e/Ivq4wXeY
	mmpMhcUjCDW8blcPNt7jbb+ne9hhdCDrCfxHTrvZh0CbZ46jJEnXXNxHIneQi36kq0nrx0ypis7zX
	oJirptJxLx1ELI2ZvXm0hy5ttwyPO5RL+Ab0ynsvA4Fzbjudsp6c91J7ToMJEZHfBNUpA0NJ7BydJ
	Z/oHqv5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcX8-00BYeG-1o;
	Tue, 20 Jun 2023 14:40:38 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcX5-00BYdB-2D;
	Tue, 20 Jun 2023 14:40:37 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B1DCE218B5;
	Tue, 20 Jun 2023 14:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1687272031; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pwO5liwYTqMSyQXOoPthNHYqRO4IgUKYysAQxUSQScE=;
	b=1ZwNUJNAZ3jxwWIDCoG9LK3spHqsLG9MDlz0FBrSqXJS98zOzlqI7qTF7uj8NmXuhD1shQ
	T1VeMaRfpO29Y4B3u7rEcK0lGrreqU5jqmtZ0adFdAXwdHjYjJsk+dJ+uaG2tmBnaZq7Hb
	MF0Y4zOV73frs4iO/9CXIj46QI490yI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1687272031;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pwO5liwYTqMSyQXOoPthNHYqRO4IgUKYysAQxUSQScE=;
	b=PXgLLTi7HIUzyQBqwNMSFZYvl1hFMcr5FcsYFSLqlMup6hCYHZfU64YKvjRLpJ/N5dT/lw
	bpBSZ77aSxSJrsCg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 69F21133A9;
	Tue, 20 Jun 2023 14:40:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 6zfWGF+6kWT0WwAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Tue, 20 Jun 2023 14:40:31 +0000
Message-ID: <93b72df1-77c3-8d88-cfca-7b1acd6066e4@suse.de>
Date: Tue, 20 Jun 2023 16:40:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] drm/rockchip: Resolve dependency in GEM DMA helpers
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch,
 laurent.pinchart@ideasonboard.com, kieran.bingham+renesas@ideasonboard.com,
 hjc@rock-chips.com, heiko@sntech.de
Cc: linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20230620121202.28263-1-tzimmermann@suse.de>
 <20230620121202.28263-3-tzimmermann@suse.de>
 <34c08fc9-eb9b-376d-57fb-d47a68c2fc4d@kwiboo.se>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <34c08fc9-eb9b-376d-57fb-d47a68c2fc4d@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_074035_887264_0A657FC1 
X-CRM114-Status: GOOD (  21.42  )
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
Content-Type: multipart/mixed; boundary="===============1635672768728070845=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1635672768728070845==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OfTinYNHZ5UuuwykzqfTdN6g"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OfTinYNHZ5UuuwykzqfTdN6g
Content-Type: multipart/mixed; boundary="------------VbfdzPY5HHfqMFG9evx6eP0f";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Jonas Karlman <jonas@kwiboo.se>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch,
 laurent.pinchart@ideasonboard.com, kieran.bingham+renesas@ideasonboard.com,
 hjc@rock-chips.com, heiko@sntech.de
Cc: linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Message-ID: <93b72df1-77c3-8d88-cfca-7b1acd6066e4@suse.de>
Subject: Re: [PATCH 2/3] drm/rockchip: Resolve dependency in GEM DMA helpers
References: <20230620121202.28263-1-tzimmermann@suse.de>
 <20230620121202.28263-3-tzimmermann@suse.de>
 <34c08fc9-eb9b-376d-57fb-d47a68c2fc4d@kwiboo.se>
In-Reply-To: <34c08fc9-eb9b-376d-57fb-d47a68c2fc4d@kwiboo.se>

--------------VbfdzPY5HHfqMFG9evx6eP0f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjAuMDYuMjMgdW0gMTU6NTYgc2NocmllYiBKb25hcyBLYXJsbWFuOg0KPiBI
aSBUaG9tYXMsDQo+IA0KPiBPbiAyMDIzLTA2LTIwIDE0OjAzLCBUaG9tYXMgWmltbWVybWFu
biB3cm90ZToNCj4+IFJlbW92ZSB0aGUgZGVwZW5kZW5jeSBvbiB0aGUgR0VNIERNQSBoZWxw
ZXIgbGlicmFyeS4gUm9ja2NoaXAgY29tZXMNCj4+IHdpdGggaXRzIG93biBpbXBsZW1lbnRh
dGlvbiBvZiB0aGUgR0VNIGludGVyZmFjZS4gSXQgb25seSB1c2VzIHRoZSBWTQ0KPj4gY2Fs
bGJhY2tzIGluIGRybV9nZW1fZG1hX3ZtX29wcyBmcm9tIHRoZSBHRU0gRE1BIGhlbHBlcnMu
IFRoZXNlIGFyZQ0KPj4gbm90IERNQSBzcGVjaWZpYy4NCj4+DQo+PiBEdXBsaWNhdGUgZHJt
X2dlbV9kbWFfdm1fb3BzIGluIHJvY2tjaGlwIGFuZCByZW1vdmUgYWxsIGRlcGVuZGVuY2ll
cyBvbg0KPj4gdGhlIEdFTSBETUEgaGVscGVyIGxpYnJhcnkuDQo+IA0KPiBJIGhhdmUgaW50
ZW50aW9ucyB0byByZW1vdmUgdGhlIGVudGlyZSBjdXN0b20gaW1wbGVtZW50YXRpb24gb2Yg
dGhlIEdFTQ0KPiBpbnRlcmZhY2UgYW5kIHJlcGxhY2UgaXQgd2l0aCB1c2Ugb2YgR0VNIERN
QSBoZWxwZXJzIGluIGEgZnV0dXJlIHNlcmllcy4NCj4gDQo+IEN1cnJlbnQgY3VzdG9tIGlt
cGxlbWVudGF0aW9uIGJyZWFrIGltcG9ydCBvZiB2aWRlbyBmcmFtZWJ1ZmZlcnMgbG9jYXRl
ZA0KPiBpbiBtZW1vcnkgYmV5b25kIDRHQi4gU3dpdGNoaW5nIHRvIHVzZSBwdXJlIEdFTSBE
TUEgaGVscGVycyBzb2x2ZWQgdGhhdA0KPiBpc3N1ZSBidXQgcmVxdWlyZXMgcmV3b3JraW5n
IElPTU1VIGludGVncmF0aW9uIGZvciBmdWxsIHN1cHBvcnQgb2YNCj4gbXVsdGlwbGUgVk9Q
cyBvbiBlLmcuLCBSSzMyODggYW5kIFJLMzM5OS4NCj4gDQo+IEkgaGF2ZSBubyBFVEEgb24g
d2hlbiBzdWNoIHNlcmllcyBjYW4gYmUgcmVhZHkgc28gdGhpcyBpcyBtb3JlIG9mIGENCj4g
aGVhZHMgdXAgdGhhdCBJIHdpbGwgcmV2ZXJ0IHRoaXMgcmVtb3ZhbCBvZiBkZXBlbmRlbmN5
IG9uIEdFTSBETUEgaGVscGVyDQo+IGxpYnJhcnkgaW4gYSBmdXR1cmUgc2VyaWVzLg0KDQpO
byBwcm9ibGVtLiBJJ20gb25seSBpbnRlcmVzdGVkIGluIGNsZWFuaW5nIHVwIHRoZSBjdXJy
ZW50IGludGVyZmFjZXMuIA0KUm9ja2NoaXAgY2FuIGVhc2lseSBzd2l0Y2ggdG8gcmVhbCBH
RU0gRE1BIGNvZGUuDQoNCkJlc3QgcmVnYXJkcw0KVGhvbWFzDQoNCj4gDQo+IFJlZ2FyZHMs
DQo+IEpvbmFzDQo+IA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgfCAxIC0NCj4+ICAgZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDIgKy0NCj4+ICAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8IDggKysrKysrLS0NCj4+ICAgMyBm
aWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+Pg0KPiBb
c25pcF0NCg0KLS0gDQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVyIERldmVs
b3Blcg0KU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpGcmFua2Vuc3Ry
YXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0KR0Y6IEl2byBUb3RldiwgQW5k
cmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbg0KSFJCIDM2ODA5
IChBRyBOdWVybmJlcmcpDQo=

--------------VbfdzPY5HHfqMFG9evx6eP0f--

--------------OfTinYNHZ5UuuwykzqfTdN6g
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmSRul4FAwAAAAAACgkQlh/E3EQov+Cw
WA/+OyPL01W5b95WE7W8w0mhA/+w7TDUeQ3jgf4xmI6vH5KL/xxxldRTaf6nqphy1nRAhgz/RZIk
ZBNOskQskRwI+Cc0wD1IUJ/pKcH6+HFiL17KC29z0dhzAGtWLGC2vdudtapZw8+lFQkJqByq7MZC
k5JJnJDIirnSX1Iw00m2UmH9/KoIXLZWOAUSqeRw6z7ccUZuxwPvNxpd5QnBNhlLKZfcE1pOi1jy
xEwzKsabsGLJRbt3/HFnlWvvhCnEaTWYqqkhcGWKTyVzrZv98IB6nD+Ze3wDC1CHm0am+w8DOatg
pH2w7eQXy6sKNP5XEuUiSxUNrZ4EMG4s+Ady+gfeszNRBtvCHBI08QkFrk940YzpqAZXehkhLvKm
TcAF1cY929Nq0IZZ8g2QGglGjWdHS16vP9u+f0SCM3M9sOgYTKkn5dAiuyagqKOBxgRbuCBFk6hH
nobwZEt6dxLZp9EAz1D1JP/urb7km6MEQP5ch0VEGFr7H4AxTzAKDPgXyNvYV2GvsSxYY2WawXuX
Ma+KlzQvZdhfyx2doyOLVX/6+Iu6jxT7g34517CcM4Vacwv8laMX7zub3Oa4T4vFuZevDfazXhen
5bw5cYsume6uUjiwSFw5LDoOnHsqPJqLuQspPm35T9NsfeLBqJj9FhM03NdbTJNkRgAtZAkxRlXA
wiE=
=IKbW
-----END PGP SIGNATURE-----

--------------OfTinYNHZ5UuuwykzqfTdN6g--


--===============1635672768728070845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1635672768728070845==--

