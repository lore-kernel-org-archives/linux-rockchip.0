Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FC9606A9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gbQm02gc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=gVkKcdyw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UFSeoi0eYOrDO4K17kOpT7Ie2jlHflXBUwtT4rGr0hg=; b=gbQm02gc/F7toId02rbJXwgn3y
	Sdem3gxkGsjLdFJo04c0BUOv4vBlLhhAjiXIygO5fqufHrYWVqMlU7APsRNN4EsnhFdvccCy6WFfy
	imSPiGcX8ppt3nJ5mg2PYrsSv3r/HmfenccVsi92ZOJCE+ZZCeRW0wIAqKkwnBokZAK4VFjANwnZ5
	K22diqm/68IILKUMgbSog/VTkkVIcwVz2BVw2TLMGDzja7ZgRw19vt3AeKsHNVpzsWetoT5Yt5IEB
	YiocCouBXoQoqph56E5BmnR1zJherlwcWhAnrI1ShPZGBRqHDmT4xVY8Evxt3XvY5aJDy4L6aNx5N
	9gt69PYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLhGv-00000004sYv-3kvM;
	Tue, 27 Oct 2026 13:31:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLhGs-00000004sXe-3MOS;
	Tue, 27 Oct 2026 13:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qEC5D0LF9e/JOlM8sgTaH4qiRnn1eg0HLkg9p1QEwmU=; b=gVkKcdyw0U2MQvyLMmviOIuJ9j
	xya+zVI6IoIafmhBMUgl3dv4Jf1WA7cvIQj8ZbG7YDrZg6ObXmrdpXzez7DY0WEFxINKoU242J6an
	NJ3lmLxmcS3dB6WiX4VVy+Aedi+TLCI4QwA/yrzCKHVjXRWdk28irHuSW02PyuyBQOjJ5AXEWWXu9
	iwLNJOxU0UXmS9i6SjAtd1mv4hE1GXzWroz4zXbX90ZMt8uSBsZsLhRGrddCZ0ZQrWgOiPXWT+GA3
	D0YcsjhS3nfIlDM0pAO6yUKa3+R89BKkK7cdAcK1OfDt7Jq2GO5YyunjzF4nFoj4KSY7BLR3eFVJR
	hDp2S9Kg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: 1579567540@qq.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, Ulf Hansson <ulfh@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pmdomain: rockchip: Add RK3572 boot peripheral domains
Date: Tue, 27 Oct 2026 14:31:10 +0100
Message-ID: <1942535.QCnGb9OGeP@diego>
In-Reply-To: <080cffd7-05e6-458d-a00a-b757b0f44aa5@rock-chips.com>
References: <20261026-add-board-ok3572-c-pmdomain-v3-0-70d614d3d921@qq.com>
 <3329883.fEcJ0Lxnt5@phil>
 <080cffd7-05e6-458d-a00a-b757b0f44aa5@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_063122_898540_98A89D2E 
X-CRM114-Status: GOOD (  18.26  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDAyOjEwOjM3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRmlubGV5IFhpYW86Cj4gCj4g5ZyoIDIwMjYvMTAvMjYgMTk6
NTMsIEhlaWtvIFN0dWVibmVyIOWGmemBkzoKPiA+IEhpIEZpbmxleSwKPiA+Cj4gPiBBbSBNb250
YWcsIDI2LiBPa3RvYmVyIDIwMjYsIDEyOjM3OjA2IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6
ZWl0IHNjaHJpZWIgRmlubGV5IFhpYW86Cj4gPj4g5ZyoIDIwMjYvMTAvMjYgMTY6NDcsIEZpbmxl
eSBYaWFvIOWGmemBkzoKPiA+Pj4g5ZyoIDIwMjYvMTAvMjYgMTE6MjEsIEN1bmhhbyBMdSB2aWEg
QjQgUmVsYXkg5YaZ6YGTOgo+ID4+Pj4gRnJvbTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJv
Y2stY2hpcHMuY29tPgo+ID4+Pj4KPiA+Pj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgUkszNTcyIE5W
TTAsIE5WTTEsIFBIUCwgYW5kIFZPUCBwb3dlciBkb21haW5zLgo+ID4+Pj4KPiA+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEZpbmxleSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiA+PiBJ
IGhhdmUgdG8gcG9pbnQgb3V0IHRoYXQgdGhlIGNoYW5nZXMgKHRoZSBzaHV0ZG93bi9yZXN0b3Jl
Cj4gPj4gcmV3b3JrLCBwZW5kaW5nLXN0YXRlIHRyYWNraW5nLCBldGMuKSB3ZXJlIG5vdCBtYWRl
IGJ5IG1lLCBhbmQgSSBoYXZlCj4gPj4gbm90IHJldmlld2VkIHRoZW0gaW4gZGV0YWlsLiBUaGVy
ZWZvcmUsIEkgc2hvdWxkIG5vdCByZW1haW4gYXMgdGhlCj4gPj4gYXV0aG9yIChGcm9tOikgb2Yg
dGhpcyBwYXRjaCwgbm9yIHNob3VsZCBteSBTaWduZWQtb2ZmLWJ5IGJlIGtlcHQgb24KPiA+PiBp
dC4KPiA+IEFzIHRoaXMgc2VlbWluZ2x5IGNvbWVzIGZyb20gdGhlIHZlbmRvci10cmVlLCBfc29t
ZV8gUm9ja2NoaXAgYXV0aG9yc2hpcAo+ID4gc2hvdWxkIGJlIGtlcHQgSSB0aGluaz8KPiA+Cj4g
PiBEbyB5b3UgaGF2ZSBhIHN1Z2dlc3Rpb24gd2hvIHRoYXQgc2hvdWxkIGJlIG90aGVyIHRoYW4g
eW91PyA6LSkKPiBXZSBoYXZlIG5ldmVyIGNhcnJpZWQgY29kZSBsaWtlIHRoaXMsIGFuZCB0aGUg
b3RoZXIgcGFydHMgYWxzbwo+IGRpZmZlciBzaWduaWZpY2FudGx5IGZyb20gdGhlIFJvY2tjaGlw
IGtlcm5lbC4gSXQgZG9lcyBub3QgYXBwZWFyCj4gdG8gYmUgb3VyIG9yaWdpbmFsIGNvZGUuCgp0
aGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLiBJbiB0aGF0IGNhc2UgaXQgc2hvdWxkIF9ub3Rf
IGNsYWltIGEKcm9ja2NoaXAgYXV0aG9yc2hpcCBvYnZpb3VzbHkuCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
