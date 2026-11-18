Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7EB606A32F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jeF8tqAC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nR4xwkhR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3/6Nu9NZLsY8+WneuFOxLHWMRpHWR6NpZ2SKxbZWbfA=; b=jeF8tqACHpYtvDkNn/UOmreXk2
	D7ICWln6z05actal0t4Pc0MwiQ019AUNaVvZNP6mfpsxgo9njRiP4dakTJElRHw0L4M19x9i0wDpn
	qQdWwA9fmMRLGjqnsbPfPK/DNnr8XaAGygr6bgicQI9bsiV+JzyyP44S7rkCJlAn8Vu6MiectCqWN
	8JeFg7Bw1YLBLpSLlDlj5SPELEPrRmIbOTMarzNjz8S5IxK2WO1k0WBaysXknTI9OfSHgBPCAgxr4
	Pc64sEDOfgryvkJqvl/nm4n2eoSZ9TwGXEOeNCP4XrouaQlEX0I+wo3bGv2U5M7OdWeuQGdrPsJjY
	2eQCUTjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTi2z-00000009Ng6-0mJj;
	Wed, 18 Nov 2026 15:58:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTi2x-00000009Nfa-2fxG
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 15:58:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0AB9D6184F
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85091F000C5
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795017486;
	bh=me4+qTl82YgNzGoxWyEsprjq4fF403Or/YIKNaUUYpQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=nR4xwkhRI/v0pirr69rC2d3WKCnJTP4lIle5SWKjzRn/6ZsJkm24z38aBNEOeFFkj
	 2Vx4NoUbgVLujCUM9Es41pAVcgg30YsN7lJPElJem+fAiOZEfFbpNC8hu4zk3ZPI8L
	 wyHNo6dHrT8Mw2BsSTkCo5PTEa1Z66q53DszEQfKHStlEEzC0M+3b8r4HVO30BdQ99
	 TwYkgEjgE8ZzHAZlE7ba6Bx4XfVI4z69YGwmLHjqgP2AiE5yIWOq+GsRBAzaUtmezU
	 Rcybc1skq2dGcuDD/uG5h+4m2kJRWqyitpA+8GyKvCdD/Rf9J6npBHpqSB7h2blnz3
	 6TJ9ol3BFwetw==
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-7d2dc1ac787so365640137.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 07:58:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErEgWunr9YUMHK8t7GZkhnoBk/jEVSIbnP929Jwj5Z7EjF6wAIMT2rUDP5/5om3RW8pNZpTXGC93pfgIQC5Ziw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8T1JLL8bH1N3uwIvXyBrI1iibPsWyUzbGw+6jfExAhDlFjkDIn
	IKByOLX3oqWrsnlZ3JMBvYacae/cmCEIkXyuZMhOK8NBrinBCwHJ6n3WFaQGWBQcRz8YN1QOHgq
	DWvh3+aiAXPaX/uYWzUEwFuVi1YN4cPw=
X-Received: by 2002:a05:6102:1612:b0:7cb:288a:b66d with SMTP id
 ada2fe7eead31-7d6ba40e058mr1004520137.20.1795017485944; Wed, 18 Nov 2026
 07:58:05 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Wed, 18 Nov 2026 16:57:48 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0ghznYScteMQzFkcJsMfOTDPRE+JWBoeJg7NurfcfC57A@mail.gmail.com>
X-Gm-Features: AclHuK-WQPlonzR9YQhr-Qu9V32wHoz2Spuu5LyQI3pgmeJNe67xVbxgzHuFNm8
Message-ID: <CAJZ5v0ghznYScteMQzFkcJsMfOTDPRE+JWBoeJg7NurfcfC57A@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] powercap: idle_inject: Create threads on demand
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: tglx@linutronix.de, Andrew Morton <akpm@linux-foundation.org>, 
	Peter Ziljstra <peterz@infradead.org>, Bradley Morgan <brads@mainlining.org>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Linux PM <linux-pm@vger.kernel.org>
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

T24gV2VkLCBOb3YgMTgsIDIwMjYgYXQgMTE6MzTigK9BTSBEYW5pZWwgTGV6Y2Fubwo8ZGFuaWVs
LmxlemNhbm9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBJZGxlIGluamVjdGlvbiBjdXJy
ZW50bHkgcmVnaXN0ZXJzIHBlci1DUFUga2VybmVsIHRocmVhZHMgZHVyaW5nIGVhcmx5Cj4gaW5p
dGlhbGl6YXRpb24sIGluY2x1ZGluZyBvbiBDUFVzIGZvciB3aGljaCBubyBpZGxlIGluamVjdGlv
biBkZXZpY2UKPiB3aWxsIGJlIHJlZ2lzdGVyZWQuCj4KPiBUaGlzIHNlcmllcyBtYWtlcyB0aHJl
YWQgY3JlYXRpb24gZm9sbG93IHRoZSBsaWZldGltZSBhbmQgQ1BVIG1hc2sgb2YKPiBlYWNoIGlk
bGUgaW5qZWN0aW9uIGRldmljZS4KPgo+IFRoZSBmaXJzdCBwYXRjaCBhZGRzIGFuIG9wdGlvbmFs
IENQVSBtYXNrIHRvIHNtcGJvb3QgdGhyZWFkIGRlc2NyaXB0b3JzLgo+IFRoZSBtYXNrIHJlc3Ry
aWN0cyB0aHJlYWQgY3JlYXRpb24sIENQVSBob3RwbHVnIGhhbmRsaW5nIGFuZCB0ZWFyZG93biwK
PiB3aGlsZSBwcmVzZXJ2aW5nIHRoZSBleGlzdGluZyBiZWhhdmlvciBmb3IgZGVzY3JpcHRvcnMg
d2l0aG91dCBhIG1hc2suCj4gUmVnaXN0cmF0aW9ucyBzaGFyaW5nIHRhc2sgc3RvcmFnZSBhcmUg
Y2hlY2tlZCBmb3Igb3ZlcmxhcHBpbmcgQ1BVCj4gbWFza3MgdW5kZXIgc21wYm9vdF90aHJlYWRz
X2xvY2sgYmVmb3JlIGFueSB0aHJlYWRzIGFyZSBjcmVhdGVkLgo+Cj4gVGhlIHNlY29uZCBwYXRj
aCB1c2VzIHRoaXMgc3VwcG9ydCB0byByZWdpc3RlciBpZGxlIGluamVjdGlvbiB0aHJlYWRzCj4g
d2hlbiBhIGRldmljZSByZWdpc3RlcnMgYW5kIGRlc3Ryb3kgdGhlbSB3aGVuIGl0IHVucmVnaXN0
ZXJzLiBDUFUKPiBvd25lcnNoaXAgY2xhaW1zLCByZWdpc3RyYXRpb24gcm9sbGJhY2sgYW5kIHRo
cmVhZCB0ZWFyZG93biBhcmUKPiBzZXJpYWxpemVkIHRvIHByZXZlbnQgb3ZlcmxhcHBpbmcgcmVn
aXN0cmF0aW9ucyBmcm9tIHNoYXJpbmcgdGhyZWFkcy4KPgo+IFRoZSBzZXJpZXMgd2FzIHRlc3Rl
ZCBvbiBSb2NrY2hpcCBSSzM1ODguIFRoZSB1cGRhdGVkIHNtcGJvb3QgY29kZSBhbmQKPiBpZGxl
IGluamVjdGlvbiBjb2RlIGFsc28gYnVpbGQgd2l0aCBXPTEuIENvbmN1cnJlbnQgcmVnaXN0cmF0
aW9uIGFuZAo+IENQVSBob3RwbHVnIHJ1bnRpbWUgdGVzdGluZyByZW1haW5zIG91dHN0YW5kaW5n
Lgo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFJlamVjdCBvdmVybGFwcGluZyBzbXBib290IHJlZ2lz
dHJhdGlvbnMgc2hhcmluZyBwZXItQ1BVIHRhc2sgc3RvcmFnZQo+ICAgd2l0aCBXQVJOX09OX09O
Q0UoKSBhbmQgLUVCVVNZLCBhcyBzdWdnZXN0ZWQgYnkgVGhvbWFzIEdsZWl4bmVyLgo+IC0gRGVm
YXVsdCBhIE5VTEwgQ1BVIG1hc2sgdG8gY3B1X3Bvc3NpYmxlX21hc2sgYXQgcmVnaXN0cmF0aW9u
IGFuZAo+ICAgcmVtb3ZlIHJlZHVuZGFudCBOVUxMLW1hc2sgY2hlY2tzIGZyb20gdGhlIGxpZmVj
eWNsZSBoZWxwZXJzLgo+IC0gVXNlIHNjb3BlZCBndWFyZHMgZm9yIHRoZSBzbXBib290IHJlZ2lz
dHJhdGlvbiBsb2Nrcy4KPiAtIERvY3VtZW50IHRoZSBvdmVybGFwIHJlc3RyaWN0aW9uIGFuZCBy
ZWdpc3RyYXRpb24gcmV0dXJuIHZhbHVlcywgYW5kCj4gICB1cGRhdGUgdGhlIGNvcmUgY29tbWl0
IGV4cGxhbmF0aW9uLgo+IC0gQWRkIEJyYWRsZXkgTW9yZ2FuJ3MgUmV2aWV3ZWQtYnkgdGFnIHRv
IHRoZSBpZGxlIGluamVjdGlvbiBwYXRjaC4KPgo+IENjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxp
bnV4LWZvdW5kYXRpb24ub3JnPgo+IENjOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5l
bC5vcmc+Cj4gQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+IENjOiBC
cmFkbGV5IE1vcmdhbiA8YnJhZHNAbWFpbmxpbmluZy5vcmc+Cj4KPiBEYW5pZWwgTGV6Y2FubyAo
Mik6Cj4gICBzbXBib290OiBBbGxvdyByZXN0cmljdGluZyBwZXItQ1BVIHRocmVhZHMgdG8gYSBD
UFUgbWFzawo+ICAgcG93ZXJjYXA6IGlkbGVfaW5qZWN0OiBDcmVhdGUgcGVyLUNQVSB0aHJlYWRz
IG9uIHJlZ2lzdHJhdGlvbgo+Cj4gIGRyaXZlcnMvcG93ZXJjYXAvaWRsZV9pbmplY3QuYyB8IDY5
ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51eC9zbXBi
b290LmggICAgICAgIHwgIDYgKysrCj4gIGtlcm5lbC9zbXBib290LmMgICAgICAgICAgICAgICB8
IDQ1ICsrKysrKysrKysrKysrKysrLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRp
b25zKCspLCAzNyBkZWxldGlvbnMoLSkKCklmIEknbSBzdXBwb3NlZCB0byBwaWNrIHVwIHRoaXMg
c2VyaWVzLCBwbGVhc2UgcmVzZW5kIGl0IGFuZCBDQyBib3RoCnBhdGNoZXMgYW5kIHRoZSBjb3Zl
ciBsZXR0ZXIgdG8gbGludXgtcG0uCgpUaGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
