Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4236CA0EC4
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 23:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rImTiChMGuhvC325KVUjTAdDLTCOFfoRoa/XA9Zgq9Y=; b=I6Woi6AUXR0Bqz
	i9sDlBliaLgRcFjKmZmyqSP21AgXLXu6cdrGZnLyxbkvmaaGCPE3uG+7OEMiP+9rrL5KbJJqN9EYs
	QI1owZ7U6YNIvsPSo3bDES2GLChEiB7LhsmDkgdAYbOMXpdIqyN2GY2ZgTn8y/IfOm8qAxlHVPoru
	m9eCPnso7ru4oVpAlox+rbRYcux02XYuHj7IA+0vAKvwh3F8EoN7RiTdm3eaNnXyq1+9TdK25+hgm
	OTm5AOzMpIhBT6dCizOgzF4FT4btF3gtWFUB6XbAE6/9bqQTaPTVG8ci3II9JIHYbFQLJDlHVJvXz
	yxNNRItcM7TLRiD4by3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulbk0-00000009Lse-0Ul2;
	Mon, 11 Aug 2025 23:15:44 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulVTM-00000008QFs-3l5o;
	Mon, 11 Aug 2025 16:34:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1754930035; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WALDvJUiY6agdTMVjbOdgsyLM0rooteGQ1Q2+Z0txOcryAUTuTDrS7mM7LxWJM7O7i83n5j7BBH5lSg1sMmcBL+jZytUwk2x7B3aJ+lSexS2OhFQpK2d9cQL7hrr/UiuO/OxE2nQ1huxt241vyQbDwAZ/FSemnay6ZWkE4YWSMU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754930035; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=lxrZzkcx2EcLzf1PmmakOYUaazHyNZdo2XN9MJYVzZ4=; 
	b=RY1IHERjRqTpFmJVzLZqtb7WDX0BgvvM4TkMXtDkdMckef1FY+3qmdcLisKwAAizhPZ9DsTQF8M94z17CGYhnyOV6Wq2aFjVNtpuvO6gqmZdrNCxqIOZaJVumTQxbbWgZCk+hsTcMUFPSvn3LFVVOZoea/HiORk1hPbiKapc+Dg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754930035;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=lxrZzkcx2EcLzf1PmmakOYUaazHyNZdo2XN9MJYVzZ4=;
	b=TV+lgzfYkfuWIOP8R63YlN16wY89pJ7dNVeThEbfhEOD7qpDzJLA3U0P22xI+Yuj
	8MBiFiTw//d7JKgK+mQqUngx7dnAK1Lj4uDzx6JbPsmuQtkpm6REFRNU8C/b5qweOCA
	aUDweGIL5Rx/sjCGVnrMMLi27lnur8BWxoLMqZMQ=
Received: by mx.zohomail.com with SMTPS id 1754930032659396.3146876115104;
	Mon, 11 Aug 2025 09:33:52 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 00/12] media: rkvdec: Add support for VDPU381 and VDPU383
Date: Mon, 11 Aug 2025 12:33:51 -0400
Message-ID: <2377895.ElGaqSPkdT@trenzalore>
In-Reply-To: <11040209.aFP6jjVeTY@diego>
References: <20250808200340.156393-1-detlev.casanova@collabora.com>
 <11040209.aFP6jjVeTY@diego>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_093408_967101_160D71F6 
X-CRM114-Status: GOOD (  22.99  )
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

SGkgSGVpa28sCgpPbiBNb25kYXksIDExIEF1Z3VzdCAyMDI1IDA1OjU2OjAwIEVEVCBIZWlrbyBT
dMO8Ym5lciB3cm90ZToKPiBIaSBEZXRsZXYsCj4gCj4gQW0gRnJlaXRhZywgOC4gQXVndXN0IDIw
MjUsIDIyOjAzOjIyIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgCkRldGxl
diBDYXNhbm92YToKPiA+IFRoZXNlIHZhcmlhbnRzIGFyZSBmb3VuZCByZXNwZWN0aXZlbHkgaW4g
dGhlIFJLMzU4OCBhbmQgUkszNTc2IFNvQ3MuCj4gPiBUaGlzIHBhdGNoIG9ubHkgYWRkcyBzdXBw
b3J0IGZvciBIMjY0IGFuZCBIMjY1IGluIGJvdGggdmFyaWFudHMuCj4gPiAKPiA+IEFzIHRoZXJl
IGlzIGEgY29uc2lkZXJhYmxlIHBhcnQgb2YgdGhlIGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkIHdp
dGggdGhlCj4gPiBhbHJlYWR5IHN1cHBvcnRlZCBya3ZkZWMgZGVjb2RlciBkcml2ZXIsIHRoZSBz
dXBwb3J0IGZvciB0aGVzZSB2YXJpYW50cwo+ID4gaXMgYWRkZWQgaGVyZSByYXRoZXIgdGhhbiB3
cml0aW5nIGEgbmV3IGRyaXZlci4KPiA+IAo+ID4gVGhpcyBwYXRjaCBzZXQgdXNlcyB0aGUgbmV3
bHkgaW50cm9kdWNlZCBoZXZjX2V4dF9zcHNfW2xzXXRfcnBzIHY0bDIKPiA+IGNvbnRyb2xzIGZv
ciBIRVZDIFsxXS4KPiA+IFRoZXJlZm9yZSwgYSBwYXRjaGVkIHZlcnNpb24gb2YgdXNlcnBhY2Ug
dG9vbHMgaXMgbmVlZGVkIGZvciBIRVZDCj4gPiBzdXBwb3J0IChhZGRlZCBmb3IgR1N0cmVhbWVy
WzJdIGFuZCBpbiBhbiBlYXJseSBzdGFnZSBmb3IgRkZtcGVnWzNdKS4KPiA+IAo+ID4gVGhpcyBw
YXRjaCBzZXQgYWxzbyBkZXBlbmRzIG9uIHRoZSBwcmVwYXJhdGlvbiBwYXRjaCBzZXQgc2VudCBl
YXJsaWVyIFs0XQo+ID4gYXMgd2VsbCBhcyB0aGUgaW9tbXUgcmVzdG9yZSBmaXggWzVdIChhbHJl
YWR5IG1lcmdlZCBpbiBsaW51eC1tZWRpYSkgYW5kCj4gPiBOaWNvbGFzIEZyYXR0YXJvbGkncyBi
aXRtYXAgcGF0Y2ggWzZdIHRvIHN1cHBvcnQgc2V0dGluZyByZWdpc3RlcnMgdGhhdAo+ID4gdXNl
cyB1cHBlciAxNiBiaXRzIGFzIG1hc2tzLgo+ID4gCj4gPiBbMV06Cj4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNTA4MDcxOTQzMjcuNjk5MDAtMS1kZXRsZXYuY2FzYW5vdmFAY29s
bGFiCj4gPiBvcmEuY29tLyBbMl06Cj4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
Z3N0cmVhbWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzkzNTUKPiA+IFszXTogaHR0cHM6
Ly9naXRsYWIuY29sbGFib3JhLmNvbS9kZXRsZXYvZmZtcGVnCj4gPiBbNF06Cj4gPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA2MjMxNjA3MjIuNTU5MzgtMS1kZXRsZXYuY2FzYW5v
dmFAY29sbGFiCj4gPiBvcmEuY29tLyBbNV06Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNTA1MDgtcmt2ZGVjLWlvbW11LXJlc2V0LXYxLTEtYzQ2YjZlZmE2ZTliCj4gPiBAY29s
bGFib3JhLmNvbS8gWzZdOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNjIz
LWJ5ZXdvcmQtdXBkYXRlLXYyLTEtY2YxZmMwOGEyZTFmQGNvbAo+ID4gbGFib3JhLmNvbS8+IAo+
ID4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+ICAtIEFkZCBwYXJzaW5nIG9mIHRoZSBzaG9ydCBhbmQg
bG9uZyB0ZXJtIHJlZiBmcmFtZSBzZXRzIGZyb20gdGhlIG5ldyB2NGwyCj4gPiAgCj4gPiAgICBj
b250cm9scwo+ID4gIAo+ID4gIC0gQWRkIFJQUyBjYWNoZSB0byBhdm9pZCBwYXJzaW5nIHRoZSBz
YW1lIGRhdGEgYWdhaW4KPiA+ICAtIEZpeCBIRVZDIHBpeGVsIGZvcm1hdHMgc2VsZWN0aW9uCj4g
PiAgLSBGaXggbXVsdGlwbGUgaW5kZW50YXRpb24gZXJyb3JzCj4gCj4gd2hlbiBhcHBseWluZyB0
aGUgc2VyaWVzLCBnaXQgd2FzIGEgYml0IHVuaGFwcHkgYWJvdXQgc29tZSB3aGl0ZXNwYWNlczoK
Ck1taCwgaXQgbG9va3MgbGlrZSBzb21lIHJlYmFzZSBpc3N1ZXMuIFRoYW5rcywgSSdsbCBmaXgg
dGhvc2UgIQoKPiA+IERldGxldiBDYXNhbm92YSAoMTIpOgo+ID4gICBtZWRpYTogcmt2ZGVjOiBT
d2l0Y2ggdG8gdXNpbmcgc3RydWN0cyBpbnN0ZWFkIG9mIHdyaXRlbAo+ID4gICBtZWRpYTogcmt2
ZGVjOiBNb3ZlIGNhYmFjIHRhYmxlIHRvIGl0cyBvd24gc291cmNlIGZpbGUKPiAKPiBBcHBseWlu
ZzogbWVkaWE6IHJrdmRlYzogTW92ZSBjYWJhYyB0YWJsZSB0byBpdHMgb3duIHNvdXJjZSBmaWxl
Cj4gLmdpdC9yZWJhc2UtYXBwbHkvcGF0Y2g6NTM1OiBuZXcgYmxhbmsgbGluZSBhdCBFT0YuCj4g
Kwo+IFdhcm51bmc6IDEgWmVpbGUgZsO8Z3QgV2hpdGVzcGFjZS1GZWhsZXIgaGluenUuCj4gCj4g
PiAgIG1lZGlhOiBya3ZkZWM6IFVzZSBzdHJ1Y3RzIHRvIHJlcHJlc2VudCB0aGUgSFcgUlBTCj4g
PiAgIG1lZGlhOiBya3ZkZWM6IE1vdmUgaDI2NCBmdW5jdGlvbnMgdG8gY29tbW9uIGZpbGUKPiAK
PiBBcHBseWluZzogbWVkaWE6IHJrdmRlYzogTW92ZSBoMjY0IGZ1bmN0aW9ucyB0byBjb21tb24g
ZmlsZQo+IC5naXQvcmViYXNlLWFwcGx5L3BhdGNoOjI3ODogbmV3IGJsYW5rIGxpbmUgYXQgRU9G
Lgo+ICsKPiBXYXJudW5nOiAxIFplaWxlIGbDvGd0IFdoaXRlc3BhY2UtRmVobGVyIGhpbnp1Lgo+
IAo+ID4gICBtZWRpYTogcmt2ZGVjOiBBZGQgcGVyIHZhcmlhbnQgY29uZmlndXJhdGlvbgo+ID4g
ICBtZWRpYTogcmt2ZGVjOiBBZGQgUkNCIGFuZCBTUkFNIHN1cHBvcnQKPiAKPiBBcHBseWluZzog
bWVkaWE6IHJrdmRlYzogQWRkIFJDQiBhbmQgU1JBTSBzdXBwb3J0Cj4gLmdpdC9yZWJhc2UtYXBw
bHkvcGF0Y2g6MjAwOiBuZXcgYmxhbmsgbGluZSBhdCBFT0YuCj4gKwo+IFdhcm51bmc6IDEgWmVp
bGUgZsO8Z3QgV2hpdGVzcGFjZS1GZWhsZXIgaGluenUuCj4gCj4gPiAgIG1lZGlhOiBya3ZkZWM6
IFN1cHBvcnQgcGVyLXZhcmlhbnQgaW50ZXJydXB0IGhhbmRsZXIKPiA+ICAgbWVkaWE6IHJrdmRl
YzogRW5hYmxlIGFsbCBjbG9ja3Mgd2l0aG91dCBuYW1pbmcgdGhlbQo+ID4gICBtZWRpYTogcmt2
ZGVjOiBBZGQgSDI2NCBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MSB2YXJpYW50Cj4gPiAgIG1lZGlh
OiBya3ZkZWM6IEFkZCBIMjY0IHN1cHBvcnQgZm9yIHRoZSBWRFBVMzgzIHZhcmlhbnQKPiA+ICAg
bWVkaWE6IHJrdmRlYzogQWRkIEhFVkMgc3VwcG9ydCBmb3IgdGhlIFZEUFUzODEgdmFyaWFudAo+
IAo+IEFwcGx5aW5nOiBtZWRpYTogcmt2ZGVjOiBBZGQgSEVWQyBzdXBwb3J0IGZvciB0aGUgVkRQ
VTM4MSB2YXJpYW50Cj4gLmdpdC9yZWJhc2UtYXBwbHkvcGF0Y2g6MzQ4MzogbmV3IGJsYW5rIGxp
bmUgYXQgRU9GLgo+ICsKPiAuZ2l0L3JlYmFzZS1hcHBseS9wYXRjaDo0MDM1OiBuZXcgYmxhbmsg
bGluZSBhdCBFT0YuCj4gKwo+IFdhcm51bmc6IDIgWmVpbGVuIGbDvGdlbiBXaGl0ZXNwYWNlLUZl
aGxlciBoaW56dS4KPiAKPiAKPiBIZWlrbwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
