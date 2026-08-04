Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402F2C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 09:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LV6lQuOGX0cHnMmgvIIpcdWFDiwwyWDv+/uIRkAxwoA=; b=hDzFBiERSunJRkCoggajxVM2CP
	SE3izuec88gpIhhrtZHWT0Aehugoo8B1IeCDwi6UAVe1VKrFE+ryS771PyWXzarhUP7VkiQRQmrUo
	64qWBp8BYRU4tGtrWoNXQ+1RvxJg5wRIfFcr5BvqO5djF1pCyfrjA1tWL/uNoHkIuVF/U6oe4bNZU
	89IPP65tp/jIjWGiTRQRDad00PfIaTJn5Mwas2ek36i18XttICM+495wyFmxlvkmDoaFg3r4JKUp7
	DQ3GJozhF8cH/BgBRb8Z6iJQ16IwOpOKaLRXTkdvuuxmnZeg8JjLMz6u76w2+f9Fa9qKKwycDDXec
	dIQmadmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrBCU-00000001Q4B-3ppe;
	Tue, 04 Aug 2026 09:12:42 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrBCT-00000001Q3k-3o8E;
	Tue, 04 Aug 2026 09:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=wfzxdUNz5hU0FrJNe5i6lUnlVJ8GKKJNvBxqXSs0TCI=; b=IMxatB9cSvxeNSn65vxCQXCnqE
	DM3XXWRaF8GjYBT7u+SECNvi0jkDHnRkV7Sk8u30ASSwskaAOkCR385lIEg1vGAWOF7GicmgVWBMD
	w2Fk1/DykdghwioSDoVsAv5e3qDqbQkQOQ7yi/vqgjzs4wK8qe7IIK+UloCu0FejEdt/Mlz96Prxl
	Y03HpFVF0jK0J0zhrh1Rsb5LajwF53n3SER8idkG8n8FfrcuXW3RPk3AIwJX2Nt0HEc81wDPjGrFd
	eHamYUpMtV7Kkqtp3jHhOcxxNDKMnixrOMCaFfboXMDC/bXzZSyBsW8GX9jjKUBdQaGZPrRJc8otH
	xBGDoxcw==;
Received: from ixit.cz ([84.42.129.46])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wrBCC-00000009j6t-2eta;
	Tue, 04 Aug 2026 09:12:27 +0000
Received: from [172.16.124.192] (ip-78-44-13-22.bb.vodafone.cz [78.44.13.22])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id D059353400F7;
	Tue, 04 Aug 2026 11:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1785834742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=wfzxdUNz5hU0FrJNe5i6lUnlVJ8GKKJNvBxqXSs0TCI=;
	b=Yb9uSmGE0ah/7nH3FizhJeXyiqfu1R43yomBq+k5hC+fsLvtTCgkb/Jo/jLbq9Hs8nRC6X
	23tpXNuSwosQx24cfAgtOgdtEcW9/MA7c05wI4lVjc+g/VUoZX5qckm85sGbRKfB3treR7
	oSWoxsCZbKZuBMHA/UUpooMdxbHNyK0=
Message-ID: <7d55eaba-967c-4de6-8021-6b2d17670b1f@ixit.cz>
Date: Tue, 4 Aug 2026 11:12:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: rk3399-pinephone-pro: DW9714
 coil requires higher voltage
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Manuel Traut <manut@mecka.net>, Alexander Warnecke
 <awarnecke002@hotmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, imx@lists.linux.dev, stable@vger.kernel.org
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-2-7b4d90788f9f@ixit.cz>
 <2j7ogeqj565sftp5wzqvtzi2id76fof623bifbmyu6ckhf6vm6@ya7h4tp5i4qf>
Content-Language: en-US
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 xsFNBF5v1x4BEADS3EddwsNsvVAI1XF8uQKbdYPY/GhjaSLziwVnbwv5BGwqB1tfXoHnccoA
 9kTgKAbiXG/CiZFhD6l4WCIskQDKzyQN3JhCUIxh16Xyw0lECI7iqoW9LmMoN1dNKcUmCO9g
 lZxQaOl+1bY/7ttd7DapLh9rmBXJ2lKiMEaIpUwb/Nw0d7Enp4Jy2TpkhPywIpUn8CoJCv3/
 61qbvI9y5utB/UhfMAUXsaAgwEJyGPAqHlC0YZjaTwOu+YQUE3AFzhCbksq95CwDz4U4gdls
 dmv9tkATfu2OmzERZQ6vJTehK0Pu4l5KmCAzYg42I9Dy4E6b17x6NncKbcByQFOXMtG0qVUk
 F1yeeOQUHwu+8t3ZDMBUhCkRL/juuoqLmyDWKMc0hKNNeZ9BNXgB8fXkRLWEUfgDXsFyEkKp
 NxUy5bDRlivf6XfExnikk5kj9l2gGlNQwqROti/46bfbmlmc/a2GM4k8ZyalHNEAdwtXYSpP
 8JJmlbQ7hNTLkc3HQLRsIocN5th/ur7pPMz1Beyp0gbE9GcOceqmdZQB80vJ01XDyCAihf6l
 AMnzwpXZsjqIqH9r7T7tM6tVEVbPSwPt4eZYXSoJijEBC/43TBbmxDX+5+3txRaSCRQrG9dY
 k3mMGM3xJLCps2KnaqMcgUnvb1KdTgEFUZQaItw7HyRd6RppewARAQABzSBEYXZpZCBIZWlk
 ZWxiZXJnIDxkYXZpZEBpeGl0LmN6PsLBlAQTAQgAPgIbAwULCQgHAgYVCgkICwIEFgIDAQIe
 AQIXgBYhBNd6Cc/u3Cu9U6cEdGACP8TTSSByBQJl+KksBQkPDaAOAAoJEGACP8TTSSBy6IAQ
 AMqFqVi9LLxCEcUWBn82ssQGiVSDniKpFE/tp7lMXflwhjD5xoftoWOmMYkiWE86t5x5Fsp7
 afALx7SEDz599F1K1bLnaga+budu55JEAYGudD2WwpLJ0kPzRhqBwGFIx8k6F+goZJzxPDsf
 loAtXQE62UvEKa4KRRcZmF0GGoRsgA7vE7OnV8LMeocdD3eb2CuXLzauHAfdvqF50IfPH/sE
 jbzROiAZU+WgrwU946aOzrN8jVU+Cy8XAccGAZxsmPBfhTY5f2VN1IqvfaRdkKKlmWVJWGw+
 ycFpAEJKFRdfcc5PSjUJcALn5C+hxzL2hBpIZJdfdfStn+DWHXNgBeRDiZj1x6vvyaC43RAb
 VXvRzOQfG4EaMVMIOvBjBA/FtIpb1gtXA42ewhvPnd5RVCqD9YYUxsVpJ9d+XsAy7uib3BsV
 W2idAEsPtoqhVhq8bCUs/G4sC2DdyGZK8MRFDJqciJSUbqA+5z1ZCuE8UOPDpZKiW6H/OuOM
 zDcjh0lOzr4p+/1TSg1PbUh7fQ+nbMuiT044sC1lLtJK0+Zyn0GwhR82oNM4fldNsaHRW42w
 QGD35+eNo5Pvb3We5XRMlBdhFnj7Siggp4J8/PJ6MJvRyC+RIJPGtbdMB2/RxWunFLn87e5w
 UgwR9jPMHAstuTR1yR23c4SIYoQ2fzkrRzuazsFNBF5v1x4BEADnlrbta2WL87BlEOotZUh0
 zXANMrNV15WxexsirLetfqbs0AGCaTRNj+uWlTUDJRXOVIwzmF76Us3I2796+Od2ocNpLheZ
 7EIkq8budtLVd1c06qJ+GMraz51zfgSIazVInNMPk9T6fz0lembji5yEcNPNNBA4sHiFmXfo
 IhepHFOBApjS0CiOPqowYxSTPe/DLcJ/LDwWpTi37doKPhBwlHev1BwVCbrLEIFjY0MLM0aT
 jiBBlyLJaTqvE48gblonu2SGaNmGtkC3VoQUQFcVYDXtlL9CVbNo7BAt5gwPcNqEqkUL60Jh
 FtvVSKyQh6gn7HHsyMtgltjZ3NKjv8S3yQd7zxvCn79tCKwoeNevsvoMq/bzlKxc9QiKaRPO
 aDj3FtW7R/3XoKJBY8Hckyug6uc2qYWRpnuXc0as6S0wfek6gauExUttBKrtSbPPHiuTeNHt
 NsT4+dyvaJtQKPBTbPHkXpTO8e1+YAg7kPj3aKFToE/dakIh8iqUHLNxywDAamRVn8Ha67WO
 AEAA3iklJ49QQk2ZyS1RJ2Ul28ePFDZ3QSr9LoJiOBZv9XkbhXS164iRB7rBZk6ZRVgCz3V6
 hhhjkipYvpJ/fpjXNsVL8jvel1mYNf0a46T4QQDQx4KQj0zXJbC2fFikAtu1AULktF4iEXEI
 rSjFoqhd4euZ+QARAQABwsF8BBgBCAAmAhsMFiEE13oJz+7cK71TpwR0YAI/xNNJIHIFAmX4
 qVAFCQ8NoDIACgkQYAI/xNNJIHKN4A/+Ine2Ii7JiuGITjJkcV6pgKlfwYdEs4eFD1pTRb/K
 5dprUz3QSLP41u9OJQ23HnESMvn31UENk9ffebNoW7WxZ/8cTQY0JY/cgTTrlNXtyAlGbR3/
 3Q/VBJptf04Er7I6TaKAmqWzdVeKTw33LljpkHp02vrbOdylb4JQG/SginLV9purGAFptYRO
 8JNa2J4FAQtQTrfOUjulOWMxy7XRkqK3QqLcPW79/CFn7q1yxamPkpoXUJq9/fVjlhk7P+da
 NYQpe4WQQnktBY29SkFnvfIAwqIVU8ix5Oz8rghuCcAdR7lEJ7hCX9bR0EE05FOXdZy5FWL9
 GHvFa/Opkq3DPmFl/0nt4HJqq1Nwrr+WR6d0414oo1n2hPEllge/6iD3ZYwptTvOFKEw/v0A
 yqOoYSiKX9F7Ko7QO+VnYeVDsDDevKic2T/4GDpcSVd9ipiKxCQvUAzKUH7RUpqDTa+rYurm
 zRKcgRumz2Tc1ouHj6qINlzEe3a5ldctIn/dvR1l2Ko7GBTG+VGp9U5NOAEkGpxHG9yg6eeY
 fFYnMme51H/HKiyUlFiE3yd5LSmv8Dhbf+vsI4x6BOOOq4Iyop/Exavj1owGxW0hpdUGcCl1
 ovlwVPO/6l/XLAmSGwdnGqok5eGZQzSst0tj9RC9O0dXO1TZocOsf0tJ8dR2egX4kxM=
In-Reply-To: <2j7ogeqj565sftp5wzqvtzi2id76fof623bifbmyu6ckhf6vm6@ya7h4tp5i4qf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_101224_858645_1EF2D215 
X-CRM114-Status: GOOD (  17.08  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDQvMDgvMjAyNiAwOTozOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSGksCj4gCj4gT24g
U2F0LCBBdWcgMDEsIDIwMjYgYXQgMDI6MzU6MjFBTSArMDIwMCwgRGF2aWQgSGVpZGVsYmVyZyB2
aWEgQjQgUmVsYXkgd3JvdGU6Cj4+IEZyb206IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQu
Y3o+Cj4+Cj4+IEJ5IGRhdGFzaGVldCB0aGUgVkREIChpbi1rZXJuZWwgbmFtZWQgdmNjKSByYW5n
ZSBpcyBiZXR3ZWVuIDIuMyB0byA0LjMgVi4KPj4gVXN1YWxseSBpdCdzIGFyb3VuZCAyLjggVi4g
SGVyZSBpdCBtYXRjaGVzIHRoZSBhdmRkMnY4X2R2cC4KPj4KPj4gRml4ZXM6IDkzMzZlYjgyOWEx
OCAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBkZXNjcmliZSBJMmMgQnVzIDEgYW5kIElNWDI1OCB3
b3JsZCBjYW1lcmEgb24gUGluZVBob25lIFBybyIpCj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCj4+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4+
IC0tLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+PiBpbmRleCBkNDZjZGZlM2Y3ODQ5Li5iZGUzNWQ5YjIy
NjNlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lcGhvbmUtcHJvLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+PiBAQCAtNDczLDE3ICs0NzMsMTcgQEAgd2NhbV9vdXQ6
IGVuZHBvaW50IHsKPj4gICAJCQl9Owo+PiAgIAkJfTsKPj4gICAJfTsKPj4gICAKPj4gICAJd2Nh
bV9sZW5zOiBjYW1lcmEtbGVuc0BjIHsKPj4gICAJCWNvbXBhdGlibGUgPSAiZG9uZ3dvb24sZHc5
NzE0IjsKPj4gICAJCXJlZyA9IDwweDBjPjsKPj4gICAJCS8qIFNhbWUgSTJjIGJ1cyBhcyBib3Ro
IGNhbWVyYXMsIGRlcGVuZHMgb24gdmNjYTF2OF9jb2RlYyBmb3IgcG93ZXIuICovCj4+IC0JCXZj
Yy1zdXBwbHkgPSA8JnZjYzF2OF9kdnA+Owo+PiArCQl2Y2Mtc3VwcGx5ID0gPCZhdmRkMnY4X2R2
cD47Cj4gCj4gVGhpcyBkb2VzIG5vdCBtYXRjaCByZWFsaXR5LCBzY2hlbWF0aWMgc2F5cyBpdCdz
IFZDQzJWOF9EVlA6Cj4gCj4gCWh0dHBzOi8veGZmLmN6L2RsL3RtcC82MjUzYTA0NjUzMjlkZjQx
LnBuZwoKQWhvaiwKCnRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcywgc2luY2UgSSBrbm93IHlvdSBo
YXZlIHRoZSBkZXZpY2UsIHdvdWxkIGJlIHRvbyBtdWNoIHRvIAphc2sgeW91IHRvIHNlbmQgc3Rh
bmRhbG9uZSBmaXggZm9yIFBQIFBybz8KCkkgd291bGQgZHJvcCB0aGUgY2hhbmdlIGZyb20gdGhl
IHNlcmllcy4KCkRhdmlkCgpQLlMuIEkgbm90aWNlZCBJIGRpZG4ndCBtYXJrIHRoaXMgc2VyaWVz
IFJGQy4gVG9vIGxhdGUuCgo+IAo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4+ICAgCX07Cj4+ICAgCj4+
ICAgCXVjYW06IGNhbWVyYUAzNiB7Cj4+ICAgCQljb21wYXRpYmxlID0gIm92dGksb3Y4ODU4IjsK
Pj4gICAJCXJlZyA9IDwweDM2PjsKPj4gICAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfQ0lGX09VVD47
IC8qIE1JUElfTUNMSzEsIGRlcml2ZWQgZnJvbSBDSUZfQ0xLMCAqLwo+PiAgIAkJY2xvY2stbmFt
ZXMgPSAieHZjbGsiOwo+PiAgIAkJZG92ZGQtc3VwcGx5ID0gPCZ2Y2MxdjhfZHZwPjsKPj4KPj4g
LS0gCj4+IDIuNTMuMAo+Pgo+PgoKLS0gCkRhdmlkIEhlaWRlbGJlcmcKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
