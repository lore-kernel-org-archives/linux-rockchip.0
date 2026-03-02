Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D9A3E9B36A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 11:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1qD71Ygj8Fpxj42rMmsiIekWSwGKEwoLFFe1VPoBHY=; b=vn/D1azoDpl1Lj
	x2E36J2hkTndcKqC21RpbGaUfNAytZMxTnaC9iiIRbiVEuEGMk8ILxlsznHNGtXb5I1t+NmsqaPjT
	GQe0SSb0IdeXXFpBp9gYi/OHSXduQhfjJEy7bveXvizfuiEgOzDJpcnhnJ2FUrc8Ss+DppAoFgvqx
	Nhn5fXtQzs3Jvwcq2a7JpeHEhJSy8CkB5O4BY50SZKQoTwfiSeduH/qpOMImq2sxBOvCdPVw0LEqZ
	bJYn4MXbu89z5whiU/rr+UZ6oyQssR7L9xquT/vDtxCS55DlEc0ujzjxARWMrU+PYquW0lg7vFkA8
	rBTK/ONewAuvagNBoZNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1Ql-0000000Cp9A-3ylT;
	Mon, 02 Mar 2026 11:27:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1Qj-0000000Cp8N-0Lzc;
	Mon, 02 Mar 2026 11:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ok3fRgSARHAkAxOad7EvY0OyS9Ys2Vgqj4W/YMVQmao=; b=ZOCld0Z8aeDFYYmMH1oESJCjBz
	MPe/7G+YZZxYo8Vv4TGNuDp5tsfHOlKpNPAqFw4b3yeiWNKkiFavXMk2BctJnzLqgIzqJgzR8Nfjx
	gTkO+8xz4KGx0GjWtHTh2sulK3872LYd5azkXyQgOH4AnJ8C0MX9632mufdFeIoTxK+tjQFRT2d/l
	/k5sz/FgbocX4mfevpPYzrV2R9rdRgHmxEK8jbEL9PmruPcv5z0L+kUi30cb8GHaLoWWhxYzZ4wkm
	2UOZH0+CYT+UQv3/eaI6LN9fd6k9Q/XZw2Re3ESr5bwzuDO8gm/Pw/InVL2nHuKaXJt05h11QCIdn
	X1U96CyQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dennis@ausil.us
Cc: FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>,
 Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 John Clark <inindev@gmail.com>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>,
 Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dennis Gilmore <dennis@ausil.us>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
Date: Mon, 02 Mar 2026 12:26:58 +0100
Message-ID: <7914983.EvYhyI6sBW@phil>
In-Reply-To: <20260228205418.2944620-3-dennis@ausil.us>
References: <20260228205418.2944620-1-dennis@ausil.us>
 <20260228205418.2944620-3-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_032717_125598_234D0C34 
X-CRM114-Status: GOOD (  19.97  )
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

SGkgRGVubmlzLAoKQW0gU2Ftc3RhZywgMjguIEZlYnJ1YXIgMjAyNiwgMjE6NTQ6MTcgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBkZW5uaXNAYXVzaWwudXM6Cj4gRnJvbTog
RGVubmlzIEdpbG1vcmUgPGRlbm5pc0BhdXNpbC51cz4KPiAKPiBBZGQgZGV2aWNlIHRyZWUgZm9y
IHRoZSBYdW5sb25nIE9yYW5nZSBQaSA1IFBybyAoUkszNTg4UykuIFRoZSBQcm8KPiBkaWZmZXJz
IGZyb20gdGhlIGJhc2UgT3JhbmdlIFBpIDUgaW4gdGhlIGZvbGxvd2luZyB3YXlzOgo+IAo+IC0g
Tm8gU1BJIE5PUiBmbGFzaDsgZU1NQyBtb2R1bGUgc2xvdCBpbnN0ZWFkLCB5b3UgY2FuIG9wdGlv
bmFsbHkgc29sZGVyCj4gICBhIFNQSSBOT1IgZmluIHBsYWNlIGFuZCB0dXJuIG9mZiB0aGUgZU1N
Qwo+IC0gUENJZS1hdHRhY2hlZCBOSUMgKHBjaWUyeDFsMSkgcmVwbGFjZXMgdGhlIEdNQUMxIGV0
aGVybmV0Cj4gLSBQQ0llIE5WTWUgc2xvdCAocGNpZTJ4MWwyKQo+IC0gQVA2MjU2IFdpRmkgKEJD
TTQzNDU2KSB2aWEgU0RJTyB3aXRoIG1tYy1wd3JzZXEKPiAtIEJDTTQzNDVDNSBCbHVldG9vdGgg
dmlhIHVhcnQ5IHdpdGggZnVsbCBSVFMvQ1RTCj4gLSBUd28tY29sb3VyIChibHVlL2dyZWVuKSBH
UElPIExFRCB1c2luZyBtb2Rlcm4gY29sb3IvZnVuY3Rpb24gYmluZGluZwo+IC0gYXVkaW8gaXMg
d2lyZWQgdXAgZGlmZmVyZW50bHkKPiAKPiBWZW5kb3JzIGRlc2NyaXB0aW9uIGFuZCBsaW5rcyB0
byBzY2hlbWF0aWNzIGF2YWlsYWJsZToKPiBodHRwOi8vd3d3Lm9yYW5nZXBpLm9yZy9odG1sL2hh
cmRXYXJlL2NvbXB1dGVyQW5kTWljcm9jb250cm9sbGVycy9kZXRhaWxzL09yYW5nZS1QaS01LVBy
by5odG1sCj4gCj4gU2lnbmVkLW9mZi1ieTogRGVubmlzIEdpbG1vcmUgPGRlbm5pc0BhdXNpbC51
cz4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAg
IHwgICAxICsKPiAgLi4uL2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyAg
IHwgMzc2ICsrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDM3NyBpbnNlcnRp
b25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMtb3JhbmdlcGktNS1wcm8uZHRzCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L01ha2VmaWxlCj4gaW5kZXggNGQzODRmMTUzYzEzLi5jOTlkY2EyYWU5ZTcgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiBAQCAtMjE0LDYgKzIxNCw3IEBAIGR0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhzLW5hbm9waS1yNmMuZHRiCj4gIGR0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhzLW9kcm9pZC1tMi5kdGIKPiAgZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OHMtb3JhbmdlcGktNS5kdGIKPiAgZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OHMtb3JhbmdlcGktNWIuZHRiCj4gK2R0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0Ygo+ICBk
dGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1vcmFuZ2VwaS1jbTUtYmFzZS5k
dGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OHMtcmFkeGEtY201LWlv
LmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2MtcGMuZHRi
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFu
Z2VwaS01LXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3Jh
bmdlcGktNS1wcm8uZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAuLmQ2NTYzMjhjOTA2ZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS1wcm8uZHRzCj4gQEAgLTAsMCArMSwzNzYg
QEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKwo+
ICsvZHRzLXYxLzsKPiArCj4gKyNpbmNsdWRlICJyazM1ODhzLW9yYW5nZXBpLTUuZHRzaSIKPiAr
Cj4gKy8gewo+ICsJbW9kZWwgPSAiWHVubG9uZyBPcmFuZ2UgUGkgNSBQcm8iOwo+ICsJY29tcGF0
aWJsZSA9ICJ4dW5sb25nLG9yYW5nZXBpLTUtcHJvIiwgInJvY2tjaGlwLHJrMzU4OHMiOwo+ICsK
PiArCWFsaWFzZXMgewo+ICsJCS9kZWxldGUtcHJvcGVydHkvIGV0aGVybmV0MDsKPiArCQltbWMw
ID0gJnNkaGNpOwo+ICsJCW1tYzEgPSAmc2RtbWM7Cj4gKwkJbW1jMiA9ICZzZGlvOwo+ICsJfTsK
PiArCj4gKwkvKiBQcm8gdXNlcyBncGlvLWxlZHMgaW5zdGVhZDsgcHdtMCBMRUQgaXMgbm90IHdp
cmVkIHVwICovCj4gKwkvZGVsZXRlLW5vZGUvIHB3bS1sZWRzOwo+ICsKPiArCS8qCj4gKwkgKiBQ
cm8gdXNlcyBpMnMyIChpMnMybTEgbXV4KSBmb3IgYXVkaW8sIG5vdCBpMnMxLiBSZWNyZWF0ZSB0
aGUgc291bmQKPiArCSAqIGNhcmQgbm9kZSBwb2ludGluZyBhdCBpMnMyXzJjaCBpbnN0ZWFkLgo+
ICsJICovCj4gKwkvZGVsZXRlLW5vZGUvIGFuYWxvZy1zb3VuZDsKCkkgdGhpbmsgaXQgd291bGQg
bWFrZSBtb3JlIHNlbnNlIHRvIG1vdmUgdGhlIHJlbGV2YW50IG5vdC1zaGFyZWQgcGFydApvdXQg
b2YgdGhlIGR0c2kgaW5zdGVhZC4gWWVzIHRoZSBkdXBsaWNhdGlvbiBpbiBvcmFuZ2VwaS01IGFu
ZCBvcmFuZ2VwaS01YgpzaG91bGQgYmUgZmluZS4KCkhhdmluZyBhIGRldmljZXRyZWUgd2l0aCBz
byBtYW55IC9kZWxldGUtbm9kZS8gYW5kIC9kZWxldGUtcHJvcGVydHkvCmVsZW1lbnRzIHNwcmlu
a2xlZCB0aHJvdWdob3V0IHRoZSBmaWxlLCB3aWxsIGRlZmluaXRseSBjYXVzZSByZWFkYWJpbGl0
eQooYW5kIGhhbmRsaW5nIGlzc3VlcykgaW4gdGhlIGZ1dHVyZS4KCkFkZGl0aW9uYWxseSB0aGlz
IG1ha2VzIGFsbCB0aGUgY29tbWVudHMgaW4gdGhlIGZpbGUgZXhwbGFpbmluZyBpbmRpdmlkdWFs
CmRpZmZlcmVuY2UgdW5uZWNlc3NhcnkuCgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
