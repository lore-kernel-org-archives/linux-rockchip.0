Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B7606A6DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 19:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Whs7fT2+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Tsu+dV+R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=f9bxkvx9Uycyho51Lrh36SDss+gIcuASDdQRU1J/mt0=; b=Whs7fT2+e/ZhpAh08NP4u1KlET
	/aQIExqQKkT+0iwZMsSX37OZgdreCkuGi+uCQdWtGwPdLmHtPX6plXj+fA4Stf9lCuwEeW9aO86nX
	OjZmZyXmu9IwwOTN5PiXlLhG6oAETjrOna+PfuNMaBCsWO5WvCgFieqC7a8iJRHcHpG+EhKdX0Ypp
	viEDo/BOeRft0fkF4KJ5IS1hva8xHL7z7RX3A29td30cbUjR1iiKwRqOkHxM6nmaWvaQT3NbcrHlc
	Psvu/lJY3ILEIF2X4hob3HLUDYQneOoRm6pNOjuHtt16QEw8yTXxEJPJYJl6Tid9sRdzcGxiRGt3/
	sO4zotFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUU7u-0000000G3IV-1TMS;
	Fri, 20 Nov 2026 19:18:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUU7i-0000000G3AX-0smq
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 19:18:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A53006013B
	for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 19:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE45C1F000C6
	for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 19:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795202292;
	bh=D0aacaaucLazBzamGaNcpBWXLJSLR5Zsq+QZIkHcA28=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=Tsu+dV+RFstRRv9DCiGG0qgN4F8PbOY6/XDaZv5+N00mdm7KoZod3Jdlpak9BABKb
	 +0EFOLZDoGVg1Vq9B4RmzFxNH/wQY0yNFsv45UIm33eSA73I4GM3IBVrF/5Jqw/Xgf
	 ozcfDRa8hK4Gmiw0At24xmlO4vfcN5aQBbCTmw4TWJimTBBU98kG9/k6WGLZhzvu80
	 8sOHlyWx2IzZXdrGubIH5/9bXbZHy+JDhVtOFJrXu9DKfIBP1fHYkjCf4DRqULZovf
	 kinhqDgKUHIqWP9cTdUBbH2y7ALbtl9I4RyBWfFTNyTg8UZca1BJi5UI4Mk2tRNRKo
	 P2IFBQw4/i2Mw==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3ae6f2b193fso6959561fa.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 11:18:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErGQQp0X7PtO6VXuOxC/pdolvlMGvYTQkGgHuZqqXWgmaK2a6SXP9rI+PlabEBXjF+eTEarux/eWFRLW5lXxvA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9BJ5Odl9zgDG4fnEaUDXplTJsMdXmzHhT9nHNlUUmPyrIoJtGO
	CTQQNihF+iGK9mhpECUBGTB5N4EX8TLz3OJENTF9M+FteRp8ouRA6u1u/PcbF3yRD5zlHnOLtq0
	SMCkt0gXCX9qSVZMsLAaNuo34iSU6/5o=
X-Received: by 2002:a05:651c:419b:b0:3ac:433c:6ab7 with SMTP id
 38308e7fff4ca-3ae7f9f2550mr11211681fa.16.1795202291354; Fri, 20 Nov 2026
 11:18:11 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Fri, 20 Nov 2026 20:17:58 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0h_kRcqpfM=8wnEXSnwB5+MHHUd2wK8jruQSRoTYnuXew@mail.gmail.com>
X-Gm-Features: Aa3M54oLwSoxOTZL4M8rcFfriin7DTrg-svIenSNy9jdlFieUb2umtCsC8Amt5k
Message-ID: <CAJZ5v0h_kRcqpfM=8wnEXSnwB5+MHHUd2wK8jruQSRoTYnuXew@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/2] powercap: idle_inject: Create threads on demand
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: rafael@kernel.org, tglx@linutronix.de, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	Peter Ziljstra <peterz@infradead.org>, Bradley Morgan <brads@mainlining.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMTgsIDIwMjYgYXQgNToxNuKAr1BNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0Bvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IElkbGUgaW5qZWN0aW9uIGN1cnJl
bnRseSByZWdpc3RlcnMgcGVyLUNQVSBrZXJuZWwgdGhyZWFkcyBkdXJpbmcgZWFybHkKPiBpbml0
aWFsaXphdGlvbiwgaW5jbHVkaW5nIG9uIENQVXMgZm9yIHdoaWNoIG5vIGlkbGUgaW5qZWN0aW9u
IGRldmljZQo+IHdpbGwgYmUgcmVnaXN0ZXJlZC4KPgo+IFRoaXMgc2VyaWVzIG1ha2VzIHRocmVh
ZCBjcmVhdGlvbiBmb2xsb3cgdGhlIGxpZmV0aW1lIGFuZCBDUFUgbWFzayBvZgo+IGVhY2ggaWRs
ZSBpbmplY3Rpb24gZGV2aWNlLgo+Cj4gVGhlIGZpcnN0IHBhdGNoIGFkZHMgYW4gb3B0aW9uYWwg
Q1BVIG1hc2sgdG8gc21wYm9vdCB0aHJlYWQgZGVzY3JpcHRvcnMuCj4gVGhlIG1hc2sgcmVzdHJp
Y3RzIHRocmVhZCBjcmVhdGlvbiwgQ1BVIGhvdHBsdWcgaGFuZGxpbmcgYW5kIHRlYXJkb3duLAo+
IHdoaWxlIHByZXNlcnZpbmcgdGhlIGV4aXN0aW5nIGJlaGF2aW9yIGZvciBkZXNjcmlwdG9ycyB3
aXRob3V0IGEgbWFzay4KPiBSZWdpc3RyYXRpb25zIHNoYXJpbmcgdGFzayBzdG9yYWdlIGFyZSBj
aGVja2VkIGZvciBvdmVybGFwcGluZyBDUFUKPiBtYXNrcyB1bmRlciBzbXBib290X3RocmVhZHNf
bG9jayBiZWZvcmUgYW55IHRocmVhZHMgYXJlIGNyZWF0ZWQuCj4KPiBUaGUgc2Vjb25kIHBhdGNo
IHVzZXMgdGhpcyBzdXBwb3J0IHRvIHJlZ2lzdGVyIGlkbGUgaW5qZWN0aW9uIHRocmVhZHMKPiB3
aGVuIGEgZGV2aWNlIHJlZ2lzdGVycyBhbmQgZGVzdHJveSB0aGVtIHdoZW4gaXQgdW5yZWdpc3Rl
cnMuIENQVQo+IG93bmVyc2hpcCBjbGFpbXMsIHJlZ2lzdHJhdGlvbiByb2xsYmFjayBhbmQgdGhy
ZWFkIHRlYXJkb3duIGFyZQo+IHNlcmlhbGl6ZWQgdG8gcHJldmVudCBvdmVybGFwcGluZyByZWdp
c3RyYXRpb25zIGZyb20gc2hhcmluZyB0aHJlYWRzLgo+Cj4gVGhlIHNlcmllcyB3YXMgdGVzdGVk
IG9uIFJvY2tjaGlwIFJLMzU4OC4gVGhlIHVwZGF0ZWQgc21wYm9vdCBjb2RlIGFuZAo+IGlkbGUg
aW5qZWN0aW9uIGNvZGUgYWxzbyBidWlsZCB3aXRoIFc9MS4gQ29uY3VycmVudCByZWdpc3RyYXRp
b24gYW5kCj4gQ1BVIGhvdHBsdWcgcnVudGltZSB0ZXN0aW5nIHJlbWFpbnMgb3V0c3RhbmRpbmcu
Cj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gUmVqZWN0IG92ZXJsYXBwaW5nIHNtcGJvb3QgcmVnaXN0
cmF0aW9ucyBzaGFyaW5nIHBlci1DUFUgdGFzayBzdG9yYWdlCj4gICB3aXRoIFdBUk5fT05fT05D
RSgpIGFuZCAtRUJVU1ksIGFzIHN1Z2dlc3RlZCBieSBUaG9tYXMgR2xlaXhuZXIuCj4gLSBEZWZh
dWx0IGEgTlVMTCBDUFUgbWFzayB0byBjcHVfcG9zc2libGVfbWFzayBhdCByZWdpc3RyYXRpb24g
YW5kCj4gICByZW1vdmUgcmVkdW5kYW50IE5VTEwtbWFzayBjaGVja3MgZnJvbSB0aGUgbGlmZWN5
Y2xlIGhlbHBlcnMuCj4gLSBVc2Ugc2NvcGVkIGd1YXJkcyBmb3IgdGhlIHNtcGJvb3QgcmVnaXN0
cmF0aW9uIGxvY2tzLgo+IC0gRG9jdW1lbnQgdGhlIG92ZXJsYXAgcmVzdHJpY3Rpb24gYW5kIHJl
Z2lzdHJhdGlvbiByZXR1cm4gdmFsdWVzLCBhbmQKPiAgIHVwZGF0ZSB0aGUgY29yZSBjb21taXQg
ZXhwbGFuYXRpb24uCj4gLSBBZGQgQnJhZGxleSBNb3JnYW4ncyBSZXZpZXdlZC1ieSB0YWcgdG8g
dGhlIGlkbGUgaW5qZWN0aW9uIHBhdGNoLgo+Cj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGlu
dXgtZm91bmRhdGlvbi5vcmc+Cj4gQ2M6IFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVs
Lm9yZz4KPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4gQ2M6IEJy
YWRsZXkgTW9yZ2FuIDxicmFkc0BtYWlubGluaW5nLm9yZz4KPgo+IERhbmllbCBMZXpjYW5vICgy
KToKPiAgIHNtcGJvb3Q6IEFsbG93IHJlc3RyaWN0aW5nIHBlci1DUFUgdGhyZWFkcyB0byBhIENQ
VSBtYXNrCj4gICBwb3dlcmNhcDogaWRsZV9pbmplY3Q6IENyZWF0ZSBwZXItQ1BVIHRocmVhZHMg
b24gcmVnaXN0cmF0aW9uCj4KPiAgZHJpdmVycy9wb3dlcmNhcC9pZGxlX2luamVjdC5jIHwgNjkg
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L3NtcGJv
b3QuaCAgICAgICAgfCAgNiArKysKPiAga2VybmVsL3NtcGJvb3QuYyAgICAgICAgICAgICAgIHwg
NDUgKysrKysrKysrKysrKysrKystLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDgzIGluc2VydGlv
bnMoKyksIDM3IGRlbGV0aW9ucygtKQo+CgpBcHBsaWVkIGFzIDcuNSBtYXRlcmlhbCwgdGhhbmtz
IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
