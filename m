Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24647CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 11:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQz+IYOrWcnvMVpp327b5L1xs0Df+N9SmLcCjJhzS3I=; b=zLKo8hP+7FgNts
	bY6Qs4QRxhhe4NoMv83BDIwR9b3wg+Yeo+aigeWhndcYCVst+9w71oI7bGDbq7uHlNnR57f27QsLn
	XabhAS2Yt15K+X8AkYIOQ7L8iOqhNsqDcJDjMlGbC5pAx9wBydVSN8MPK0gkxxu2tUaIblUPX1G22
	gNHaaoJo+TWfcsKpmkb8EiOeMjOkhCAfwvrj9D89nPLO3AVF3YEv0H7o8sTsk8YT2OiWJdTEG/Th3
	L0wn+sl5WvVlIal7ZEtuYZ0C4YoE5qOCCkb7qGxcyUBmHr0r2VCwRvtDA2Oi9V8ixG6o5kDBxjvdv
	MYTVXfVjjxZw3V8rhDKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFABQ-00000007Jgd-2Zzp;
	Sat, 01 Nov 2025 11:54:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFABN-00000007Jg7-2DHm;
	Sat, 01 Nov 2025 11:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2/+9Nrg/MBKOyjOA2O+fnXbPaDve8v5ZbqMCiqeCxKE=; b=vBFn4pnkphDuozK5iAz9y8k4E4
	l5Rk/WmLU/cMVmO4oTd5xthvniS2QfDBF5scMKSfVkaPyVEXrUevzYFw8mGUGcPSgdLB6m9vAw7lE
	3yYX1wd/CdVCYJlvwFqodjOgNkWhtfa1rC64UCZG+zqeLKhNZz9QbS7egZdf9ITJJnH/yEg4vVEJx
	1Q6tL++wkVXm5jAoAFl3vHxvhP4IVa/O/i0RCUGOZn4bG++Lw1f/LPUHbX6gU3S3OuA4tgB9gI4JS
	XGzKWfsPt+VkalK0ndUKpt5SZ5RRm22bLwmVaIcTb3cjXXDiY+WbgjuBhv8ZAk+qjzDGHKTmXGaM+
	xhCyyjwg==;
Received: from i53875b80.versanet.de ([83.135.91.128] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vFABL-0008PQ-Jz; Sat, 01 Nov 2025 12:54:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6 with
 A3A444 chips
Date: Sat, 01 Nov 2025 12:54:06 +0100
Message-ID: <10751338.nUPlyArG6x@phil>
In-Reply-To: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_045409_641418_861BD2D4 
X-CRM114-Status: GOOD (  24.86  )
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

QW0gTW9udGFnLCAyNy4gT2t0b2JlciAyMDI1LCAxODozNDoyNSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFRpYW5saW5nIFNoZW46Cj4gKyBKaWFuZmVuZwo+IAo+IE9uIDIw
MjUvMTAvMjAgMTI6NDQsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPiBIaSBTaGF3biwKPiA+IAo+
ID4gT24gMjAyNS8xMC8yMCA5OjUzLCBTaGF3biBMaW4gd3JvdGU6Cj4gPj4gSGkgVGlhbmxpbmcK
PiA+Pgo+ID4+IE9uIDIwMjUvMTAvMTcgRnJpZGF5IDE1OjM5LCBUaWFubGluZyBTaGVuIHdyb3Rl
Ogo+ID4+PiBGcm9tOiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4K
PiA+Pj4KPiA+Pj4gU29tZSBOYW5vUEMtVDYgYm9hcmRzIHdpdGggQTNBNDQ0IGVNTUMgY2hpcHMg
ZXhwZXJpZW5jZSBJL08gZXJyb3JzIGFuZAo+ID4+PiBjb3JydXB0aW9uIHdoZW4gdXNpbmcgSFM0
MDAgbW9kZS4gRG93bmdyYWRlIHRvIEhTMjAwIG1vZGUgdG8gZW5zdXJlCj4gPj4+IHN0YWJsZSBv
cGVyYXRpb24uCj4gPj4KPiA+PiBNYXkgSSBhc2sgeW91IHRvIHRlc3QgYW5vdGhlciBwYXRjaCBJ
IGp1c3QgcG9zdGVkIHRvIHNlZSBpZiBpdCBmaXhlcwo+ID4+IHlvdXIgaXNzdWU/Cj4gPj4KPiA+
PiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbW1jLyAKPiA+PiBw
YXRjaC8xNzYwOTI0OTgxLTUyMzM5LTEtIGdpdC1zZW5kLWVtYWlsLXNoYXduLmxpbkByb2NrLWNo
aXBzLmNvbS8KPiA+IAo+ID4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2ghIEkgd2lsbCBhc2sgbXkg
ZnJpZW5kIHRvIHRlc3QgaXQgYnV0IGhlIHVzZXMgCj4gPiB0aGlzIGJvYXJkIGFzIGEgaG9tZSBy
b3V0ZXIsIHNvIGl0IG1heSB0YWtlIGEgZmV3IGRheXMgb3Igd2Vla3MgdG8gCj4gPiByZXBvcnQg
dGhlIHJlc3VsdC4KPiAKPiBIaSBhbGwsIHNvcnJ5IGZvciB0aGUgbGF0ZS4gTXkgZnJpZW5kIGhh
cyB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgaXQgd29ya3MgCj4gZmluZSBhZnRlciA1MCB0aW1lcyBk
ZCBvcGVyYXRpb24uIEEgYmlnIHRoYW5rcyB0byBTaGF3biEKClNvIEkgZ3Vlc3MsIHdlIGRvbid0
IG5lZWQgdGhlIHBhdGNoIHJlZHVjaW5nIHRoZSBzcGVlZCBhbnltb3JlLCByaWdodD8KCgpUaGFu
a3MKSGVpa28KCgo+IEFuZCBoaSBKaWFuZmVuZywgSSBmb3VuZCB5b3UgbWFkZSBhIHNpbWlsaWFy
IHBhdGNoWzFdIGZvciB0aGUgUk9DSyA1IElUWCAKPiBib2FyZCB0byBsb3dlciBkb3duIHRoZSBt
bWMgc3BlZWQsIGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgaWYgdGhpcyBwYXRjaCAKPiBhbHNvIGZp
eGVzIHlvdXIgaXNzdWU/Cj4gCj4gVGhhbmtzLAo+IFRpYW5saW5nLgo+IAo+IDEuIAo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMjI4MTQzMzQxLjcwMjQ0LTEt
bGl1amlhbmZlbmcxOTk0QGdtYWlsLmNvbS8KPiAKPiA+IAo+ID4gVGhhbmtzLAo+ID4gVGlhbmxp
bmcuCj4gPiAKPiA+Pgo+ID4+Cj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IFN0
ZXJuaWN6dWsgPGdyemVnb3J6QHN0ZXJuaWN6LnVrPgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBUaWFu
bGluZyBTaGVuIDxjbnN6dGxAZ21haWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSB8IDMgKy0tCj4gPj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3Bj
LXQ2LmR0c2kgYi8gCj4gPj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5h
bm9wYy10Ni5kdHNpCj4gPj4+IGluZGV4IGZhZmVhYmU5YWRmOS4uNWY2M2YzOGY3MzI2IDEwMDY0
NAo+ID4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+ID4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1u
YW5vcGMtdDYuZHRzaQo+ID4+PiBAQCAtNzE3LDggKzcxNyw3IEBAICZzZGhjaSB7Cj4gPj4+ICAg
ICAgIG5vLXNkOwo+ID4+PiAgICAgICBub24tcmVtb3ZhYmxlOwo+ID4+PiAgICAgICBtYXgtZnJl
cXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4gPj4+IC0gICAgbW1jLWhzNDAwLTFfOHY7Cj4gPj4+IC0g
ICAgbW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsKPiA+Pj4gKyAgICBtbWMtaHMyMDAtMV84djsK
PiA+Pj4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+PiAgIH07Cj4gPj4KPiA+IAo+IAo+IAoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
