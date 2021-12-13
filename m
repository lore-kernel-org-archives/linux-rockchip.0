Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0AD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 13:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Nppd9tm96bvzUs4LFXKR/HsIQaWBiFoSxXaUBHQKb8=; b=OTagldK1Kk1s1FTSPQtltRGl1v
	AWzSdd5XvEWiMk3nJrTzF/WXVQJOw4YxpxyCFU2oWSJbjgtd0E/pfwW7aehqjrVKhyQNuBqJEWDdz
	QTpq3F1lmZzcwnxM97FUy+l+muzfqtKDgacygztzRD0CoMt1O72w0VZ1QGn96DUnYFN4+8RwlgWG9
	NCJWTnQH9KMXFk2DC7soHwE1l2yp+79zWc220mAEWZra+Vc1hjW6B3OaqovdoGAs6djaip4lIqRU4
	6qP1ne4kzE5kWpA1/WsogHrQv0+Hq/Zb5Rjx1qqOvs9tfQ2LpONLvWXnhVdlOWA51PHQxQrwMf7yu
	qyeK6cmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwlmH-009pFg-AU; Mon, 13 Dec 2021 13:54:05 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwljX-009nto-2X; Mon, 13 Dec 2021 13:51:16 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1C632212B6;
 Mon, 13 Dec 2021 13:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1639403472; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3pbPGUydyhh3UOGI/DKu1/UXH5BGZJalpxxCmIrkR4A=;
 b=BCVhQ2evX5ANkYcI7wTxdKLQflZOUvTsBBQts9UCbV/9fl0Bt8miDo965wV8vno8yAOzSC
 abtG0JI8yU63CAQPPn3XvFVaIYnYZqCclRs/TpcfLYOsi+bl94UM26V2D2ESj1k65BJAL6
 skT0avAgWwA0USl3ecnuAOLVq4AZZpc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1639403472;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3pbPGUydyhh3UOGI/DKu1/UXH5BGZJalpxxCmIrkR4A=;
 b=IgN/KYzwiLXuwz8uXiYC+yyAUbgKd9iazcuZF6RAYxHs22CpZUA6P8WSh8aNKyXXUwRNPx
 ioUWTUxf74Ehk0AQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D138713D90;
 Mon, 13 Dec 2021 13:51:11 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id XQEOMs9Pt2HRGgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 13 Dec 2021 13:51:11 +0000
Message-ID: <83ab4452-3744-20fe-e3ba-5bd4b48622e3@suse.de>
Date: Mon, 13 Dec 2021 14:51:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 0/3] drm/dp: Move DisplayPort helpers into own module
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
References: <20211213093650.19598-1-tzimmermann@suse.de>
 <87lf0o7hnv.fsf@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <87lf0o7hnv.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_055115_323212_C3EC7263 
X-CRM114-Status: GOOD (  18.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============7454547298301211290=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7454547298301211290==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Sx5n4XU3nlxLAa0gCfsogVHd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Sx5n4XU3nlxLAa0gCfsogVHd
Content-Type: multipart/mixed; boundary="------------LAoMFDIye50DiRbbkDojKm0B";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Jani Nikula <jani.nikula@linux.intel.com>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Message-ID: <83ab4452-3744-20fe-e3ba-5bd4b48622e3@suse.de>
Subject: Re: [PATCH 0/3] drm/dp: Move DisplayPort helpers into own module
References: <20211213093650.19598-1-tzimmermann@suse.de>
 <87lf0o7hnv.fsf@intel.com>
In-Reply-To: <87lf0o7hnv.fsf@intel.com>

--------------LAoMFDIye50DiRbbkDojKm0B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTMuMTIuMjEgdW0gMTQ6MzQgc2NocmllYiBKYW5pIE5pa3VsYToNCj4gT24g
TW9uLCAxMyBEZWMgMjAyMSwgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+IHdyb3RlOg0KPj4gU3BsaXQtb2ZmIERpc3BsYXlQb3J0IGZ1bmN0aW9ucyBmcm9tIEtN
UyBoZWxwZXIgbGlicmFyeSBhbmQgbW92ZSB0aGVtDQo+PiBpbnRvIHRoZWlyIG93biBtb2R1
bGUuIFJlZHVjZXMgdGhlIHNpemUgb2YgZHJtX2ttc19oZWxwZXIua28gYnkgfjUwJS4NCj4+
DQo+PiBUaGlzIHBhdGNoc2V0IGlzIHBhcnQgb2YgYW4gb24tZ29pbmcgZWZmb3J0IHRvIHJl
ZHVjZSB0aGUgbWluaW11bQ0KPj4gYmluYXJ5IHNpemUgb2YgdGhlIERSTSBjb3JlIGFuZCBo
ZWxwZXJzLiBJdCdzIGhlbHBmdWwgZm9yIHN5c3RlbXMgd2l0aA0KPj4gZWFybHktYm9vdCBE
Uk0gZ3JhcGhpY3MsIHdoaWNoIHJlcXVpcmVzIERSTSB0byBiZSBsaW5rZWQgaW50byB0aGUN
Cj4+IGtlcm5lbCBpbWFnZS4NCj4gDQo+IFdvdWxkIGl0IGJlIHRpbWUgdG8gYWRkIGEgc3Vi
ZGlyZWN0b3J5IGZvciBlYWNoIG5vbi1kcml2ZXIsIG5vbi1jb3JlIGRybQ0KPiBtb2R1bGU/
IFdlJ3ZlIHRvdWNoZWQgdGhpcyB0b3BpYyBiZWZvcmUuIEkgZmluZCBpdCBpbmNyZWFzaW5n
bHkgaGFyZCB0bw0KPiByZW1lbWJlciB3aGljaCBmaWxlcyBhcmUgcGFydCBvZiBoZWxwZXJz
LiBUaGlzIHdvdWxkIGFsc28gaGVscCB3aXRoIHRoZQ0KPiBhcmJpdHJhcnkgZHJtX2RwX2hl
bHBlcl9tb2QuYyBuYW1pbmcuDQo+IA0KPiBQZXJoYXBzIGRyaXZlcnMvZ3B1L2RybS9kcm1f
ZHAvPw0KDQpJdCdzIHByb2JhYmx5IHdvcnRoIGl0LCBidXQgSSdkIHByZWZlciBhIHNlcGFy
YXRlIHBhdGNoc2V0IGFuZCANCmRpc2N1c3Npb24gb3ZlciB0aGlzLiBJdCBhZmZlY3RzIHNl
dmVyYWwgbW9kdWxlcy4NCg0KSWYgYWRkaW5nIGRybV9kcF9oZWxwZXJfbW9kLmMgaXMgb3Zl
cmtpbGwsIHRoYXQgbW9kdWxlIGNvZGUgY2FuIGFsc28gYmUgDQphZGRlZCB0byBkcm1fZHAu
YyBmb3Igbm93Lg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+IA0KPiBCUiwNCj4gSmFu
aS4NCj4gDQo+IA0KPiANCj4+DQo+PiBUaG9tYXMgWmltbWVybWFubiAoMyk6DQo+PiAgICBk
cm0vZHBfbXN0OiBSZW1vdmUgdHJhaWxpbmcgd2hpdGVzcGFjZS4NCj4+ICAgIGRybS9kcDog
TW92ZSBEUCBkZWNsYXJhdGlvbnMgaW50byBzZXBhcmF0ZSBoZWFkZXIgZmlsZQ0KPj4gICAg
ZHJtL2RwOiBNb3ZlIERpc3BsYXlQb3J0IGhlbHBlcnMgaW50byBzZXBhcmF0ZSBoZWxwZXIg
bW9kdWxlDQo+Pg0KPj4gICBkcml2ZXJzL2dwdS9kcm0vS2NvbmZpZyAgICAgICAgICAgICAg
ICAgICAgICAgfCAgOCArKysrKysNCj4+ICAgZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgIHwgMTQgKysrKysrLS0tLQ0KPj4gICBkcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL0tjb25maWcgICAgICAgICAgICAgICAgfCAgNCArKysNCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9LY29uZmlnICAgICAgIHwgIDIgKysNCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL0tjb25maWcgICAgICAgIHwgIDEgKw0K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2NydGNfaGVscGVyX2ludGVybmFsLmggICAgfCAy
NyAtLS0tLS0tLS0tLS0tLS0tLS0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL3tkcm1fZHBfaGVs
cGVyLmMgPT4gZHJtX2RwLmN9IHwgIDIgKy0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9hdXhfZGV2LmMgICAgICAgICAgICAgIHwgIDIgKy0NCj4+ICAgZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9oZWxwZXJfaW50ZXJuYWwuaCAgICAgIHwgMjggKysrKysrKysrKysrKysrKysr
Kw0KPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlcl9tb2QuYyAgICAgICAgICAg
fCAyMiArKysrKysrKysrKysrKysNCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3Rf
dG9wb2xvZ3kuYyAgICAgICAgIHwgIDQgKy0tDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1f
a21zX2hlbHBlcl9jb21tb24uYyAgICAgICB8IDE0IC0tLS0tLS0tLS0NCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDEgKw0KPj4gICBk
cml2ZXJzL2dwdS9kcm0vbXNtL0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMSArDQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L0tjb25maWcgICAgICAgICAgICAgICB8ICAx
ICsNCj4+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgICAgICAgICAgICAg
IHwgIDEgKw0KPj4gICBkcml2ZXJzL2dwdS9kcm0vdGVncmEvS2NvbmZpZyAgICAgICAgICAg
ICAgICAgfCAgMSArDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS94bG54L0tjb25maWcgICAgICAg
ICAgICAgICAgICB8ICAxICsNCj4+ICAgMTggZmlsZXMgY2hhbmdlZCwgODMgaW5zZXJ0aW9u
cygrKSwgNTEgZGVsZXRpb25zKC0pDQo+PiAgIHJlbmFtZSBkcml2ZXJzL2dwdS9kcm0ve2Ry
bV9kcF9oZWxwZXIuYyA9PiBkcm1fZHAuY30gKDk5JSkNCj4+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyX2ludGVybmFsLmgNCj4+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyX21vZC5jDQo+
Pg0KPj4NCj4+IGJhc2UtY29tbWl0OiAzZjQyMjgyODIyMWQ5Y2VlZmNkZGVmMGJlMzM1NjFi
MTY0NmExY2JlDQo+PiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGMyYjJmMDhmMGVjY2M5ZjVk
ZjBjMGRhNDlmYTFkMzYyNjdkZWIxMWQNCj4+IHByZXJlcXVpc2l0ZS1wYXRjaC1pZDogYzY3
ZTVkODg2YTQ3YjdkMDI2NmQ4MTEwMDgzNzU1N2ZkYTM0Y2IyNA0KPj4gLS0NCj4+IDIuMzQu
MQ0KPj4NCj4gDQoNCi0tIA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBE
ZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KTWF4ZmVs
ZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2ODA5LCBBRyBOw7xy
bmJlcmcpDQpHZXNjaMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------LAoMFDIye50DiRbbkDojKm0B--

--------------Sx5n4XU3nlxLAa0gCfsogVHd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmG3T88FAwAAAAAACgkQlh/E3EQov+Bz
FQ/9HqIxcguCQf8aqbHkJ6mtF97KK0U0NSUTx3DJFKTQ+2G1hYqxb9ppDhpR4EwKojU5lo44cj8G
7IBTc+FaDUl3/7qn406FW0BELJKUvy9863kX6yYzB99lROIfYfkAVJt8Wm4ahbdBVYq8Wzu5UsZr
2dInmA9TrCz6g+yhBUPvUC/zIgaCTVsKV7fSV1GQwgb3lcHTNQ6bfEBR6mnDU2C/pDJOFY/U4p4m
NWD0j+O8UHugJ+tNO3O8IaqlCc+2RADZUMY6YMTrR9/tJkyqcbOE88m9RJR3dLOIFtoL+99LDZLd
Ac0z/dvDzn2Ni3PEfwwxMv7pEmzHYT+Eh++xFal5XsG00EIfrwatre8EB277IzCLc9oHmmPwPihu
QVbJhcJnrV7c7fgjL7wIrQDM0oOAoTeBRjgxG6FjpAGThRdPPsSkjOBCSme5V0Kjqvp13egOs/sE
YonoYvYaVF57b1Tinv9/m7VTNYfUceeAnpxfyvdgtsBOlbsioHayxO6a5cvHyaN0MU79Khq0qsUk
DfoBzzXK1+5OBkufOZN8X6TMJl21hO4fWgt83KGmZ9GGZvdqsIicpZZYhjX/YPv242gu48EWT1PR
AQYHkWRRG/7OecpNC3inhi9zDTTIcq5BokW4wgePEeeg8/hGO7THg3qsOhj/4dZP1WvWIoXnEXh9
78A=
=j7+c
-----END PGP SIGNATURE-----

--------------Sx5n4XU3nlxLAa0gCfsogVHd--


--===============7454547298301211290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7454547298301211290==--

