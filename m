Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7189CA1000
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 18:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qmwJZsOTKkx/NtU/idyjWkO4jceVqJN2W3fQs77Jqw=; b=UnvR6jVt0oJpTA
	ahL57ycmmy4/1+ZeeVuWkTXwX/9kaORt5ZjpG9CRhra8qNKxQfeIdlFIi25B11IJJjEhb2/cVUIpu
	Csh1VMi/JdZu17ZfbYMD2gdbYhN7bRbrV7PZjYabcIG4ZL07D4REdyCd280UFqwuKcH28zSExnCFQ
	S0NiT2Mv891V4uCnRfy428AEFTmCBtN3+9UKxWP74nX/08BC+YGm+Dsg0KKw5cA4Zo79kdzAmkreO
	tTVzl/08/J1Tnh/TOCp2ChhuxWS9O+enHfLm+m5mXlL8SvjnhFIrXuxu/ZQT/ZPq4NsY7bZOpCIT3
	iXKRmTI9WxCcpvMa5sXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQb1-00000008K2c-0VXN;
	Sat, 30 Aug 2025 18:46:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQa8-00000008JvI-2ts1;
	Sat, 30 Aug 2025 18:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=56eixtQM6IBrEm/5Jwsst/ouQ2m/s5sQIb2TIKo+iAg=; b=fp9xgnDj2TWtvFuECWHixYHZR3
	2gft0+POSW1l9LkOv4Cq5kRn2FVCBU6kFr871g2Ee4Pr0aJiT2kBFEA6MS94OnstnO7pH8EBLSo7J
	nO/M2OvoPr5XKgpDcR22/RJRBHfPhQUQDVvNjp2zwjQHum0CAptdjd4lQ1XbBUmDEWqkKeDLFp/hm
	hn3HP1B3BrWpBoCAY8X987K5jbYNthsyXpa1BwJpEEsvlLABqtp1++ryvUXi+HXUjCFAvFK5Y6QmY
	m1rWo2ySWJaTpi5I15KGr/xNHAOKrFnor48JMsh9YGosQIPew3qr6fQc1+AHp72yv8Nxpx+OIr1fB
	xtiWcCYA==;
Received: from [88.128.88.73] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usQZz-0005MT-66; Sat, 30 Aug 2025 20:45:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v4 0/6] arm64: dts: rockchip: Add ROCK 2A/2F,
 Sige1 and NanoPi Zero2
Date: Sat, 30 Aug 2025 20:45:34 +0200
Message-ID: <7632976.8F6SAcFxjW@phil>
In-Reply-To: <6cf1cf2d-50cb-413d-93c6-79ecd6b0788e@kwiboo.se>
References: <20250717103720.2853031-1-jonas@kwiboo.se>
 <6cf1cf2d-50cb-413d-93c6-79ecd6b0788e@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_114544_729686_C2D380EC 
X-CRM114-Status: GOOD (  24.87  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9uYXMsCgpBbSBEaWVuc3RhZywgMjYuIEF1Z3VzdCAyMDI1LCAxMDozMTowNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4gSGkgSGVpa28s
Cj4gCj4gT24gNy8xNy8yMDI1IDEyOjM3IFBNLCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4gVGhp
cyBzZXJpZXMgYWRkcyBkdC1iaW5kaW5ncyBhbmQgaW5pdGlhbCBkZXZpY2UgdHJlZSBmb3IgdGhl
IGZvbGxvd2luZwo+ID4gUm9ja2NoaXAgUkszNTI4QSBib2FyZHM6Cj4gPiAtIFJhZHhhIFJPQ0sg
MkEvMkYKPiA+IC0gQXJtU29NIFNpZ2UxCj4gPiAtIEZyaWVuZGx5RWxlYyBOYW5vUGkgWmVybzIK
PiA+IAo+ID4gVGhlIGJ0L3dpZmlfcmVnX29uIHBpbnMgYXJlIGRlc2NyaWJlZCBpbiB0aGUgZGV2
aWNlIHRyZWUgdXNpbmcKPiA+IHJma2lsbC1ncGlvIG5vZGVzLgo+ID4gCj4gPiBDaGFuZ2VzIGlu
IHY0Ogo+ID4gLSBSZW1vdmUgZGlzYWJsZS13cCBwcm9wIGZyb20gc2RpbzAKPiA+IC0gQ29sbGVj
dCByLWIgYW5kIHQtYiB0YWdzCj4gPiAKPiA+IENoYW5nZXMgaW4gdjM6Cj4gPiAtIFJlbmFtZSBs
ZWQgbm9kZXMgdG8gbGVkLTAvbGVkLTEKPiA+IC0gUmVtb3ZlIHBpbmN0cmwqIHByb3BzIGZyb20g
c2RpbzAKPiA+IC0gQ29sbGVjdCBhLWIgdGFncwo+ID4gCj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4g
LSBMaW1pdCBzZG1tYyBtYXgtZnJlcXVlbmN5IHRvIDEwMCBNSHogb24gUk9DSyAyQS8yRgo+ID4g
LSBEcm9wIGNsb2NrLW91dHB1dC1uYW1lcyBwcm9wIGZyb20gcnRjIG5vZGUgb24gU2lnZTEgYW5k
IE5hbm9QaSBaZXJvMgo+ID4gLSBEcm9wIHJlZ3VsYXRvci1ib290LW9uIGZyb20gdXNiIDIuMCBo
b3N0IHJlZ3VsYXRvcnMgb24gU2lnZTEKPiA+IC0gQWRkIGJsdWV0b290aCBhbmQgd2lmaSBub2Rl
cyBvbiBTaWdlMQo+ID4gLSBDb2xsZWN0IHQtYiB0YWcgZm9yIE5hbm9QaSBaZXJvMgo+ID4gCj4g
PiBUaGVzZSBib2FyZHMgY2FuIGJlIGJvb3RlZCBmcm9tIGVtbWMgb3Igc2QtY2FyZCB1c2luZyB0
aGUgVS1Cb290IDIwMjUuMDcKPiA+IGdlbmVyaWMtcmszNTI4IHRhcmdldCBvciB3b3JrLWluLXBy
b2dyZXNzIHBhdGNoZXMgZm9yIHRoZXNlIGJvYXJkcyBbMV0uCj4gPiAKPiA+IEZvciB3b3JraW5n
IGJsdWV0b290aCBvbiBBcm1Tb00gU2lnZTEgdGhlIHBhdGNoICJhcm02NDogZHRzOiByb2NrY2hp
cDoKPiA+IEZpeCBVQVJUIERNQSBzdXBwb3J0IGZvciBSSzM1MjgiIFsyXSBpcyByZXF1aXJlZC4K
PiA+IAo+ID4gWzFdIGh0dHBzOi8vc291cmNlLmRlbnguZGUvdS1ib290L2NvbnRyaWJ1dG9ycy9r
d2lib28vdS1ib290Ly0vY29tbWl0cy9yazM1MjgKPiA+IFsyXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUwNzA5MjEwODMxLjMxNzA0NTgtMS1qb25hc0Brd2lib28uc2UKPiA+IAo+ID4g
Sm9uYXMgS2FybG1hbiAoNik6Cj4gPiAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQg
UmFkeGEgUk9DSyAyQS8yRgo+ID4gICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIFJP
Q0sgMkEvMkYKPiA+ICAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBBcm1Tb00gU2ln
ZTEKPiA+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBBcm1Tb00gU2lnZTEKPiA+ICAgZHQt
YmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBGcmllbmRseUVsZWMgTmFub1BpIFplcm8yCj4g
PiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgRnJpZW5kbHlFbGVjIE5hbm9QaSBaZXJvMgo+
ID4gCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgIHwg
IDE3ICsKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAg
fCAgIDQgKwo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtYXJtc29tLXNpZ2UxLmR0
cyB8IDQ2NCArKysrKysrKysrKysrKysrKysKPiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTI4LW5hbm9waS16ZXJvMi5kdHMgfCAzNDAgKysrKysrKysrKysrKwo+ID4gIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1Mjgtcm9jay0yLmR0c2kgICAgICB8IDI5MyArKysrKysrKysrKwo+ID4g
IC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1Mjgtcm9jay0yYS5kdHMgICAgICB8ICA4MiArKysr
Cj4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1yb2NrLTJmLmR0cyAgICAgIHwgIDEw
ICsKPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDEyMTAgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1hcm1zb20tc2ln
ZTEuZHRzCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LW5hbm9waS16ZXJvMi5kdHMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Mjgtcm9jay0yLmR0c2kKPiA+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Mjgtcm9jay0yYS5kdHMK
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
Mjgtcm9jay0yZi5kdHMKPiAKPiBBbnkgdGhvdWdodHMgb24gdGhpcyBzZXJpZXM/IFJlYmFzZWQg
cGF0Y2hlcyBmb3IgYSBwb3NzaWJsZSByZS1zZW5kIHY1Cj4gY29udGFpbmVkIG5vIGNoYW5nZXMg
Y29tcGFyZWQgdG8gdGhpcyB2NC4KPiAKPiBJIHdvdWxkIGxpa2UgdG8gc2VuZCBhIHYyIG9uIHRo
ZSBmb2xsb3cgdXAgInJvY2tjaGlwOiBBZGQgVVNCIDIuMAo+IHN1cHBvcnQgZm9yIFJLMzUyOCIg
WzNdIHNlcmllcyBhbmQgd2FzIHVuc3VyZSBhYm91dCB0aGUgc3RhdGUgb2YgdGhpcwo+IHNlcmll
cyBiZWZvcmUgc2VuZGluZyB0aGF0Lgo+IAo+IFszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjUwNzIzMTIyMzIzLjIzNDQ5MTYtMS1qb25hc0Brd2lib28uc2UKCml0IHdhcyBwcmV0dHkg
ZmFyIGRvd24gaW4gbXkgaW5ib3gsIHNvIEkgaGFkbid0IGdvdHRlbiB0byBpdCB5ZXQsCnBpY2tl
ZCB1cCBub3cgYW5kIHRoZSBwYXRjaGVzIGluZGVlZCBsb29rIGdvb2QgYXMgdGhleSBhcmUuCgpU
aGFua3MgZm9yIHRoZSBwaW5nIHRob3VnaC4KSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
