Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57A4C8302D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yY8hHMIHhJ4qWcvTrQQcnCg3Vzg/o0lOZLGgDWY3oHs=; b=snrO2j+uoL0Olw
	liSGh50TQoA5bDQkmIveBIS5bRYSPFZd8uMx1J+LOTYuBXR1VP5gZVBU2ogqwfMcPbxD0k9Wpw1V2
	IMmX6inq2aABrns6pe5bEEV39jzKOTqUiVsQAAIFwEf9BzPJURnqX7WmvcVxEwX63CTf656St1ThZ
	BpJCZY4hK3cXucKq8Cj13SWctN4Ace6YhFTg0a3crhcHJwPOGwNEIztzvgBc+fDidgqVbmRaZaWVh
	h6hC7uNkOqeUHOF5yCxwyOQW1I4RyBmQVmNVgNOEs3eVwjVIN0ZznCKL5FyeecrmMRZO/2f1PnaFA
	7t7M0qfAlTi+YVM9IouA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBO8-00000001pV9-1ZrQ;
	Mon, 30 Jun 2025 10:05:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWB9W-00000001nUd-2ndk;
	Mon, 30 Jun 2025 09:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=fdCzhVsNXpe5AUC2cbbE/8xzVg3QlWI9Hb+MzbVyv/U=; b=OKbbifEZUNsRrPyg/milb2gP6P
	Lo2KatzmVJ+9ENyCsgIIQ5f4iQPQ1FOk5hemSdMqb+pbAsqtHLlUqf6VAhM1MOqOWy/GeDHNBy5xf
	ZIUEYXZdhdvfFeM4fDtf4+9FWUkluhSmHBG1yhA7ridYmCy63fgzTmHa5FGFfxJyWeUxaIuYM9Oot
	F4FbPP8wwK1npthTkVx3BkLHcVhJUZ5YpYbqPSDxHm7As9nAoXivSp4o6DHeFxxndUy/THVqBI3KW
	jbAN4pP3/DaJxjgM+nz6G3CaOhLIKUKEWuxejLgRMmHfNUVpXjeKtrK4f/3HCHy7Cm4Wb2Ua3XUKy
	s0DXQP7g==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWB9Q-0006dy-Kw; Mon, 30 Jun 2025 11:50:12 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Nicholas Roth <nicholas@rothemail.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, imx@lists.linux.dev,
 ~diederik/pine64-discuss@lists.sr.ht, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v4 0/4] Describe the cameras in the PinePhone Pro dts
Date: Mon, 30 Jun 2025 11:50:11 +0200
Message-ID: <7067942.rnE6jSC6OK@diego>
In-Reply-To: <aFknh7weIKoGKajQ@kekkonen.localdomain>
References: <20250620-camera-v4-0-0201a8ed5fae@bootlin.com> <13788127.uLZWGnKmhe@phil>
 <aFknh7weIKoGKajQ@kekkonen.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_025018_707362_6F184D72 
X-CRM114-Status: GOOD (  30.13  )
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

QW0gTW9udGFnLCAyMy4gSnVuaSAyMDI1LCAxMjowODowNyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFNha2FyaSBBaWx1czoKPiBIaSBIZWlrbywKPiAKPiBPbiBNb24sIEp1
biAyMywgMjAyNSBhdCAxMjowNToyMlBNICswMjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+
IEhpLAo+ID4gCj4gPiBBbSBNb250YWcsIDIzLiBKdW5pIDIwMjUsIDA4OjQ3OjQ0IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgU2FrYXJpIEFpbHVzOgo+ID4gPiBIaSBPbGl2
aWVyLAo+ID4gPiAKPiA+ID4gT24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMDU6MjE6MzFQTSArMDIw
MCwgT2xpdmllciBCZW5qYW1pbiB3cm90ZToKPiA+ID4gPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBv
cnQgZm9yIHRoZSBQaW5lNjQgUGluZVBob25lIFBybydzIHJlYXIgYW5kIGZyb250Cj4gPiA+ID4g
Y2FtZXJhcyBpbiBEZXZpY2UgVHJlZS4KPiA+ID4gPiBUaGlzIGlzIGJhc2VkIG9uIHNvbWUgb2Yg
T25kcmVqIEppcm1hbidzIHBhdGNoZXMgaG9zdGVkIGluIGhpcyB0cmVlIGF0Cj4gPiA+ID4gaHR0
cHM6Ly9jb2RlYmVyZy5vcmcvbWVnaS9saW51eCwgYnV0IEkgaGF2ZSBhbHNvIGZ1bGx5IHJldmll
d2VkIGFuZAo+ID4gPiA+IHJlLXdyaXR0ZW4gdGhlIGNvZGUgZnJvbSB0aGUgUkszMzk5IGRhdGFz
aGVldCwgdGhlIFBpbmVQaG9uZSBQcm8KPiA+ID4gPiBzY2hlbWF0aWMsIGFuZCB0aGUgSU1YMjU4
LTBBUUg1IHNvZnR3YXJlIHJlZmVyZW5jZSBtYW51YWwuCj4gPiA+ID4gCj4gPiA+ID4gSSBoYXZl
IHRlc3RlZCB0aGVzZSBjaGFuZ2VzIG9uIG15IFBpbmVQaG9uZSBQcm8gYW5kIGFtIGFibGUgdG8g
dGFrZQo+ID4gPiA+IHBob3RvcyBmcm9tIGJvdGggY2FtZXJhcyB1c2luZyBsaWJjYW1lcmEncyBj
YW0uCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBzZXJpZXMgaGFzIHJhaXNlZCBhIHF1ZXN0aW9uIGFi
b3V0IHRoZSBwcm9wZXIgbGFiZWwgbmFtZSBmb3IgdGhlCj4gPiA+ID4gZnJvbnQvdXNlciBjYW1l
cmEgYW5kIHJlYXIvd29ybGQgY2FtZXJhIGZvciBwaG9uZXMuCj4gPiA+ID4gVGhpcyBzZXJpZXMg
aXMgdXNpbmcgInVjYW0iIGFuZCAid2NhbSIsIHdoaWNoIGlzIHVzZWQgaW4gYSBmZXcgb3RoZXIK
PiA+ID4gPiBSb2Nrc2hpcCBEVEJzOgo+ID4gPiA+ICAtIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcHgzMC1ldmIuZHRzCj4gPiA+ID4gIC0gcmszMzk5LWdydS1zY2FybGV0LmR0c2kKPiA+
ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIEJlbmphbWluIDxvbGl2aWVyLmJl
bmphbWluQGJvb3RsaW4uY29tPgo+ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0aGUgcGF0Y2hlcy4K
PiA+ID4gCj4gPiA+IEkndmUgcGlja2VkIHRoZSBmaXJzdCB0d28gaW4gdGhlIHNldCwgcHJlc3Vt
YWJseSB0aGUgcmVzdCB3aWxsIGJlIG1lcmdlZAo+ID4gPiB2aWEgYW5vdGhlciB0cmVlPwo+ID4g
Cj4gPiBjb3JyZWN0LCBhbmQgd2l0aCB0aGUgZmlyc3QgdHdvIGJlaW5nIGFwcGxpZWQsIEkgY2Fu
IG5vdyBhbHNvIHNhZmVseSBwaWNrCj4gPiB0aGUgb3RoZXIgdHdvIDotKQo+IAo+IE9uY2UgaW4g
bXkgdHJlZSwgdGhleSdsbCBuZXh0IGVuZCB1cCB0byB0aGUgbWVkaWEgY29tbWl0dGVycycgdHJl
ZSBhbmQKPiBhZnRlciBzb21lIHRpbWUgeW91IHNob3VsZCBiZSBhYmxlIHRvIGZpbmQgdGhlbSBp
biBsaW51eC1uZXh0LiBUaGlzIHByb2Nlc3MKPiB3aWxsIHRha2Ugc29tZSB0aW1lLiBKdXN0IEZZ
SS4KCnRoYW5rcyBmb3IgdGhlIGhlYWRzIHVwIDotKSAuCgpTbyBJJ2xsIGdpdmUgdGhhdCBhIGJp
dCBtb3JlIHRpbWUgZm9yIHRoZSBiaW5kaW5ncyB0byBhcHBlYXIuCgpUaGFua3MKSGVpa28KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
