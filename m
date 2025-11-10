Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F4BCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 07:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISaOHUhu4Jvyr+2KFuE7oVkN+ZPB0r+tRTXVoYsdZBc=; b=iu6p8krdgBRgKj
	jXteXL/pvsr8IZlw53MZqWwHKpTnK1yjTMoXmwqOo91/szjK79d5WJNNL/aT0McKMpkqp+3wbPodo
	rdWV/63sajE3hzTCoVcFehsMygJNtqvsZQBZxzlq8571vDIukU5988n3Lzupgj4uXbzobpg0T6n9Q
	SwnJULQhhvcycEpTDVVgnz8Qwkb8Qxif0syKYBYkoO2GE3PjgJullzOVE0MFe8B1rmOoDV4rKTp8U
	5VuY7kKjvkgQ5LGY730nN+0Adnp5r3IhRlAVCq5BK/ZVsKqtdZLUtGSuuTsw6X7JKVaidQGIgemM4
	Akf7TcEdNUYHK6ikdMjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIM4u-00000004sjT-1VcW;
	Mon, 10 Nov 2025 07:12:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIM4s-00000004sia-0A4m;
	Mon, 10 Nov 2025 07:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D805C41B5C;
	Mon, 10 Nov 2025 07:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E61D4C16AAE;
	Mon, 10 Nov 2025 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762758756;
	bh=npf91q97ByS7kwwU6n9XRA4EAmt/gK94VxWAq/bBNt0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dYRWg4vB/FzAf8I+IjRQXfYssgHBIZ2tyxhq3HsPZOHlbGHkqPRTxaAcJdp+6lHlW
	 7XzRnIUT2Dqqjm83O7zvcE2wm/8F8DEoahSH+OkIJXgg7nVjP18SJbRirxNcouKaHG
	 uDy/3uHqgQjPqrS9KdV2W0YJtFQGts+O3a7aQSiILbNt4ir6CZl0CGb0z5BIdqIiC7
	 ve0I2RvQrFqEHOcCXggO5SuQJHruDRQUosy+3NVXpSfXDpLIRbNnyDJ+iyKj/cM3jK
	 GbtVBKPmGh3th4uKVNABVLQKrCDTc8qfjssCBKE7oKD4eL0o09bE4tzshAdS6/bWD7
	 CWlPlpE96C1Fg==
Message-ID: <19169092-78f8-4b86-9f43-ea7a2ea20b9f@kernel.org>
Date: Mon, 10 Nov 2025 08:12:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Simplify usb-c-connector port
 on rk3566-pinenote
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>
Cc: hrdl <git@hrdl.eu>, phantomas <phantomas@phantomas.xyz>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
 <20251109-rk3566-pinenote-dt-fixes-upstream-v1-1-ed38d200cc04@cknow-tech.com>
 <a726fac9-afe5-4639-b06a-4bccc256d98f@kernel.org> <5024969.GXAFRqVoOG@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <5024969.GXAFRqVoOG@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_231238_140872_54EBBEB5 
X-CRM114-Status: GOOD (  10.21  )
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

T24gMDkvMTEvMjAyNSAyMzoxNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU29ubnRhZywg
OS4gTm92ZW1iZXIgMjAyNSwgMTg6Mzc6MjYgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQg
c2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+PiBPbiAwOS8xMS8yMDI1IDE4OjA1LCBEaWVk
ZXJpayBkZSBIYWFzIHdyb3RlOgo+Pj4gVGhlIFVTQi1DIGNvbm5lY3RvciBvbiB0aGUgUGluZU5v
dGUgaGFzIG9ubHkgMSBwb3J0LCBzbyB0aGVyZSdzIG5vIG5lZWQKPj4+IGZvciBhICdwb3J0cycg
bm9kZSB3aXRoIGFkZHJlc3MtL3NpemUtY2VsbHMgcHJvcGVydGllcyBhcyBhIHNpbmdsZQo+Pj4g
J3BvcnQnIG5vZGUgc3VmZmljZXMuCj4+Pgo+Pj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIERU
IHZhbGlkYXRpb24gaXNzdWU6Cj4+Pgo+Pj4gICBXYXJuaW5nIChncmFwaF9jaGlsZF9hZGRyZXNz
KTogL2kyY0BmZTVjMDAwMC90Y3BjQDYwL2Nvbm5lY3Rvci9wb3J0czoKPj4+ICAgICBncmFwaCBu
b2RlIGhhcyBzaW5nbGUgY2hpbGQgbm9kZSAncG9ydEAwJywKPj4+ICAgICAjYWRkcmVzcy1jZWxs
cy8jc2l6ZS1jZWxscyBhcmUgbm90IG5lY2Vzc2FyeQo+Pgo+PiBUaGlzIGlzIG5vdCBhIERUIHZh
bGlkYXRpb24sIGJ1dCBEVEMgd2FybmluZyB3aGljaCB3ZSBkbyBub3QgcmVhbGx5IGZpeC4KPiAK
PiBUaGF0IGlzIGdvb2QgdG8ga25vdy4gSXMgdGhlIHNhbWUgdHJ1ZSBmb3Igb3RoZXIgZHRjIHdh
cm5pbmdzPwo+CgpObywgZGVwZW5kcywgdGhlIHNhbWUgZm9yIGNvbXBpbGVyIHdhcm5pbmdzLiBU
aGF0J3MgdGhlIG9ubHkgd2FybmluZyBJCnJlbWVtYmVyIHdlIGNvbnNpZGVyZWQgbW92aW5nIGZy
b20gVz0xIHRvIFc9Mi4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
