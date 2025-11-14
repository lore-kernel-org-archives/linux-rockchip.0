Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0576BCDE019
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 07:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CeGUEkmnhT1zXOoQNkA9RMKM5bqNcuDgSKmd0htbcg=; b=hWstDG9Et6NFKd
	BJBrKeglelWffO/TG27NeiNk8lUEvzVvIX3MtKKslMQyiadY+ZgYrYrDmi/DVZU2FGeACqWNEN8wB
	XpPTZrHGM7InmuAZMFukYuDi9SAvtACwAYbOp2WgeRfnmALOFlB5uPCEARcwHpy7xTvj5nczcg2Ar
	Dkcx+jbFKsA14zt7MduyeeSVHjq9/xcs6d/+eYakAxAQCOSJf+jcr1ebmfDhaBHoJxFV3upOmevmM
	55h4M4Mw51TG5bI3Nt7lw8xr5tDPv/Tw13BcoxRzFZGgPaljtcUaQyHqgzyfc7C89PsJ0s3eazSJR
	GfNaH01OkbhFzw4SDQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJoCD-0000000Bkjn-16Qj;
	Fri, 14 Nov 2025 07:26:13 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJoCB-0000000BkjM-10h1
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 07:26:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 822C840534;
	Fri, 14 Nov 2025 08:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763105168; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=6hUGEM/BGb1W5SEEZAqcVzyTcpSh+/gGCSh+3OizHHw=;
	b=oxKEkRmbYMK/culjSVeZyEaYAIX4VO1Q5XfPtXCFSiALfJY3WGx3o4Svic9nm677tY3mfb
	oxnGa13IH4kQs/Z4uRx1Vp7D4fFp7eyILAFj08eOgsvoAYJwXhCGm8dfYwj7+wGmyPG6rU
	4tKY+/Xi96ne7D1DL58DOkcdK7ccLY6LmNK1/YBiUOKcYn/XKSDwDXXRVqxxI2WzukIcvH
	ruwy+I9NP9R1fx2BJxMIhaKRcIhroBYVkUXBQCN3mU9Qair5GPIALET3w7IFlcJLsGzQsz
	VltD+g2e/Y3pAbVQ0jJqxPO78A03QOekkL+D+NSJ/0e0n8tsH05IN9CZssFllw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
 <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org> <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
Date: Fri, 14 Nov 2025 08:26:06 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
MIME-Version: 1.0
Message-ID: <cab16f94-4115-a606-60b4-043b6681f7ab@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: bd44e0e79674152f86abc0aaf140d7a50ebd8472304c0986b02bf3eeef56bd689e2ef9db932cb012e0982798bdf8c2ff97fd9fdcd5369774d7fa6ead57a185aa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_232611_591756_B818707E 
X-CRM114-Status: GOOD (  30.39  )
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

T24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAwODoyMiBDRVQsIEtyenlzenRvZiBLb3psb3dz
a2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTQvMTEvMjAyNSAwODoxNywgRHJhZ2Fu
IFNpbWljIHdyb3RlOgo+ID4gT24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAwODoxMCBDRVQs
IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4gT24gMTQv
MTEvMjAyNSAwNjowMywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiA+Pj4gT24gMTEvMTIvMjUgMDk6
NDYsIERyYWdhbiBTaW1pYyB3cm90ZToKPiA+Pj4+IE9uIFdlZG5lc2RheSwgTm92ZW1iZXIgMTIs
IDIwMjUgMDA6MjYgQ0VULCBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+
ID4+Pj4+IE9uIDExLzExLzI1IDIzOjMzLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPj4+Pj4+IE9u
IFR1ZXNkYXksIE5vdmVtYmVyIDExLCAyMDI1IDEyOjUyIENFVCwgRlVLQVVNSSBOYW9raSA8bmFv
a2lAcmFkeGEuY29tPiB3cm90ZToKPiA+Pj4+Pj4+IE9uIDExLzYvMjUgMDI6NDgsIEpvc2VwaCBL
b2d1dCB3cm90ZToKPiA+Pj4+Pj4+PiBPbiBXZWQsIE5vdiA1LCAyMDI1IGF0IDQ6MTXigK9BTSBG
VUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4+PiBJJ2QgbGlr
ZSB0byBjbGFyaWZ5IHRoZSBzaXR1YXRpb24gcmVnYXJkaW5nIHRoZSB2NiBwYXRjaCBzZXJpZXMg
SSBzdWJtaXR0ZWQuCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IFRoZSBvcmlnaW5hbCBkZXZpY2Ug
dHJlZSB3b3JrIGZvciB0aGUgUmFkeGEgQ001IGFuZCBJTyBCb2FyZCB3YXMKPiA+Pj4+Pj4+Pj4g
YXV0aG9yZWQgYnkgSm9zZXBoIEtvZ3V0LiBJIHRvb2sgb3ZlciB0aGUgcmVzcG9uc2liaWxpdHkg
b2YgZ2V0dGluZyBpdAo+ID4+Pj4+Pj4+PiB1cHN0cmVhbWVkIHdpdGggaGlzIGFncmVlbWVudC4K
PiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEknbGwgY29uZmlybSB0aGlzLiBJJ3ZlIGJlZW4gaW4gY29t
bXVuaWNhdGlvbiB3aXRoIE5hb2tpLiBUaGV5IG1hZGUgYQo+ID4+Pj4+Pj4+IGxhcmdlIG51bWJl
ciBvZiByZXZpc2lvbnMgdG8gbXkgb3JpZ2luYWwgcGF0Y2ggc2VyaWVzLCB3aGljaCBJIHRoaW5r
Cj4gPj4+Pj4+Pj4gaGF2ZSB0ZWNobmljYWwgbWVyaXQuIEkgc3VnZ2VzdGVkIHRoZXkgc3VibWl0
IHRoZSBwYXRjaGVzIHRoZW1zZWx2ZXMsCj4gPj4+Pj4+Pj4gYW5kIGdhdmUgdGhlbSBleHBsaWNp
dCBwZXJtaXNzaW9uIHRvIGFkZCBteSBTaWduZWQtb2ZmLWJ5IGFuZCBDQyBtZS4KPiA+Pj4+Pj4+
Pgo+ID4+Pj4+Pj4+IEkgYXNzdW1lIHRoaXMgd2FzIHRoZSBjb3JyZWN0IHdheSBmb3IgdGhlbSB0
byBjb250aW51ZSB0aGUgd29yayBJCj4gPj4+Pj4+Pj4gc3RhcnRlZCwgYnV0IGlmIG5vdCwgcGxl
YXNlIGxldCB1cyBrbm93IHRoZSBiZXN0IHdheSB0byBwcm9jZWVkLgo+ID4+Pj4+Pj4KPiA+Pj4+
Pj4+IENhbiBhbnlvbmUgaGVscCB1cz8KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSSdtIG5vdCBleGFjdGx5
IHN1cmUgaG93IHRvIHJlc29sdmUgdGhlIGN1cnJlbnQgc2l0dWF0aW9uLCBidXQgZm9yCj4gPj4+
Pj4+IFNpZ25lZC1vZmYtYnkgdGFncyB0byBiZSBwcmVzZW50LCBpbiB0aGlzIGNhc2UgeW91J2Qg
bmVlZCB0byBoYXZlCj4gPj4+Pj4+IENvLWRldmVsb3BlZC1ieSB0YWdzIGFzIHdlbGwsIGJlY2F1
c2UgdGhlIGZpbmFsIHBhdGNoIHZlcnNpb25zLAo+ID4+Pj4+PiB3aGljaCB3b3VsZCBiZSBzdWJt
aXR0ZWQgYnkgTmFva2ksIHdvdWxkIGRpZmZlciBzaWduaWZpY2FudGx5IGZyb20KPiA+Pj4+Pj4g
dGhlIHZlcnNpb25zIHRoYXQgSm9zZXBoIGFjdGl2ZWx5IHdvcmtlZCBvbiwgaWYgSSB1bmRlcnN0
b29kCj4gPj4+Pj4+IGV2ZXJ5dGhpbmcgY29ycmVjdGx5LiAgVGhvdWdoLCBmb3IgSm9zZXBoJ3Mg
U2lnbmVkLW9mZi1ieSB0YWdzIHRvCj4gPj4+Pj4+IGJlIGluY2x1ZGVkIHRoZXJlLCBoZSB3b3Vs
ZCBhbHNvIG5lZWQgdG8gcGFydGljaXBhdGUgYWN0aXZlbHkgaW4KPiA+Pj4+Pj4gdGhlIGRldmVs
b3BtZW50IG9mIHRoZSBmaW5hbCBwYXRjaCB2ZXJzaW9ucy4KPiA+Pj4+Pgo+ID4+Pj4+IGh0dHBz
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRj
aGVzLmh0bWwjd2hlbi10by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVsb3BlZC1ieQo+ID4+
Pj4+Cj4gPj4+Pj4gSWYKPiA+Pj4+PiAtLS0tCj4gPj4+Pj4gRnJvbTogSm9zZXBoIEtvZ3V0IDxq
b3NlcGgua29ndXRAZ21haWwuY29tPgo+ID4+Pj4+Cj4gPj4+Pj4gPGNoYW5nZWxvZz4KPiA+Pj4+
Pgo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtvZ3V0QGdtYWls
LmNvbT4KPiA+Pj4+PiBDby1kZXZlbG9wZWQtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhh
LmNvbT4KPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5j
b20+Cj4gPj4+Pj4gLS0tLQo+ID4+Pj4+IHRoZW4gSSBjYW4gc3VibWl0IG15IHBhdGNoIHNlcmll
cz8KPiA+Pj4+Cj4gPj4+PiBBY3R1YWxseSwgdGhlIENvLWRldmVsb3BlZC1ieSB0YWdzIHdvdWxk
IGJlIHBvaW50aW5nIHRvIEpvc2VwaAo+ID4+Pj4gaW4gdGhhdCBjYXNlLCBidXQgYXMgSSBkZXNj
cmliZWQgaXQgYWJvdmUsIHRoaXMgYXBwcm9hY2ggYmFzaWNhbGx5Cj4gPj4+PiBjYW5ub3QgYmUg
dXNlZCwgYmVjYXVzZSBKb3NlcGgncyBvcmlnaW5hbCB3b3JrIGRpZmZlcnMgYSBsb3QgZnJvbQo+
ID4+Pj4gd2hhdCB5b3UnZCBhY3R1YWxseSBzdWJtaXQgdG8gdGhlIG1haWxpbmcgbGlzdChzKS4K
PiA+Pj4+Cj4gPj4+Pj4gT3IsCj4gPj4+Pj4KPiA+Pj4+Pj4gQW5vdGhlciBvcHRpb24sIHRlY2hu
aWNhbGx5IGEgYml0IHNpbXBsZXIsIHdvdWxkIGJlIHRvIGluY2x1ZGUganVzdAo+ID4+Pj4+PiBP
cmlnaW5hbGx5LWJ5IHRhZ3MgZm9yIEpvc2VwaCwgd2hpY2ggd291bGQgaW5kaWNhdGUgdGhhdCBK
b3NlcGggZ2F2ZQo+ID4+Pj4+PiB1cCBvbiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIHBhdGNoZXMg
YW5kIGhhbmRlZCB0aGVtIG92ZXIgdG8gTmFva2kKPiA+Pj4+Pj4gZm9yIGZ1dHVyZSBkZXZlbG9w
bWVudCBhbmQgc3VibWlzc2lvbiB0byB0aGUgbWFpbGluZyBsaXN0cy4gVGhvdWdoLAo+ID4+Pj4+
PiB0aGF0IHdvdWxkIHJlcXVpcmUgSm9zZXBoIHRvIHB1YmxpY2x5IHN0YXRlIGV4YWN0bHkgdGhh
dC4KPiA+Pj4+Pgo+ID4+Pj4+IEkgY2Fubm90IGZpbmQgYW55IGRvY3VtZW50YXRpb24gYWJvdXQg
Ik9yaWdpbmFsbHktYnkiLgo+ID4+Pj4+IElzIHRoaXMgY29ycmVjdD8KPiA+Pj4+PiAtLS0tCj4g
Pj4+Pj4gPGNoYW5nZWxvZz4KPiA+Pj4+Pgo+ID4+Pj4+IE9yaWdpbmFsbHktYnk6IEpvc2VwaCBL
b2d1dCA8am9zZXBoLmtvZ3V0QGdtYWlsLmNvbT4KPiA+Pgo+ID4+IFRoZXJlIGlzIG5vIHN1Y2gg
dGFnLiBEb24ndCBpbnZlbnQgdGFncy4KPiA+IAo+ID4gVHJ1ZSwgaXQgZG9lc24ndCBleGlzdCBv
ZmZpY2lhbGx5LCBidXQgaXQncyBiZWVuIHVzZWQgZmFpcmx5IG9mdGVuLgo+ID4gCj4gPj4+Pj4g
U2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+ID4+Pj4+IC0t
LS0KPiA+Pj4+Cj4gPj4+PiBUaGF0IGFwcHJvYWNoIGlzIHRoZSBvbmx5IEkgc2VlIGFwcGxpY2Fi
bGUgaW4gdGhpcyBjYXNlLiAgSG93ZXZlciwKPiA+Pj4+IGxldCdzIGhlYXIgb3BpbmlvbnMgZnJv
bSBvdGhlciBwZW9wbGUgYXMgd2VsbC4KPiA+Pj4KPiA+Pj4gSSBzZWUuIEkgd2FudCB0byBkbyB0
aGlzIGFwcHJvYWNoLgo+ID4+Pgo+ID4+PiBKb3NlcGgsIGNvdWxkIHlvdSBnaXZlIG1lIGEgc3Rh
dGVtZW50IHRvIGRvIHRoaXM/Cj4gPj4KPiA+PiBVc2Ugc3RhbmRhcmQgYXV0aG9yc2hpcCBhbmQg
c3RhbmRhcmQgdGFncywgc29tZSBvZiB3aGljaCBhcmUgZXhwbGFpbmVkCj4gPj4gaW4gU3VibWl0
dGluZyBwYXRjaGVzLgo+ID4gCj4gPiBGcmFua2x5LCB5b3VyIHN1Z2dlc3Rpb24gaXMgdXNlbGVz
cywgYmVjYXVzZSBpdCBkb2Vzbid0IGV4cGxhaW4gd2hhdCAKPiA+IHRvIGRvIGluIHRoaXMgcGFy
dGljdWxhciBjYXNlLgo+IAo+IE1heWJlIGJlY2F1c2UgeW91IGRpZCBub3QgcmVhZCB0aGUgZG9j
Li4uCgpJIHRoaW5rIHlvdSBhbHJlYWR5IGtub3cgdGhlIGFuc3dlcjogSSByZWFkIGl0IG11bHRp
cGxlIHRpbWVzIGFuZCAKdXNlZCBpdCBhcyBhIHJlZmVyZW5jZSBtb3JlIHRoYW4gb25jZS4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
