Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C78C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CAubNwl+bB2U9mf7kyXBvAxu/nR0fORMg7DjeF9ToQ=; b=q6DljqeyBzvTyi
	tEH05543o3FKIIPeWJZUsGlBjycdfGAoMeGcnWdE6LeAoZ1/E0k4Vn5aGSibbidqnvNSmj4q9BIqC
	OA94Wy0pY343NQgg/aJIvQNH+SF6kptBmSgffFhkXh4XsHllC0Q9+aNNe2OGcSs1iUBLLg6zyHrKA
	gDvgrSEmNf3sj/OcqX6zGe2DlAaDIVLObYnjAvDbzRAOSB8FnZTHABjnLzJ8la4luBwM9jjkCHs6W
	BDZ7wefEHzcH5ar9O6JhaK/THitaYKKRjzn3Oh/Ajba9wwk1sUMY9VnWC8cv489f4LXXDZ8e0Bsuw
	ES4jjKsBTV9qFl1Ggojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nagwP-009eld-9n; Sat, 02 Apr 2022 16:49:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nagwE-009eiQ-KU; Sat, 02 Apr 2022 16:49:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 2A96ECE09FC;
 Sat,  2 Apr 2022 16:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97511C34111;
 Sat,  2 Apr 2022 16:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648918156;
 bh=YcbASg+GO+EkdDrt/yUxr7ywUjhesLogAnC+mnlYGEA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gKROR9zwBALojn4E5hRgpjZiVJ2LkOrTof3zTzdkKeM+dMCXvdfUVxVywlfSBKTub
 83puUbTdqDcp1P251PGSzjxmW6syoAdNLuDeN+hRioLepDDj5fwjc72glUco9RLrH4
 fWDlobGbvY3Yr2yv9yK1iiTxbYaQcl6GYEncv7FG8sBblfN8DjdB+Tko1GJarJkjzl
 CqHukGU3+uetJTqBU35EufEhTJ/JQMLIQ232K9a2dqX0DRlpHNX2jj36iVIUYsK2D0
 nAQ1S/5yDqL3HFxoV+WVOCFYetv2xOeXNJlDs/vD4NBXaJTnZonch1EXHHEO+vsxl7
 3y6VKMwxlUUBA==
Received: by mail-pl1-f177.google.com with SMTP id c23so4971756plo.0;
 Sat, 02 Apr 2022 09:49:16 -0700 (PDT)
X-Gm-Message-State: AOAM531GVMkv62kHqM2Ha5LqG5bL0JrAcsE5xJdhD/eaXv1CAga+yHu+
 z6g4cJbC8Rfr4VEY+hY5jOCyK3Jl2dv6MOrZ374=
X-Google-Smtp-Source: ABdhPJwGqwbLcVcTdQ+vwsrSjziLqOHB1myjd4wlosyh0cpYONLfR6rrENWAFdTWWindJ8begLSg9eEzj+9HuQBuDVs=
X-Received: by 2002:a17:902:6ac7:b0:150:24d6:b2ee with SMTP id
 i7-20020a1709026ac700b0015024d6b2eemr15918616plt.168.1648918156115; Sat, 02
 Apr 2022 09:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200917185211.5483-1-krzk@kernel.org>
 <20201002161128.GB4542@kozik-lap> <2926877.yplJhP9KA3@diego>
In-Reply-To: <2926877.yplJhP9KA3@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sat, 2 Apr 2022 18:49:05 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeX8su0dzHWRWUZfOdZaB5CXU1GpUOXg+pS7CQdX3XWOg@mail.gmail.com>
Message-ID: <CAJKOXPeX8su0dzHWRWUZfOdZaB5CXU1GpUOXg+pS7CQdX3XWOg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rk3188: correct interrupt flags
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>, 
 Alexis Ballier <aballier@gentoo.org>, Jagan Teki <jagan@amarulasolutions.com>, 
 Anand Moon <linux.amoon@gmail.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_094923_038631_0FAB5016 
X-CRM114-Status: GOOD (  30.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gU2F0LCAxNyBPY3QgMjAyMCBhdCAxNDowOCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEFtIEZyZWl0YWcsIDIuIE9rdG9iZXIgMjAyMCwgMTg6
MTE6MjggQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gPiBPbiBUaHUsIFNlcCAx
NywgMjAyMCBhdCAwODo1MjoxMFBNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+
ID4gPiBHUElPX0FDVElWRV94IGZsYWdzIGFyZSBub3QgY29ycmVjdCBpbiB0aGUgY29udGV4dCBv
ZiBpbnRlcnJ1cHQgZmxhZ3MuCj4gPiA+IFRoZXNlIGFyZSBzaW1wbGUgZGVmaW5lcyBzbyB0aGV5
IGNvdWxkIGJlIHVzZWQgaW4gRFRTIGJ1dCB0aGV5IHdpbGwgbm90Cj4gPiA+IGhhdmUgdGhlIHNh
bWUgbWVhbmluZzoKPiA+ID4gMS4gR1BJT19BQ1RJVkVfSElHSCA9IDAgPSBJUlFfVFlQRV9OT05F
Cj4gPiA+IDIuIEdQSU9fQUNUSVZFX0xPVyAgPSAxID0gSVJRX1RZUEVfRURHRV9SSVNJTkcKPiA+
ID4KPiA+ID4gQ29ycmVjdCB0aGUgaW50ZXJydXB0IGZsYWdzIHdpdGhvdXQgYWZmZWN0aW5nIHRo
ZSBjb2RlOgo+ID4gPiAgIEFDVElWRV9ISUdIID0+IElSUV9UWVBFX05PTkUKPiA+ID4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+ID4g
Pgo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gTm90IHRlc3RlZCBvbiBIVy4KPiA+ID4KPiA+ID4gQ2hh
bmdlcyBzaW5jZSB2MToKPiA+ID4gMS4gQ29ycmVjdCB0aXRsZQo+ID4gPiAtLS0KPiA+ID4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzE4OC1icWVkaXNvbjJxYy5kdHMgfCAzICsrLQo+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IEhpLAo+
ID4KPiA+IEFueSBjb21tZW50cy9yZXZpZXcvdGVzdGluZyBmcm9tIEhlaWtvIG9yIG90aGVyIFJv
Y2tjaGlwIGZvbGtzPyBTaGFsbCBJCj4gPiBjYyBoZXJlIHNvbWVvbmU/Cj4KPiBJJ20gYWN0dWFs
bHkgd29uZGVyaW5nIGFib3V0IHRoaXMgLi4uIEkgc29tZWhvdyByZW1lbWJlciB3cml0aW5nIGEg
cmVzcG9uc2UsCj4gYnV0IGRvbid0IHNlZSBpdCBpbiBteSBoaXN0b3J5IC0gc28gaXQgbWlnaHQg
aGF2ZSBnb3R0ZW4gbG9zdCBiZWZvcmUgSQo+IGFjdHVhbGx5IHNlbnQgaXQuCj4KPiBJIHRoaW5r
IHRoZSBiaWdnZXN0IGlzc3VlIEkgaGF2ZSBpcyB0aGF0IG5vbmUgb2YgdGhhdCBpcyB0ZXN0ZWQg
b24gYW55Cj4gaGFyZHdhcmUgYW5kIGxvb2tpbmcgYXQgb3RoZXIgYnJjbSB3aWZpIGRyaXZlcnMg
aW4gdGhlIGtlcm5lbCwgdGhlCj4gaW50ZXJydXB0IHBvbGFyaXR5IHNlZW1zIHRvIGJlIGFsbCBv
dmVyIHRoZSBwbGFjZSwgc29tZSBzZXQgaXQgaGlnaCwKPiBzb21lIGxvdyBhbmQgSSBldmVuIGhh
dmUgc2VlbiBlZGdlIHRyaWdnZXJzLgo+Cj4gQXMgYWxsIGNoYW5nZXMgYXJlIGluIHJlZ2FyZCB0
byAoY29waWVkKSBicmNtIHdpZmkgbm9kZSwgaXQgd291bGQgYmUKPiByZWFsbHkgaW50ZXJlc3Rp
bmcgdG8gYWN0dWFsbHkga25vdyB3aGF0IHRyaWdnZXIgaXMgdGhlIHJpZ2h0IG9uZS4KPgo+IEkn
dmUgQ2MnZWQgSmFnYW4gd2hvIEkgdGhpbmsgaGFzIHdvcmtlZCBvbiBhbiBhZmZlY3RlZCBib2Fy
ZCwKPiBtYXliZSBoZSBjYW4gY2hlY2sgd2hpY2ggdHJpZ2dlciBpcyBjb3JyZWN0LgoKSGkgSGVp
a28sCgpOb3RoaW5nIG1vdmVkIGhlcmUgc2luY2UgMjAyMCBhbmQgdGhlIERUU2VzIHN0aWxsIGhh
dmUgaW5jb3JyZWN0IGZsYWdzCmZvciBpbnRlcnJ1cHRzLgoKSSBjYW4gcmViYXNlIGFuZCByZXNl
bmQgKGFsdGhvdWdoIG1heWJlIGl0IHN0aWxsIGFwcGxpZXMgY2xlYW5seSksIGJ1dAptb3JlIGlt
cG9ydGFudCAtIGlzIHNvbWVvbmUgZ29pbmcgdG8gdGFrZSB0aGlzIHBhdGNoPyBvciB0ZXN0IGl0
PwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
