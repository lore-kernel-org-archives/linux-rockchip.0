Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE949CD68ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTjncjWIm5H1Kw4kF0JvqJpdt0d+b8ZrbS+PADZ8jlE=; b=PK+QnP4mEn1bcv
	sRGsmPd0+B4pevEkN8N1Nngr2RHuBrbp1hzOgHcujPTX6w9eDR4/boLPkQQj18j8Mu5aY831Z1OYV
	4Y7LQR2J9sBNruW1cVld2h0+i2XvhY6DPejMC0jAGMUQN12F8QxtXFZreHeij8Hgkg15hCpTlSqPr
	wr1zjhJHe3XKrDd9juVgsrAnj0YVOj/SAL/s55Zr3TVujr4dFK/JF8LpVyFYj41Ip+skxGyhH7dho
	Z3DJy0u4GKDTJmiAzY1m2zGqhwLKpp90VkKQyMMjeu9A2QcTXSLeYwBI1aTOKpcVLx9i9b/NOoo5Q
	rFm95ZOnrNPRHcEKoaFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7LQ-00Cj5G-13;
	Tue, 10 Oct 2023 07:39:56 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7LN-00Cj48-0Q
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 07:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1696923584;
 bh=0sow37DXl68xjAHi4ENwI6v6Ef+sBlTHCp37sBFnREo=;
 b=itl9HhNTg8K2zScOfMqmVyWv6dNcvn9PplEooME9AFgdXbgNyLu6USUzqtw2b2y0553z7NZZS
 0MVdyP1Tt3WJkzCT8FrIbRGzAXWEUItcPn09ubfTuDDBAFfayCUShNFEX1IzsjVlvG7CkozyGmc
 TiA7FIcuPeu3iSF+HNT8uls1+363fJFUpQr8JVk+t43cwzZmcMq2KRyFmf1WMYKh9Q/fO/reOco
 lO2i/GAdEzLNQtJCgWJesoBPKJpKuITJP+4q+hE4Huz3XHbXnsuJoa+bw4iTKkMetufHvV3SPvr
 7LQgdUvhhrdVLGbtUF+ryyCG+5p006c9CUCDrIwIATSQ==
Message-ID: <e358bf4a-b6aa-23b0-ee9f-a3eb471d1655@kwiboo.se>
Date: Tue, 10 Oct 2023 09:39:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: RK356x hdmi doesn't support resolutions up to 4k@60Hz
Content-Language: en-US
To: Doug Brewer <brewer.doug@gmail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org
References: <CAG0V13R4Z2iMTYHDqdKR5pkXicLz5eFPWsaLGVGBdXD-n=3Kzw@mail.gmail.com>
 <20231010062046.GC3114228@pengutronix.de>
 <CAG0V13Qghe3yaFUL=1K4LiCD=v56m5+opYBTSWf-FJFEiAL7ng@mail.gmail.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAG0V13Qghe3yaFUL=1K4LiCD=v56m5+opYBTSWf-FJFEiAL7ng@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6524ffbf53cf3c005812685b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_003953_820606_E9AD4D3F 
X-CRM114-Status: GOOD (  21.14  )
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

T24gMjAyMy0xMC0xMCAwOToyNCwgRG91ZyBCcmV3ZXIgd3JvdGU6Cj4gT24gVHVlLCBPY3QgMTAs
IDIwMjMgYXQgMjoyMOKAr1BNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4g
d3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgT2N0IDEwLCAyMDIzIGF0IDExOjE1OjIyQU0gKzA4MDAsIERv
dWcgQnJld2VyIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gSSB0ZXN0ZWQgdGhlIExpbnV4IGtlcm5l
bCA2LjUuNiBvbiBSb2NrIDNBLCB0aGUgaGRtaSBkb2Vzbid0IHN1cHBvcnQKPj4+IHJlc29sdXRp
b25zIHVwIHRvIDRrQDYwSHouICA0a0AzMEh6IHdvcmtzIGZvciBtZS4KPj4+IEFueSBpZGVhIGhv
dyB0byBmaXggaXQ/ICBUaGFua3MuCj4+Pgo+Pgo+PiBZZXMsIDRrQDYwIGlzIG5vdCB5ZXQgd29y
a2luZy4gSW4gcHJpbmNpcGxlIGFsbCB0aGF0J3MgbWlzc2luZyBzaG91bGQgYmUKPj4gdGhlIHBh
dGNoIGJlbG93LiBIb3dldmVyLCBpdCBkaWRuJ3Qgd29yayBmb3IgbWUgdGhlIHRpbWUgSSB0ZXN0
ZWQgaXQsIHNvCj4+IEkgaGF2ZW4ndCB0cmllZCB1cHN0cmVhbWluZyBpdC4KPiAKPiBXaXRoIHRo
aXMgcGF0Y2gsIDRrQDYwaHogd29ya3MgZm9yIG1lISAgVGhhbmtzLgoKQmVsb3cgcGF0Y2ggZnJv
bSBTYXNjaGEgc2hvdWxkIGFsbG93IGZvciBtb3JlIG1vZGVzLCBidXQgd2lsbCBwb3NzaWJsZQph
bHNvIGFsbG93IHNvbWUgaGRtaSBtb2RlcyB0aGF0IGlzIG5vdCBzdXBwb3J0ZWQsIGF0IGxlYXN0
IG9uIHJrMzI4OCBhbmQKcmszMzk5LgoKSSBoYXZlIGZpbmFsbHkgc3RhcnRlZCB3b3JrIG9uIHVw
c3RyZWFtaW5nIG9sZCBoZG1pMi4wIHBhdGNoZXMgZnJvbQpMaWJyZUVMRUMgWzFdLCBub3cgdGhh
dCByazM1eHggd29yayBpbiBVLUJvb3QgaGF2ZSBzaGlmdGVkIHRvIHN5bmNpbmcKZGV2aWNlIHRy
ZWVzLiBIRE1JIDIuMCBwYXRjaGVzIHNob3VsZCBoaXQgbGlzdCBuZXh0IHdlZWsuCgpbMV0gaHR0
cHM6Ly9naXRodWIuY29tL0xpYnJlRUxFQy9MaWJyZUVMRUMudHYvdHJlZS9tYXN0ZXIvcHJvamVj
dHMvUm9ja2NoaXAvcGF0Y2hlcy9saW51eC9kZWZhdWx0CgpSZWdhcmRzLApKb25hcwoKPiAKPj4g
U2FzY2hhCj4+Cj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Cj4+IEZyb20gMDY5Y2U4NzRhNThkYmQxNjQ4MjUyMDcz
NzdjNDIxODM3ZGUwZjBlOCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPj4gRnJvbTogU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+PiBEYXRlOiBNb24sIDIzIEphbiAyMDIz
IDEyOjM3OjMyICswMTAwCj4+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL3JvY2tjaGlwOiBkd19oZG1p
OiBBZGQgc3VwcG9ydCBmb3IgNGtANjAgcmVzb2x1dGlvbgo+Pgo+PiBEb2VzIG5vdCB3b3JrIHll
dCBvbiBvdXIgU2Ftc3VuZyBtb25pdG9yLCBpdCBsb29zZXMgc3luY2hyb25pemF0aW9uCj4+IGV2
ZXJ5IG5vdyBhbmQgdGhlbi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhh
dWVyQHBlbmd1dHJvbml4LmRlPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pLXJvY2tjaGlwLmMgfCA3ICsrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hp
cC5jCj4+IGluZGV4IDcyNTk1MjgxMTc1MmIuLmVmMjE5Y2M2ZTFjZGQgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+PiBAQCAtMTY4LDYgKzE2
OCwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGR3X2hkbWlfbXBsbF9jb25maWcgcm9ja2NoaXBf
bXBsbF9jZmdbXSA9IHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgeyAweDVhNjQsIDB4MDAw
MyB9LAo+PiAgICAgICAgICAgICAgICAgfSwKPj4gICAgICAgICB9LCB7Cj4+ICsgICAgICAgICAg
ICAgICA2MDAwMDAwMDAsIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgeyAweDFhNDAsIDB4
MDAwMyB9LAo+PiArICAgICAgICAgICAgICAgICAgICAgICB7IDB4M2I0YywgMHgwMDAzIH0sCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIHsgMHg1YTY0LCAweDAwMDMgfSwKPj4gKyAgICAgICAg
ICAgICAgIH0sCj4+ICsgICAgICAgfSx7Cj4+ICAgICAgICAgICAgICAgICB+MFVMLCB7Cj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgIHsgMHgwMGEwLCAweDAwMGEgfSwKPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgeyAweDIwMDEsIDB4MDAwZiB9LAo+PiBAQCAtMjA0LDYgKzIxMCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZHdfaGRtaV9waHlfY29uZmlnIHJvY2tjaGlwX3BoeV9jb25maWdb
XSA9IHsKPj4gICAgICAgICB7IDc0MjUwMDAwLCAgMHg4MDA5LCAweDAwMDQsIDB4MDI3Mn0sCj4+
ICAgICAgICAgeyAxNDg1MDAwMDAsIDB4ODAyYiwgMHgwMDA0LCAweDAyOGR9LAo+PiAgICAgICAg
IHsgMjk3MDAwMDAwLCAweDgwMzksIDB4MDAwNSwgMHgwMjhkfSwKPj4gKyAgICAgICB7IDU5NDAw
MDAwMCwgMHg4MDM5LCAweDAwMDAsIDB4MDE5ZH0sCj4+ICAgICAgICAgeyB+MFVMLCAgICAgIDB4
MDAwMCwgMHgwMDAwLCAweDAwMDB9Cj4+ICB9Owo+Pgo+PiAtLQo+PiAyLjM5LjIKPj4KPj4gLS0K
Pj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKPj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPj4gMzExMzcgSGlsZGVz
aGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKPj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
