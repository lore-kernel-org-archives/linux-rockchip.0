Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7972BC282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 11:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttp67Jiw8F+1URu415/zgMkotwiwS75PD13CtHECH6Q=; b=1aAzsQYpNl3zmn
	NruzNgEJAH3y5SrMtBVeeDeHNGhlhx0+BzppmR/ny6gc9Hz81EfGM74YyU95+2hIBn+BUV3jSw6B8
	4ivfYOT8t7UTnpj3Qhx6IudRNRS1o+8YZTtZuKdvJeG3+R01NRqbgXeo+L+Ka8IBsoGxkVBDhDVIe
	qpZUr11nZq3rFhE4i4+WZOA7wFSznXphBu4vMLyyTjYbt0Nz1fG+2rKDnEBI1wN9YqXCQUXlhUSNY
	AZwuBvpnVkcz7mCy/lXwdlXRDVoSrYRqysaViineUchdUB/hfYrSdD8Q4DaffzSORFqPj86dPaU5d
	AMdnofTuDynCo/BG5Flg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toh6T-0000000FsIV-02yx;
	Sun, 02 Mar 2025 11:03:25 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toh4u-0000000Fs6R-2UKi
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Mar 2025 11:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1740913307;
 bh=5yKjuNQgVLhguVs5lWSzRacCXnEfMSyFuE69y4uYr1E=;
 b=fssaKA9BHMOOSb4m2vPdzk18EtO34sPsGhNBPIcfHH1geOqhB5sULg4xEfz18efss+f0QZpKY
 OdZBNXN5eomPzzoGGHBSmxW5SeDU2wOoBpJZrP6PRRDpKinax1pgB9qf2urdnf+0E7p3Ed2zXjA
 6mYZkLZ4+L4rQUAwG/jxy/Q38qnIWpczxI6JlF925vMYDxD6Vh2b6fbnIeOF4jeQN+C3eRJ4vyU
 rT+65ei2ARKG7ycGWqmtMmEkwIAXoDtVUmH5xpFq3Vmq75fb/6+srlhGDJ8JgdF6XKNMeOS39jW
 obz8aY1cVDPUG/e9lZTO0T9pCJ5QokY4cNoJGLW6wxuw==
X-Forward-Email-ID: 67c43a8f4a29b97c03d4da98
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3cb87f70-1838-4492-b78e-0cd98457cb83@kwiboo.se>
Date: Sun, 2 Mar 2025 12:01:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: rockchip: Add SDMMC/SDIO controllers for
 RK3528
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104749.36423-1-ziyao@disroot.org>
 <9fd51bcb-3e6a-46b6-b1f7-ff16fa562d9e@kwiboo.se> <3574922.QJadu78ljV@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <3574922.QJadu78ljV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_030149_028554_0F234B23 
X-CRM114-Status: GOOD (  17.40  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI1LTAzLTAxIDEzOjU1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
ZXkgSm9hcywKPiAKPiBBbSBTYW1zdGFnLCAxLiBNw6RyeiAyMDI1LCAxMzo0Nzo0NyBNRVogc2No
cmllYiBKb25hcyBLYXJsbWFuOgo+PiBPbiAyMDI1LTAzLTAxIDExOjQ3LCBZYW8gWmkgd3JvdGU6
Cj4+PiBSSzM1MjggZmVhdHVyZXMgdHdvIFNESU8gY29udHJvbGxlcnMgYW5kIG9uZSBTRC9NTUMg
Y29udHJvbGxlciwgZGVzY3JpYmUKPj4+IHRoZW0gaW4gZGV2aWNldHJlZS4gU2luY2UgdGhlaXIg
c2FtcGxlIGFuZCBkcml2ZSBjbG9ja3MgYXJlIGxvY2F0ZWQgaW4KPj4+IHRoZSBWTyBhbmQgVlBV
IEdSRnMsIGNvcnJlc3BvbmRpbmcgc3lzY29ucyBhcmUgYWRkZWQgdG8gbWFrZSB0aGVzZQo+Pj4g
Y2xvY2tzIGF2YWlsYWJsZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBZYW8gWmkgPHppeWFvQGRp
c3Jvb3Qub3JnPgo+Pj4gLS0tCj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
MjguZHRzaSB8IDYyICsrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2MiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzUyOC5kdHNpCj4+PiBpbmRleCA1YjMzNDY5MDM1NmEuLjA3OGM5N2ZhMWQ5ZiAxMDA2NDQKPj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPj4+IEBAIC03LDYgKzcs
NyBAQAo+Pj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+Cj4+PiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2ly
cS5oPgo+Pj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1MjgtY3J1
Lmg+Cj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzUyOC1jcnUu
aD4KPj4+ICAKPj4+ICAvIHsKPj4+ICAJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1MjgiOwo+
Pj4gQEAgLTEyMiw2ICsxMjMsMTYgQEAgZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZWQwMTAw
MCB7Cj4+PiAgCQkJI2ludGVycnVwdC1jZWxscyA9IDwzPjsKPj4+ICAJCX07Cj4+PiAgCj4+PiAr
CQl2cHVfZ3JmOiBzeXNjb25AZmYzNDAwMDAgewo+Pj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTI4LXZwdS1ncmYiLCAic3lzY29uIjsKPj4KPj4gdnB1X2dyZiBpcyBhbHNvIHVzZWQg
Zm9yIGdtYWMxLCBzbyBzaG91bGQgcG9zc2libGUgYmUgYSAic3lzY29uIiwKPj4gInNpbXBsZS1t
ZmQiLCBvciBoYXZlIEkgbWlzdW5kZXJzdG9vZCB3aGVuIHRvIHVzZSBzaW1wbGUtbWZkID8KPiAK
PiBzaW1wbGUtbWZkIGlzIG5lZWRlZCB3aGVuIHRoZSBhZGRpdGlvbmFsIGRldmljZSBpcyBjb21w
bGV0ZWx5IGNvbnRhaW5lZAo+IGluc2lkZSB0aGUgcGFydGljdWxhciBzeXNjb24uCj4gCj4gRm9y
IGV4YW1wbGUsIHRoZSB1c2IycGh5MCBvbiByazM1ODggaXMgY29tcGxldGVseSBsaXZpbmcgaW5z
aWRlIHRoZQo+IHVzYjJwaHkwLWdyZi4KPiAKPiBTaW1pbGFybHkgdGhlIHBvd2VyLWRvbWFpbnMg
YXJlIGxpdmluZyBpbnNpZGUgdGhlIHJrMzU4OCBwbXVncmYuCj4gQnV0IHRoZSBwbXVncmYgYWxz
byBjb250YWlucyBtb3JlIHN0dWZmLCBzbyB0aGUgcG93ZXItZG9tYWlucyBhcmUgYQo+IHN1YnNl
dCBvZiB0aGUgcG11Z3JmLgo+IAo+IEJvdGggb2YgdGhlc2UgYWJvdmUgYXJlIGEgY2FzZSBmb3Ig
YSBzaW1wbGUtbWZkLgo+IAo+IAo+IFNpbWlsYXJseSwgZ21hYzEgb24gcmszNTg4IGlzIGV0aGVy
bmV0QGZlMWMwMDAwICwgc28gYSBjb21wbGV0ZWx5IHNlcGFyYXRlCj4gaW8tbWVtb3J5IGFyZWEs
IGJ1dCByZWZlcmVuY2VzIGJvdGggdGhlIHN5c2dyZiBhcyB3ZWxsIGFzIHRoZSBwaHAtZ3JmCj4g
YXMgc3lzY29ucyBmb3IgYWRkaXRpb25hbCBzZXR0aW5ncy4KPiAKPiBTbyBoZXJlIHRoZSBzeXNj
b24gZG9lcyBub3QgbmVlZCB0byBiZSBhIHNpbXBsZS1tZmQuCj4gCj4gCj4gSG9wZSB0aGF0IGhl
bHBzIGEgYml0CgpUaGFua3MgZm9yIHRoaXMgZXhwbGFuYXRpb24sIGl0IGhlbHBlZCBtZSBiZXR0
ZXIgdW5kZXJzdGFuZCB0aGUgbWVhbmluZwpvZiBzaW1wbGUtbWZkIDotKQoKUmVnYXJkcywKSm9u
YXMKCj4gSGVpa28KPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
