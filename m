Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA7ACF3D338
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 17:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fIDzcGyvBuqvFeSCBFYRL1V8jJW+zXVShXqxQUDUNcM=; b=D1NnNJux5gMrdMlg0RCNnT0Nmw
	rxxxHFe3BI+EHcB/UzEMvW6sd8QMiDU3aux7T9rer5JphRJkX+FwVD0YmkYHO+GdvJbILI0MgkmXb
	Gka+kP5IC5h509RD1plSqMouISrZ5eVUIQcC5i/yyd/MebNMot0hW4W820GVdu41e5seihEPlZziu
	nOSWXn7ItwdGECZ6iL1FrXtsCDF4d79+O1E9hMbyVGm5yymUk1FPrQ0xsEXXKz+U7gNEVYYb/3F1i
	PZyGPa57ttH8ISm6nuvc5aCvDYcP/x+mgGSUCT14I7+mF70PgYkQ3GEbfTPIbTUUDIFGp6jjmwT1Z
	Eip3P7ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyCDh-00000002GFJ-01KM;
	Thu, 05 Mar 2026 17:10:41 +0000
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyCDW-00000002GDx-1TlJ;
	Thu, 05 Mar 2026 17:10:32 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 630911400206;
	Thu,  5 Mar 2026 12:10:28 -0500 (EST)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Thu, 05 Mar 2026 12:10:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1772730628;
	 x=1772817028; bh=2YKLoA2IsMyTZEip4KGxzGcQ7ltn5puWK4jv6MRs+MY=; b=
	P8WGtwp7/r9ecL8ojq0bCFXSAb2bhnspxmBcRm5Lc6wWdrOiGSpET36q4taVtN6e
	szAQqifYwuybpDdqTagrlAusetiB8SzWuckaIxuh7M/CEw6al2vwwQpB648np4xf
	wAf/TTl0pfqq7QbFrxsX/VM7YY7iuvjiZ9YrXZcga2nzVbWCzSKkiCRrQYqo9GbU
	A08fys5olDwWaIQxZiJoVOKktDPTsj1dHQ3YdwaBzMdiznyQ4YouWR7DPnziijWw
	H3QJldkZsWDI0TS8jgt/rUgAg5s10pvMbm8l2nc2/y7o5OauQBmrnyNHgaLuwUJe
	CXtVoumyPmSs2RFKqmpV+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1772730628; x=
	1772817028; bh=2YKLoA2IsMyTZEip4KGxzGcQ7ltn5puWK4jv6MRs+MY=; b=X
	4Rcymrp9oHYxlfcXIC7+z/4IIn9T6NUKsS5CxxlKyN9L8omcwKRuF6y0E0g0rNav
	0lxN/SLlffca2W0F99Djyz6Bdx2vWevbKOIDrubzZ75tDuUXMlNTQRFgm66YuO8O
	WYyeps1v+5umVNyUIbNgo/N655+kJO83BkmtlY60HcrK1kacWamKGp1IU+4cO5Os
	dziOnMYaIsajTJPg0oJjTXHYsrLDUwAlzpRmI9dvQGCLpVfKbAZspvnVcsoNwMyl
	95jJ+VNFrpA0ksgNMEBouLFiMcNcP8G4oJ2ng83EMgGvuiZRugONBupl8kPKWrkG
	Wyv3VA4dN10GIx6pvhpTg==
X-ME-Sender: <xms:A7mpaYN9pitvwkGxHyqmSyxgRER8PgRRC3rI47vIgx2K6tFj9Db73g>
    <xme:A7mpaZz2-VQApGDRdpT-u83lBiPb0o0pf4aU0H-T0M1bZX_odwHNSiyve67OBxQ3p
    tsKDN7jB2rgva5Msgr02BTzM1-R27QMNCPjPq3XvDmZAE_H1-AWwII>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieeileegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhepheelteetueehudelgeejhefgieeigfetvefgudduledthfegjeekleeuheefteeu
    necuffhomhgrihhnpehlihhnuhigthhvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghr
    tghpthhtohepudejpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeguvghtlhgvvh
    drtggrshgrnhhovhgrsegtohhllhgrsghorhgrrdgtohhmpdhrtghpthhtohepnhhitgho
    lhgrshdrughufhhrvghsnhgvsegtohhllhgrsghorhgrrdgtohhmpdhrtghpthhtohepnh
    hitghkrdguvghsrghulhhnihgvrhhsodhlkhhmlhesghhmrghilhdrtghomhdprhgtphht
    thhopehjuhhsthhinhhsthhithhtsehgohhoghhlvgdrtghomhdprhgtphhtthhopehmoh
    hrsghosehgohhoghhlvgdrtghomhdprhgtphhtthhopegrrhhnugeskhgvrhhnvghlrdho
    rhhgpdhrtghpthhtohephhhvvghrkhhuihhlodgtihhstghosehkvghrnhgvlhdrohhrgh
    dprhgtphhtthhopehkvggvsheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepmhgthhgv
    hhgrsgeskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:A7mpaZw2A0swRreIUfNUbkJ-KM0TyDHXf5aF9ETg-pzrZVQVs-ge3w>
    <xmx:A7mpaSAEZxCAXlZMphEwNfHJ7Ld-ylDRCFhl5Edpsjfmdqy__vo3Kw>
    <xmx:A7mpaSChsGG1x8lH_xhwF7G2c1V2RWemoPGaPsqLiIIDR1kTrmCwgQ>
    <xmx:A7mpad7xkfTA3dpIDyfi5NRqeUtR1Q1My_ZvpEti-YKAR3VcYo4skg>
    <xmx:BLmpaU2-yg903Rc8Bnm0rbyb3LtfMggq61VMKVlCGmH54KUoOdEqYWl1>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id C0DBA700065; Thu,  5 Mar 2026 12:10:27 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AlPWkszDc-o7
Date: Thu, 05 Mar 2026 18:10:06 +0100
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
 "Kees Cook" <kees@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Message-Id: <e907e900-073f-4aa6-b4fe-36b87e312f62@app.fastmail.com>
In-Reply-To: <1621b56864cb186f1e5433b73b56afc00aa83452.camel@collabora.com>
References: <20260305152644.791897-1-arnd@kernel.org>
 <1621b56864cb186f1e5433b73b56afc00aa83452.camel@collabora.com>
Subject: Re: [PATCH 1/2] [RESEND] media: rkvdec: reduce excessive stack usage in
 assemble_hw_pps()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_091031_332140_C306FEC3 
X-CRM114-Status: GOOD (  13.51  )
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

T24gVGh1LCBNYXIgNSwgMjAyNiwgYXQgMTc6MzcsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4K
PiBMZSBqZXVkaSAwNSBtYXJzIDIwMjYgw6AgMTY6MjYgKzAxMDAsIEFybmQgQmVyZ21hbm4gYSDD
qWNyaXTCoDoKPj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPj4gCj4+IFRo
ZSBya3ZkZWNfcHBzIGhhZCBhIGxhcmdlIHNldCBvZiBiaXRmaWVsZHMsIGFsbCBvZiB3aGljaAo+
PiBhcyBtaXNhbGlnbmVkLiBUaGlzIGNhdXNlcyBjbGFuZy0yMSBhbmQgbGlrZWx5IG90aGVyIHZl
cnNpb25zIHRvCj4+IHByb2R1Y2UgYWJzb2x1dGVseSBhd2Z1bCBvYmplY3QgY29kZSBhbmQgYSB3
YXJuaW5nIGFib3V0IHZlcnkKPj4gbGFyZ2Ugc3RhY2sgdXNhZ2UsIG9uIHRhcmdldHMgd2l0aG91
dCB1bmFsaWduZWQgYWNjZXNzOgo+Cj4gSSdtIGEgYml0IHN1cnByaXNlZCB5b3UgZmVsdCB0aGUg
bmVlZCBmb3IgcmVzZW5kLiBQZXJoYXBzIHlvdSBjYW4gaGVscCB1cwo+IHVuZGVyc3RhbmQgd2hh
dCBtYWRlIHlvdSB0aGluayB5b3VyIHBhdGNoIHdhc24ndCBiZWluZyBwcm9jZXNzZWQgPwoKSSB1
cGRhdGVkIHRoZSBzZWNvbmQgcGF0Y2ggdG9kYXkgYWZ0ZXIgSSBmb3VuZCBhIGNvcm5lciBjYXNl
IHRoYXQKd2Fzbid0IGFkZHJlc3NlZCBieSB0aGUgZmlyc3QgdmVyc2lvbi4gQXMgSSBoYWQgc2Vu
dCBib3RoIGFzIGEgc2VyaWVzCmEgbW9udGggYWdvLCBhbmQgbmVpdGhlciB3YXMgaW4gbGludXgt
bmV4dCB5ZXQsIGl0IHNlZW1lZCBtb3JlIGhlbHBmdWwKdG8gc2VuZCBhbiB1cGRhdGVkIHNlcmll
cyByYXRoZXIgdGhhbiByZXBsYWNlIG9ubHkgb25lIG9mIHRoZSB0d28uCgo+IE15IFBSOgo+IGh0
dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjA3
NGJhNWE1ZDA1ZTIzOWY0MzJkMTc2ZWIwNTExMDVmN2U2OTJmOS5jYW1lbEBjb2xsYWJvcmEuY29t
Lwo+Cj4gQW5kIEhhbnMvTWF1cm8gZGlkIGxvZ2lzdGljIG9uIHRoZSAjbGludXgtbWFpbnQgSVJD
IGNoYW5uZWwgdGhpcyBtb3JuaW5nLiBJCj4gYmVsaWV2ZSBJJ3ZlIG1hcmtlZCBhbGwgdGhlIHJl
bGV2YW50IHBhdGNoZXMgb24gcGF0Y2h3b3JrIG91ciBvZiAiTmV3IiBzdGF0ZSBhbmQKPiB5b3Ug
aGF2ZSBteSBSYi4gV2hhdCBlbHNlIHdvdWxkIGhlbHAgeW91ID8KClRoYXQncyBmaW5lIHRoZW4s
IEkgZGlkIG5vdCBtZWFuIHRvIHNlZW0gaW1wYXRpZW50LiBJIGFzc3VtZQp0aGUgb3JpZ2luYWwg
cGF0Y2hlcyB3aWxsIGJlIGluIGxpbnV4LW5leHQgdGhlbiwgYW5kIFt2MiAyLzJdCndpbGwgY29u
ZmxpY3QuIEknbGwgbGV0IHlvdSByZXZpZXcgdGhhdCBvbmUgZmlyc3QsIGJ1dCBjYW4Kc2VuZCBh
IHJlYmFzZWQgdmVyc2lvbiBpZiB5b3UgdGhpbmsgd2Ugc2hvdWxkIG1lcmdlIGl0IG9uIHRvcC4K
CiAgICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
