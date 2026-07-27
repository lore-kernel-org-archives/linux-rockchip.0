Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A854C531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 07:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbmCQlX+8j0a3CjsJDtm493gX3nfEv01JcsgpN2WBDg=; b=HgXJXY0fsTyNEK
	gw8RcZl3rYcN1mOhfJj5XU+4mwC4ggKW1SIwYwBwsykjIDBx0wjgYDFnyhpYDcugAWKnAwMRTFU29
	sfl0Y3ihCqJ5N7tQjEpAIKOwnfBfIqZNKjQxB8MRX9MsKHDI92Bcjoa7RQ4VXYrEl3zXODpT8f/Mc
	8ZArfgbvcv9Vj8cHZDJLNBOhkjpgn/8Vijh5LRoaLN2Yea09k9VkRz+GluYmZXLIHLplvuW1QJIrX
	t0r1ZNkKcbZX6rO03XXNwhpTywHT4UutBnL07CbJZ5TfhCPXVT3B+jzQh2f90kQKW6o0FenVHRU66
	CS50Ykz+J7+fVCJNIzmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFeY-000000026vN-0pc5;
	Mon, 27 Jul 2026 07:21:34 +0000
Received: from mail-m8214.xmail.ntesmail.com ([156.224.82.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFeQ-000000026t5-4B9Q;
	Mon, 27 Jul 2026 07:21:33 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 47ae5678e;
	Mon, 27 Jul 2026 15:21:21 +0800 (GMT+08:00)
Message-ID: <a5195a74-9008-405f-9b1e-f88fb47baf03@rock-chips.com>
Date: Mon, 27 Jul 2026 15:21:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 0/3] net: stmmac: dwmac-rk: add RK3576 GMAC 25M
 refout support
To: Alexey Charkov <alchark@gmail.com>, Gavin Gao <attinagaoxu@gmail.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, richardcochran@gmail.com,
 nicolas.frattaroli@collabora.com, sebastian.reichel@collabora.com,
 sashal@kernel.org, amadeus@jmu.edu.cn, rmk+kernel@armlinux.org.uk,
 horms@kernel.org, alok.a.tiwari@oracle.com, david.wu@rock-chips.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
 <CABjd4YyohxfbVufd1pwJGsm8a8f3Cm6rJiz=WLz=jBjAQRLj4A@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YyohxfbVufd1pwJGsm8a8f3Cm6rJiz=WLz=jBjAQRLj4A@mail.gmail.com>
X-HM-Tid: 0a9fa2731e6203a7kunmfdf57ff72381e0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTEhDVh1IGE5DQ05NHxlCS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kJ++DX5LfiTvcRVhr4D+AmKgnMGCBNhy0VnFX+PIv7PRdJG/AT9qBPR7r4YRP0N/HKJZuG5tvUzxpMLo/JVPrnx1TKhAjdLtgx+LOt/qwMl3y4fN8JUBoVOS5KEGUfuFPlbVHM9ZmGUcouPcrzreA9whPGrorBFQRAitdq3iIzc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=raXLI4dRVY7FP9fHctbKE/LhEhyIFpZz+uaQSUe++L8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_002130_056311_10582F7B 
X-CRM114-Status: GOOD (  19.60  )
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

T24gNy8yNy8yMDI2IDM6MTQgUE0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+IEhpIEdhdmluLAo+
IAo+IE9uIE1vbiwgSnVsIDI3LCAyMDI2IGF0IDY6MTDigK9BTSBHYXZpbiBHYW8gPGF0dGluYWdh
b3h1QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBTb21lIFJvY2tjaGlwIEdNQUMg
aW5zdGFuY2VzIGNhbiBwcm92aWRlIGEgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBvdXRwdXQKPj4g
Zm9yIGFuIGV4dGVybmFsIFJHTUlJIFBIWS4gQm9hcmRzIGFscmVhZHkgZGVzY3JpYmUgdGhlIE1B
QyBjbG9jayBkaXJlY3Rpb24KPj4gd2l0aCBjbG9ja19pbl9vdXQgPSAib3V0cHV0IiwgYnV0IHRo
ZSBkd21hYy1yayBkcml2ZXIgZG9lcyBub3QgY3VycmVudGx5Cj4+IHJlcXVlc3Qgb3IgZW5hYmxl
IHRoZSBjb3JyZXNwb25kaW5nIDI1IE1IeiByZWZlcmVuY2Ugb3V0cHV0IGNsb2NrLgo+Pgo+PiBP
biBSSzM1NzYsIHRoaXMgbWVhbnMgdGhlIFJFRkNMS08yNU1fR01BQ3hfT1VUIGNsb2NrIG1heSBi
ZSBkaXNhYmxlZCBieQo+PiB0aGUgY29tbW9uIGNsb2NrIGZyYW1ld29yayBhcyB1bnVzZWQsIGV2
ZW4gdGhvdWdoIHRoZSBib2FyZCBleHBlY3RzIHRoZQo+PiBHTUFDIGJsb2NrIHRvIHByb3ZpZGUg
dGhlIFBIWSByZWZlcmVuY2UgY2xvY2suCj4+Cj4+IFRoaXMgc2VyaWVzIGFkZHMgYW4gb3B0aW9u
YWwgImNsa19tYWNfMjVtX3JlZm91dCIgY2xvY2sgbmFtZSB0byB0aGUKPj4gUm9ja2NoaXAgRFdN
QUMgYmluZGluZywgd2lyZXMgaXQgdXAgZm9yIFJLMzU3NiBHTUFDMC9HTUFDMSwgYW5kIGVuYWJs
ZXMKPj4gaXQgZnJvbSB0aGUgZHdtYWMtcmsgZHJpdmVyIHdoZW4gdGhlIE1BQyBpcyBjb25maWd1
cmVkIGZvciBSR01JSSBvdXRwdXQKPj4gY2xvY2sgbW9kZS4KPj4KPj4gVGhlIGNsb2NrIHJlbWFp
bnMgb3B0aW9uYWwsIHNvIGV4aXN0aW5nIGRldmljZSB0cmVlcyBhbmQgU29DcyBhcmUgbm90Cj4+
IGFmZmVjdGVkLgo+Pgo+PiBUZXN0ZWQgb24gYSBQaWNvQ09NIFJLMzU3NiBBQ1AgYm9hcmQgd2l0
aCBhIE1vdG9yY29tbSBZVDg1MjEgUEhZLgo+PiBUaGUgR01BQyAyNSBNSHogcmVmZXJlbmNlIGNs
b2NrIG91dHB1dCByZW1haW5zIGFjdGl2ZSBhbmQgRXRoZXJuZXQgd29ya3MuCj4+Cj4+IEdhdmlu
IEdhbyAoMyk6Cj4+ICAgZHQtYmluZGluZ3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IEFkZCAyNU0g
cmVmb3V0IGNsb2NrCj4+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBSSzM1NzYgR01BQyAy
NU0gcmVmb3V0IGNsb2Nrcwo+PiAgIG5ldDogc3RtbWFjOiBkd21hYy1yazogRW5hYmxlIFJHTUlJ
IDI1TSByZWZvdXQgY2xvY2sKPj4KPj4gIC4uLi9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMu
eWFtbCAgICAgICAgICB8ICAxICsKPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LmR0c2kgICAgICB8ICA4ICsrLS0tCj4+ICAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3Rt
bWFjL2R3bWFjLXJrLmMgICAgfCAzMyArKysrKysrKysrKysrKysrKystCj4+ICAzIGZpbGVzIGNo
YW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gQ2FuIHlvdSBwbGVh
c2UgdHJ5IHNvbWV0aGluZyBsaWtlIHRoaXMgWzFdIGluc3RlYWQ/Cj4gCj4gWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwNzE5MDM0NTU1LjM2MjMwMDMtMS1n
YWhpbmdAZ2FoaW5nd29vLmNvbS8KPiAKPiBUaGUgR01BQyBvbiBSSzM1NzYgbmVpdGhlciBwcm9k
dWNlcyBub3IgY29uc3VtZXMgdGhlIGNsb2NrLiBDUlUgaXMgdGhlCj4gcHJvZHVjZXIsIGFuZCBQ
SFkgaXMgdGhlIGNvbnN1bWVyLiBTbyB0aGUgR01BQyBkcml2ZXIgc2hvdWxkbid0IGJlIHRoZQo+
IG9uZSB0byBlbmFibGUgaXQsIG5vciBzaG91bGQgdGhlIGR3bWFjIGJpbmRpbmcgaGF2ZSBhbnl0
aGluZyB0byBkbwo+IHdpdGggaXQuCj4gCj4gSGF2ZSBhIGxvb2sgYXQgaG93IG90aGVyIGJvYXJk
cyBhbHJlYWR5IHVwc3RyZWFtIGhhbmRsZSB0aGlzLiBGb3IKPiBleGFtcGxlLCB0aGUgUkszNTc2
IEVWQjEgdXNlcyBhIHNpbWlsYXIgYXJyYW5nZW1lbnQgYnV0IHdpdGggYQo+IGRpZmZlcmVudCBQ
SFkuCgpZZXAsIHdlIGhhZCBhIHNpbWlsYXIgZml4LCBidXQgaXQgd2FzIHJlamVjdGVkLiBQbGVh
c2Ugc2VlIGhvdyBSSzM1NzYgRVZCMSBkb2VzIGl0OgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwOTEwLXJrMzU3Ni1ldmItbmV0d29yay12MS0xLTY4ZWQ0ZGYyNzJhMkBjb2xsYWJv
cmEuY29tLwoKCi0tIApCZXN0LCAKQ2hhb3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
