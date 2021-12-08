Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8FAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNvBZggYNj9uUfvKlMXP5SXfP5VRUTJ6alfjVR2Gu7Q=; b=zniUOhq+yoBFfWunS5KO4PORXC
	2dVBYfGnHnNOoupbkceYR9aFaRWWFf4xF6anP+ZbmzVDVwdJA+7I1EHWkgntz3uEgbreTlUBlBLi1
	CD57fIVikIj5e3cAC6fcs3p8CMEOlmKHNFWDQZo7K+fxKavNxSenqXtdNule/8mfr+vZ78JYviK1O
	UfgJSgtqNvyZyT9D9Hm+qZeLcHGxM+PciKAYZQtE81u1SfT3yRfQAn+sSKXLgDP9H8zLaSPFRwqVV
	FLTo/Fg6Sxcaho2msfWBZlTjeGfyk1LrwUG/aa9EyhDY9DGY8RjT2uX14uqL1JBxWGA8wSJYEkXBd
	TsqLnh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mux7f-00CnvL-Q4; Wed, 08 Dec 2021 13:36:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mux7N-00Cno8-Vy; Wed, 08 Dec 2021 13:36:23 +0000
Received: from [IPv6:2a01:e0a:120:3210:9928:73b0:79a4:e623] (unknown
 [IPv6:2a01:e0a:120:3210:9928:73b0:79a4:e623])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5FDF81F45C58;
 Wed,  8 Dec 2021 13:36:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638970579; bh=T21DsC5WunBNF8almSy/Pv06AmMgo6zWaeFNxDn4064=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Ie6bllBZvUbJ8qRV5YkgwvVshsAED4wNMwBPtOkfuUUSthqKkrGwx3KB+HC0cqek/
 WtZudzhSK8pLL/2cB9WzfdxoC11+UzOBtc3Y6bFeH1S9T4Jc8TOqRu2oEXTEVFrfYD
 sqIAJeqyjwj2wCCpj/xR8VbcwCZnc4N7VpC5YIYcATQKQWN59j9TgMhMeWvVMM80rf
 690B0N65kHWNu8EH4yvj8/vWuQTpg7lYZZOS4X5bwNk6nI7jTpzGI0/+dQ3rN/RJqL
 i8qnaiWEUgfsMwE7azQV0wcGirqC8W1D38XCPjYwlwAxnXvfXJ7yRvsSaMueTnQkjI
 +5KOAOmFmKLPw==
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2 with
 blk-ctrl support
To: Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-media@vger.kernel.org
Cc: cphealy@gmail.com, hverkuil@xs4all.nl,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
References: <20211207015446.1250854-1-aford173@gmail.com>
 <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
 <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <4cc3404b-7f8a-6c87-8c1c-ace399f9edd3@collabora.com>
Date: Wed, 8 Dec 2021 14:36:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_053622_368213_ED92978D 
X-CRM114-Status: GOOD (  26.30  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDA4LzEyLzIwMjEgw6AgMTE6MzIsIEx1Y2FzIFN0YWNoIGEgw6ljcml0wqA6Cj4gQW0gTWl0
dHdvY2gsIGRlbSAwOC4xMi4yMDIxIHVtIDEwOjMyICswMTAwIHNjaHJpZWIgQmVuamFtaW4gR2Fp
Z25hcmQ6Cj4+IExlIDA3LzEyLzIwMjEgw6AgMDI6NTQsIEFkYW0gRm9yZCBhIMOpY3JpdMKgOgo+
Pgo+Pj4gQ3VycmVudGx5LCB0aGUgVlBVIGluIHRoZSBpLk1ROE1RIGlzIGFwcGVhcmluZyBhcyBv
bmUgY29kZWMsIGJ1dCBpbgo+Pj4gcmVhbGl0eSwgaXQncyB0d28gSVAgYmxvY2tzIGNhbGxlZCBH
MSBhbmQgRzIuICBUaGVyZSBpcyBpbml0aWFsaXphdGlvbgo+Pj4gY29kZSBpbiBWUFUgY29kZSB0
byBwdWxsIHNvbWUgY2xvY2tzLCByZXNldHMgYW5kIG90aGVyIGZlYXR1cmVzIHdoaWNoCj4+PiBo
YXMgYmVlbiBpbnRlZ3JhdGVkIGludG8gdGhlIHZwdS1ibGstY3RybCBmb3IgdGhlIGkuTVg4TSBN
aW5pIGFuZCBhCj4+PiBzaW1pbGFyIG1ldGhvZCBjYW4gYmUgdXNlZCB0byBtYWtlIHRoZSBWUFUg
Y29kZWMncyBvcGVyYXRlIGFzCj4+PiBzdGFuZC1hbG9uZSBjb3JlcyB3aXRob3V0IGhhdmluZyB0
byBrbm93IHRoZSBkZXRhaWxzIG9mIGVhY2ggb3RoZXIKPj4+IG9yIHRoZSBxdWlya3MgdW5pcXVl
IHRvIHRoZSBpLk1YOE1RLCBzbyB0aGUgcmVtYWluaW5nIGNvZGUgY2FuIGJlCj4+PiBsZWZ0IG1v
cmUgZ2VuZXJpYy4KPj4+Cj4+PiBUaGlzIHNlcmllcyB3YXMgc3RhcnRlZCBieSBMdWNhcyBTdGFj
aCB3aXRoIG9uZSBieSBCZW5qYW1pbiBHYWlnbmFyZC4KPj4+IE1vc3QgcGF0Y2hlcyBoYXZlIGJl
ZW4gbW9kaWZpZWQgc2xpZ2h0bHkgYnkgbWUuICBJdCdzIGluIGFuIFJGQyBzdGF0ZQo+Pj4gYmVj
YXVzZSBJIHdhc24ndCBzdXJlIGhvdyB0byBiZXN0IGhhbmRsZSB0aGUgc2lnbmF0dXJlcyBhbmQg
d2Fzbid0IHN1cmUKPj4+IGlmIEkgY291bGQgYmFzZSBpdCBvZmYgdGhlIGJyYW5jaCBJIGRpZC4K
Pj4+Cj4+PiBTaW5jZSB0aGUgZy1zdHJlYW1lciBhbmQgbWVkaWEgdHJlZXMgYXJlIGluIGEgY29u
c3RhbnQgc3RhdGUgb2YKPj4+IGNoYW5nZSwgdGhpcyBzZXJpZXMgaXMgYmFzZWQgb24KPj4+Cj4+
PiBnaXQ6Ly9saW51eHR2Lm9yZy9odmVya3VpbC9tZWRpYV90cmVlLmdpdCBmb3ItdjUuMTdlCj4+
Pgo+Pj4gVGhlIGRvd25zdHJlYW0gY29kZSBmcm9tIE5YUCBzaG93cyB0aGUgRzEgYW5kIEcyIGNs
b2NrcyBydW5uaW5nCj4+PiBhdCA2MDBNSHosIGJ1dCBiZXR3ZWVuIHRoZSBUUk0gYW5kIHRoZSBk
YXRhc2hlZXQsIHRoZXJlIGlzIHNvbWUKPj4+IGRpc2NyZXBhbmN5LiAgQmVjYXVzZSB0aGUgTlhQ
IHJlZmVyZW5jZSBjb2RlIHVzZWQgNjAwTUh6LCB0aGF0IGlzCj4+PiB3aGF0IHdhcyBjaG9zZW4g
aGVyZS4gIFVzZXJzIHdobyBuZWVkIHRvIGFkanVzdCB0aGVpciBHMSBhbmQgRzIKPj4+IGNsb2Nr
cyBjYW4gZG8gc28gaW4gdGhlaXIgYm9hcmQgZmlsZXMuCj4+IEhpIEFkYW0sCj4+Cj4+IFRoYW5r
cyBmb3IgeW91ciBwYXRjaGVzLCBJIGhhdmUgYmVlbiBhYmxlIHRvIHJlcHJvZHVjZSBWUDkgcmVz
dWx0cyBvbiBteSBzaWRlIChGbHVzdGVyIDE0Ny8zMDMpLgo+PiBJbiBwYXN0IEkgaGF2ZSBub3Rp
Y2Ugc3B1cmlvdXMgZXJyb3JzIHdoZW4gdXNpbmcgNjAwTUh6IGNsb2NrIG9uIEhFVkMgZGVjb2Rl
IGJ1dCBub3Qgd2l0aCAzMDBNSHouCgpUaGUgcmVzdWx0cyBmb3IgRmx1c3RlciBIRVZDIGFyZSA3
Ny8xNDcgc28gbm8gcmVncmVzc2lvbnMgOi0pCgpSZWdhcmRzLApCZW5qYW1pbgoKPj4gVGhlIG1h
eCBzdXBwb3J0ZWQgRzIgY2xvY2sgZnJlcXVlbmN5IGlzIDY2ME1IeiBidXQgbmVlZHMgYSBoaWdo
ZXIKPj4gdm9sdGFnZS4gVGhlIG1heGltdW0gc3VwcG9ydGVkICBmcmVxdWVuY3kgYXQgdGhlIGRl
ZmF1bHQgMC45ViBpcwo+PiA1NTBNSHouIFdlIHNob3VsZCBub3QgY29uZmlndXJlIHRoZSBjbG9j
a3MgZm9yIHRoZSBoaWdoZXIgdGhhbiB0aGF0LCBhcwo+PiBsb25nIGFzIHRoZXJlIGlzIG5vIHN1
cHBvcnQgaW4gdGhlIFZQVSBkcml2ZXIgdG8gc2NhbGUgdGhlIHZvbHRhZ2UKPj4gYWxvbmcgd2l0
aCB0aGUgZnJlcXVlbmN5LiBTYW1lIGFzIHdpdGggdGhlIEdQVSB3ZSBzaG91bGQgc3RpY2sgdG8g
YmFzZQo+PiBmcmVxdWVuY3kgbGV2ZWxzIGZvciB0aGUgbm9taW5hbCBvcGVyYXRpbmcgbW9kZS4K
Pj4KPj4gUmVnYXJkcywKPj4gTHVjYXMKPj4KPj4gUmVnYXJkcywKPj4gQmVuamFtaW4KPj4KPj4+
IEZsdXN0ZXIgUmVzdWx0czoKPj4+Cj4+PiAuL2ZsdXN0ZXIucHkgcnVuIC1kR1N0cmVhbWVyLUgu
MjY0LVY0TDJTTC1Hc3QxLjAKPj4+IFJhbiA5MC8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAg
ICAgICAgICAgaW4gNjEuOTY2IHNlY3MKPj4+Cj4+PiAuL2ZsdXN0ZXIucHkgcnVuIC1kIEdTdHJl
YW1lci1WUDgtVjRMMlNMLUdzdDEuMAo+Pj4gUmFuIDU1LzYxIHRlc3RzIHN1Y2Nlc3NmdWxseSAg
ICAgICAgICAgICAgIGluIDcuNjYwIHNlY3MKPj4+Cj4+Pgo+Pj4gLi9mbHVzdGVyLnB5IHJ1biAt
ZCBHU3RyZWFtZXItVlA5LVY0TDJTTC1Hc3QxLjAKPj4+IFJhbiAxNDQvMzAzIHRlc3RzIHN1Y2Nl
c3NmdWxseSAgICAgICAgICAgICAgIGluIDE2Mi42NjUgc2Vjcwo+Pj4KPj4+IENoYW5nZXMgbG9n
Ogo+Pj4KPj4+IFYyOiAgTWFrZSB2cHUtYmxrLWN0cmwgZW5hYmxlIEcyIGNsb2NrIHdoZW4gZW5h
YmxpbmcgZnVzZXMuCj4+PiAgICAgICAgUmVtb3ZlIHN5c2NvbiBmcm9tIGRldmljZSB0cmVlIGFu
ZCBiaW5kaW5nIGV4YW1wbGUKPj4+ICAgICAgICBBZGRlZCBtb2RpZmllZCBueHAsaW14OG1xLXZw
dS55YW1sIGZyb20gQmVuamFtaW4gR2FpZ25hcmQKPj4+Cj4+PiBBZGFtIEZvcmQgKDIpOgo+Pj4g
ICAgIG1lZGlhOiBoYW50cm86IHNwbGl0IGkuTVg4TVEgRzEgYW5kIEcyIGNvZGUKPj4+ICAgICBh
cm02NDogZHRzOiBpbXg4bXE6IFNwbGl0IGkuTVg4TVEgRzEgYW5kIEcyIHdpdGggdnB1LWJsay1j
dHJsCj4+Pgo+Pj4gQmVuamFtaW4gR2FpZ25hcmQgKDEpOgo+Pj4gICAgIGR0LWJpbmRpbmdzOiBt
ZWRpYTogbnhwLGlteDhtcS12cHU6IFVwZGF0ZSB0aGUgYmluZGluZ3MgZm9yIEcyIHN1cHBvcnQK
Pj4+Cj4+PiBMdWNhcyBTdGFjaCAoMyk6Cj4+PiAgICAgZHQtYmluZGluZ3M6IHBvd2VyOiBpbXg4
bXE6IGFkZCBkZWZpbmVzIGZvciBWUFUgYmxrLWN0cmwgZG9tYWlucwo+Pj4gICAgIGR0LWJpbmRp
bmdzOiBzb2M6IGFkZCBiaW5kaW5nIGZvciBpLk1YOE1RIFZQVSBibGstY3RybAo+Pj4gICAgIHNv
YzogaW14OiBpbXg4bS1ibGstY3RybDogYWRkIGkuTVg4TVEgVlBVIGJsay1jdHJsCj4+Pgo+Pj4g
ICAgLi4uL2JpbmRpbmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwgICAgICAgIHwgIDU4ICsr
KysrLS0tLQo+Pj4gICAgLi4uL3NvYy9pbXgvZnNsLGlteDhtcS12cHUtYmxrLWN0cmwueWFtbCAg
ICAgIHwgIDcxICsrKysrKysrKysrCj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaSAgICAgfCAgNjkgKysrKysrLS0tLQo+Pj4gICAgZHJpdmVycy9zb2MvaW14
L2lteDhtLWJsay1jdHJsLmMgICAgICAgICAgICAgIHwgIDY4ICsrKysrKysrKy0KPj4+ICAgIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jICAgICB8ICAgNCArLQo+Pj4g
ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcuaCAgICAgIHwgICAyICst
Cj4+PiAgICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jICAgfCAx
MTkgKysrLS0tLS0tLS0tLS0tLS0tCj4+PiAgICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL2lt
eDhtcS1wb3dlci5oICAgICAgfCAgIDMgKwo+Pj4gICAgOCBmaWxlcyBjaGFuZ2VkLCAyMzcgaW5z
ZXJ0aW9ucygrKSwgMTU3IGRlbGV0aW9ucygtKQo+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXEtdnB1LWJs
ay1jdHJsLnlhbWwKPj4+Cj4+Pgo+Pj4gYmFzZS1jb21taXQ6IGQxODg4YjBiZmQyZGRlZjJlOGE4
MTUwNWZmYTIwMGI5MmNjMzJlMGMKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
