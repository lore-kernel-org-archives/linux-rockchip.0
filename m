Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30715606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 22:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P6CbOj4L;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=NsmCa2B1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gkMDwdiJmGXH17g98cPnMWEPvKIaXd8SVFZxn7JhNbc=; b=P6CbOj4LdLp+wH3sCe0+nsHwl/
	g0RZ+jYbQipQogbrTq7fhXF8dF0rSZSC1nxllSRsg9v6bB9S5sP52GJ/aGFNt435cAZLSL0FMBQiO
	9q/eNOhQ9PEIDIb5IrNP3z2U5K5iw6aeG0AyaZKA2iMsyunCgMX3tbZEmE/XqS5f2qTw1U/QI+8KU
	7/BrBlEdDIhqKV3Kpg8hs1G2m4KPi4+rLWS5MDVPZQgncwomNUciKdvUmpg/yL/1iUMvqXyPUr6hE
	02ITiUK3qyrbwbMFX/FTkv65kknntewJ9qnJSHgEH3Y+/ek7+oNgyvgSFpwrYz/dX7k5Fk7fziUpS
	ouIgWncA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLpqf-00000005ruw-3K8N;
	Tue, 27 Oct 2026 22:40:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLpqd-00000005rtS-0g1E
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 22:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=22Rzk6jQbC4L0N68Dcfos841pyMRoC1pkyU1FbZfLp4=; b=NsmCa2B1j0WdarKn94uha7zOPI
	Tzv6VxzFHc9ogPPJqrRrgY4DOZJfpoXpLYU0xX2/B8jHvmfgVFDdSoXHiHtFm8RvHhG/3E2gQ29Vf
	GOT0xvdNFc7aV5HrBPFYzM7VJdMw4LTdNMXxLC8Giu0GERV6hctYmHec4JZtG+yq4SXZzi8I41W+g
	4hTHcmGVvA6BRdJaKIs6eAEz/PSAmJGDw3pjPnOHMWw08gSnzKPdF9tVQ0reWEq2Z6MQxq+OcRIOz
	nG4yup/oL/GNnC8MhF7nItCK6jkUgEksxYd/WwQJaGYZVHR18kQ0MRxVhKKA8hDCiHwKDNeCFSiZF
	agzxIH4w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, zhangqing@rock-chips.com, zyw@rock-chips.com,
 sre@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 lee@kernel.org, Zetarancio <zetarancio@users.noreply.github.com>
Subject: Re: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add
 rockchip,gate-function-disable
Date: Tue, 27 Oct 2026 23:40:46 +0100
Message-ID: <2849967.uZKlY2gecq@diego>
In-Reply-To: <PH0PR19MB997338FA74EFF7CD338356EB88A5602@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com> <15875856.JCcGWNJJiE@diego>
 <PH0PR19MB997338FA74EFF7CD338356EB88A5602@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_154051_222957_4DAD7C3E 
X-CRM114-Status: GOOD (  23.81  )
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDE2OjUzOjEwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hyaXMgTW9yZ2FuOgo+IE9uIE1vbiwgT2N0IDI2LCAyMDI2
IGF0IDA4OjIzOjQwUE0gKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gSGkgQ2hyaXMs
Cj4gPiAKPiA+IEFtIE1vbnRhZywgMjYuIE9rdG9iZXIgMjAyNiwgMTg6NDg6MzMgTWl0dGVsZXVy
b3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gPiA+IEZyb206IENo
cmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiA+IAo+ID4gPiBBZGQgYSBi
b29sZWFuIGF0dHJpYnV0ZSBmb3IgdGhlIHJrODE3LWNoYXJnZXIgdG8gY29udHJvbCB3aGV0aGVy
IG9yIG5vdAo+ID4gPiB0aGUgc3lzdGVtIHBvd2VyIGlzIHNodXRkb3duIGluIGJhdHRlcnkgb2Zm
IG1vZGUuIFRoZSBCU1Aga2VybmVsIHNldHMKPiA+ID4gdGhpcyB2YWx1ZSB1bmxlc3MgYSBkZXZp
Y2UtdHJlZSBhdHRyaWJ1dGUgaXMgcHJlc2VudCwgYW5kIHRoaXMgYXR0cmlidXRlCj4gPiA+IGlz
IHRvIHJlcGxpY2F0ZSB0aGF0IGJlaGF2aW9yLgo+ID4gCj4gPiBEZXZpY2V0cmVlIGlzIHN1cHBv
c2VkIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSwgc28geW91ciBkZXNjcmlwdGlvbiBuZWVkcwo+
ID4gdG8gZGVzY3JpYmUgdGhlIHBlci1ib2FyZCBwcm9wZXJ0eSB0aGlzIHJlcHJlc2VudHMuCj4g
PiAKPiA+IEp1c3QgYmVjYXVzZSBpdCdzIGluIGEgdmVuZG9yLUJTUCBpcyBnZW5lcmFsbHkgbm90
IGVub3VnaCBqdXN0aWZpY2F0aW9uIDotKSAuCj4gPiAKPiA+IFRoaXMgaXMgZXNwZWNpYWxseSB0
cnVlIGFzIHlvdSB3cm90ZSBpbiB0aGUgY292ZXItbGV0dGVyIHRoYXQgbm8ga25vd24KPiA+IGJv
YXJkIGFjdHVhbGx5IG5lZWRzIHRoaXMgcmlnaHQgbm93Lgo+ID4gCj4gPiAKPiA+IEhlaWtvCj4g
Cj4gVGhlIGRhdGFzaGVldCBkZXNjcmliZXMgdGhpcyBhcyAiV2hldGhlciB0aGUgc3lzdGVtIHZv
bHRhZ2UgY2FuIGJlCj4gc2h1dGRvd24gaW4gQmF0X29mZiBtb2RlIiBhbmQgdGhlIHJlZ2lzdGVy
IGl0c2VsZiBpcyBkZXNjcmliZWQgYXMKPiBTWVNfQ0FOX1NELiBNYXliZSBjYWxsIGl0ICJyb2Nr
Y2hpcCxjYW4tc2h1dGRvd24tYmF0LW9mZiI/IE9yIGdpdmVuIHRoZQo+IGZhY3QgdGhhdCBJJ20g
bm90IGF3YXJlIG9mIGFueSBib2FyZHMgdGhhdCB3b3VsZCBuZWVkIGl0IHRvZGF5LCBzaG91bGQK
PiBJIGV2ZW4gYm90aGVyIHdpdGggYWRkaW5nIHRoZSBkZXZpY2V0cmVlIG92ZXJyaWRlPyBUaGUg
b25seSByZWFzb24gSQo+IGFtIGFkZGluZyBpdCBpcyBpbiBjYXNlIHRoaXMgImZpeCIgaW50cm9k
dWNlcyBhIHJlZ3Jlc3Npb24gaXQgd2lsbAo+IGFsbG93IHNvbWVvbmUgdG8gc2V0IHRoaXMgZmxh
ZywganVzdCBsaWtlIHRoZSBCU1AgZG9lcy4KCkZpcnN0IG9mIGFsbCwgSSBndWVzcyBkZWZpbmlu
ZyB0aGUgdGVybXMgYmV0dGVyIHdvdWxkIGJlIGhlbHBmdWwsIGkuZS4KSSBkb24ndCBrbm93IHdo
YXQgdGhhdCAiYmF0dGVyeSBvZmYiIG1vZGUgaXMgcGx1cyB0aGUgd2hvbGUgZW52aXJvbWVudAp0
aGlzIGhhcHBlbnMgaW4uCgpTZWNvbmRseSwgdGhpcyBuZXcgZmxhZyB3b3VsZCBjYXVzZSBhIHJl
Z3Jlc3Npb24sIGJlY2F1c2UgYSBib2FyZCBuZWVkaW5nCnRoZSBvbGQgd2F5IHdvdWxkIG5lZWQg
dG8gYWRkIHRoYXQgZmxhZy4gQnV0IHdoZW4gYSBib2FyZCBhY3R1YWxseQpyZXF1aXJpbmcgdGhp
cyB0dXJucyB1cCB3aXRoIGFuIG9sZGVyIGRldmljZXRyZWUgd2l0aG91dCB0aGF0IG5ldyBmbGFn
CnRoaXMgYnJlYWtzIGJhY2t3YXJkcyBjb21wYXRpYmxpdHkuCgpTbyBpZiB3ZSBoYXZlIGEgZnVu
Y3Rpb24gZmxhZyBmb3IgdGhlIHBtaWMsIGl0IHdvdWxkIG5lZWQgdG8gYmUgdGhlIG90aGVyCndh
eSBhcm91bmQuCgpBcyB5b3Ugc2FpZCB0aGlzIGlzIHNwZWNpZmljIHRvIGJhdHRlcnkgcG93ZXJl
ZCBkZXZpY2VzLCBvZiB3aGljaCB3ZSBkb24ndApoYXZlIHRoYXQgbWFueSAtIGVzcGVjaWFsbHkg
aW4tdHJlZS4gQ2FuIHlvdSBtYXliZSBsb29rIGluIHRoZSB2ZW5kb3ItdHJlZQppZiBhbnkgYm9h
cmQgYWN0dWFsbHkgdXNlcyB0aGF0PwoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
