Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81E9FC04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBGp+jUjNZbK/UZif1WkWeeueLo1bwxWczvyPwH20OQ=; b=MZGzCQsI9DOQle
	WYlEGZL2Je/dZeCTrNIkEGFVXG5NZxIpfKehuX8ymYUWbszzgi26F6mQGV8nK+MdXDa0d2AkBVHhz
	ABcbFuZjI5dDa9WJBJZWzkGXyOTVovQ0CMfnqSrOPuWTB0C5TWzBb0kqqb/j++7/OF75KzPlPP856
	f2f9+VWLir76Zu12rhvdTR+tD9THXVPk6hEMfw/H+mpgRfU7z86RCLekDA2xUNdMdU5gl/Dr5qB3v
	q7VOinDxjcSwc+ONGNBqVosRjnkHZo9UMGM5xHmxt0np5iNSE47K97LcNYYxUZ0i5KITd+9xVgY4x
	NGzwjrnvmcb++bc0LBaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4hFL-0000000Fco1-3x1v;
	Wed, 08 May 2024 13:22:13 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4hFE-0000000FcmB-13NJ;
	Wed, 08 May 2024 13:22:09 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a59c448b44aso904036366b.2;
        Wed, 08 May 2024 06:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715174523; x=1715779323; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dka4DFHKaoCiu+3AnfU4CqnO9bqrk/85WUkEVYCa+Ss=;
        b=MZwvLFyESgCfvdECHO5z3K/wf8u28OLZXHBPpBsOsl/VEY703OE/8a6PsFdbBOM1JA
         nfebrYd1Xcbe31EnwitwLVInHPN8R+oMlzYG0bWu4ub360aR/K+/XwYxMq5gJ5rY8NMP
         DJCl4k6VW/j5p2ufkPThWDsteP9CYAwoQoDkjG5WsXBhx1+Cng/SrQV3fDe8/jzvhg9L
         eVOY8mpW1GHArDgpGAkCw9FROz/ozqr5ANeqOZQRF/L4QZvJF298pkieXi7Wo8Fg3m60
         Lk0i7uNf87N25h0jK1J4lcUN6FShR7nAq9Clm5SYFLpWPZxXnP9kub06TkucxDzONr63
         ujug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715174523; x=1715779323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dka4DFHKaoCiu+3AnfU4CqnO9bqrk/85WUkEVYCa+Ss=;
        b=Dva1teznajn/pqBxp+5tOY6/wKG3QjQjzuX2X5A/fFKbqWbvZugybuPKBNY3Um31gU
         22155F1ioh6zBoPM8Oz4DNBb2o3k63FnlSw1Ms0q6F7xazUjUkSPhFHCoyju8fwBZGUr
         P/IUSPvIbrcVjVtQaMxS0oUHwm22uATH2wLqWXPU57NppZpPiU6mIqLZokcDd2sD+hYk
         YrhiFfUikL7cQlfLpKeE4zraCx8FmwYAj2bv3heae5frSZNkXkeRXQTpCNdIDjHdk5ee
         aDBbykMahs+GmdErtQLWkiFuNC3x+lVBKEWo6NvEhuz3jDaz/AgNhOMC5ja2Sa546yR0
         +S8A==
X-Forwarded-Encrypted: i=1; AJvYcCUPTWtWYt8tjl/k1JDuDZqZ6zvo6gabj5b13Hsbwz2CcO4/YNbBzcPBy40K4CqS3FsdhBIk1daAyaUJJ1S5A/jHtrrFlRRjJe3Yr+kNLiZYCXAuJbONzILE1qLDDiTuCgbZwjCew49eYrxs1LY/ag/w6bTTyd+jgoc=
X-Gm-Message-State: AOJu0YzyEcEZgU75LkUphVBHKh57oFFB3e1fapSvHYYwuLwJQaQlNfMq
	+91bBfweanl8byt6WEnksC6N8qWdPrCppJ35mGYHWLAT3xPTDqLecOP7nqBYSO/Ok87Vk+aSVVh
	lR7OhSGiAv1M5KWalDtIpiB4HtKU=
X-Google-Smtp-Source: AGHT+IGlyNUPN7vV37tYaaBGsC5RjUHGDoScBeqJ4jXoTrDQaRpJBR2jD8eT9kiCtNEacysarJ+Vav6qF1JddGfVgfY=
X-Received: by 2002:a17:906:c4d:b0:a59:b8e2:a0c5 with SMTP id
 a640c23a62f3a-a59fb9ce03emr156742266b.51.1715174522351; Wed, 08 May 2024
 06:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
 <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
 <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org> <CABjd4YwHGYRrpMFn1uoQMRh3Tp4-py111tZiCGgf7afWxNGXnQ@mail.gmail.com>
 <36ecf59460430bb7267b71c1f49fe123@manjaro.org> <CANAwSgTKkFQNW5egYu5cdWx4nkwVL1tXigYUvdnAJRUOdCrxpw@mail.gmail.com>
In-Reply-To: <CANAwSgTKkFQNW5egYu5cdWx4nkwVL1tXigYUvdnAJRUOdCrxpw@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 May 2024 17:21:49 +0400
Message-ID: <CABjd4Yy0P0bwF68bYemvDiGgyrxmHy5g8A3mT7YdcqBq1rYCGQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Anand Moon <linux.amoon@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_062204_448904_F2E85BAF 
X-CRM114-Status: GOOD (  57.87  )
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

T24gV2VkLCBNYXkgOCwgMjAyNCBhdCA0OjUx4oCvUE0gQW5hbmQgTW9vbiA8bGludXguYW1vb25A
Z21haWwuY29tPiB3cm90ZToKPgo+IEhpIERyYWdhbiwgQWxleGV5LAo+Cj4gT24gV2VkLCA4IE1h
eSAyMDI0IGF0IDE4OjA4LCBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gSGVsbG8gQWxleGV5LAo+ID4KPiA+IE9uIDIwMjQtMDUtMDggMTQ6MzAsIEFsZXhl
eSBDaGFya292IHdyb3RlOgo+ID4gPiBPbiBXZWQsIE1heSA4LCAyMDI0IGF0IDM6NDbigK9QTSBE
cmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPiA+PiBPbiAyMDI0LTA1
LTA4IDEzOjQwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPj4gPiBPbiBNb24sIDYgTWF5IDIwMjQg
YXQgMTg6MjQsIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
PiA+PiBPbiBNb24sIE1heSA2LCAyMDI0IGF0IDQ6MjnigK9QTSBEaWVkZXJpayBkZSBIYWFzCj4g
PiA+PiA+PiA8ZGlkaS5kZWJpYW5AY2tub3cub3JnPiB3cm90ZToKPiA+ID4+ID4+ID4gT24gTW9u
ZGF5LCA2IE1heSAyMDI0IDExOjM2OjMzIENFU1QgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+
PiA+PiA+ID4gVGhpcyBlbmFibGVzIHRoZSBvbi1jaGlwIHRoZXJtYWwgbW9uaXRvcmluZyBzZW5z
b3IgKFRTQURDKSBvbiBhbGwKPiA+ID4+ID4+ID4gPiBSSzM1ODgocykgYm9hcmRzIHRoYXQgZG9u
J3QgaGF2ZSBpdCBlbmFibGVkIHlldC4gSXQgcHJvdmlkZXMgdGVtcGVyYXR1cmUKPiA+ID4+ID4+
ID4gPiBtb25pdG9yaW5nIGZvciB0aGUgU29DIGFuZCBlbWVyZ2VuY3kgdGhlcm1hbCBzaHV0ZG93
bnMsIGFuZCBpcyB0aHVzCj4gPiA+PiA+PiA+ID4gaW1wb3J0YW50IHRvIGhhdmUgaW4gcGxhY2Ug
YmVmb3JlIENQVSBEVkZTIGlzIGVuYWJsZWQsIGFzIGhpZ2ggQ1BVCj4gPiA+PiA+PiA+ID4gb3Bl
cmF0aW5nIHBlcmZvcm1hbmNlIHBvaW50cyBjYW4gb3ZlcmhlYXQgdGhlIGNoaXAgcXVpY2tseSBp
biB0aGUKPiA+ID4+ID4+ID4gPiBhYnNlbmNlIG9mIHRoZXJtYWwgbWFuYWdlbWVudC4KPiA+ID4+
ID4+ID4gPgo+ID4gPj4gPj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNo
YXJrQGdtYWlsLmNvbT4KPiA+ID4+ID4+ID4gPiAtLS0KPiA+ID4+ID4+ID4gPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICAgICAgICAgICB8IDQg
KysrKwo+ID4gPj4gPj4gPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKPiA+
ID4+ID4+ID4gPgo+ID4gPj4gPj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gPj4gPj4gPiA+IGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgaW5kZXgKPiA+ID4+ID4+ID4gPiBi
OGUxNWI3NmE4YTYuLjIxZTk2YzIxMmRkOCAxMDA2NDQKPiA+ID4+ID4+ID4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gPj4gPj4gPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4g
PiA+PiA+PiA+ID4gQEAgLTc0Miw2ICs3NDIsMTAgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4g
PiA+PiA+PiA+ID4gICAgICAgfTsKPiA+ID4+ID4+ID4gPiAgfTsKPiA+ID4+ID4+ID4gPgo+ID4g
Pj4gPj4gPiA+ICsmdHNhZGMgewo+ID4gPj4gPj4gPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsK
PiA+ID4+ID4+ID4gPiArfTsKPiA+ID4+ID4+ID4gPiArCj4gPiA+PiA+PiA+ID4gICZ1YXJ0MiB7
Cj4gPiA+PiA+PiA+ID4gICAgICAgcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+ID4gPj4g
Pj4gPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ID4+ID4+ID4KPiA+ID4+ID4+ID4gSSBi
dWlsdCBhIGtlcm5lbCB3aXRoIHYzIG9mIHlvdXIgcGF0Y2ggc2V0IGFuZCBzb21lb25lIHRlc3Rl
ZCBpdCBvbiBhIFJPQ0sgNUIKPiA+ID4+ID4+ID4gJ2ZvciBtZScgYW5kIGl0IGhhZCB0aGUgZm9s
bG93aW5nIGxpbmUgaW4gZG1lc2c6Cj4gPiA+PiA+PiA+Cj4gPiA+PiA+PiA+IHJvY2tjaGlwLXRo
ZXJtYWwgZmVjMDAwMDAudHNhZGM6IE1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5Cj4gPiA+
PiA+PiA+Cj4gPiA+PiA+PiA+IEknbSBndWVzc2luZyB0aGF0IHR1cm5lZCB1cCBkdWUgdG8gZW5h
YmxpbmcgdHNhZGMsIGJ1dCAoYWxzbykgaW4gdjQgSSBkaWRuJ3QKPiA+ID4+ID4+ID4gc2VlIGEg
Y2hhbmdlIHdydCAicm9ja2NoaXAsZ3JmIi4KPiA+ID4+ID4+ID4gU2hvdWxkIHRoYXQgYmUgZG9u
ZT8gKGFza2luZzsgSSBkb24ndCBrbm93KQo+ID4gPj4gPj4KPiA+ID4+ID4+IEknbSBnZXR0aW5n
IHRoZSBzYW1lLiBOZWl0aGVyIHRoZSBtYWlubGluZSBUU0FEQyBkcml2ZXIgWzFdLCBub3IgdGhl
Cj4gPiA+PiA+PiBkb3duc3RyZWFtIG9uZSBbMl0gc2VlbXMgdG8gdXNlIHRoZSBncmYgcG9pbnRl
ciBvbiBSSzM1ODggYXQgYWxsLiBJdAo+ID4gPj4gPj4gc3RpbGwgd29ya3MgaW4gc3BpdGUgb2Yg
dGhhdCB3YXJuaW5nLCBhbHRob3VnaCBJIGNhbid0IHNlZSBob3cgKG9yIGlmKQo+ID4gPj4gPj4g
aXQgY29uZmlndXJlcyB0aGUgcmVzZXQgbWVjaGFuaXNtIHdpdGhvdXQgdGhvc2UgR1JGIHJlZ2lz
dGVycy4KPiA+ID4+ID4+Cj4gPiA+PiA+PiBCZXN0IHJlZ2FyZHMsCj4gPiA+PiA+PiBBbGV4ZXkK
PiA+ID4+ID4+Cj4gPiA+PiA+PiBbMV0KPiA+ID4+ID4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMjbjgxOAo+ID4gPj4gPj4gWzJdCj4gPiA+PiA+PiBo
dHRwczovL2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9jazUvZHJp
dmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyNMOTYxCj4gPiA+PiA+Pgo+ID4gPj4gPgo+
ID4gPj4gPiBJZiB0aGUgZm9sbG93aW5nIGNoYW5nZXMgZml4IHRoZSB3YXJuaW5nLgo+ID4gPj4g
Pgo+ID4gPj4gPiBDaGVja2luZyB0aGUgUm9ja2NoaXAgUkszNTg4IFRSTSBWMS4wLVBhcnQxLTIw
MjIwMzA5LnBkZgo+ID4gPj4gPiBQTVUxR1JGX1NPQ19DT04zIHdoaWNoIGhhcyB0c2FkY19zaHV0
X3Jlc2V0X3RyaWdnZXJfZW4gYml0Cj4gPiA+PiA+IHRvIGNvbnRyb2wgdGhlIEVuYWJsZSBUU0FE
QyBzaHV0IHJlc2V0IHRyaWdnZXIgZm9yIEREUiBmYWlsIHNhZmUuCj4gPiA+PiA+Cj4gPiA+PiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+
ID4gPj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPiA+
PiA+IGluZGV4IDg1YzI1ZDVlZmRhZC4uNTQ5MGE0NGUwOTNlIDEwMDY0NAo+ID4gPj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4gPj4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4gPj4gPiBAQCAt
MjY2Miw2ICsyNjYyLDcgQEAgdHNhZGM6IHRzYWRjQGZlYzAwMDAwIHsKPiA+ID4+ID4gICAgICAg
ICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LXRlbXAgPSA8MTIwMDAwPjsKPiA+ID4+ID4gICAg
ICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUgPSA8MD47IC8qIHRzaHV0IG1vZGUg
MDpDUlUKPiA+ID4+ID4gMTpHUElPICovCj4gPiA+PiA+ICAgICAgICAgICAgICAgICByb2NrY2hp
cCxody10c2h1dC1wb2xhcml0eSA9IDwwPjsgLyogdHNodXQgcG9sYXJpdHkKPiA+ID4+ID4gMDpM
T1cgMTpISUdIICovCj4gPiA+PiA+ICsgICAgICAgICAgICAgICByb2NrY2hpcCxwbXUgPSA8JnBt
dTFncmY+Owo+ID4gPj4gPiAgICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ0c2FkY19ncGlv
X2Z1bmM+Owo+ID4gPj4gPiAgICAgICAgICAgICAgICAgcGluY3RybC0xID0gPCZ0c2FkY19zaHV0
PjsKPiA+ID4+ID4gICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZ3BpbyIsICJvdHBv
dXQiOwo+ID4gPj4KPiA+ID4+IEJhc2ljYWxseSwgdGhlIHJvY2tjaGlwX3RoZXJtYWwgZHJpdmVy
IGRvZXNuJ3QgdXNlIEdSRiBhdCBhbGwgb24KPiA+ID4+IHRoZSBSSzM1ODgocyksIHNvIHZpcnR1
YWxseSBhbnkgdmFsdWUgc3BlY2lmaWVkIGFzICJyb2NrY2hpcCxwbXUiCj4gPiA+PiBjYW4gZWxp
bWluYXRlIHRoZSB3YXJuaW5nLgo+ID4gPgo+ID4gPiBUbyBtZSwgc3BlY2lmeWluZyBhbiBhcmJp
dHJhcnkgR1JGIGluIHRoZSBkZXZpY2UgdHJlZSBqdXN0IHRvIHNpbGVuY2UKPiA+ID4gYSB3YXJu
aW5nIHRoYXQgdGhlIGN1cnJlbnQgZHJpdmVyIGVtaXRzIHNvdW5kcyBiYWQuIElmIHRoZSBHUkYg
aXMgbm90Cj4gPiA+IG5lZWRlZCBmb3IgVFNBREMgaW5pdGlhbGl6YXRpb24gb24gUkszNTg4LCB0
aGVuIGl0IHNob3VsZCBub3QgYmUgaW4KPiA+ID4gdGhlIGRldmljZSB0cmVlIChhbmQgaXQgbG9v
a3MgbGlrZSB0aGUgY2FzZSBoZXJlKSAtIG90aGVyd2lzZSB0aGUKPiA+ID4gZGV2aWNlIHRyZWUg
Y2Vhc2VzIHRvIGJlIGEgdHJ1dGhmdWwgZGVzY3JpcHRpb24gb2YgdGhlIGhhcmR3YXJlLgo+ID4K
PiA+IEFmdGVyIHRoaW5raW5nIGEgYml0IG1vcmUgYWJvdXQgaXQsIEkgdGhpbmsgeW91J3JlIHJp
Z2h0LiAgSWYgdGhlCj4gPiByb2NrY2hpcF90aGVybWFsIGRyaXZlciBldmVyIGdldHMgY2hhbmdl
ZCB0byByZXF1aXJlIHVzZSBvZiBHUkYgb24KPiA+IHRoZSBSSzM1ODgocyksIG9ubHkgdGhlbiBh
ZGRpbmcgdGhhdCBwcm9wZXJ0eSB0byB0aGUgRFQgd291bGQgYmUKPiA+IHRoZSByaWdodCB0aGlu
ZyB0byBkby4KPiA+Cj4gPiA+IEknbSBub3Qgc3VyZSBpZiB3ZSBuZWVkIHRoYXQgIkREUiBmYWls
IHNhZmUiIGxvZ2ljIG1lbnRpb25lZCBpbiB0aGUKPiA+ID4gVFJNIHRoYXQgQW5hbmQgcXVvdGVk
LCBnaXZlbiB0aGF0IG5laXRoZXIgUm9ja2NoaXAgZG93bnN0cmVhbSBub3IKPiA+ID4gY3VycmVu
dCBtYWlubGluZSBkcml2ZXIgaW1wbGVtZW50IGl0LCBhbmQgZnVydGhlcm1vcmUgbm9uZSBvZiB0
aGUKPiA+ID4gb3RoZXIgU29DIHJldmlzaW9ucyBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlciBtZW50
aW9uIGl0LiBJZiB3ZSBkbyBpbgo+ID4gPiBmYWN0IG5lZWQgaXQsIHdlIHNob3VsZCBwcm9iYWJs
eSBmaXJzdCB0ZXN0IGl0IGFsb25nIHdpdGggcmVzcGVjdGl2ZQo+ID4gPiBkcml2ZXIgY29kZSBi
ZWZvcmUgY29tbWl0dGluZyB0byBhbiB1cHN0cmVhbSBEVCBhbmQgdGh1cyBtYWtpbmcgaXQKPiA+
ID4gcGFydCBvZiB0aGUgQUJJLgo+ID4gPgo+ID4gPiBJTU8gdGhpcyBpcyBtb3JlIG9mIGEgZHJp
dmVyIGlzc3VlIHRoYW4gYSBkZXZpY2UgdHJlZSBpc3N1ZTogbWF5YmUgYQo+ID4gPiBzbWFsbCBw
YXRjaCB0byBkZW1vdGUgdGhpcyB3YXJuaW5nIHRvIGFuIGluZm8gbWVzc2FnZSB3b3VsZCBiZSBi
ZXR0ZXI/Cj4gPiA+IEl0J3MgaGFybWxlc3MgYW55d2F5Lgo+ID4KPiA+IEFmdGVyIGhhdmluZyBz
ZWNvbmQgdGhvdWdodHMsIEknbGwgc2VlIHRvIGltcHJvdmUgdGhlIHJvY2tjaGlwX3RoZXJtYWwK
PiA+IGRyaXZlciB0byBlbWl0IHRoYXQgd2FybmluZyBvbmx5IHdoZW4gaGF2aW5nICJyb2NrY2hp
cCxncmYiIHNwZWNpZmllZAo+ID4gaXMgYWN0dWFsbHkgbmVlZGVkIGZvciB0aGUgcGFydGljdWxh
ciBSb2NrY2hpcCBTb0MuICBUaGF0J3MgaG93IGl0Cj4gPiBzaG91bGQKPiA+IGJlaGF2ZSwgeWVs
bGluZyBhYm91dCB0aGUgd3JvbmcgaGFyZHdhcmUgZGVzY3JpcHRpb24gb25seSB3aGVuIHRoYXQn
cwo+ID4gYWN0dWFsbHkgdGhlIGNhc2UuCj4KPiBXZSBuZWVkIHRvIGhhbmRsZSB0aGUgR1JGIFRT
QURDIGZvciByazM1ODggdG11IGRyaXZlci4KPgo+IEZvciByazM1Njggd2UgY29udHJvbCB0aGUg
R1JGIFRTQURDIHdoaWNoIHNlZW1zIHRvIGJlIG1pc3NpbmcgaW4gcmszNTg4CgpQbGVhc2Ugbm90
ZSB0aGF0IGZvciBSSzM1NjggdGhlIEdSRiByZWdpc3RlcnMgYXJlIHVzZWQgdG8gYWN0dWFsbHkK
ZW5hYmxlIHRoZSB0aGVybWFsIHNlbnNpbmcgKGFzIGNhbiBiZSBzZWVuIGJ5IHRoZSBsaW5rIHlv
dSBwb3N0ZWQpLAp3aGljaCBkb2Vzbid0IHNlZW0gdG8gYmUgbmVjZXNzYXJ5IG9uIFJLMzU4OCBh
cyBpdCB3b3JrcyBqdXN0IGZpbmUKd2l0aG91dCBpdC4gRnVydGhlcm1vcmUsIFJLMzU2OCBoYXMg
YSBuZWFybHkgaWRlbnRpY2FsIEdSRiByZWdpc3RlciBpbgpQTVVfR1JGX1NPQ19DT04zIChzZWUg
UkszNTY4IFRSTSBwYXJ0MSBwYWdlIDIwNikgdG8gdGhlIG9uZSB5b3UKcHJvcG9zZWQgcmVmZXJl
bmNpbmcgaW4gdGhlIERUIGZvciBSSzM1ODgsIGJ1dCB0aGF0IHJlZ2lzdGVyIGlzIG5vdAp1c2Vk
IGluIHRoZSBUU0FEQyBkcml2ZXIgZWl0aGVyLiBJdCBvbmx5IHVzZXMgdGhlIFRTQURDX0NPTiBy
ZWdpc3Rlcgp3aXRoaW4gU1lTX0dSRiAob2Zmc2V0IDB4NjAwKSBvbiBSSzM1NjguCgpUaGUgVFJN
IGZvciBSSzM1ODggZG9lc24ndCBkb2N1bWVudCBhbnkgVFNBRENfQ09OIHJlZ2lzdGVyLCBldmVu
CnRob3VnaCB0aGVyZSBpcyBhICNkZWZpbmUgaW4gdGhlIGN1cnJlbnQgdXBzdHJlYW0gZHJpdmVy
IHRoYXQgbWVudGlvbnMKYW4gb2Zmc2V0IG9mIDB4MTAwIHRvIHRoYXQgcmVnaXN0ZXIgd2l0aGlu
IHRoZSBHUkYuIEknbSBub3Qgc3VyZSBpdAptZWFucyAweDEwMCB3aXRoaW4gUE1VMV9HUkYgYXMg
eW91IG1lbnRpb25lZCAtIGRvIHlvdSBoYXZlIGFueQpwb2ludGVycyB0byBzdXBwb3J0IHRoYXQ/
CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
