Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3D606A680
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 10:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tAY4rQar
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sjhdztWi9zFUuQ7oLdZ1oun6hGWsMcAJGI0IjNLg8oo=; b=tAY4rQarYp45UOFGDef2zmhdyK
	w+QoaRpMgUE2CHoq9TYrcOL+m/IsZPSFruy59r9u4TU6Ai+psjeql/ft6jnrtw/AEHVCMVNEX/WkO
	qo7NqDmD/RZVRS8Efjy0zoHSkjXxoNA22Z5l1KAOm0Zdbsrf7bysBliu2ndoIr6YyzpcGXbPcAAdH
	iLPnUEtZ4EJxaMUEe/z1qaXXG441gK7OxzDvAc3IrI4mZkRRS8VY5vThTePdCSFgRjdao9Xc3YZfd
	IPUzPrewoB86BwXVv6cpH84SEk5Dy+dXNKLAAQCBKEccYxVkNXDaz7OxrFAPagLYM2NNUSf3ZimaS
	NBUO5Kcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV5GY-00000000znO-1lHm;
	Sun, 22 Nov 2026 10:57:50 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV5GV-00000000zmf-1sPS;
	Sun, 22 Nov 2026 10:57:49 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xV5GF-000000001ns-33UE;
	Sun, 22 Nov 2026 10:57:31 +0000
Date: Sun, 22 Nov 2026 10:57:15 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	David Heidelberg <david@ixit.cz>, Marc Zyngier <maz@kernel.org>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dang Huynh <dang.huynh@mainlining.org>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v5 0/5] media: rockchip: rkvdec: add support for the
 VDPU346 variant
Message-ID: <awLKiyI-z6wdTD4C@makrotopia.org>
References: <cover.1795191822.git.daniel@makrotopia.org>
 <E8475BAC-F137-493E-B7AC-9C81FB158610@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E8475BAC-F137-493E-B7AC-9C81FB158610@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_025747_515856_2E05183B 
X-CRM114-Status: GOOD (  26.40  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU3VuLCBOb3YgMjIsIDIwMjYgYXQgMTE6NDQ6MzJBTSArMDQwMCwgQ2hyaXN0aWFuIEhld2l0
dCB3cm90ZToKPiA+IE9uIDIwIE5vdiAyMDI2LCBhdCA5OjM24oCvcG0sIERhbmllbCBHb2xsZSA8
ZGFuaWVsQG1ha3JvdG9waWEub3JnPiB3cm90ZToKPiA+IAo+ID4gVGhpcyBzZXJpZXMgYWRkcyB0
aGUgVkRQVTM0NiBkZWNvZGVyIG9mIHRoZSBSSzM1NjYgYW5kIFJLMzU2OCB0byB0aGUKPiA+IHJr
dmRlYyBkcml2ZXIsIGZvciBILjI2NCBhbmQgSEVWQy4gSXQgY29udGludWVzIENocmlzdGlhbiBI
ZXdpdHQncyB2Mwo+ID4gWzFdOyBpbiB0aGUgdjIgY292ZXIgbGV0dGVyIGhlIG9mZmVyZWQgdG8g
cGFzcyB0aGUgc2VyaWVzIG9uLiBUaGUKPiA+IHByZXZpb3VzIHBvc3RpbmcgWzJdIGNhcnJpZWQg
bm8gdmVyc2lvbiBpbiBpdHMgc3ViamVjdCBhbmQgY291bnRzIGFzCj4gPiB2NC4KPiAKPiBUaGUg
b3JpZ2luYWwgb2ZmZXIgd2FzIGRpcmVjdGVkIGF0IERldGxldiBiYXNlZCBvbiBjb252ZXJzYXRp
b25zIHdpdGgKPiBvdGhlciBDb2xsYWJvcmEgZm9sa3Mgd2hvIHdlcmUgaGludGluZyB0aGF0IGhl
IHdvdWxkIGJlIGFibGUgdG8gKGFuZAo+IGl0IHdvdWxkIGV2ZW4gYmUgZGVzaXJhYmxlIHRvKSBm
b2xkIFZEUFUzNDYgcGF0Y2hlcyBpbnRvIGhpcyB3b3JrIG9uCj4gVkRQVTM4MS8zODMgd2hpY2gg
d2FzIGluLWZsaWdodCBhdCB0aGUgdGltZS4KClZEUFUzODEvMzgzIGhhcyBsYW5kZWQgc2hvcnRs
eSBhZnRlciB5b3VyIGluaXRpYWwgcG9zdCwgMTAgbW9udGhzIGFnby4KCllvdXIgd29yZGluZywg
b24gYSBwdWJsaWMgbWFpbGluZyBsaXN0LCByZWFkcwoKPiBbLi4uXSB3b3VsZCBiZSBoYXBweSB0
byBwYXNzIHRoZSBzZXJpZXMgb3ZlciB0byBhIG1vcmUgZXhwZXJpZW5jZWQKPiBkZXZlbG9wZXIu
CgpJIG1heSBub3QgaGF2ZSBiZWVuIGFjdGl2ZSBpbiBtZWRpYS9kcm0gdGhhdCBtdWNoLCBidXQg
YW0gZ2VuZXJhbGx5IHZlcnkKZmFtaWxpYXIgd2l0aCBrZXJuZWwgZGV2ZWxvcG1lbnQgYW5kIGNv
bnNpZGVyIG15c2VsZiByZWFzb25hYmx5IHNraWxsZWQKd2l0aCBDIChhbHNvICJwcmUtQ2xhdWRl
IikuCgpBcyBhbGwgbWlzc2luZyB3YXMgcnVubmluZyB0aGUgdmFsaWRhdGlvbiBzdWl0ZSAoYW5k
IHRoZSBtaW5pbWFsIGNoYW5nZXMKc3VjaCBhcyB0aGUgY2xvY2sgY2hhbmdlIEkndmUgYXBwZW5k
ZWQgdG8gdGhlIHNlcmllcykgSSB0aG91Z2h0CnJlLXN1Ym1pdHRpbmcgaXQgd2l0aCB0aGUgcmVz
dWx0cyBvZiB0aGUgdmFsaWRhdGlvbiBzdWl0ZSBydW4gd291bGQgYmUKdGhlIHJpZ2h0IHRoaW5n
IHRvIGRvLgoKPiBIb3dldmVyIGhlIGRpZG7igJl0IHRha2UKPiB0aGUgYmFpdCBhbmQgaXQgZGlk
buKAmXQgaGFwcGVuLiBUaGUgY29tbWVudCBpcyBhbHNvIHByZS1DbGF1ZGUgd2hlbiBteQo+IGNv
ZGluZyBhYmlsaXRpZXMgd2VyZSBtb3JlIHJ1ZGltZW50YXJ5LiBUaGUgbWFpbiByZWFzb24gZm9y
IHRoZSBsb25nCj4gZGVsYXkgaW4gZm9sbG93aW5nIHVwIGhhcyBiZWVuIHRoZSBsZW5ndGggb2Yg
dGltZSBpdCB0b29rIGZvciBEZXRsZXbigJlzCj4gYW5kIHJlbGF0ZWQgRFJNIHNlcmllcyB0aGF0
IHBlcm1pdCB3aWRlciB0ZXN0aW5nIHRvIGxhbmQ7IGEgdmFjYXRpb24KPiBvdmVyIHRoZSBzdW1t
ZXIsIGFuZCB0aGVuIENsYXVkZSBkaXN0cmFjdGluZyBtZSB3aXRoIGEgZGVlcCBkaXZlIGludG8K
PiB0aGUgQW1sb2dpYyBhbmQgUm9ja2NoaXAgbWVkaWEgc3RhY2tzIHRoYXTigJlzIHJlc3VsdGVk
IGluIDMwMCsgcGF0Y2hlcwo+IHRoYXQgbmVlZCBhIHByb3BlciBwbGFuIGZvciB1cHN0cmVhbWlu
ZyBlbHNlIEnigJltIGdvaW5nIHRvIGFubm95IHRoZQo+IGFscmVhZHktb3ZlcndvcmtlZCBtZWRp
YS9kcm0gbWFpbnRhaW5lcnMuCgpUaGF0IHBhcnRpY3VsYXIgYml0LCBtYWtpbmcgVkRQVTQzNiB3
b3JrLCBkb2Vzbid0IGRlcGVuZCBvbiBhbnkgb2YgdGhhdApmdXR1cmUgd29yayB5b3UgbWF5IHN0
aWxsIHdhbnQgdG8gc3VibWl0LiBJdCdzIGltbWVkaWF0ZWx5IHVzZWZ1bCBhbmQKY2FuIGJlIHRl
c3RlZCBpbmRlcGVuZGVudGx5LgoKPiBJIGRvbuKAmXQgb2JqZWN0IHRvIHNvbWVvbmUgdXBzdHJl
YW1pbmcgbXkgcGF0Y2hlcy4gSSBkbyBvYmplY3QgdG8gdGhlCj4gbGFjayBvZiBvdXRyZWFjaCB0
byBjaGVjayBvbiBteSBwbGFucyBhbmQgcGF0Y2ggc3RhdHVzIGJlZm9yZSBibGluZGx5Cj4gKGFu
ZCB3cm9uZ2x5KSBhc3N1bWluZyB0aGVyZSB3ZXJlIG5vbmUuCgpJIGRpZG4ndCBtZWFuIHRvIG92
ZXJzdGVwIHlvdSBoZXJlIC0tIGJ1dCAxMCBtb250aHMgb2Ygc2lsZW5jZSBhbmQgYW4Kb2ZmZXIg
dG8gaGFuZCBvdmVyIHRoZSBzZXJpZXMgZGlkbid0IHNlZW0gdG8gcmVxdWlyZSBhbnkgY29vcmRp
bmF0aW9uLgoKPiBZb3Ugd2lsbCBmaW5kIGxhdGVyIHZlcnNpb25zCj4gb2YgbXkgcGF0Y2hlcyB3
aXRoIGZpeGVzIGZvciBjaGFuZ2VzIGluIHN1cnJvdW5kaW5nIGNvZGUgKGFzIEkgd29yawo+IG9u
IHNvbWV0aGluZyBicm9hZGx5IGVxdWl2YWxlbnQgdG8gZHJtLXRpcCBub3QgTGludXggNi4xOCkg
YW5kIGZyb20KPiBmdXJ0aGVyIHRlc3RpbmcgaW4gbXkgbm90LXZlcnktYWJhbmRvbmVkIGRldmVs
b3BtZW50IHRyZWU6Cj4gCj4gaHR0cHM6Ly9naXRodWIuY29tL2NoZXdpdHQvbGludXgvY29tbWl0
cy9yb2NrY2hpcC03LjQueQoKSSB3YXNuJ3QgYXdhcmUgb2YgeW91dCBHaXRodWIgdHJlZSB3aGlj
aCB3YXNuJ3QgbWVudGlvbmVkIGFueXdoZXJlIGluCnlvdXIgcHJldmlvdXMgc3VibWlzc2lvbnMu
IEl0IGFsc28gc2VlbXMgdGhhdCB0aGlzIHRyZWUgaGFzIG9ubHkgYmVlbgpwdWJsaXNoZWQgaG91
cnMgYWdvLCBhbmQgZG9lc24ndCBjb250YWluIGFueSBjaGFuZ2VzIHJlbGF0ZWQgdG8gcmt2ZGVj
CmJleW9uZCB3aGF0IGlzIGFsc28gcHVibGlzaGVkIHZpYSB0aGUgbWFpbGluZyBsaXN0cy4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
