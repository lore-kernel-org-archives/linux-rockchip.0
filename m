Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA288C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 May 2025 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mLZVUv7UIlctkFePjNeVYSE8bTBM+CstF5Z7bdwo1MU=; b=YcmSOSv+XQ5usFUfIgtr1BYK5i
	6CJBJ6MxqKxxDxYoKuk3J99xkcEk0l1FhHiBVox6ztTT4AtMIPgEQOWzHlapDAreX+wukUzYJNQ4J
	X0/qxLwYN1+MOmvmBMqeNwZlGusicCE6eRZG/JZYtjIyY8k2MiwNmwK2z5X3469RnCXmIf5zFSWaG
	yMAgMp6hbHh+jfq97svCNHCWOcMeTZ6ODc+Q6lv0Deb2i2kwSP4Yg0dv/edLKfc/3vC9c3bTlGgzC
	/FCcj66Q6O9dZi5gaL7woeeTqMoNE8pzbdnDr8OAhu37blUoxpavQaDCKxv3fWlIeUaFWW9iozod3
	JkRrXrmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDhoC-00000005qha-0hQz;
	Sat, 10 May 2025 10:51:56 +0000
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDhRH-00000005oVF-209J;
	Sat, 10 May 2025 10:28:17 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 761F6114010F;
	Sat, 10 May 2025 06:28:13 -0400 (EDT)
Received: from phl-imap-12 ([10.202.2.86])
  by phl-compute-05.internal (MEProxy); Sat, 10 May 2025 06:28:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1746872893;
	 x=1746959293; bh=X2T/oegJiDpCtk+u192Wpv5GLasrylGVwYnEKe857cQ=; b=
	e5Dg9tslb70FSgFH7y58OQ4B4u9YYjxW8d+CW63SIcHaxlNPLUd3R3LcB5bfh3GM
	pL3JJ3th1U9iXp+fFum/4igCVLoDDd/RoVvpGiEgCeG1HUbe3JNxMFnjUK6lpikY
	hwnkWVSAtCpo9G1YBktSv6R7E3HppDX7MRKyeDutDRPqsXg+fVeoDsuxsrd/nvbP
	cocF/T+ibNPPCUthF+Gfl4//Ra79cjcIQMxge8FQlrl5JqP6w9gsN6iVLbskIoaU
	PTrLJdjBwKzYQk0P0cG5zZySCaWTyetGd9XpFMdKoXwUrJJDv7pFQeHYZVcxaAAK
	1VpXru0JBtlI4iadoMJXgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746872893; x=
	1746959293; bh=X2T/oegJiDpCtk+u192Wpv5GLasrylGVwYnEKe857cQ=; b=m
	ajWOhSCnTYOyf0j7pWaTcBcFZJGV0oQL4zcFVPGDybm6YQnbbUPCSSw5YJWBq4ac
	K0inKcGWx41MUXkdyPBTNST9O22kjz5XN2y+/+ag7p1bsTeeaByGtnmUpw8zJuHT
	FJGx1gtm7AXF+7EOt1ECvzgP1QCRPOkVOdOLmGEYB0oV8/brHO9DspGK9xpCgLY0
	i4XU51zabQGAIh9F2hZqVii6qgwSyfNLx3AZfA6xSLQGX/uQEIbH/5YnMm9+BOWm
	UiITCZme9F+WfEjBa1/22SEB4OSY2FPgcLeZdBk/DBtUR7MgnLYATXnLCyiZTXjH
	A7NIW6QKpuNLR+MfsmWYg==
X-ME-Sender: <xms:PCofaN1p5fLVuQcydEQBsrKko1uzy4Fu30szH70TMNhjRwVaPP_p8Q>
    <xme:PCofaEG9fA6Rt8XGjudjSKHk56NZHQv2qc36PjJN139DE9wkbH4rXqcXl41q6AxHn
    L_b0jUCzUmIQp9inK0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleehvdehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertder
    tdejnecuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnug
    gsrdguvgeqnecuggftrfgrthhtvghrnhepvdfhvdekueduveffffetgfdvveefvdelhedv
    vdegjedvfeehtdeggeevheefleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohep
    iedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepiihihigrohesughishhrohhoth
    drohhrghdprhgtphhtthhopegrrhhmsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehs
    ohgtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnh
    gvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhig
    qdhrohgtkhgthhhipheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtth
    hopehhvghikhhosehsnhhtvggthhdruggv
X-ME-Proxy: <xmx:PCofaN5ScQrh0BVH8rBShpCvy78tDbcnjCl7_Sf4r7pJrBe8aOGCNA>
    <xmx:PCofaK0oP3BuKsEyg3ApgaZYF2fctU0gnX4HaSNnHtMhwaqEmo8tnQ>
    <xmx:PCofaAGEL0v5WIzhq5QuNysH3MTKQNN9HLG1eTwPTAb75ZbabcTmFA>
    <xmx:PCofaL-2psMyUrmyxpVhm6x8o9oknUd8TrN3D5brGw9uSmWvOGsnGw>
    <xmx:PSofaGBKzYe3jvv7FDQtrCKYrb1YcHP91RT0FnRfmVtn1uwKhb50Cfnq>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 896B41C20067; Sat, 10 May 2025 06:28:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T8d120477412db8f8
Date: Sat, 10 May 2025 12:27:52 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, arm <arm@kernel.org>
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, "Yao Zi" <ziyao@disroot.org>
Message-Id: <df6003e3-7fc3-4e50-a702-f0aa8d663dff@app.fastmail.com>
In-Reply-To: <2857184.BEx9A2HvPv@diego>
References: <2307187.iZASKD2KPV@diego>
 <c142bdf4-3910-48bb-ba5e-8accbdb32a00@app.fastmail.com>
 <2857184.BEx9A2HvPv@diego>
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.16 #1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250510_032816_314926_D1BAD567 
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

T24gRnJpLCBNYXkgOSwgMjAyNSwgYXQgMjM6MzcsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFt
IEZyZWl0YWcsIDkuIE1haSAyMDI1LCAyMzowMzo1NCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVy
emVpdCBzY2hyaWViIAo+PiAKPj4gYnV0IHRoZSBjb3JyZXNwb25kaW5nIG5vZGVzIGFyZSBsZWZ0
IGF0IGRpc2FibGVkLiBJIHNlZQo+PiB0aGF0IHRoZSBzYW1lIG1pc3Rha2UgaXMgcHJlc2VudCBp
biB0aGUgdWFydCBub2Rlcy4KPj4gCj4+IFBsZWFzZSBzZW5kIGEgZml4dXAgdG8gcmVtb3ZlIHRo
ZXNlIGZyb20gdGhlIC5kdHNpIGZpbGUKPj4gaGVyZSBhbmQgdGhlIHNpbWlsYXIgY2hpcHMsIHVu
bGVzcyB5b3UgYXJlIHN1cmUgdGhhdCBldmVyeQo+PiBib2FyZCB3aWxsIGhhdmUgdGhlbSBlbmFi
bGVkIChsaWtlIGUuZy4gdGhlIGdwaW8gbm9kZXMpLgo+PiAKPj4gVGhlIGFsaWFzZXMgYXJlIG5v
dCBtZWFudCB0byByZWZlciB0byBzb2MtaW50ZXJuYWwgbmFtZXMsCj4+IGJ1dCB0aGUgaWRlbnRp
ZmllcnMgb24gYm9hcmQuCj4KPiBGb3IgdGhlIHVhcnRzIGFuZCBpMmMgKGFuZCBzcGkpLCBhbGwg
dGhlIGlkZW50aWZpZXJzIGFyZSBhbHdheXMgbnVtZXJpY2FsCj4gYm90aCBpbiB0aGUgU29DIGRv
Y3VtZW50YXRpb24gYXMgd2VsbCBhcyBvbiB0aGUgYm9hcmRzIGFuZCBib2FyZAo+IHNjaGVtYXRp
Y3MuCj4KPiBJZiB5b3UgbG9vayBpbiBhIHJhbmRvbSBSb2NrY2hpcCBzY2hlbWF0aWMgZmlsZSwg
dGhlIGxpbmVzIGZvciB0aGUgaTJjMAo+IGNvbnRyb2xsZXIgd2lsbCBiZSBjYWxsZWQgaTJjMF9z
Y2xfZm9vLCBpMmMwX3NkYV9mb28sIGV0Yy4KPiBTaW1pbGFyIHVhcnQwX3R4LCB1YXJ0MF9yeCwg
ZXRjLgo+Cj4gU28gd2hpbGUgSSBmdWxseSB1bmRlcnN0YW5kIHRoYXQgbW1jMCAtPiBlbW1jLCBt
bWMxIC0+IHNkLWNhcmQgYXJlIHZlcnkKPiBtdWNoIGJvYXJkIHNwZWNpZmljLCBzb21laG93IHJl
cGVhdGluZyB0aGUgdmVyeSBzYW1lIGkyYyBhbGlhc2VzIGZvciBldmVyeQo+IGJvYXJkIGZlZWxz
IHN0cmFuZ2UuIFRoZSA3dGggaTJjIGNvbnRyb2xsZXIgb24gdGhlIHNvYywgd2lsbCBuZXZlciBi
ZQo+IGNhbGxlZCBhbnl0aGluZyBlbHNlIHRoYW4gaTJjNyBhZnRlcmFsbC4KCkl0J3MgdXN1YWxs
eSBtb3N0IGltcG9ydGFudCBmb3IgdGhlIHVhcnQsIHNpbmNlIHRoYXQgdGVuZHMgdG8gZ28KdG8g
YW4gZXh0ZXJuYWwgY29ubmVjdG9yIG9uIHRoZSBib2FyZCB0aGF0IG1heSB1c2UgYSBkaWZmZXJl
bnQKbnVtYmVyaW5nLCBvciBtYXkgbm90IGV2ZW4gdXNlIHRoZSBvbmUgeW91IG5hbWVkIHNlcmlh
bDAsIHNvIHRoZXNlIGFyZQpyZW51bWJlcmVkIG1vc3Qgb2YgdGhlIHRpbWUuCgpGb3IgaTJjLCBJ
IGNhbiBzZWUgYSByZWFzb24gZm9yIGtlZXBpbmcgdGhlIG51bWJlcmluZyB0aGUgc2FtZQphcyB0
aGUgb24tY2hpcCBwaW5zLCBidXQgb25seSBoYXZlIGFuIGFsaWFzIGZvciB0aG9zZSB0aGF0IGFy
ZQphY3R1YWxseSBlbmFibGVkLiBXZSBzaG91bGQgcHJvYmFibHkgaGF2ZSBkdGMgY2hlY2sgdGhh
dCB0aGVyZQphcmUgbm8gYWxpYXNlcyB0byBkaXNhYmxlZCBkZXZpY2VzLCBidXQgdGhhdCByZXF1
aXJlcyBjbGVhbmluZwp1cCBhIGxvYWQgb2YgYm9hcmQgZmlsZXMgZmlyc3QuCgo+IEJ1dCBvaywg
aWYgeW91IGZlZWwgc3Ryb25nbHkgYWJvdXQgdGhhdCwgSSdsbCBtb3ZlIHRoZSBpMmMgYW5kIHVh
cnQgYWxpYXNlcy4KClllcywgcGxlYXNlIGRvLgoKICAgICAgQXJuZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
