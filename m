Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 283D2C83038
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jul 2025 19:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYPlLpW2E23J95bYDn89XnAIhWzrr1tpN6N9E04rGLA=; b=bMtEtZEbmQm519
	mmeixUtcvLX2yOE8lV2+bQd6i8ph//lJcisTnldt14Ld/6zGKvy5qsh8Gck/2LsP10S+tW7gGYFzL
	6FOVYOdFwFgubv6TVr68nRbfZ1ea2u/d+o89qJUoenOozWFFHd6kHVbhPHJnDL1uVnJKOEeV9EOZf
	YsfpbFUy/zU/61+AvX/hnfniUefA+EJdQBg+mjzJgmxp5aIkWdn5N0I6ss1ZZym17+CWEjLnT2ZE3
	CZIU0ei3PtlX9PuvIqjA5eEv7D2vRbvOi/yDtP6UhooeksfHCsD45Yk8iyc/lHTOXboVYqyRrKjap
	MulPhLlWFll5euFw8/5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWh4j-00000006VqP-3MZn;
	Tue, 01 Jul 2025 19:55:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWgiY-00000006TnV-22Yu;
	Tue, 01 Jul 2025 19:32:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Dj2RXbZ/Tv5yAxHz/6WWadAXm0f+rEasqd5wSxNrNfk=; b=COv/WEvLADeJ6fd21KY0S80AoD
	XAN2jdqZDbmJLuHjkwzeQOPC/J+uLnEp4cOPZMr64nMBTTT7O9tyv1Eo5P3D9VzrPR9ii5R68h9u8
	x0wMgRHL8MjOUXKpx0bTeMlN96lBxW0hVtxOE/OolJEMZsQgACj71Dk+raYFqFUv+5Gt3KAdnqG5O
	zQjvfJUL9d9YX9i6ONayuZX4GPHZyO0Ot9qQXBgoQ4iOfk84Nb3DKg+BwfGpR8mQuFu0N7a1Z0iag
	J4Vn9kQA332jEckCkT25MeMr0VHE/7KDpvPcC6ylfJlD/Vwf3GgBc+asJkJag5aiUgs2e71ApfHnG
	sFw0nDZw==;
Received: from i53875bc7.versanet.de ([83.135.91.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWgi0-0007Fd-TC; Tue, 01 Jul 2025 21:32:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v7 03/10] accel/rocket: Add IOCTL for BO creation
Date: Tue, 01 Jul 2025 21:31:59 +0200
Message-ID: <8888010.K2JlShyGXD@diego>
In-Reply-To: <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_123234_543049_A199B05C 
X-CRM114-Status: GOOD (  17.45  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwODoyODoyMyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFRvbWV1IFZpem9zbzoKPiBUaGlzIHVzZXMgdGhlIFNITUVNIERSTSBo
ZWxwZXJzIGFuZCB3ZSBtYXAgcmlnaHQgYXdheSB0byB0aGUgQ1BVIGFuZCBOUFUKPiBzaWRlcywg
YXMgYWxsIGJ1ZmZlcnMgYXJlIGV4cGVjdGVkIHRvIGJlIGFjY2Vzc2VkIGZyb20gYm90aC4KPiAK
PiB2MjoKPiAtIFN5bmMgdGhlIElPTU1VcyBmb3IgdGhlIG90aGVyIGNvcmVzIHdoZW4gbWFwcGlu
ZyBhbmQgdW5tYXBwaW5nLgo+IAo+IHYzOgo+IC0gTWFrZSB1c2Ugb2YgR1BMLTIuMC1vbmx5IGZv
ciB0aGUgY29weXJpZ2h0IG5vdGljZSAoSmVmZiBIdWdvKQo+IAo+IHY2Ogo+IC0gVXNlIG11dGV4
ZXMgZ3VhcmQgKE1hcmt1cyBFbGZyaW5nKQo+IAo+IHY3Ogo+IC0gQXNzaWduIGl0cyBvd24gSU9N
TVUgZG9tYWluIHRvIGVhY2ggY2xpZW50LCBmb3IgaXNvbGF0aW9uIChEYW5pZWwKPiAgIFN0b25l
IGFuZCBSb2JpbiBNdXJwaHkpCj4gCj4gUmV2aWV3ZWQtYnk6IEplZmZyZXkgSHVnbyA8cXVpY19q
aHVnb0BxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRv
bWV1dml6b3NvLm5ldD4KPiAtLS0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcm9ja2V0
L3JvY2tldF9nZW0uYyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9nZW0uYwo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMC4uNjFiN2Y5NzBhNjg4NWFhMTM3ODRkYWExMjIyNjExYTAyYWExMGRlZQo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZ2VtLmMKPiBAQCAt
MCwwICsxLDExNSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
Cj4gKy8qIENvcHlyaWdodCAyMDI0LTIwMjUgVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9z
by5uZXQ+ICovCj4gKwo+ICsjaW5jbHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUg
PGRybS9kcm1fdXRpbHMuaD4KPiArI2luY2x1ZGUgPGRybS9yb2NrZXRfYWNjZWwuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pb21tdS5oPgo+
ICsKPiArI2luY2x1ZGUgInJvY2tldF9kZXZpY2UuaCIKPiArI2luY2x1ZGUgInJvY2tldF9kcnYu
aCIKPiArI2luY2x1ZGUgInJvY2tldF9nZW0uaCIKPiArCj4gK3N0YXRpYyB2b2lkIHJvY2tldF9n
ZW1fYm9fZnJlZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKPiArewo+ICsJc3RydWN0IHJv
Y2tldF9kZXZpY2UgKnJkZXYgPSB0b19yb2NrZXRfZGV2aWNlKG9iai0+ZGV2KTsKPiArCXN0cnVj
dCByb2NrZXRfZ2VtX29iamVjdCAqYm8gPSB0b19yb2NrZXRfYm8ob2JqKTsKPiArCXNpemVfdCB1
bm1hcHBlZDsKPiArCj4gKwlkcm1fV0FSTl9PTihvYmotPmRldiwgYm8tPmJhc2UucGFnZXNfdXNl
X2NvdW50ID4gMSk7CgpUaGlzIHNob3VsZCBwcm9iYWJseSBiZQogICAgZHJtX1dBUk5fT04ob2Jq
LT5kZXYsIHJlZmNvdW50X3JlYWQoJmJvLT5iYXNlLnBhZ2VzX3VzZV9jb3VudCkgPiAxKTsKCmFz
IHBhZ2VzX3VzZV9jb3VudCBpcyBvZiB0eXBlIHJlZmNvdW50X3Qgc2luY2UKY29tbWl0IDA1MWI2
NjQ2ZDM2ZCAoImRybS9zaG1lbS1oZWxwZXI6IFVzZSByZWZjb3VudF90IGZvciBwYWdlc191c2Vf
Y291bnQiKQoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
