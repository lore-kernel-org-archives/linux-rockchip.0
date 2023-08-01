Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9476C00528
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 14:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxRPHF8syF80XcEMkma00EKxQzfsWAGJEHkmtVptNk8=; b=r+5oWz8BQODEMu
	zmxzDOHfxmDLYS0G/ij2ttiYl4+A1x1u19fM7II+a7lSfMQMGkPXd+AhY7YpNJ/yMfC1nf6kjoBNi
	lOS9IEsr56Jz+ZVKAECJzg7eqQ1QfQXfLtmr+c63tvkQ89ZYV8iHCqSHUbX//vGAqL0ICnWRdSxxC
	1pF55hrKlTg6q4SX1wmX++dFaWJl3q6VQJdTATwfOmLRgsVPbfZ1jUAJTbLnIld4EVzZqsvfnmovR
	8CxVtiE3Wwrf3gu7h6NwMax/uUjxWUDBUyvYqUDJyOQLMqVBvfwAdFsT7RZzQScW7ewFQtzstzI7C
	kr63Vr6GwTA3YlB0mfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQq0u-002WfU-13;
	Tue, 01 Aug 2023 14:06:16 +0000
Received: from meesny.iki.fi ([195.140.195.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQq0q-002Wdt-0a;
	Tue, 01 Aug 2023 14:06:13 +0000
Received: from hillosipuli.retiisi.eu (82-181-192-243.bb.dnainternet.fi [82.181.192.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4RFcMt2Gb4zyPp;
	Tue,  1 Aug 2023 17:06:02 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1690898764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kaq3tUxGWT8kGOgYm0nW8eQt9ANPfhADF6lkxkW0974=;
	b=NseJW3ia59kmCdTykP6NnUDaKv1bRlsIR2JIwCZLTtk2+/aQSOyL+TsB9xbdnDT+FaIHF4
	uwbtYEo5l10kfZHH+Z4zD+l6MUYnYagPSvd8rso9ILMKgdOFQzdXkxOZBHQkZzbSD853Gm
	MLNh6dWCyE0zeCf8d5JIuFS6huryufk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1690898764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kaq3tUxGWT8kGOgYm0nW8eQt9ANPfhADF6lkxkW0974=;
	b=uZfuf8FmRo6v5hjr5987MJjC7boJpxHd1f9EpZHHlhvrOgMPM0JgBKeelaWaWeBD4ySwJV
	UHlucyijE3gMK5/RJXCalBlUpXduWCEQ1sSk5GwOM4TwaELN/Tf9IWqqtVu0Qcsn2PBKo8
	Brpl/8kysJiOx7wUSj7Ge0AdQ2CSaUM=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1690898764; a=rsa-sha256; cv=none;
	b=shcZAOjPrqPSB5PnpOAyi/h+O7lZ6fGlXGObEanUClT3vSqCD9cr4VPKs27USpOpIRKKGl
	jSEADw1kAT+b9ZyoilW+Qf18E5wuI5dJTc9bqXsC1KukJIDh0Vs4KXxGtEXhYvqzKx0aYe
	x2z79mznlJO2/t5fzYUrGynXMfuXwls=
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 8D736634C95;
	Tue,  1 Aug 2023 17:06:01 +0300 (EEST)
Date: Tue, 1 Aug 2023 14:06:01 +0000
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Rob Herring <robh@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Scally <djrscally@gmail.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
	Helen Koike <helen.koike@collabora.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] media: dt-bindings: Merge OV5695 into OV5693 binding
Message-ID: <ZMkRSfAwcLQIKkHL@valkosipuli.retiisi.eu>
References: <20230707210604.868002-1-robh@kernel.org>
 <ZMeZIGyD+ET6gaox@valkosipuli.retiisi.eu>
 <CAL_JsqK4A9vpUiP3sCz9+hAHitcsB9NYMMy05n4=1hn7NvjOtg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK4A9vpUiP3sCz9+hAHitcsB9NYMMy05n4=1hn7NvjOtg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_070612_422175_E55457D8 
X-CRM114-Status: GOOD (  23.34  )
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

SGkgUm9iLAoKT24gVHVlLCBBdWcgMDEsIDIwMjMgYXQgMDc6NDU6MDhBTSAtMDYwMCwgUm9iIEhl
cnJpbmcgd3JvdGU6Cj4gT24gTW9uLCBKdWwgMzEsIDIwMjMgYXQgNToyMeKAr0FNIFNha2FyaSBB
aWx1cyA8c2FrYXJpLmFpbHVzQGlraS5maT4gd3JvdGU6Cj4gPgo+ID4gSGkgUm9iLAo+ID4KPiA+
IE9uIEZyaSwgSnVsIDA3LCAyMDIzIGF0IDAzOjA2OjA0UE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdy
b3RlOgo+ID4gPiBUaGUgT1Y1Njk1IGJpbmRpbmcgaXMgYWxtb3N0IHRoZSBzYW1lIGFzIHRoZSBP
VjU2OTMgYmluZGluZy4gVGhlIG9ubHkKPiA+ID4gZGlmZmVyZW5jZSBpcyAnY2xvY2stbmFtZXMn
IGlzIGRlZmluZWQgZm9yIE9WNTY5NS4gSG93ZXZlciwgdGhlIGxhY2sgb2YKPiA+ID4gY2xvY2st
bmFtZXMgaXMgYW4gb21pc3Npb24gYXMgdGhlIExpbnV4IE9WNTY5MyBkcml2ZXIgZXhwZWN0cyB0
aGUgc2FtZQo+ID4gPiAneHZjbGsnIGNsb2NrIG5hbWUuCj4gPiA+Cj4gPiA+ICdsaW5rLWZyZXF1
ZW5jaWVzJyBpcyByZXF1aXJlZCBieSBPVjU2OTMsIGJ1dCBub3QgT1Y1Njk1LiBKdXN0IGRyb3Ag
aXQKPiA+ID4gZnJvbSBiZWluZyByZXF1aXJlZC4gRXhwcmVzc2luZyBpdCBjb25kaXRpb25hbGx5
IHdvdWxkIGJlIHVnbHkuIEl0Cj4gPiA+IHNob3VsZG4ndCByZWFsbHkgYmUgcmVxdWlyZWQgZWl0
aGVyIGFzIHRoZSBkcml2ZXIgb25seSBzdXBwb3J0cyAxCj4gPiA+IGZyZXF1ZW5jeSBhbnl3YXlz
Lgo+ID4KPiA+IFRoZSBjb3JyZWN0IHdheSB0byBhZGRyZXNzIHRoaXMgd291bGQgYXBwZWFyIHRv
IGJlIHRvIGFkZCBsaW5rLWZyZXF1ZW5jaWVzCj4gPiBmb3IgYm90aCBvZiB0aGVzZSBkZXZpY2Vz
LiBJIHRoaW5rIEkndmUgc2VlbiBvbmUgb3IgdHdvIHNlbnNvcnMgb2YgdGhpcwo+ID4gY2xhc3Mg
KHJhdywgQ1NJLTIvcGFyYWxsZWwsIGV4dGVybmFsIGNsb2NrIGV0Yy4pIHdpdGggbGluayBmcmVx
dWVuY2llcwo+ID4gZG9jdW1lbnRlZCBhcyAiZml4ZWQiIC0tLSB3aGljaCBpcyBwcm9iYWJseSBh
IGRvY3VtZW50YXRpb24gaXNzdWUgbW9yZSB0aGFuCj4gPiBhbnl0aGluZyBlbHNlLgo+IAo+IGxp
bmstZnJlcXVlbmNpZXMgaXMgYWxyZWFkeSBzdXBwb3J0ZWQuIEl0J3MganVzdCBhIHF1ZXN0aW9u
IG9mIGJlaW5nCj4gcmVxdWlyZWQgb3Igbm90LiBBZGRpbmcgYSBwcm9wZXJ0eSBhcyByZXF1aXJl
ZCBpcyBhbiBBQkkgYnJlYWsgKGlmIHRoZQo+IE9TIHN0YXJ0cyByZXF1aXJpbmcgdGhlIHByb3Bl
cnR5KS4KCkN1cnJlbnRseSB0aGUgb3Y1NjkzIGRyaXZlciByZXF1aXJlcyBhIGxpbmstZnJlcXVl
bmNpZXMgcHJvcGVydHksIHRoZQpvdjU2OTUgZHJpdmVyIGRvZXNuJ3QgY2FyZS4KCkluIHRoaXMg
Y2FzZSB0aGUgYmFja3dhcmRzIGNvbXBhdGlibGUgd2F5IHdvdWxkIGJlIHRvIG1ha2UgaXQgb3B0
aW9uYWwgZm9yCm92NTY5NSBhbmQgaWYgaXQgZXhpc3RzLCB0aGVuIGFsbG93IG9ubHkgdGhvc2Ug
ZnJlcXVlbmNpZXMuIEl0J3MgYSBmYWlybHkKdHJpdmlhbCBkcml2ZXIsIGl0IG9ubHkgc3VwcG9y
dHMgYSBzaW5nbGUgbGluayBmcmVxdWVuY3kgYXQgdGhlIG1vbWVudCAoYXMKd2VsbCBhcyBhIHNp
bmdsZSBleHRlcm5hbCBjbG9jayBmcmVxdWVuY3kpLgoKQXQgbGVhc3QgbGluay1mcmVxdWVuY2ll
cyBzaG91bGQgY29udGludWUgdG8gYmUgcmVxdWlyZWQgZm9yIG92NTY5My4KCi0tIApSZWdhcmRz
LAoKU2FrYXJpIEFpbHVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
