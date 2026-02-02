Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36187E7DEED
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 14:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=69smwvGLSF3Uxwm91mYSrSEAekLWjDUUKITFh+/CbRk=; b=THN/lIshDbYLymdAA4F/Jdl1Ed
	jNVKYaQ4xFlfpbdqzUxL8G1PmL0y3qS4PCI26AeoPlzUJb4wBfIEMUG86fimu4Pl+Qced28+ehC3V
	sSgq5QE1J5Gc6ApQLVlMYgQqO/ZfsezazTJ0YmXDPeO7RzsEQK+iU/D2pLTG26yHxHXNLMeLx/jw6
	X2MPjJK6qaqzEclBAzDV9yMdeZSgwJM7TcticGShLsQyHS5JGn+eRSoP5BaJxWGS2V9MXxHDGJPZb
	3N9GaufP4bsnSc4Xp/A7h3S3/peLIg7DcST4gJEXoEaMeXcOTt6+ok0IS9N5imBMazGXT0WyNhpcr
	gi/UhiBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmucX-000000054aY-3rYz;
	Mon, 02 Feb 2026 14:09:41 +0000
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmucT-000000054Zo-1f81;
	Mon, 02 Feb 2026 14:09:39 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 10F171D000A0;
	Mon,  2 Feb 2026 09:09:34 -0500 (EST)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Mon, 02 Feb 2026 09:09:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1770041374;
	 x=1770127774; bh=RBoismynB60LLwwoMkedKjwF2LAh/OXyt9rYS+d1H6U=; b=
	BdKTyM9FOy3kpBMxH25ZRVPtJYe4n7zOgFX02Ew7DVrdTjZa7gZMuk/6T3fzAcvr
	Mq18oV0QO2yKpmXSUJE0m9d8Wy9I+WVQpkMvmPozdkbX4/SBpZ/+E5NdhcPXzvmQ
	cjDUd7CCzmVk0xxxBIq3JGv3Rw1rp7bJJ/HYq8D7qzpNK1UpVN3Qr1QQmgee1kcT
	LZ1kbgyDBHzkyjm7I+gnkukAlDSR/jUJE5vJCOMvGEH6CufTpa6L0jIUGbwW2Ymf
	sat40+3mQz9RuZLauIpnB1wFZ6HtHCFGP0zqJ+S4FfaSEYZDdidT2wIbzbuccTcT
	bh9N26PmNhrwi2McIECKsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770041374; x=
	1770127774; bh=RBoismynB60LLwwoMkedKjwF2LAh/OXyt9rYS+d1H6U=; b=N
	/1rYOKepF09/IuoqxfYRV3dV/zC/5jA8CZYFmhF90XiFmPvg9TTP7fpFux4suFuR
	FPMlE5wwchXnm+DyJkmYPJJtCFEbTKx2jW8S1Jq9rtQd8owLPVBAS9kR9DcqDcYh
	b5jG4nvCzl/kOmrcbnCLMOF39oBtkcWji0H659zogoWxiZ59pmewfoB7NMOmG25/
	1No6XmORBf6ZG/kTbvSuVrDkthHaralWhmxv/RIJ7lPEK7G9n66CEeGgl0zKhNA+
	rSJhlqWOAWP7TS4UmsXB1BnmWjLrJU7FaoktaL6d+a3/NWNxdQOvWdG5VYi9qVDc
	lEvFT57Lm+YFItQrfVESg==
X-ME-Sender: <xms:HrCAaY3mUCjnPG_gHmmxZhkHjJefUm729qdIwPOtpgt8mnN3ppkcZA>
    <xme:HrCAad6rH4Urj-UNeT4hEclXyd9XpPs4Zvww-XTPjKEJtAwzla7KtMbx8uD8Hc8im
    vXwsthOsrVKh-rPwMdt10NZj7fBDSoA41mGCsNgCCj7zLN25Kr6AUY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujeejkeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhepteekteeuudegheejjefhleehheehudekuefggeetkeevueeghfevgeduteevtefg
    necuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdp
    nhgspghrtghpthhtohepudeipdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvg
    htlhgvvhdrtggrshgrnhhovhgrsegtohhllhgrsghorhgrrdgtohhmpdhrtghpthhtohep
    nhhitgholhgrshdrughufhhrvghsnhgvsegtohhllhgrsghorhgrrdgtohhmpdhrtghpth
    htohepnhhitghkrdguvghsrghulhhnihgvrhhsodhlkhhmlhesghhmrghilhdrtghomhdp
    rhgtphhtthhopehjuhhsthhinhhsthhithhtsehgohhoghhlvgdrtghomhdprhgtphhtth
    hopehmohhrsghosehgohhoghhlvgdrtghomhdprhgtphhtthhopegrrhhnugeskhgvrhhn
    vghlrdhorhhgpdhrtghpthhtohephhhvvghrkhhuihhlodgtihhstghosehkvghrnhgvlh
    drohhrghdprhgtphhtthhopehmtghhvghhrggssehkvghrnhgvlhdrohhrghdprhgtphht
    thhopehnrghthhgrnheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:HrCAabVKYPCDd5wTV9GUcv1BQnYI01S0aSMcc4qKaaZ9Nep53LLEfQ>
    <xmx:HrCAaf42fF5ngcPG-xsg2abAHd-JD5n_2EKb8aFgrCvUi8FzEnplzA>
    <xmx:HrCAaZBAaYTs6mI4ctuT-Z5YHvkgT-PjThRjSgck4AeELCkPdivpaA>
    <xmx:HrCAaTec1p7Kxiwf_aEoxbcZmPezFrnygnncZvSBZ-cc_KzW-j8MUg>
    <xmx:HrCAaVhiSYwd7RIMWurMrNCzNwNcpKuIlN8tGfl_mRnUodmMGmQvzI81>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 3F359700065; Mon,  2 Feb 2026 09:09:34 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Ad03WE3-YZeR
Date: Mon, 02 Feb 2026 15:09:14 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Detlev Casanova" <detlev.casanova@collabora.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Nathan Chancellor" <nathan@kernel.org>,
 "Hans Verkuil" <hverkuil+cisco@kernel.org>
Cc: "Nick Desaulniers" <nick.desaulniers+lkml@gmail.com>,
 "Bill Wendling" <morbo@google.com>, "Justin Stitt" <justinstitt@google.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Message-Id: <3b89635f-1c1c-4e4e-b0a9-2bbd0f21bc90@app.fastmail.com>
In-Reply-To: <16baade123f563ea92e6117bf78c56e8617daf14.camel@collabora.com>
References: <20260202094804.1231706-1-arnd@kernel.org>
 <16baade123f563ea92e6117bf78c56e8617daf14.camel@collabora.com>
Subject: Re: [PATCH 1/2] media: rkvdec: reduce excessive stack usage in
 assemble_hw_pps()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_060937_919768_01B9DBC1 
X-CRM114-Status: GOOD (  20.93  )
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

T24gTW9uLCBGZWIgMiwgMjAyNiwgYXQgMTQ6NDIsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4g
TGUgbHVuZGkgMDIgZsOpdnJpZXIgMjAyNiDDoCAxMDo0NyArMDEwMCwgQXJuZCBCZXJnbWFubiBh
IMOpY3JpdMKgOgo+PiBGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+PiAKPj4g
VGhlIHJrdmRlY19wcHMgaGFkIGEgbGFyZ2Ugc2V0IG9mIGJpdGZpZWxkcywgYWxsIG9mIHdoaWNo
Cj4+IGFzIG1pc2FsaWduZWQuIFRoaXMgY2F1c2VzIGNsYW5nLTIxIGFuZCBsaWtlbHkgb3RoZXIg
dmVyc2lvbnMgdG8KPj4gcHJvZHVjZSBhYnNvbHV0ZWx5IGF3ZnVsIG9iamVjdCBjb2RlIGFuZCBh
IHdhcm5pbmcgYWJvdXQgdmVyeQo+PiBsYXJnZSBzdGFjayB1c2FnZSwgb24gdGFyZ2V0cyB3aXRo
b3V0IHVuYWxpZ25lZCBhY2Nlc3M6Cj4+IAo+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JrdmRlYy9ya3ZkZWMtdnA5LmM6OTY2OjEyOiBlcnJvcjogc3RhY2sgZnJhbWUgc2l6ZSAo
MTQ3MikgZXhjZWVkcyBsaW1pdCAoMTI4MCkgaW4gJ3JrdmRlY192cDlfc3RhcnQnIFstV2Vycm9y
LC1XZnJhbWUtbGFyZ2VyLXRoYW5dCj4KPiBXZSBoYWQgYWxyZWFkeSBhZGRyZXNzZWQgYW5kIHZh
bGlkYXRlZCB0aGF0IG9uIGNsYW5nLTIxLCB3aGljaCBpbmRpY2F0ZXMgbWUgdGhhdAo+IHdlIGxp
a2VseSBhcmUgbWlzc2luZyBhbiBhcmNoaXRlY3R1cmUgKG9yIGEgY29uZmlnKSBpbiBvdXIgQ0ku
IENhbiB5b3UgZG9jdW1lbnQKPiB3aGljaCBhcmNoaXRlY3R1cmUsIGNvbmZpZ3VyYXRpb24gYW5k
IGZsYWdzIHdhcyBhZmZlY3RlZCBzbyB3ZSBjYW4gYWRkIGl0IG9uIG91cgo+IHNpZGUgPwo+Cj4g
T3VyIG1lZGlhIHBpcGVsaW5lIGJlZm9yZSBzZW5kaW5nIHRvIExpbnVzIGFuZCB0aGUgY2xhbmcg
YnVpbGRzIHRyYWNlIGFyZSBpbiB0aGUKPiBmb2xsb3dpbmcgbGluaywgaW4gY2FzZSBpdCBtYXR0
ZXJzLgo+Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2xpbnV4LW1lZGlhL21lZGlh
LWNvbW1pdHRlcnMvLS9waXBlbGluZXMvMTU4ODczMQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9saW51eC1tZWRpYS9tZWRpYS1jb21taXR0ZXJzLy0vam9icy85MTYwNDY1NQoKVGhl
IGNvbmZpZ3VyYXRpb24gdGhhdCBoaXQgdGhpcyBmb3IgbWUgd2FzIGFuIEFSTXY3LU0gTk9NTVUg
YnVpbGQuIEknbQpkb2luZyAncmFuZGNvbmZpZycgYnVpbGRzIGhlcmUsIHNvIEkgaW5ldml0YWJs
eSBoaXQgc29tZSBjb3JuZXIgY2FzZXMKdGhhdCBhbGwgZGV0ZXJtaW5pc3RpYyBDSSBzeXN0ZW1z
IG1pc3MuIEkgZG9uJ3QgdGhpbmsgdGhhdCB5b3Ugc2hvdWxkCmFkZCBBUk12Ny1NIGhlcmUsIHNp
bmNlIHRoYXQgd291bGQgdGFrZSB1cCB1c2VmdWwgYnVpbGQgcmVzb3VyY2VzCmZyb20gc29tZXRo
aW5nIG1vcmUgaW1wb3J0YW50LiBUaGVyZSBhcmUgbm8gZHJ2aWVycy9tZWRpYS8gYWN0dWFsCnVz
ZXJzIG9uIEFSTXY3LU0sIGFuZCBuZXh0IHRpbWUgaXQgaXMgZ29pbmcgdG8gYmUgc29tZXRoaW5n
IGVsc2UuCgo+PiBQYXJ0IG9mIHRoZSBwcm9ibGVtIGhlcmUgaXMgaG93IGFsbCB0aGUgYml0Zmll
bGQgYWNjZXNzZXMgYXJlCj4+IGlubGluZWQgaW50byBhIGZ1bmN0aW9uIHRoYXQgYWxyZWFkeSBo
YXMgbGFyZ2Ugc3RydWN0dXJlcyBvbgo+PiB0aGUgc3RhY2suCj4KPiBBbm90aGVyIG9ic2VydmF0
aW9uIGlzIHRoYXQgeW91IGhhZCB0byBlbmFibGUgQVNBTiB0byBtYWtlIGl0IG1pc3MtYmVoYXZl
IG9uIGZvcgo+IGxvb3AgdW5yb2xsaW5nICh3aXRoIGNvbXBsZXggYml0ZmllbGQgd3JpdGVzKS4g
IEFsbCBJJ3ZlIG9idGFpbmVkIGJ5IHZpc2l0aW5nCj4gdGhlIExpbms6IGlzIHRoYXQgaXRzIGFy
bXY3LWEgYXJjaGl0ZWN0dXJlLgoKUmlnaHQsIHRoaXMgcmFuZGNvbmZpZyBidWlsZCBsaWtlbHkg
Z290IGNsb3NlciB0byB0aGUgd2FybmluZwpsaW1pdCBiZWNhdXNlIG9mIHRoZSBpbmhlcmVudCBv
dmVyaGVhZCBpbiBLQVNBTiwgYnV0IHRoZSBwcm9ibGVtCndpdGggdGhlIHVuYWxpZ25lZCBiaXRm
aWVsZHMgd2FzIHNvbWV0aGluZyB0aGF0IEkgY291bGQgbGF0ZXIKcmVwcm9kdWNlIHdpdGhvdXQg
S0FTQU4sIG9uIEFSTXY1IGFuZCBNSVBTMzJyMi4KClRoaXMgaXMgc29tZXRoaW5nIHdlIHNob3Vs
ZCBmaXggaW4gY2xhbmcuCiAKPj4gTWFyayBzZXRfZmllbGRfb3JkZXJfY250KCkgYXMgbm9pbmxp
bmVfZm9yX3N0YWNrLCBhbmQgc3BsaXQgb3V0Cj4+IHRoZSBmb2xsb3dpbmcgYWNjZXNzZXMgaW4g
YXNzZW1ibGVfaHdfcHBzKCkgaW50byBhbm90aGVyIG5vaW5saW5lCj4+IGZ1bmN0aW9uLCBib3Ro
IG9mIHdoaWNoIG5vdyB1c2luZyBhcm91bmQgODAwIGJ5dGVzIG9mIHN0YWNrIGluIHRoZQo+PiBz
YW1lIGNvbmZpZ3VyYXRpb24uCj4+IAo+PiBUaGVyZSBpcyBjbGVhcmx5IHN0aWxsIHNvbWV0aGlu
ZyB3cm9uZyB3aXRoIGNsYW5nIGhlcmUsIGJ1dAo+PiBzcGxpdHRpbmcgaXQgaW50byBtdWx0aXBs
ZSBmdW5jdGlvbnMgcmVkdWNlcyB0aGUgcmlzayBvZiBzdGFjawo+PiBvdmVyZmxvdy4KPgo+IFdl
J3ZlIHRyaWVkIHJlYWxseSBoYXJkIHRvIGF2b2lkIHRoaXMgbm9uaW5saW5lX2Zvcl9zdGFjayBq
dXN0IGJlY2F1c2UgY29tcGlsZXJzCj4gYXJlIGJ1Z2d5LiBJJ2xsIGhhdmUgYSBsb29rIGFnYWlu
IGluIGNhc2UgSSBmaW5kIHNvbWUgaWRlYXMsIGJ1dCBtZWFud2hpbGUsIHdpdGgKPiBmYWlsaW5n
IGFyY2hpdGVjdHVyZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2U6Cj4KPiBSZXZpZXdlZC1ieTogTmlj
b2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKVGhhbmtzIQoK
ICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
