Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D82CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 19:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I/rv76Ra+gmt5nEOg+6bGiqbp3rshitMiHBxAj3h0i4=; b=EvfzzNMYUoPOpPx+dkuWOKQMgb
	SYCFQcP0PBFQNgzKcHu1cndf5lfCpY8VVWZSylDhmfTlN8LZTHQrf6u0QRRq7RWCxW6I7sVTMPcJw
	yUC0lCst86Zb0YgfVK49p2SIaTUcdtGzS/2AJwTs80TgEaTYZLGKdCYTBW6dX/X3y4+kER0IyNY/z
	hrySgRbVzEd2NCqeJ+ewb/18ts+uholAU5wcBTT9rXOQMyw96PG4OOvuUaSZXA4PUlMKSAGixkbcx
	N9hd7orccTktY4S8q9HshC5lkwXp7Sl2OV+KYVaFEp7YUoVGGyINEn503z0chZhbkN8PqbZzkCNR+
	TFTzIN7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0ox-00000006AIf-1AAi;
	Sun, 31 Mar 2024 19:26:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0oq-00000006AHX-3TYv;
	Sun, 31 Mar 2024 19:26:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711913173;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r/SBcQHePB6X2sjFpLhBcuid5NUt0sikNKWyPFfmhVU=;
	b=ecs2lM11X8MT5cuXi5A+xnG/HO3hjwJ51ns6Z2JAzDAWG3UmONoZywxty90Usai3phig9C
	GBIrpvbQqhPXsjgiYR5vWW+kxQSSLA+I/+Kkkgv/6nElXk9ilfODtmoTn4Su6lf78mN3p9
	m4V4APeRlG8w1x5oATdwB2tp4aS+9uj+karBXQS4EIQjzkVVwlZtzAa11aQHKEPZumr4xo
	mGsj6ZDyosbVmbZ6qkIcObeSbCuJQ8HcNxve1YZ10KQh9I0jRkLtD4/Rqxi7ClgaNmdNh9
	e2n4lPT99v8uwoK6QCoBdiT4VY9oBBmCr5bWAwx/oOug6fHkI1JFxcx7163kAA==
Date: Sun, 31 Mar 2024 21:26:13 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alban Browaeys <alban.browaeys@gmail.com>
Cc: Conor Dooley <conor@kernel.org>, dev@folker-schwesinger.de, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Christopher Obbard <chris.obbard@collabora.com>, Doug Anderson
 <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>, Jensen
 Huang <jensenhuang@friendlyarm.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
In-Reply-To: <871f0b24a38208d9c5d6abc87d83b067162c103e.camel@gmail.com>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
 <20240326-tactical-onlooker-3df8d2352dc2@spud>
 <871f0b24a38208d9c5d6abc87d83b067162c103e.camel@gmail.com>
Message-ID: <46d0b87e704ed5a7a0fcc9dcfdbeec2e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_122617_353899_6442E8AB 
X-CRM114-Status: GOOD (  35.03  )
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

SGVsbG8gQWxiYW4sCgpPbiAyMDI0LTAzLTI4IDE4OjAwLCBBbGJhbiBCcm93YWV5cyB3cm90ZToK
PiBMZSBtYXJkaSAyNiBtYXJzIDIwMjQgw6AgMTk6NDYgKzAwMDAsIENvbm9yIERvb2xleSBhIMOp
Y3JpdMKgOgo+PiBPbiBUdWUsIE1hciAyNiwgMjAyNCBhdCAwNzo1NDozNVBNICswMTAwLCBGb2xr
ZXIgU2Nod2VzaW5nZXIgdmlhIEI0Cj4+IFJlbGF5IHdyb3RlOgo+PiA+IEZyb206IEZvbGtlciBT
Y2h3ZXNpbmdlciA8ZGV2QGZvbGtlci1zY2h3ZXNpbmdlci5kZT4KPj4gPiAtCWlmIChvZl9wcm9w
ZXJ0eV9yZWFkX2Jvb2woZGV2LT5vZl9ub2RlLCAicm9ja2NoaXAsZW5hYmxlLQo+PiA+IHN0cm9i
ZS1wdWxsZG93biIpKQo+PiA+IC0JCXJrX3BoeS0+ZW5hYmxlX3N0cm9iZV9wdWxsZG93biA9Cj4+
ID4gUEhZQ1RSTF9SRU5fU1RSQl9FTkFCTEU7Cj4+ID4gKwlpZiAob2ZfcHJvcGVydHlfcmVhZF9i
b29sKGRldi0+b2Zfbm9kZSwgInJvY2tjaGlwLGRpc2FibGUtCj4+ID4gc3Ryb2JlLXB1bGxkb3du
IikpCj4+ID4gKwkJcmtfcGh5LT5lbmFibGVfc3Ryb2JlX3B1bGxkb3duID0KPj4gPiBQSFlDVFJM
X1JFTl9TVFJCX0RJU0FCTEU7Cj4+IAo+PiBVbmZvcnR1bmF0ZWx5IHlvdSBjYW5ub3QgZG8gdGhp
cy4KPj4gUHJldmlvdXNseSBubyBwcm9wZXJ0eSBhdCBhbGwgbWVhbnQgZGlzYWJsZWQgYW5kIGEg
cHJvcGVydHkgd2FzCj4+IHJlcXVpcmVkCj4+IHRvIGVuYWJsZSBpdC4gV2l0aCB0aGlzIGNoYW5n
ZSB0aGUgYWJzZW5jZSBvZiBhIHByb3BlcnR5IG1lYW5zIHRoYXQKPj4gaXQKPj4gd2lsbCBiZSBl
bmFibGVkLgo+PiBBbiBvbGQgZGV2aWNldHJlZSBpcyB0aGF0IHdhbnRlZCB0aGlzIHRvIGJlIGRp
c2FibGVkIHdvdWxkIGhhdmUgbm8KPj4gcHJvcGVydHkgYW5kIHdpbGwgbm93IGVuZCB1cCB3aXRo
IGl0IGVuYWJsZWQuIFRoaXMgaXMgYW4gQUJJIGJyZWFrCj4+IGFuZCBpcwo+PiBjbGVhcmx5IG5v
dCBiYWNrd2FyZHMgY29tcGF0aWJsZSwgdGhhdCdzIGEgTkFLIHVubGVzcyBpdCBpcwo+PiBkZW1v
bnN0cmFibGUKPj4gdGhhdCBub29uZSBhY3R1YWxseSB3YW50cyB0byBkaXNhYmxlIGl0IGF0IGFs
bC4KPiAKPiBCdXQgdGhlIHBhdGNoIHRoYXQgaW50cm9kdWNlZCB0aGUgbmV3IGRlZmF1bHQgdG8g
ZGlzYWJsZSB0aGUgcHVsbGRvd24KPiBleHBsaWNpdGVseSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lv
biBmb3IgYXQgbGVhc3QgNCBib2FyZHMuCj4gSXQgdG9vayB0aW1lIHRvIHNvcnQgb3V0IHRoYXQg
dGhlIGRlZmF1bHQgdG8gZGlzYWJsZSBwdWxsZG93biB3YXMgdGhlCj4gY3VscHJpdCBidXQgc3Rp
bGwuCj4gV2lsbCB3ZSBjYXJyeSB0aGlzIG5ldyBiZWhhdm9yIHRoYXQgYnJlYWtzIHRoZSBkZWZh
dWx0IGRlc2lnbiBmb3IKPiByazMzOTkgYmVjYXVzZSBzaW5jZSB0aGUgcmVncmVzc2lvbiB3YXMg
aW50cm9kdWNlZCBuZXcgYm9hcmQgZGVmaW5pdGlvbgo+IG1pZ2h0IGhhdmUgZXhwY2V0ZWQgdGhp
cyBuZXcgYmVoYXZpb3IuCj4gCj4gQ291bGQgdGhlIGJlc3Qgb3B0aW9uIGJlIHRvIHJldmVydCB0
byDDqW5vdCBzZXQgYSBkZWZhdWx0IGVuYWJsZS9kaXNhYmxlCj4gcHVsbGRvd24iIChhcyBiZWZv
cmUgdGhlIGNvbW1pdCB0aGF0IGludHJvZHVjZWQgdGhlIHJlZ3Jlc3Npb24pIGFuZAo+IGFsbG93
IG9uZSB0byBmb3JjZSB0aGUgcHVsbGRvd24gdmlhIHRoZSBlbmFibGUvZGlzYWJsZSBwdWxsZG93
bgo+IHByb3BlcnR5Pwo+IEkgbWVhbiB0aGUgY29tbWl0IHRoYXQgaW50cm9kdWNlZCBhIGRlZmF1
bHQgdmFsdWUgZm9yIHRoZSBwdWxsZG93biBkaWQKPiBub3Qgc2VlbSB0byBiZSBhYm91dCBmaXhp
bmcgYW55dGhpbmcuIEJ1dCBpdCBicm9rZSBhIGxvdC4gQU5kIGl0IHdhcwo+IHJlYWxseSByZWFs
bHkgaGFyZCB0byBmaW5kIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGlzIGNvbW1pdCB0byB1bmRlcnN0
YW5kCj4gdGhhdCBvbmUgaGFkIHRvIGVuYWJsZSBwdWxsZG93biB0byByZXN0b3JlIGhzNDAwLgoK
UXVpdGUgZnJhbmtseSwgSSB0aGluayBpdCdzIGJldHRlciB0byBsZWF2ZSB0aGUgZGVmYXVsdCBh
cy1pcywgYW5kCnRvIGZpeCB0aGUgZHRzIGZpbGVzIGZvciB0aGUgYm9hcmRzIHRoYXQgaGF2ZSBi
ZWVuIChvciB3aWxsIGJlKSB0ZXN0ZWQKdG8gd29yayBhcyBleHBlY3RlZCBhbmQgcmVsaWFibHkg
aW4gdGhlIEhTNDAwIG1vZGUuICBQZXJoYXBzIHRoaXMgaXMKYWxzbyBhIGdvb2Qgb3Bwb3J0dW5p
dHkgdG8gcmV2aXNpdCB0aGUgcmVsaWFiaWxpdHkgb2YgdGhlIEhTNDAwIG1vZGUKb24gdmFyaW91
cyBib2FyZHMuCgpJbiBvdGhlciB3b3JkcywgaXQgY291bGQgYmUgdGhhdCBzb21lIGJvYXJkcyBu
b3cgcmVseSBvbiB0aGUgcHVsbC1kb3duCmJlaW5nIGRpc2FibGVkIGJ5IGRlZmF1bHQsIHNvIGVu
YWJsaW5nIGl0IGJ5IGRlZmF1bHQgbWlnaHQgYWN0dWFsbHkKYnJlYWsgc3VjaCBib2FyZHMuICBJ
IGtub3csIHRoZSB0cm91Ymxlc29tZSBjb21taXQgdGhhdCBkaXNhYmxlZCB0aGUKcHVsbC1kb3du
IGNhdXNlZCBicmVha2FnZSwgYnV0IGZpeGluZyB0aGF0IG1pZ2h0IGFjdHVhbGx5IGNhdXNlIG1v
cmUKYnJlYWthZ2UgYXQgdGhpcyBwb2ludC4KCj4gSW4gbW9yZSB0aGFuIDMgeWVhcnMsIG9ubHkg
b25lIGJvYXJkIG1haW50YWluZXIgbm90aWNlZCB0aGF0IHRoaXMKPiBwcm9wZXJ0eSB3YXMgcmVx
dWlyZWQgdG8gZ2V0IGJhY2sgSFM0MDAgIGFuZCB0aGFua3MgdG8gYSB1c2VyIHRlbGxpbmcKPiBt
ZSB0aGF0IHRoaXMgYm9hcmQgd2FzIHdvcmtpbmcgSSBmb3VuZCBmcm9tIHRoaXMgYm9hcmQgdGhh
dCB0aGlzCj4gcHJvcGVydHkgd2FzICJtaXNzaW5nIiBmcm9tIG1vc3QgYm9hcmQgZGVmaW5pdGlv
bnMgKHdoaWxlIGl0IHdhcyBub3QKPiByZXF1aXJlZCBiZWZvcmUpLgoKQSBjb3VwbGUgb2YgeWVh
cnMgYWdvIEkndmUgYWxzbyBzcGVudCBzb21lIHRpbWUgZGVidWdnaW5nIEhTNDAwIG5vdAp3b3Jr
aW5nIG9uIGEgUm9jayA0LCBidXQgZW5kZWQgdXAgd2l0aCBsaW1pdGluZyB0aGUgc3BlZWQgdG8g
SFMyMDAgYXMKYSB3b3JrYXJvdW5kLCBzbyBJIGFncmVlIGFib3V0IHRoZSB3aG9sZSB0aGluZyBi
ZWluZyBhIG1lc3MuCgo+IEkgYW0gYWxsIGZvciBub3QgYnJlYWtpbmcgQUJJLiBCdXQgd2hhdCBh
Ym91dCBub3QgcmV2ZXJ0aW5nIGEgcGF0Y2gKPiB0aGF0IGFscmVhZHkgYnJva2UgQUJJIGJlY2F1
c2UgdGhpcyBwYXRjaCBpbnRyb2R1Y2VkIGEgbmV3IEFCSSB0aGF0IHdlCj4gZG9uJ3Qgd2FudCB0
byBicmVhaz8KPiBJIG1lYW4gc2hvdWxkbid0IGEgbmV3IGNvbW1pdCB3aXRoIGEgbmV3IEFCSSB0
aGF0IHJlZ3Jlc3NlZCB0aGUga2VybmVsCj4gYmUgcmV2ZXJ0ZWQ/Cj4gCj4gTWluZCBmaXhpbmcg
dGhlIGluaXRpYWwgcmVncmVzc2lvbiA4YjVjMmI0NWI4ZjAgInBoeTogcm9ja2NoaXA6IHNldAo+
IHB1bGxkb3duIGZvciBzdHJvYmUgbGluZSBpbiBkdHMiIGRvZXMgbm90IG5lY2Vzc2FyaWx5IG1l
YW4gY2hhbmdpbmcgdGhlCj4gZGVmYXVsdCB0byB0aGUgb3Bwb3NpdGUgdmFsdWUgYnV0IGNvdWxk
IGFsc28gYmUgcmV2ZXJ0aW5nIHRvIG5vdAo+IHNldHRpbmcgYSBkZWZhdWx0Lgo+IFRob3VnaCBJ
IGRvbid0IGtub3cgaWYgdGhlcmUgYXJlIHByb3MgdG8gc2V0dGluZyBhIGRlZmF1bHQuCj4gCj4g
Cj4+IElmIHRoaXMgcGF0Y2ggZml4ZXMgYSBwcm9ibGVtIG9uIGEgYm9hcmQgdGhhdCB5b3UgaGF2
ZSwgSSB3b3VsZAo+PiBzdWdnZXN0Cj4+IHRoYXQgeW91IGFkZCB0aGUgcHJvcGVydHkgdG8gZW5h
YmxlIGl0LCBhcyB0aGUgYmluZGluZyB0ZWxscyB5b3UgdG8uCj4+IAo+PiBUaGFua3MsCj4+IENv
bm9yLgo+IAo+IAo+IFJlZ2FyZHMsCj4gQWxiYW4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+
IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
