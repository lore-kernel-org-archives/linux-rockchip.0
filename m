Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1F04C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 13:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zzia69u+aWZHLYgdprSJPK/U82uJy1IYP9FbcH7JgKg=; b=Ii109o0cPW1YHu5ySR9w7AthCY
	WK0BQ5Qypo+l3arWiJuaF1VoIoaDax3B/Q8D5FHu/Ig2J0gHCmlSSKN18SxiaTFD9RqJuIP2wB8Wl
	svHF5xx6LfKtTP2epfA6KR5HL9E716YUAQV9Nvc7FnBFbsqPUV+DUVgchtQurEEAWr4Htf26idbV4
	+o4i+uc5oG968byGRRq0qPqreeNNFJQDCueFL8IWhkDG+bDUwtm8usagz7Vywozfwrszsm692FtgU
	qE4bl+foBOdiQbsHaLus0C/ssEifHtcqWWcyY7oZUlibgIf5hoj4s3Jj/W5c62LpODxZ5hTMDuqdQ
	Uz7Nu6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiRU-00000007WHI-2BRN;
	Sat, 27 Jan 2024 13:09:52 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiRR-00000007WGp-03nD;
	Sat, 27 Jan 2024 13:09:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706360987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cufdQqnYjHFq8zPvbdj8xB6WnLzWkarMVmEXqUgJEsk=;
	b=wAcJWRdLS11R2tadF3UO4hLBBCd39YvSBm6DEIpEcuOR/3Vxada9/LOeX1Lgf1VD0vNZSG
	cmYOn+wfNi7YhyVF6O0mJ4DYPb2wixfyH4lGvHqGZ8epGpszahlWZuIMQD6U9Dd5PHE9LA
	JK0IhnWMwhtjGBDcJrBN/uzTnM/iV38MrcGljkxKVwCUtNMo9u2spphCo+y134OQLZhiYq
	0Fo+SoMSypi+FZqv6xA/Y7yga3zZqe9vH3/u+KBK8yhseTrQGfDVzstGZ2YObDQE1xPM2t
	jW/MIjHmUFo4F+rjgdS5uPSOwqxeWNezC+K+RilUauIIsMsrPY7iujUCEkBsFA==
Date: Sat, 27 Jan 2024 14:09:46 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host
 regulator for Cool Pi CM5 EVB
In-Reply-To: <23650d42.ecb.18d4ad89c0c.Coremail.andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
 <20240127092034.887085-3-andyshrk@163.com> <2798389.3c9HiEOlIg@diego>
 <23650d42.ecb.18d4ad89c0c.Coremail.andyshrk@163.com>
Message-ID: <00ed78ea06aecde202a11a23c80f80af@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_050949_228839_38C3D167 
X-CRM114-Status: GOOD (  16.02  )
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

T24gMjAyNC0wMS0yNyAxMzoxNSwgQW5keSBZYW4gd3JvdGU6Cj4gQXQgMjAyNC0wMS0yNyAxODoz
Njo0MCwgIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPj4gQW0gU2Ft
c3RhZywgMjcuIEphbnVhciAyMDI0LCAxMDoyMDozMyBDRVQgc2NocmllYiBBbmR5IFlhbjoKPj4+
IEFjY29yZGluZyB0byB0aGUgc2NoZW1hdGljLCB0aGlzIHJlZ3VsYXRvciBpcyB1c2VkIGJvdGgg
Zm9yIFVTQjMwIGFuZAo+Pj4gVVNCMjAsIHNvIGdpdmUgaXQgYSBtb3JlIGFwcHJvcHJpYXRlIG5h
bWUuCj4+IAo+PiBJIGRvbid0IGhhdmUgdGhlIHNjaGVtYXRpY3MsIHNvIEknbGwgbmVlZCB5b3Ug
dG8gYW5zd2VyIHRoaXMsIGJ1dCB3aGF0Cj4+IGlzIHRoZSByZWd1bGF0b3IgY2FsbGVkIF9pbl8g
dGhlIHNjaGVtYXRpY3M/Cj4gCj4gVGhlcmUgYXJlIHR3byByZWd1bGF0b3JzIGNhbGxlZCBWQ0M1
MF9VU0JfSE9TVDEgYW5kIFZDQzUwX1VTQl9IT1NUMiwKPiBhbmQgdGhleSBhcmUgYm90aCBjb250
cm9sbGVkIGJ5IEdQSU8xX0Q1Cj4gVGhleSBib3RoIGZvciB0d28gdXNiIDIuMCBob3N0cywgIG5v
dCB1c2IgMzAsIHRoZSBzY2hlbWF0aWNzIG1ha2UKPiBtZSBhIGJpdCBjb25mdXNlZC4KCkluIHRo
YXQgY2FzZSwgSSdkIHNheSB0aGF0IHJlbmFtaW5nIHRoZSByZWd1bGF0b3IgdG8gdmNjNXYwX3Vz
Yl9ob3N0IGlzCmZpbmUsIGJ1dCB0aGVyZSBzaG91bGQgYWxzbyBiZSBhIGNvbW1lbnQgaW4gdGhl
IGJvYXJkIGR0cyBmaWxlIHRoYXQgaXQncwphY3R1YWxseSB0d28gc2VwYXJhdGUgcmVndWxhdG9y
cy4KCj4+IEkuZS4gd2Ugd2FudCByZWd1bGF0b3JzIHRvIHJlYWxseSBiZSBuYW1lZCB0aGUgc2Ft
ZSBhcyBpbiB0aGUgCj4+IHNjaGVtYXRpYwo+PiBzbyBwZW9wbGUgY2FuIGxvb2sgdXAgdGhpbmcg
ZnJvbSB0aGUgZHRzIGluIHRoZSBzY2hlbWF0aWNzIGFuZCB0aGUgCj4+IG90aGVyCj4+IHdheSBh
cm91bmQgdG9vLgoKQWgsIHRoYXQncyB2ZXJ5IGhlbHBmdWwuCgo+Pj4gRml4ZXM6IDc5MWMxNTRj
Mzk4MiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3IgcmszNTg4IAo+Pj4g
YmFzZWQgYm9hcmQgQ29vbCBQaSBDTTUgRVZCIikKPj4+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFu
IDxhbmR5c2hya0AxNjMuY29tPgo+Pj4gLS0tCj4+PiAKPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1jb29scGktY201LWV2Yi5kdHMgfCA2ICsrKy0tLQo+Pj4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+PiAKPj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1jb29scGktY201LWV2
Yi5kdHMgCj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWNvb2xwaS1j
bTUtZXZiLmR0cwo+Pj4gaW5kZXggMWI1NjgxZmUwNDcxLi41ZjQyZjEwNjVkNzMgMTAwNjQ0Cj4+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1jb29scGktY201LWV2
Yi5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWNvb2xw
aS1jbTUtZXZiLmR0cwo+Pj4gQEAgLTg0LDcgKzg0LDcgQEAgdmNjM3YzX2xjZDogdmNjM3YzLWxj
ZC1yZWd1bGF0b3Igewo+Pj4gIAkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+PiAgCX07
Cj4+PiAKPj4+IC0JdmNjNXYwX3VzYjMwX2hvc3Q6IHZjYzV2MC11c2IzMC1ob3N0LXJlZ3VsYXRv
ciB7Cj4+PiArCXZjYzV2MF91c2JfaG9zdDogdmNjNXYwLXVzYi1ob3N0LXJlZ3VsYXRvciB7Cj4+
PiAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+PiAgCQlyZWd1bGF0b3ItbmFt
ZSA9ICJ2Y2M1djBfaG9zdCI7Cj4+PiAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+IEBAIC0yMDAs
MTIgKzIwMCwxMiBAQCAmdTJwaHkzIHsKPj4+ICB9Owo+Pj4gCj4+PiAgJnUycGh5Ml9ob3N0IHsK
Pj4+IC0JcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYjMwX2hvc3Q+Owo+Pj4gKwlwaHktc3VwcGx5
ID0gPCZ2Y2M1djBfdXNiX2hvc3Q+Owo+Pj4gIAlzdGF0dXMgPSAib2theSI7Cj4+PiAgfTsKPj4+
IAo+Pj4gICZ1MnBoeTNfaG9zdCB7Cj4+PiAtCXBoeS1zdXBwbHkgPSA8JnZjYzV2MF91c2IzMF9o
b3N0PjsKPj4+ICsJcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0PjsKPj4+ICAJc3RhdHVz
ID0gIm9rYXkiOwo+Pj4gIH07CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
