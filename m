Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B27C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVbqsQ9bE2RxxeuQlksPQTbOJkj3Mg33iWKXO0PLAYk=; b=JygNf5hJUSXa2Y
	K0c2kr9ZKt8A1y3fxA19UdTdYrEcDZEYp+teQSHq4VkGZmt00mhMWCRWyiXgLqoYjByGHhlTzDkqS
	paIXX60e4xkydF1q/0+/AWKoaMMZ7YUml7HWM3IQo7zuzHrnem7nHkX0woM8SXU4v9gDY4YBJaJKM
	GUE3hKUH4eIIZKzCx0Uc3Rl/bwoASg4w/tOD0Aol7CoD2bVdd4jbIQ/aiark6Z7XnnoJKEHAcUIrj
	5ktcBFe8hK+742Y0BPY0VnTYNcjrngcawKcuzWIxEN7TfeZvutYrmCwcR/EJbMlsdIict6zL4tlbc
	L6520PzSN4AfHKY5+Xrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT3K-005t7C-M9; Tue, 23 Aug 2022 12:30:42 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT1v-005sDA-0D
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:29:17 +0000
Received: by mail-lf1-x134.google.com with SMTP id bq23so10412414lfb.7
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=JTnsLSaonI5tAEvvQetQjVnW02XVzbShW8n7C+I0cJk=;
        b=q4vEJ4Boe/F5SM0/HAFhd4vSXSssMo9bhqVbSCET/34Brskja1BzZ7lXJP42QERtry
         o6Xm/+1jGB/Jl+xsMEbIiSjfOjYPBHerbIBM+ZP7hInW/LSV8KAJIQzkqQDs8DWiDMLu
         FVl5RpsIZCHueO9RkqRh+EzgQdxCE4igqwzI8LXjxpzTGfbW2KCZNhEAcmg53ozbbPXa
         U4quzpXRloOGElwSNd0cHdBMoSKInzY3tPik6sELBZqKiJQdIEDtj6oTkLX8IeM0NWHI
         ODpOJGmP3EcTJ8w+zV7bS7/M01YdplaaSb7FbBC4liaHaCfdud5vqt+eucB7XIRhTAY/
         bC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=JTnsLSaonI5tAEvvQetQjVnW02XVzbShW8n7C+I0cJk=;
        b=BeD/rdh/XZHwPfQt1gGPZdL5gRwuGN/GvU04wRj63AwzzYuAT7ByKMYjZ/3Vg8dzmY
         v55pStdJSzMq4uQoVksMBXBvJq5g49hpxYVhREJtN6IvTqWHSh6jF0hx8dhfsaDM8SM5
         ZeQuRYLmboj9DTCT8d8IOpzn/JSXYJHOBDqYR+FrjhWSebWerzg/18xhd6F6DZ3cGNTT
         KE+dMmH/F+1fz6gIeJv5WBFZe76t6xpXQN7K04HQ1Z8j4IW3m4Eo8f/E4DhjBzvcAe8b
         kxOzYgaKb3ZRMbO3GaxYgCzNzpzzBdgIhxxo+8DNHW8pSpxqdmHpVp1uuWWBct8XKi18
         DImw==
X-Gm-Message-State: ACgBeo0s0xsbsNJjvETiws1Fo2IaK5jKrAcVvj/Ys/Bmc36WHPLCfAPb
	0iifUmNODi+Z7hZ2AZ53E624oASZmM+BMXm3ENc=
X-Google-Smtp-Source: AA6agR5Ffv7/GQ7YgjErRrCnjGpecRxg2+ucEwQe9iDhHx2qCWjBmu3WPCrivj2BB5gBLx4SV0TJ+mZ1r638R2ib9tw=
X-Received: by 2002:a05:6512:3ca3:b0:492:df7d:61a with SMTP id
 h35-20020a0565123ca300b00492df7d061amr4255375lfv.637.1661257743894; Tue, 23
 Aug 2022 05:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220819222520.3069-1-macroalpha82@gmail.com> <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com> <45694752.fMDQidcC6G@diego>
In-Reply-To: <45694752.fMDQidcC6G@diego>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Tue, 23 Aug 2022 14:28:27 +0200
Message-ID: <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree <devicetree@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Peter Geis <pgwipeout@gmail.com>, 
	Chris Healy <cphealy@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_052915_095994_5990DBAB 
X-CRM114-Status: GOOD (  32.73  )
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

d3QuLCAyMyBzaWUgMjAyMiBvIDE0OjE2IEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+
IG5hcGlzYcWCKGEpOgo+Cj4gQW0gU2Ftc3RhZywgMjAuIEF1Z3VzdCAyMDIyLCAxMDo0MDozNCBD
RVNUIHNjaHJpZWIgTWF5YSBNYXR1c3pjenlrOgo+ID4gc29iLiwgMjAgc2llIDIwMjIgbyAwMDoy
NiBDaHJpcyBNb3JnYW4gPG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+ID4g
Pgo+ID4gPiBGcm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+Cj4g
Wy4uLl0KPgo+ID4gPiArJmdwaW9fa2V5c19jb250cm9sIHsKPiA+ID4gKyAgICAgICBidXR0b24t
NSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEE1IEdQSU9fQUNU
SVZFX0xPVz47Cj4gPiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJEUEFELUxFRlQiOwo+ID4g
PiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fRFBBRF9SSUdIVD47Cj4gPiA+ICsg
ICAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGJ1dHRvbi02IHsKPiA+ID4gKyAgICAgICAg
ICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQTYgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gKyAg
ICAgICAgICAgICAgIGxhYmVsID0gIkRQQUQtUklHSFQiOwo+ID4gPiArICAgICAgICAgICAgICAg
bGludXgsY29kZSA9IDxCVE5fRFBBRF9MRUZUPjsKPiA+ID4gKyAgICAgICB9Owo+ID4gPiArCj4g
PiA+ICsgICAgICAgYnV0dG9uLTkgewo+ID4gPiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8Jmdw
aW8zIFJLX1BCMyBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiArICAgICAgICAgICAgICAgbGFiZWwg
PSAiVFIiOwo+ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fVFIyPjsKPiA+
ID4gKyAgICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgICAgYnV0dG9uLTEwIHsKPiA+ID4gKyAg
ICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQjQgR1BJT19BQ1RJVkVfTE9XPjsKPiA+
ID4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIlRSMiI7Cj4gPiA+ICsgICAgICAgICAgICAgICBs
aW51eCxjb2RlID0gPEJUTl9UUj47Cj4gPiA+ICsgICAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAg
ICAgIGJ1dHRvbi0xNCB7Cj4gPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktf
UEMxIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJXRVNU
IjsKPiA+ID4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX1dFU1Q+Owo+ID4gPiAr
ICAgICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBidXR0b24tMTUgewo+ID4gSSBkb24ndCB0
aGluayBqdXN0IGhhdmluZyB0aGUgYnV0dG9ucyBudW1iZXJlZCBzZXF1ZW50aWFsbHkKPiA+IGlz
IHRoZSBiZXN0IGNvdXJzZSBvZiBhY3Rpb24sIGJ1dCB0aGlzIHByZXNlcnZlcyB0aGUgR1BJTwo+
ID4gb3JkZXJpbmcgd2hpbGUgb3RoZXIgb3B0aW9ucyBkb24ndC4uLgo+ID4gSSdtIHRoaW5raW5n
IGFib3V0IGVpdGhlciBoYXZpbmcgdGhlbSBuYW1lZCBhZnRlcgo+ID4gdGhlaXIgZnVuY3Rpb24s
IG9yIG5hbWVkIGFmdGVyIHdoYXQgdGhleSdyZSBsYWJlbGVkCj4gPiBvbiB0aGUgUENCIG9mIHRo
ZSBkZXZpY2UuCj4gPiBDYW4gYW55IG9mIERUIG1haW50YWluZXJzIGdpdmUgdGhlaXIgaW5wdXQg
b24gdGhpcz8KPgo+IFBlcnNvbmFsbHksIEknZCBwcmVmZXIgZ29pbmcgd2l0aCB3aGF0IGlzIG9u
IHRoZSBQQ0IKPiBvciBkZWZpbmVkIGluIHRoZSBzY2hlbWF0aWNzLgo+Cj4gVGhpcyBtYWtlcyBp
dCB3YXkgZWFzaWVyIGZpbmRpbmcgZHQtZWxlbWVudHMgZWl0aGVyIGluCj4gc2NoZW1hdGljcyBv
ciBvbiB0aGUgYm9hcmQgaXRzZWxmLgo+Cj4gVGhpcyBpcyB0cnVlIGZvciBhbGwgbmFtZXMgOy0p
Cj4KPiBPbiB0aGUgT2Ryb2lkLUdvIGZvciBleGFtcGxlIGJ1dHRvbnMgYXJlIHJlYWxseSBuYW1l
ZAo+IHN3MSwgc3cyLCAuLi4gc28gdGhlIGR0LW5hbWUgYmVjYW1lIGJ1dHRvbi1zdzEgZXRjLgpJ
IGRpc2Fzc2VtYmxlZCBteSBkZXZpY2UgYW5kIERQQUQgYnV0dG9ucyBvbiBwY2IgaGF2ZQpzaWxr
c2NyZWVuZWQgbGFiZWxzIFUvRC9ML1IsIGZvciB1cC9kb3duL2xlZnQvcmlnaHQsClNlbGVjdCBh
bmQgc3RhcnQgYnV0dG9ucyBhcmUgbmFtZWQgU0VMRUNUIGFuZCBTVEFSVCwKYWN0aW9uIGJ1dHRv
bnMgYXJlIG5hbWVkIEEvQi9YL1kgZm9yIEVhc3QsIFNvdXRoLApOb3J0aCBhbmQgV2VzdCBidXR0
b25zLCBUaGUgIkYiIGJ1dHRvbiBvbiBmcm9udCBvZiB0aGUKZGV2aWNlIGhhcyBGIGxhYmVsLCBi
dXQgb24gUENCIGl0J3MgIlJFQ09WRVJZIi4KQW5kIFRSL1RML1RSMi9UTDIgYXJlIG5hbWVkIFIx
L0wxL1IyL0wyIG9uIHRoZWlyCnRlc3QgcG9pbnRzLCBJIHdhc24ndCBhYmxlIHRvIGZpbmQgYSBz
aWxrc2NyZWVuIGxhYmVsIGFzCnRoZXkgYXJlIG9uIHRoZWlyIG93biBQQ0JzLgoKVm9sdW1lIGJ1
dHRvbnMgYXJlIFNXMyBmb3IgVm9sdW1lIHVwIGFuZCBTVzIgZm9yClZvbHVtZSBkb3duLgoKPgo+
Cj4gWy4uLl0KPgo+ID4gPiArJnBpbmN0cmwgewo+ID4gPiArICAgICAgIGdwaW8tbGNkIHsKPiA+
ID4gKyAgICAgICAgICAgICAgIGxjZF9yc3Q6IGxjZC1yc3Qgewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICByb2NrY2hpcCxwaW5zID0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8NCBSS19QQTAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPiA+ICsg
ICAgICAgICAgICAgICB9Owo+ID4gSXMgaXQgdW51c2VkPyBJZiBpdCBpcyBJIHRoaW5rIGl0IHdv
dWxkIGJlbG9uZyB0byBwYXRjaCB0aGF0IHdvdWxkIGFkZAo+ID4gcGFuZWwgdG8gdGhpcyBkZXZp
Y2UKPgo+IEkgdGVuZCB0byBhZ3JlZSA6LSkgLgo+Cj4gPiA+ICsvIHsKPiA+ID4gKyAgICAgICBj
aG9zZW46IGNob3NlbiB7Cj4gPiA+ICsgICAgICAgICAgICAgICBzdGRvdXQtcGF0aCA9ICJzZXJp
YWwyOjE1MDAwMDBuOCI7Cj4gPiBJJ20gd29uZGVyaW5nIGlmIHRoaXMgc2hvdWxkIGJlIGNoYW5n
ZWQgdG8gMTE1MjAwIGJhdWQgcmF0ZQo+ID4gc28gaXQgd291bGQgZW5kIHVwIHRoZSBzYW1lIGFz
IG9uIG90aGVyIGRldmljZXMsCj4gPiBsaWtlIE9kcm9pZCBHbyBBZHZhbmNlLgo+Cj4gVGhhdCBo
ZWF2aWx5IGRlcGVuZHMgb24gdGhlIGJvb3Rsb2FkZXIuIEkuZS4gc3BlZWRzIHNob3VsZCBiZQo+
IGNvbnNpc3RlbnQgYmV0d2VlbiB0aGVtLgo+Cj4gQSBsb3Qgb2YgY2hlYXBlciB1c2ItdHRsIGFk
YXB0ZXJzIHRlbmQgdG8gaGF2ZSBkaWZmaWN1bHRpZXMgd2l0aCB0aGUKPiBmYXN0ZXIgc3BlZWRz
LCBzbyAxMTUyMDAgaXMgZWFzaWVyIGZvciB0aG9zZSwgYnV0IHlvdSBuZWVkIHUtYm9vdAo+IHRv
IGFsc28gdXNlIHRoaXMgc3BlZWQuClllYWggSSd2ZSBoYWQgdHJvdWJsZXMgZmluZGluZyBhbiBh
ZGFwdGVyIHRoYXQgY291bGQgZG8gdGhlIGRlZmF1bHQKMTUwMDAwMCBiYXVkIHJhdGUuCgo+Cj4K
PiBPbiB0aGUgT2Ryb2lkLUdvIEkgZGlkIGJvdGggdGhlIHUtYm9vdCBhbmQga2VybmVsIHBhcnRz
LCBzbyBjb3VsZAo+IG1ha2Ugc3VyZSB0aG9zZSBtYXRjaGVkLgpJIHRoaW5rIHdlIGNhbiBqdXN0
IHVzZSAxMTUyMDAgYmF1ZCByYXRlLCBhcyBPZHJvaWQgR28gQWR2YW5jZQphbHJlYWR5IHVzZXMg
aXQsIGFuZCBpdCdzIGxpa2VseSB0aGF0IGl0J3MgdGhlIGZpcnN0IHRoaW5nIHBlb3BsZSB3b3Vs
ZAp0cnkuCgo+Cj4KPiBbLi4uXQo+Cj4gPiA+ICsgICAgICAgYWRjX2tleXM6IGFkYy1rZXlzIHsK
PiA+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWRjLWtleXMiOwo+ID4gPiArICAg
ICAgICAgICAgICAgaW8tY2hhbm5lbHMgPSA8JnNhcmFkYyAwPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgIGlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7Cj4gPiA+ICsgICAgICAgICAgICAgICBr
ZXl1cC10aHJlc2hvbGQtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gPiArICAgICAgICAgICAg
ICAgcG9sbC1pbnRlcnZhbCA9IDw2MD47Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIC8q
Cj4gPiA+ICsgICAgICAgICAgICAgICAgKiBCdXR0b24gaXMgbWFwcGVkIHRvIEYga2V5IGluIEJT
UCBrZXJuZWwsIGJ1dAo+ID4gPiArICAgICAgICAgICAgICAgICogYWNjb3JkaW5nIHRvIGlucHV0
IGd1aWRlbGluZXMgaXQgc2hvdWxkIGJlIG1vZGUuCj4gPiA+ICsgICAgICAgICAgICAgICAgKi8K
PiA+ID4gKyAgICAgICAgICAgICAgIGJ1dHRvbi1tb2RlIHsKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgbGFiZWwgPSAiTU9ERSI7Cj4gPiBUaGUgcGh5c2ljYWwgYnV0dG9uIGlzIGxhYmVs
ZWQgIkYiLCBzbyBtYXliZSB0aGlzIHNob3VsZCBiZSAiRiIKPiA+IHRvbz8KPgo+IHNhbWUgY29t
bWVudCBhYm91dCBpZGVhbGx5IHVzaW5nIGJvYXJkL3NjaGVtYXRpY3MgbmFtZXMuCj4gQnV0IHRo
ZW4gYWdhaW4sIEkgd29uJ3QgbWFrZSBhIGZ1c3MgaWYgaXQncyBuYW1lZCBkaWZmZXJlbnRseSA6
LSkKU28gSSBndWVzcyBpdCdkIGJlICJidG4tcmVjb3ZlcnkiIGFzIGl0J3MgbGFiZWxlZCAiUkVD
T1ZFUlkiCm9uIFBDQiwgd2l0aCAiRiIgbGFiZWwgYXMgaXQncyB3aGF0J3MgdGhlIHVzZXIgc2Vl
cz8KCkJlc3QgUmVnYXJkcywKTWF5YSBNYXR1c3pjenlrCgo+Cj4KPiBIZWlrbwo+Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
