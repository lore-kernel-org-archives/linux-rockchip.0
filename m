Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB613FF885C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 13:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XYsYR3pqz00P5fDPg0Ds3Wswnn+biN1Pk2DnpM5evI=; b=eJnMHd023ThALC
	q6L9yT5tUA7/ci6BoZNLCVqLpQGO3Cw0nB7RE6qJb+NLqAkNo2IN/S0/127237jveeyopR6uLdWyi
	LfRsE0Lkx5LV/VPlRumn1PY/OBUcxNLwspNKjRdJKnXXihMJzsorxG58w4eht2WTamZ47f6pyqJma
	baKyP76sqV2QRtR2q/KsaThhWZAR47KqWKk2vj7D8LLnHtlstTIGfz+2DfE1/4GytQnRJve6Rg54z
	FPqxT1BEO/yV6Yzo/AP8843zG3VE0Yj51OpXSJT5/4+7ppqcfOy46CUwsKeaieVINhv+qXi+SwHzc
	ncVBHUyFL8MQM2VJqxAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGzWA-0000000FZoT-1o9d;
	Sun, 26 Apr 2026 13:27:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGzW8-0000000FZnr-1J5n;
	Sun, 26 Apr 2026 13:27:25 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 36BCF6A6;
	Sun, 26 Apr 2026 15:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777209939;
	bh=AImdYVRVxu5KDaS0wYHMilfThx6b/J7M7IYbo4FUIic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4Lgyvz+LZ/B8NucZ0Tq9FVaEOSNosKAzOGtypyt0aopXlHtPJ5LgFoqccCr2/Ebk
	 05wMugBV4SQYdxtJ4jryIdOh5QNeSC5BhErZRAvpDAdYVz6v5ePwa04f6HAA2YihYf
	 t2MstkfWay9RaYZcKTRJ2Jf64UeuJlD0IavR7VGU=
Date: Sun, 26 Apr 2026 16:27:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <20260426132719.GD2964234@killaraus.ideasonboard.com>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
 <20260425234845.GC2964234@killaraus.ideasonboard.com>
 <6519122.LvFx2qVVIh@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6519122.LvFx2qVVIh@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_062724_496404_0ACB2B30 
X-CRM114-Status: GOOD (  43.97  )
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

T24gU3VuLCBBcHIgMjYsIDIwMjYgYXQgMTE6NTQ6NTdBTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAxOjQ4OjQ1IE1pdHRlbGV1cm9w
w6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGF1cmVudCBQaW5jaGFydDoKPiA+IE9uIFN1biwg
QXByIDI2LCAyMDI2IGF0IDEyOjQ0OjU5QU0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gPiA+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDAxOjEwOjAyUE0gLTA1MDAsIERlbm5pcyBH
aWxtb3JlIHdyb3RlOgo+ID4gPiA+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDk6MjTigK9BTSBE
bWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+ID4gT24gU2F0LCBBcHIgMjUsIDIwMjYgYXQg
MDI6Mjg6NDRQTSArMDMwMCwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiA+ID4gPiA+ID4gSGkg
RGVubmlzLAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4K
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gT24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTA6MTA6MDhQ
TSAtMDUwMCwgRGVubmlzIEdpbG1vcmUgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gVGhlIExvbnRpdW0g
TFQ4NzExVVhEIGlzIGEgaGlnaCBwZXJmb3JtYW5jZSB0d28gbGFuZSBUeXBlLUMvRFAxLjQKPiA+
ID4gPiA+ID4gPiB0byBIRE1JMi4wIGNvbnZlcnRlciwgZGVzaWduZWQgdG8gY29ubmVjdCBhIFVT
QiBUeXBlLUMgc291cmNlIG9yCj4gPiA+ID4gPiA+ID4gYSBEUDEuNCBzb3VyY2UgdG8gYW4gSERN
STIuMCBzaW5rLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBcyBmYXIgYXMgSSBjYW4gdGVsbCwg
dGhlIExUODcxMVVYRCBoYXMgYW4gSTJDIGNvbnRyb2wgaW50ZXJmYWNlLgo+ID4gPiA+ID4gPiBT
aG91bGRuJ3QgaXQgYmUgYW4gSTJDIGRldmljZSA/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRnJvbSB0
aGUgZGF0YXNoZWV0Ogo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBkZXZpY2UgaXMgY2FwYWJsZSBv
ZiBhdXRvbWF0aWMgb3BlcmF0aW9uIHdoaWNoIGlzCj4gPiA+ID4gPiBlbmFibGVkIGJ5IGFuIGlu
dGVncmF0ZWQgbWljcm9wcm9jZXNzb3IgdGhhdCB1c2VzIGFuCj4gPiA+ID4gPiBlbWJlZGRlZCBT
UEkgZmxhc2ggZm9yIGZpcm13YXJlIHN0b3JhZ2UuIFN5c3RlbSBjb250cm9sCj4gPiA+ID4gPiBp
cyBhbHNvIGF2YWlsYWJsZSB0aHJvdWdoIHRoZSB1c2Ugb2YgYSBkZWRpY2F0ZWQKPiA+ID4gPiA+
IGNvbmZpZ3VyYXRpb24gSTJDIHNsYXZlIGludGVyZmFjZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBN
eSBndWVzcyB3YXMgdGhhdCBpdCBjYW4gZWl0aGVyIGJlIGFuIEkyQyBkZXZpY2Ugb3IgaXQgY2Fu
IGZ1bmN0aW9uIGFzIGEKPiA+ID4gPiA+IHNpbXBsZSBwbGF0ZGV2IHdpdGggbm8gSTJDIGNvbnRy
b2xzLiBQbGVhc2UgY29ycmVjdCBtZSBpZiBteQo+ID4gPiA+ID4gdW5kZXJzdGFuZGluZyB3YXMg
d3JvbmcuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQnV0IG5vdyBsb29raW5nIGF0IHRoZSBzY2hlbWF0
aWNzLCBpdCBzZWVtcyB0byBiZSBjb25uZWN0ZWQgdG8gSTJDNi4KPiA+ID4gPiA+IFdoaWNoIG1l
YW5zIHRoYXQgaXQgc2hvdWxkIGJlIGRlc3JpYmVkIChhbmQgYm91bmQpIGFzIHN1Y2guCj4gPiA+
ID4gCj4gPiA+ID4gSGkgRG1pdHJ5IGFuZCBMYXVyZW50LAo+ID4gPiA+IAo+ID4gPiA+IFdoaWxl
IHRoZSBzY2hlbWF0aWMgc2hvd3MgdGhhdCBpdCBjYW4gdXNlIEkyQyBhbmQgaGFzIGJlZW4gd2ly
ZWQgdXAsCj4gPiA+ID4gaXQgYWxzbyBzaG93cyB0aGF0IGJvdGggTU9ERV9TRUwgYW5kIEkyQ19B
RERSIGhhdmUgdW5wb3B1bGF0ZWQgMTBrCj4gPiA+ID4gcmVzaXN0b3JzOyBhcyBhIHJlc3VsdCwg
TU9ERV9TRUwgaXMgY29ubmVjdGVkIGRpcmVjdGx5IHRvIEdORCwKPiAKPiBsb29raW5nIGF0IHRo
ZSBzY2hlbWF0aWNzIGxpbmtlZCBpbiB0aGUgYm9hcmQgcGF0Y2gsIEkgc29tZWhvdyBzZWUKPiBi
b3RoIFI5IChtb2RlX3NlbCAtPiB2Y2MzdjNfaW8pIGJ1dCBhbHNvIFIxNyAobW9kZV9zZWwgLT4g
Z25kKSBtYXJrZWQKPiBhcyAxMEsubmMgPwo+IAo+ID4gPiA+IHB1dHRpbmcKPiA+ID4gPiB0aGUg
YnJpZGdlIGluIGF1dG9ub21vdXMgbW9kZS4gSSBjb25maXJtZWQgdGhpcyBieSBydW5uaW5nIGBp
MmNkZXRlY3QKPiA+ID4gPiAtciAteSA2YCwgd2l0aCB0aGUgb25seSBkZXZpY2Ugb24gdGhlIGJ1
cyBiZWluZyB0aGUgSFlNODU2MyBSVEMgYXQKPiA+ID4gPiAweDUxLiBXaXRob3V0IHJld29ya2lu
ZyB0aGUgYm9hcmQsIHRoZSBkZXZpY2UgaXMgbm90IGRpcmVjdGx5Cj4gPiA+ID4gY29udHJvbGxh
YmxlIGFuZCBqdXN0IHJ1bnMgYXV0b25vbW91c2x5Lgo+ID4gPiAKPiA+ID4gSSB0aGluayBpdCB3
b3VsZCBiZSBuaWNlIHRvIG1lbnRpb246Cj4gPiA+IC0gSW4gdGhlIGNvbW1pdCBmb3IgdGhlIGJp
bmRpbmdzLCB0aGF0IHRoZSBkZXZpY2UgY2FuIGJlIHJ1bm5pbmcKPiA+ID4gICB1bmNvbnRyb2xs
ZWQgb3IgaXQgY2FuIGJlIGF0dGFjaGVkIG92ZXIgSTJDLCBiaW5kaW5ncyBkZXNjcmliZSB0aGUK
PiA+ID4gICB1bmNvbnRyb2xsZWQgbW9kZS4KPiA+ID4gLSBJbiB0aGlzIGNvbW1pdCBtZXNzYWdl
LCB0aGUgc2FtZS4KPiA+ID4gLSBJbiB0aGUgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBib2FyZCBE
VCBtZW50aW9uIHlvdXIgZmluZGluZ3MgYWJvdXQgdGhlCj4gPiA+ICAgYm9hcmQsIG1lbnRpb24g
c29sZGVyaW5nIFI5IG9yIFIxNyAod2hpY2ggb25lPykgYW5kIFIyNy4KPiA+IAo+ID4gQWRkaXRp
b25hbGx5LCBob3cgYXJlIHdlIGdvaW5nIHRvIGhhbmRsZSBib2FyZHMgd2hlcmUgdGhlIGRldmlj
ZQo+ID4gb3BlcmF0ZXMgaW4gSTJDIG1vZGUgPyBXaWxsIHdlIHVzZSBhIGRpZmZlcmVudCBjb21w
YXRpYmxlIHN0cmluZyAobWF5YmUKPiA+ICJsb250aXVtLGx0ODcxMXV4ZC1pMmMiKSA/IElmIERU
IG1haW50YWluZXJzIGFyZSBmaW5lIHdpdGggdGhhdCwgSSBoYXZlCj4gPiBubyBvYmplY3Rpb24g
dG8gdGhpcyBwYXRjaC4KPiAKPiBJIHdvdWxkIGFzc3VtZSBpdCdkIGJlIG1vcmUgdGhlIGR0LW1h
aW50YWluZXJzIG9iamVjdGluZz8KClllcywgcHJvYmFibHkgOi0pIE15IG1haW4gY29uY2VybiBo
ZXJlIGlzIG1ha2luZyBzdXJlIHdlJ3JlIG5vdApjb3JuZXJpbmcgb3Vyc2VsdmVzLgoKPiBJLmUu
IHRoZSB0d28gZGlmZmVyZW50IGJpbmRpbmdzIGZvciB0aGUgc2FtZSBoYXJkd2FyZSBhbmQgbGVh
a2luZyBMaW51eAo+IGltcGxlbWVudGF0aW9uLXNwZWNpZmljcyBpbnRvIHRoZSBiaW5kaW5nLgo+
IAo+IEknbSBkb24ndCBoYXZlIGRlZXAgaW5zaWdodCBpbnRvIHRoZSBpMmMgZnJhbWV3b3JrLCBi
dXQgSSBndWVzcyB0aGUgaTJjCj4gZGV2aWNlIHByb2JlIGRvZXMgbm90IG5lZWQgdG8gdGFsayB0
byBhbiBpMmMgZGV2aWNlIGR1ZSB0byByZXNvdXJjZXMKPiBuZWVkaW5nIHNldHVwLiBEb2VzIHRo
ZSBpMmMgY29yZSBuZWVkIHRvIHRhbGsgdG8gdGhlIGRldmljZSBhdCBhbGw/Cj4gCj4gQmVjYXVz
ZSBvdGhlcndpc2UsIHlvdSBjb3VsZCBqdXN0IGRvIGEgcmVndWxhciBpMmMgZGV2aWNlICh0aGUg
cm91dGluZwo+IGZvciBldmVyeXRoaW5nIGlzIHRoZXJlIGFmdGVyYWxsKSwgYWRkIGEgbG9udGl1
bSxhdXRvbWF0aWMtbW9kZTsgZmxhZwo+IHRvIHRoZSBub2RlIHRvIGRlbm90ZSBtb2RlLgoKVGhh
dCB3b3VsZCB3b3JrIGluIHRoaXMgY2FzZSwgYnV0IGlmIHdlIGhhdmUgYSBib2FyZCB3aGVyZSB0
aGUgSTJDIGxpbmVzCmFyZSByZWFsbHkgbm90IHJvdXRlZCwgd2Ugd291bGQgaGF2ZSB0byBpbnZl
bnQgYSBmYWtlIGNvbm5lY3Rpb24gdG8gYW4KSTJDIGNvbnRyb2xsZXIuIFRoYXQncyBub3QgdmVy
eSBuaWNlLgoKVGhlcmUgc2VlbSB0byBiZSBwcmVjZWRlbnRzIGZvciBkZXZpY2VzIHRoYXQgY2Fu
IGJlIGNvbnRyb2xsZWQgdGhyb3VnaAplaXRoZXIgSTJDIG9yIFNQSS4gU2VlIGZvciBpbnN0YW5j
ZQpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L25mYy9zdCxzdC1uY2kueWFt
bCB0aGF0IGRlZmluZXMKdHdvIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgdGhlIHNhbWUgZGV2aWNl
LCAic3Qsc3QyMW5mY2ItaTJjIiBhbmQKInN0LHN0MjFuZmNiLXNwaSIuIEkgZG9uJ3Qga25vdyBp
ZiB0aGF0J3MgdGhlIGJlc3QgcHJhY3RpY2UgcmVjb21tZW5kZWQKYnkgdGhlIERUIG1haW50YWlu
ZXJzLCBvciBhIGhhY2sgdGhhdCBzbGlwcGVkIHRocm91Z2guCgo+IEFuZCBpZiBmb3Igd2hhdGV2
ZXIgcmVhc29uIGEgdmFyaWFudCBhcHBlYXJzIHdpdGggdGhlIGxpbmVzIGNvbm5lY3RlZAo+IHlv
dSBjYW4ganVzdCBtb2RpZml5IHRoZSBEVCB2aWEgYW4gb3ZlcmxheT8KCi0tIApSZWdhcmRzLAoK
TGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
