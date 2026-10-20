Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF429606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 00:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ze1UcNLc;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=D8dVqAfw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFqHLHH3kW8hCAiB9lRJx/JjCad530AOg/GakpbWOUw=; b=ze1UcNLcO+PXMA
	tNh/zTzZXALkr/cnQ8Fua2tts0mvSCEmAKxKzkbRgENc//d0t0rugPFo6naSE9pKhVGxuPPGFj0QV
	hnu6/i9cIhtDx3jlHdQza0MOQUzJGxfBtXK6FtupQ/iUdNyK/WN1gDfidNZuxHsqhd0vCFnyBWEzy
	hWpCSaoPKNxpX9n78NetqKrc5GrceD7SdEkdVCxFtXz2tpfldblFPh5rKeFWPgAaKRW2fOaAS1Ath
	icdDbPv5tq6GCD8uHr5qubTI/yvdcvNY14o5JrbD6dOqfct2NxexJ5C5QrcAG4v8wUyDrEHQFyDmI
	uGrhxXY3W0B40b8x6vyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIy2E-00000008agi-2nI8;
	Tue, 20 Oct 2026 00:48:58 +0000
Received: from mail-m128241.netease.com ([103.209.128.241])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIy2B-00000008agI-3YJx;
	Tue, 20 Oct 2026 00:48:57 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 519de6bff;
	Tue, 20 Oct 2026 08:48:49 +0800 (GMT+08:00)
Message-ID: <9c18acc0-2b4b-4f19-9928-de1632718f15@rock-chips.com>
Date: Tue, 20 Oct 2026 08:48:49 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, "david.wu" <david.wu@rock-chips.com>
Subject: Re: [PATCH] i2c: rk3x: Disable the controller between transfers
To: Alexey Charkov <alchark@flipper.net>
References: <20261015-i2c-rk3x-disable-v1-1-81625845c175@flipper.net>
 <bfe8baa4-e740-4908-9d2a-4defc5240a82@rock-chips.com>
 <CAKTNdwFYxPeaG6pZn3SYoR6cPAtON37ajo4nZpPE0Hm=y2c6Lg@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAKTNdwFYxPeaG6pZn3SYoR6cPAtON37ajo4nZpPE0Hm=y2c6Lg@mail.gmail.com>
X-HM-Tid: 0aa156c84b5003a4kunmb2638d4f8a0982
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHUNJVkxIS09NHkodSB8eHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=D8dVqAfw85rr9XasLOyMPAcPscEwWj2/fg2RaOjDPvEXf4fqLm8uGD/ZSzQ3zTpiFFj6KLlNJjR7nsfvCu96NGj8uYakRg6Nhc4+/VPl5wLG1mJfafFfuPY+wU2b4w0nS0/DOiy+dgG5aWf3kp6hlKptsEYkOf4oE7i5lXDhPq8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=J05n6Gr0/sJKA2C8cqIM/17mIypCcK1yS1CYec+efVE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_174856_451539_AA7607E0 
X-CRM114-Status: GOOD (  18.66  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkKCuWcqCAyMDI2LzEwLzIwIOaYn+acn+S6jCAwOjUwLCBBbGV4ZXkgQ2hhcmtvdiDlhpnpgZM6
Cj4gSGkgU2hhd24sCj4gCj4gT24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgNDozM+KAr0FNIFNoYXdu
IExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gQ2M6ICsgRGF2aWQK
Pj4KPj4g5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDIyOjAwLCBBbGV4ZXkgQ2hhcmtvdiDlhpnp
gZM6Cj4+PiBUaGUgZHJpdmVyIGxlYXZlcyB0aGUgY29udHJvbGxlciBlbmFibGVkIG9uY2UgYSB0
cmFuc2ZlciBjb21wbGV0ZXMsIGFuZAo+Pj4gYW4gZW5hYmxlZCBjb250cm9sbGVyIGtlZXBzIHRy
YWNraW5nIHRoZSBidXMuIElmIHRoZSBsaW5lcyBjb2xsYXBzZSB1bmRlcgo+Pj4gaXQgd2hpbGUg
aWRsZSwgYXMgaGFwcGVucyB3aGVuIGEgdGFyZ2V0J3Mgc3VwcGx5IGlzIHN3aXRjaGVkIG9mZiB3
aGlsZQo+Pj4gaXRzIGJ1cyBwdWxsLXVwcyBzdGF5IHBvd2VyZWQsIGl0cyBzdGF0ZSBtYWNoaW5l
IHdlZGdlcyBkcml2aW5nIFNEQSBsb3cuCj4+PiBFdmVyeSBsYXRlciB0cmFuc2ZlciB0aGVuIHRp
bWVzIG91dCwgc2luY2UgdGhlIHRpbWVvdXQgcGF0aCBvbmx5IHJlcXVlc3RzCj4+PiBhIFNUT1Ag
YW5kIG5ldmVyIGRpc2FibGVzIHRoZSBjb250cm9sbGVyLCBhbmQgdGhlIHN0dWNrIHN0YXRlIGV2
ZW4KPj4+IHN1cnZpdmVzIGEga2V4ZWMuCj4+Pgo+Pj4gQ2xlYXIgdGhlIGVuYWJsZSBiaXQgb25j
ZSBlYWNoIHRyYW5zZmVyIGlzIGRvbmUsIHN1Y2Nlc3NmdWwgb3Igbm90LCBzbwo+Pj4gdGhhdCB0
aGUgY29udHJvbGxlciBkb2VzIG5vdCB3YXRjaCBhbiBpZGxlIGJ1cyBhbmQgc3RhcnRzIGV2ZXJ5
IHRyYW5zZmVyCj4+PiBmcm9tIGEgY2xlYW4gc3RhdGUuCj4+Pgo+Pgo+PiBJIGNoZWNrZWQgdGhl
IHZlbmRvciBrZXJuZWwgdHJlZSBhbmQgc2F3IGFub3RoZXIgY2FzZSB0aGF0IHlvdSBwZXJoYXBz
Cj4+IG5lZWQgdG8gZm9sZCBzb21ldGhpbmcgc2ltaWxhciBiZWxvdyBpbnRvIHlvdXIgcGF0Y2gs
IGFsb25nIHdpdGggeW91cgo+PiBkaXNhYmxpbmcgY29udHJvbGxlcj8KPj4KPj4gICAgICAgSW4g
c29tZSBjYXNl77yMbG9nIGxpa2UgdGhpczoKPj4KPj4gICAgICAgWyAgIDEyLjM5MzkyNl0gcmsz
eC1pMmMgZmYxNTAwMDAuaTJjOiBpcnEgaW4gU1RBVEVfSURMRSwgaXBkID0gMHg1MQo+PiAgICAg
ICBbICAgMTIuNDE2NTkyXSByazN4LWkyYyBmZjE1MDAwMC5pMmM6IGlycSBpbiBTVEFURV9JRExF
LCBpcGQgPSAweDUxCj4+Cj4+ICAgICAgIFRoZSBpMmMgY2xvY2sgaXMgZGlzYWJsZWQsIHNvIHRo
ZSBwZW5kaW5nIGlycSBjbGVhbiBpcyBub3QKPj4gICAgICAgd29ya2VkLiBEaXNhYmxlIHRoZSBp
bnRlcnJ1cHQgYWZ0ZXIgdGhlIGkyYyBqb2JzIHdlcmUgZG9uZSwKPj4gICAgICAgdGhlIGVycm9y
IGxvZyB3b3VsZCBub3QgaGFwcGVuLgo+Pgo+Pgo+PiAvKiBEaXNhYmxlIGkyYyBhbGwgaXJxcyAq
Lwo+PiAjZGVmaW5lIElFTl9BTExfRElTQUJMRSAgIDAKPj4KPj4gaTJjX3dyaXRlbChpMmMsIElF
Tl9BTExfRElTQUJMRSwgUkVHX0lFTik7aTJjX3dyaXRlbChpMmMsCj4+IElFTl9BTExfRElTQUJM
RSwgUkVHX0lFTik7Cj4gCj4gVGhhbmtzIGZvciBsb29raW5nIGludG8gdGhpcyEgRG8geW91IGhh
cHBlbiB0byBoYXZlIGEgcmVwcm9kdWNlciBvcgo+IGFueSBhZGRpdGlvbmFsIGluZm8gb24gaG93
IHRoaXMgc3RhdGUgZ2V0cyB0cmlnZ2VyZWQ/IEkgaGF2ZW4ndCBydW4KPiBpbnRvIGl0IGluIG15
IHNldHVwcyAtIGRpZCBJIGp1c3QgZ2V0IGx1Y2t5PyA6KQo+IAoKVW5mb3J0dW5hdGVseSwgSSBk
b24ndC4gVGhhdCBjYW1lIGZyb20gd2hhdCBJIGZvdW5kIHdoZW4gY2hlY2tpbmcKdGhlIHZlbmRv
ciBrZXJuZWwgY29tbWl0IHRvIHNlZSBob3cgd2UgaGFuZGxlZCB5b3VyIGNhc2UuCgpTbyBJIGhh
dmUgbG9vcGVkIERhdmlkIHdobyBtYWRlIHRoZSBpbnRlcm5hbCBzdWJtaXNpb24gZm9yIHRoZSBz
YW1lIGNhc2UKYXMgeW91cnMgOCB5ZWFycyBhZ28gYW5kIGhvcGUgaGltIGNvdWxkIGhhdmUgYSBj
b21tZW50IGhlcmUuCgo+IEkgc2VlIHRoZSBzYW1lIHdyaXRlIG9mIDAgdG8gUkVHX0lFTiBqdXN0
IGFib3ZlIG15IGNoYW5nZWQgbGluZXMgZm9yCj4gdGhlIGNhc2UgaWYgKHRpbWVfbGVmdCA9PSAw
KSwgd2hpY2ggbWFrZXMgc2Vuc2UgYmVjYXVzZSBhCj4gdG9vLWxvbmctcnVubmluZyB0cmFuc2Zl
ciBtaWdodCBldmVudHVhbGx5IGNvbXBsZXRlIGFuZCB0cmlnZ2VyIHRoZQo+IGludGVycnVwdCB3
aXRoIHRoZSBjb250cm9sbGVyIGRpc2FibGVkLCB1bmxlc3MgdGhlIGludGVycnVwdCBpcwo+IGRp
c2FibGVkIHRvby4gRm9yIG90aGVyIGNhc2VzIEknZCBiZSBpbnRlcmVzdGVkIHRvIGtub3cgd2hh
dCBjYW4gcmFpc2UKPiB0aGUgaW50ZXJydXB0Lgo+IAo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
