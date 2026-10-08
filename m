Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7918CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 13:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8exEFmWP969p58iJtoZncjuWM188rkfAgC70Sl7Gfs=; b=QBpc4PMsu27f4N
	v5fQWPzkOU7WNM3tgZzKe3WxrhmOIcH6IWxyztZlffdI40TKErPVTYnPfAgd2wxh0A5Ydql0BKAik
	7ECSpsa9dXiLRrkRw+kq7M3j3UoMMjlv0S+9yBUosmz3FgThsILUCtRtCOCF1tzmt92tHY+tDciN7
	7rb86omjr49Zm44qViue2KwGgcL3Q0gBO1XLGnqH/ShUb0t3r2gIdWC4g5gz3fKRJrkUwYIgaSBGF
	0BevsVaaYabrSs3tvew3VTg+gfUdRk0SEgLa79Mrhn2JlErmMd4Ct1vfdYd1sEhPqQ33N/pXg9vZn
	ei+B9HPUyuVWGeyj/2sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEo61-00000004SIR-3tup;
	Thu, 08 Oct 2026 13:23:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEo60-00000004SIB-0lza;
	Thu, 08 Oct 2026 13:23:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 91FD641AE2;
	Thu,  8 Oct 2026 13:23:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46D4A1F000FF;
	Thu,  8 Oct 2026 13:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791465819;
	bh=IaKcoXA7uPRlCi3Ecfqo5f4Dhh72RmQqlLLkldNTjso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RHuYqDuIrL8iQD4la9YrcwktXJhQQprAokPtDnmpMPNXPSHY5ca67kKZlHHgGJNmY
	 1LKSOPlvn/6Hat3YzJR7XItq2QBsVqvy/XpQDSu80+/0e+lofThNQA33zlQU7CjAui
	 rLy8HMDwe4VivcAy96svKc6V6OuGl6FQRIXjQdy6YUyFiRsti6srnM64BQrnM1N43w
	 wP0zR33+IDK3szDf93BKvHeOuX0Bj5hKJC3msHbPfrp20v+uxPGMDW0V3z2192zpsA
	 J2YBLba1L6ed+gllwGUCJFI/vaL3NOlJEsBkF6kP5FtCm95yOweNJBbC30xDuE5x+s
	 jPVKHcBdb+6zA==
Date: Thu, 8 Oct 2026 08:23:38 -0500
From: Rob Herring <robh@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sre@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 2/5] dt-bindings: power: reset: syscon-reboot-mode:
 allow supplies
Message-ID: <20261008132338.GA183998-robh@kernel.org>
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
 <20261006-b4-rk3576-reboot-mode-v3-2-6edba064693b@flipper.net>
 <20261007212432.GA381404-robh@kernel.org>
 <CAKTNdwFo03jFGMeJQpxXp1yOX+cG+6BZOYf1eGGZTdZWAFdz5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTNdwFo03jFGMeJQpxXp1yOX+cG+6BZOYf1eGGZTdZWAFdz5A@mail.gmail.com>
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

T24gVGh1LCBPY3QgMDgsIDIwMjYgYXQgMDE6NTg6NTVBTSArMDQwMCwgQWxleGV5IENoYXJrb3Yg
d3JvdGU6Cj4gT24gVGh1LCBPY3QgOCwgMjAyNiBhdCAxOjI04oCvQU0gUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMDg6
MDI6NDBQTSArMDQwMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IFdoYXRldmVyIHByb2dy
YW0gdGhhdCBhY3RzIG9uIGEgcmVib290IG1vZGUgcnVucyBiZWZvcmUgYSBmdWxsIE9TLCBzbyBp
dAo+ID4gPiBtYXkgbGFjayB0aGUgY2FwYWJpbGl0eSB0byBlbmFibGUgdGhlIHJlZ3VsYXRvcnMg
aXQgZGVwZW5kcyBvbiwgYW5kIGEKPiA+ID4gcmVzZXQgdGhhdCBwcmVzZXJ2ZXMgdGhlIG1vZGUg
cmVnaXN0ZXIgZ2VuZXJhbGx5IGxlYXZlcyB0aGUgcmVndWxhdG9ycyBhcwo+ID4gPiB0aGUgcHJl
dmlvdXNseSBydW5uaW5nIHN5c3RlbSBsZWZ0IHRoZW0uCj4gPiA+Cj4gPiA+IEFsbG93IGEgcmVi
b290IG1vZGUgbm9kZSB0byBuYW1lIHN1Y2ggc3VwcGxpZXMsIHNvIHRoYXQgdGhleSBjYW4gYmUK
PiA+ID4gdHVybmVkIG9uIHdoaWxlIHRoZSBtb2RlIGlzIGJlaW5nIHJlcXVlc3RlZC4KPiA+ID4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+
Cj4gPiA+IC0tLQo+ID4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcmVzZXQvc3lz
Y29uLXJlYm9vdC1tb2RlLnlhbWwgICAgICAgfCA4ICsrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcmVzZXQvc3lzY29uLXJlYm9vdC1tb2RlLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcmVzZXQvc3lzY29u
LXJlYm9vdC1tb2RlLnlhbWwKPiA+ID4gaW5kZXggNzlmZmM3OGIyM2VhLi41ZWQ3MGM4NzI2OWUg
MTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dl
ci9yZXNldC9zeXNjb24tcmVib290LW1vZGUueWFtbAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcmVzZXQvc3lzY29uLXJlYm9vdC1tb2RlLnlhbWwK
PiA+ID4gQEAgLTM2LDYgKzM2LDE0IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ID4gPiAgICAiXm1v
ZGUtLiokIjoKPiA+ID4gICAgICBtYXhJdGVtczogMQo+ID4gPgo+ID4gPiArICAiXlthLXowLTld
KygtW2EtejAtOV0rKSotc3VwcGx5JCI6Cj4gPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiA+ICsg
ICAgICBTdXBwbHkgdGhhdCBoYXMgdG8gYmUgcG93ZXJlZCBmb3Igd2hhdGV2ZXIgcHJvZ3JhbSBh
Y3RzIG9uIHRoZSBtb2RlLgo+ID4gPiArICAgICAgVGhhdCBjb3VsZCBiZSBhIGJvb3QgUk9NIHdp
dGggbm8gYWNjZXNzIHRvIHJlZ3VsYXRvcnMsIGFuZCBhIHdhcm0gcmVzZXQKPiA+ID4gKyAgICAg
IGxlYXZlcyB0aGVtIGFzIHRoZSBwcmV2aW91c2x5IHJ1bm5pbmcgc3lzdGVtIGxlZnQgdGhlbSBh
bmQgbm90IG5lY2Vzc2FyaWx5Cj4gPiA+ICsgICAgICB3aGF0IHRoZWlyIGV4cGVjdGVkIG91dC1v
Zi1yZWJvb3Qgc3RhdGUgaXMuIEFueSBzdXBwbHkgZGVzY3JpYmVkIGhlcmUgaXMKPiA+ID4gKyAg
ICAgIGVuYWJsZWQgd2hlbiBhIG1vZGUgaXMgcmVxdWVzdGVkLCBhbmQgc3RheXMgZW5hYmxlZC4K
PiA+Cj4gPiBTb3JyeSwgYnV0IG5vLiBJZiB3ZSBhbGxvdyB0aGlzLCB0aGVuIHdoYXQgbmV4dD8g
Y2xvY2tzPyBwb3dlci1kb21haW5zPwo+ID4gR1BJTyBsaW5lcz8gVGhlIGxpc3QgaXMgZW5kbGVz
cy4gTWF5YmUgaWYgYSBub3QgZ2VuZXJpYyBiaW5kaW5nIGlzIHVzZWQsCj4gPiBidXQgc3RpbGwg
cHJldHR5IG11Y2ggcHVyZSBjb25maWd1cmF0aW9uLgo+IAo+IFRoZXNlIGFyZSB0aGUgcmVzb3Vy
Y2VzIHdoaWNoIGFyZSByZXF1aXJlZCB0byBoYW5kbGUgdGhlIHJlYm9vdCBtb2RlCj4gcmVxdWVz
dCwgdGhleSBhcmUgbm90IGV4YWN0bHkgY29uZmlndXJhdGlvbi4gVGhlcmUgaXMgYSBsaW1pdGVk
IGFuZAo+IGhhcmR3YXJlIGRlZmluZWQgbnVtYmVyIG9mIElQIGJsb2NrcyB3aGljaCBuZWVkIHRv
IGJlIHBvd2VyZWQgZm9yIHRoZQo+IHJlYm9vdCBtb2RlIHJlcXVlc3QgdG8gY29tcGxldGUgc3Vj
Y2Vzc2Z1bGx5LiBJbiBteSBjYXNlIChSb2NrY2hpcAo+IFJLMzU3NiksIHRoZXNlIGFyZSB0aGUg
SVBzIHRoYXQgbmVlZCB0byBiZSBtYWRlIGF3YXJlIG9mIHRoZSB0cmFpbmVkCj4gRERSIG1lbW9y
eSBwYXJhbWV0ZXJzOiBpZiB0aGV5IGFyZSB1bnBvd2VyZWQgX2F0IHdhcm0gcmVib290XyB0aGVu
IHRoZQo+IGJvb3QgcHJvY2VzcyBzdGFsbHMgaW1tZWRpYXRlbHkgd2l0aCBhbiBleGNlcHRpb24g
KGNvbGQgcmVib290IGlzCj4gaGFuZGxlZCBieSB0aGUgcG93ZXItb24gZGVmYXVsdCBzdGF0ZSBv
ZiB0aGUgUE1JQykuCgpJZiB5b3UgbmVlZCBjZXJ0YWluIGgvdyBibG9ja3MsIHRoZW4geW91IHNo
b3VsZCBsaXN0IHRoZW0gYW5kIHRoZW4geW91IApjYW4gZ2V0IHdoYXRldmVyIHJlc291cmNlcyB0
aGV5IGhhdmUuIFRoYXQncyBhc3N1bWluZyB3ZSB3ZXJlIHRvIGdvIGRvd24gCnRoaXMgcGF0aCwg
bm90IGFuIGVuZG9yc2VtZW50IGZvciBkb2luZyB0aGlzLgoKPiBJIHNlZSB0aGF0IHRoaXMgbWF5
IGJlIGFidXNlZCB0byBoYWNrIGFyb3VuZCB3aGF0IHNob3VsZCBiZSBhCj4gYm9vdGxvYWRlcidz
IGpvYiwgc28gaXQgd291bGQgYmUgZ3JlYXQgdG8gZmluZCBhIHdheSB0byBleHBsaWNpdGx5Cj4g
bGltaXQgdGhlIHNjb3BlIG9mIHRoZXNlIC0gdGhvdWdoIEkgY291bGRuJ3QgdGhpbmsgb2Ygb25l
IHlldC4gQW55Cj4gc3VnZ2VzdGlvbnMgd291bGQgYmUgbXVjaCBhcHByZWNpYXRlZC4KCk1heWJl
IHRoZSBib290IHBoYXNlIHN0dWZmIGNvdWxkIHdvcmsgaGVyZT8KClJvYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
