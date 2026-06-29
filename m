Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4AF7C43602
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 09:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XEHHQlo8nKU66pe1XuUkBLoulsMZbMQC9bcEloePBw=; b=P1/0f0/eKAVvYE
	gQ9xvsR5mu3nEf+zliemh0oM/W4gi5j2hQA6KG5kU1yM0VaPs//JoNJTIeDmyMsoWnsrGPZ6JRuxg
	pEaOnys9ZThkTs7tyFTnMNPFj3iR/WHoWTk1aY1uKX/FOpVerIAk2leauVYpO+5nfyJg8hMx4+lDZ
	NLbdNCaoQxxBO9+H/yURN/Ct7TxPEIDPyK6A242uhANpWI9TwNFK+xvOtApCvelaYy6+DpvfG8RMc
	j7Grk7ir9AGaFh5clm+tWNUjHpxu7N14AoYC8c06I7AsH+TjlIlSKPtUE21sC01im5Az0fw/vOT24
	sBm7KPVKsnIyyrIwqsXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8N4-0000000EAqO-0scU;
	Mon, 29 Jun 2026 09:33:42 +0000
Received: from mx1.wiredblade.com ([72.51.58.38])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8Mw-0000000EAno-3tZV
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 09:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=UCtunqk+Fmc0sd0IPCVoA3RdjciFhdw4WwHo64+lRJY=;
	b=UFTQ3ccMvgm7ROMhPjuz8TAZaUBATjPoIObLRhQG+Ozi6akqNTRcUAtPRtlOdi/CLmYkS/v5297cTOKqQ/NO0dkQuax+I4SA/lfnfY7g9cAUMCtxNSB4PARqSd4WZ7F9j401UcRC4KHCXqcu1rE2EiV70EUBEi1ps+O10wMjg5pIjQ/sCksU1ehUnIoSqlH52OfZjG94hd+eWxVhpLk8cjZW0F1S6eDQVNTCPIq0q7HFWFrvaoSvLiDdBH
	ZbszYTVqUqjZACsm1qyAEslhNt0/6/xC08MQHVQm3/6KphQMgXQ/3oc3ZdVuQdfP0OuFHmNK7unAgG1KhOsH39ksMUbQ==
ARC-Seal: i=1; a=rsa-sha256; cv=none;
	d=dynu.com; s=mail;
	b=k86g2QPTfgXWUBIAoeUItMiE8hgLQ2WQbp0ckB8346enRAflsNi9HqxNJyziDrBsCxemCdqMm4Qvfe+5AuXmC7MA9t8Mqjt1+IiD/wz9HPF9XjPQjkoC7w21obknzy64RSdRd9YPacJAK1EmUYst0hSR+X5lVk+kX4sf4nWn1cmnGhOmfDR9/tCB4V1vb/vcuYv8xQ/abRH93wJATa7XgkmgRVL12Sog+SEQkJAlOqTB6I6Mwnb7Av/qBG
	jPkid5hwWSea0Aowl1Chrd/XUa2JSWFHW1Dnm7D8aVPG1EtvN1YcxsgGhN47c0edFLeJ2+IkvMlKgePMjnV0EBTAunlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dynu.com; s=mail;
	h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=UCtunqk+Fmc0sd0IPCVoA3RdjciFhdw4WwHo64+lRJY=;
	b=EQ98xnfstNm40Ez0ScnEWb6m69RKTpveEKd5hI0GYVYJK4zCL2YspNskOb+WHn4o6bDX6t2xdr0uYO08jetHbxCDIuch2HUdAyHxFWYSS3K36pLQNZAMl7+xnobPv2EaU/JFAO1A/s6Str1OGszD1f36D0tEuLvcsWGi+mqAFtM4jIytnAXnHWs+7e94YPAobcTlqroUpYeZ8MZeuvJtn0oIqSRgaqKe9TTWxZKf76K80gtxShh48Y7LAY
	EruqXs5SZeJr1N0XewsfQYuVKMPms5T4yi3Os6llsTVWdrCWQCLlCfXRhDGIsjlTU5oG72cy52fRM2/8XP18/y5SfFjg==
ARC-Authentication-Results: i=1; mx.dynu.com;
	dkim=none;
	dmarc=fail
Received: from GRAPHRT (188-24-194-9.rdsnet.ro [188.24.194.9])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Mon, 29 Jun 2026 09:33:24 +0000
X-Original-Rcpt-To: m95d+git@psihoexpert.ro
Date: Mon, 29 Jun 2026 12:33:28 +0300
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: Erik Faye-Lund <kusmabite@gmail.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
	Marius Dinu <m95d+git@psihoexpert.ro>,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [BUG] drm/panthor: intermittent freezes in Xorg xserver
Message-ID: <akI76PpXwFP3/O1C@GRAPHRT>
References: <aj5neetgYdu0QpcK@GRAPHRT>
 <20260629094419.6bb56d99@fedora-2.home>
 <CABPQNSa0-wqQTm0CzLFojWZLVY5OqQxWTXrpO=O4p8go52808Q@mail.gmail.com>
 <CABPQNSbwC=VtjjQiDd6B9ExT4GhgJOGUu-_tTeZ8TvgqDDbqKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABPQNSbwC=VtjjQiDd6B9ExT4GhgJOGUu-_tTeZ8TvgqDDbqKQ@mail.gmail.com>
Authentication-Results: mx.dynu.com;
	dkim=none;
	dmarc=fail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023335_029887_3FE9A592 
X-CRM114-Status: GOOD (  24.34  )
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

T24gTW9uLCAyMDI2LTA2LTI5IDEwLjUxLjMyICsrMDIwMCwgRXJpayBGYXllLUx1bmQgd3JvdGU6
Cj4gU2lsbHkgbWUsIEkgZm9yZ290IHRvIGRpc2FibGUgSFRNTCBlbWFpbCwgc28gdGhpcyBvbmUg
Ym91bmNlZCBmb3IKPiBzb21lLCByZXNlbmRpbmcuIFNvcnJ5IGFib3V0IHRoZSBkdXBsaWNhdGUu
Cj4gCj4gSSB3b25kZXIgaWYgeW91J3JlIGV4cGVyaWVuY2luZyB0aGUgc2FtZSBpc3N1ZSBhcyB0
aGlzPwo+IAo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvLS93b3Jr
X2l0ZW1zLzE1MTE2Cj4gCgpJIGhhdmUgbm8gaWRlZWEuIFRoYXQgYnVnIHJlcG9ydCBpcyB3YXkg
YWJvdmUgbXkgdW5kZXJzdGFuZGluZy4gU29ycnkuCgo+IAo+ID4gT24gTW9uLCBKdW4gMjksIDIw
MjYgYXQgMTA6MjTigK9BTSBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIEZyaSwgMjYgSnVuIDIwMjYgMTQ6NTA6MTcgKzAz
MDAKPiA+PiBNYXJpdXMgRGludSA8bTk1ZCtnaXRAcHNpaG9leHBlcnQucm8+IHdyb3RlOgo+ID4+
Cj4gPj4gPiBIaS4KPiA+PiA+Cj4gPj4gPiBUaGUgc3lzdGVtIGlzIFJhZHhhIFJvY2sgNSBJVFgs
IFJLMzU4OCwgMzJHQiBSQU0sCj4gPj4gPiBtYWlubGluZSBrZXJuZWwgdjcuMS4wIHdpdGggcGFu
dGhvciBkcml2ZXIsIG1lc2EgMjYuMC43IHdpdGggcGFuZnJvc3QgZHJpdmVyLAo+ID4+ID4geG9y
Zy1zZXJ2ZXIgdjIxLjEuMjIgYWNjZWxlcmF0ZWQgYnkgbW9kZXNldHRpbmcgZHJpdmVyLCB4MTFw
ZXJmIHYxLjcuMC4KPiA+Pgo+ID4+IEFyZSB3ZSBzdXJlIHRoYXQncyBhIHBhbnRob3IgaXNzdWU/
IEFsc28sIGlzIHRoaXMgYSByZWdyZXNzaW9uCj4gPj4gaW50cm9kdWNlZCBieSB0aGUgbGF0ZXN0
IGtlcm5lbCB2ZXJzaW9uLCBvciBoYXMgaXQgYmVlbiBsaWtlIHRoYXQgZnJvbQo+ID4+IHRoZSBz
dGFydD8KPiA+Pgo+ID4+IEFsc28sIHdvdWxkIHlvdSBtaW5kIG9wZW5pbmcgYW4gaXNzdWUgb24g
WzFdPwo+ID4+Cj4gPj4gPgo+ID4+ID4gVGhlIG1vc3QgY2xlYW4gd2F5IHRvIHJlcHJvZHVjZSB0
aGlzIGJ1ZzoKPiA+PiA+IEZvcm0gYSBjb25zb2xlIG9yIHNzaCBzZXNzaW9uLCBzdGFydCBYb3Jn
IGluIGJhY2tncm91bmQsIHdpdGhvdXQgYSB3aW5kb3cKPiA+PiA+IG1hbmFnZXIsIGFuZCB0aGVu
IHJ1biB4MTFwZXJmIG9uIHRoYXQgZGlzcGxheS4KPiA+PiA+Cj4gPj4gPiBYb3JnIDowICYKPiA+
PiA+IHgxMXBlcmYgLWFsbCAtZGlzcGxheSA6MAo+ID4+ID4KPiA+PiA+IFRoZSBidWc6IHdlaXJk
IGludGVybWl0dGVudCBwZXJmb3JtYW5jZSBpc3N1ZXMgaW4gc29tZSBvZiB0aGUgdGVzdHMuCj4g
Pj4gPiBFeGFtcGxlczoKPiA+PiA+Cj4gPj4gPiAgICAgMTAwMCByZXBzIEAgIDE4LjA3OTkgbXNl
YyAoICAgIDU1LjMvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxpbmUKPiA+PiA+ICAgICAxMDAw
IHJlcHMgQCAgMTguMDc5MSBtc2VjICggICAgNTUuMy9zZWMpOiAxMHgxMCByZWN0YW5nbGUgb3V0
bGluZQo+ID4+ID4gICAgIDEwMDAgcmVwcyBAICAxOC4wNzkwIG1zZWMgKCAgICA1NS4zL3NlYyk6
IDEweDEwIHJlY3RhbmdsZSBvdXRsaW5lCj4gPj4gPiAgICAgMTAwMCByZXBzIEAgIDE4LjA3ODkg
bXNlYyAoICAgIDU1LjMvc2VjKTogMTB4MTAgcmVjdGFuZ2xlIG91dGxpbmUKPiA+PiA+ICAgICAx
MDAwIHJlcHMgQCAgIDAuMDI4NyBtc2VjICggMzQ4MDAuMC9zZWMpOiAxMHgxMCByZWN0YW5nbGUg
b3V0bGluZQo+ID4+ID4gICAgIDUwMDAgdHJlcCBAICAxNC40NjkxIG1zZWMgKCAgICA2OS4xL3Nl
Yyk6IDEweDEwIHJlY3RhbmdsZSBvdXRsaW5lCj4gPj4gPgo+ID4+ID4gIDUwMDAwMDAgcmVwcyBA
ICAgMC4wMDI5IG1zZWMgKDM0NTAwMC4wL3NlYyk6IDEtcGl4ZWwgc29saWQgY2lyY2xlCj4gPj4g
PiAgNTAwMDAwMCByZXBzIEAgICAwLjAwMDkgbXNlYyAoMTEwMDAwMC4wL3NlYyk6IDEtcGl4ZWwg
c29saWQgY2lyY2xlCj4gPj4gPiAgNTAwMDAwMCByZXBzIEAgICAwLjAwMTIgbXNlYyAoODE4MDAw
LjAvc2VjKTogMS1waXhlbCBzb2xpZCBjaXJjbGUKPiA+PiA+ICA1MDAwMDAwIHJlcHMgQCAgIDAu
MDAwMCBtc2VjICgyMDkwMDAwMC4wL3NlYyk6IDEtcGl4ZWwgc29saWQgY2lyY2xlCj4gPj4gPiAg
NTAwMDAwMCByZXBzIEAgICAwLjAwMDAgbXNlYyAoMzIzMDAwMDAuMC9zZWMpOiAxLXBpeGVsIHNv
bGlkIGNpcmNsZQo+ID4+ID4gMjUwMDAwMDAgdHJlcCBAICAgMC4wMDEwIG1zZWMgKDk3OTAwMC4w
L3NlYyk6IDEtcGl4ZWwgc29saWQgY2lyY2xlCj4gPj4gPgo+ID4+ID4gICAgIDEwMDAgcmVwcyBA
ICAzMS42NjA3IG1zZWMgKCAgICAzMS42L3NlYyk6IEZpbGwgMTB4MTAgdHJhcGV6b2lkCj4gPj4g
PiAgICAgMTAwMCByZXBzIEAgIDE2LjkwMTIgbXNlYyAoICAgIDU5LjIvc2VjKTogRmlsbCAxMHgx
MCB0cmFwZXpvaWQKPiA+PiA+ICAgICAxMDAwIHJlcHMgQCAgIDAuMDIzNCBtc2VjICggNDI3MDAu
MC9zZWMpOiBGaWxsIDEweDEwIHRyYXBlem9pZAo+ID4+ID4gICAgIDEwMDAgcmVwcyBAICAgMC4w
MjcyIG1zZWMgKCAzNjcwMC4wL3NlYyk6IEZpbGwgMTB4MTAgdHJhcGV6b2lkCj4gPj4gPiAgICAg
MTAwMCByZXBzIEAgIDMyLjEyNjggbXNlYyAoICAgIDMxLjEvc2VjKTogRmlsbCAxMHgxMCB0cmFw
ZXpvaWQKPiA+PiA+ICAgICA1MDAwIHRyZXAgQCAgMTYuMTQ3OSBtc2VjICggICAgNjEuOS9zZWMp
OiBGaWxsIDEweDEwIHRyYXBlem9pZAo+ID4+ID4KPiA+PiA+IFRoZXJlIGFyZSBubyBtZXNzYWdl
cyBpbiBrZXJuZWwgbG9nIG9yIFhvcmcgbG9nLgo+ID4+ID4KPiA+PiA+IFZpc3VhbGx5LCBtb3N0
IG9mIHRoZSB0ZXN0cyBydW5zIGZhc3QgYXMgZXhwZWN0ZWQsIGJ1dCBpbiBzb21lIG9mIHRoZSB0
ZXN0cwo+ID4+ID4gaXQgZ2V0cyAic3R1Y2siIHJhbmRvbWx5LiBUaGUgdGVzdCBzdWRkZW5seSBm
cmVlemVzIHdoaWxlIGRyYXdpbmcgdGhlIHBhdHRlcm4uCj4gPj4gPiBUaGVuLCBhZnRlciBhIHdo
aWxlIChhIGZldyBzZWNvbmRzIHVwIHRvIGEgY291cGxlIG9mIG1pbnV0ZXMpLCBpdCBnZXRzCj4g
Pj4gPiB1bnN0dWNrIGJ5IGl0c2VsZiwgZHJhd3MgYSBmZXcgbW9yZSBwYXR0ZXJucyBleHRyZW1l
bHkgZmFzdCBmb3IgbGVzcyB0aGFuIGEKPiA+PiA+IHNlY29uZCwgYW5kIHRoZW4gaXQgZ2V0cyBz
dHVjayBhZ2Fpbi4KPiA+Pgo+ID4+IEl0IHNtZWxscyBsaWtlIGEgc2lnbmFsbGluZyBpc3N1ZS4g
Q2FuIHlvdSBjaGVjayB0aGUgQ1BVIGFjdGl2aXR5IGFuZAo+ID4+IHJlcG9ydCBhbnkgb3V0c3Rh
bmRpbmcgcHJvY2Vzcz8gQ2FuIHlvdSBtYXliZSBjb25uZWN0IGEgZ2RiIHRvIHRoZQo+ID4+IHgx
MXBlcmYgdG8gc2VlIHdoZXJlIGl0J3MgYmxvY2tlZCwgYW5kIHBvc3QgdGhlIGJhY2t0cmFjZSBo
ZXJlIChvciBpbgo+ID4+IHRoZSBnaXRsYWIgaXNzdWUpPwo+ID4+Cj4gPj4gUmVnYXJkcywKPiA+
Pgo+ID4+IEJvcmlzCj4gPj4KPiA+PiBbMV1odHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
bWVzYS9tZXNhCgpNYXJpdXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
