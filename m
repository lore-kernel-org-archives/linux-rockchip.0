Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E74C48BEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 15:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zep2b5c/7P5fbAYnH3p6uRYalArhVbf4otlIinKFqfc=; b=wgGIulRsB8QGuT
	TGL1LmYs5JOrU0BsuW2XojNiuQOXed+JqBLD6U0UW6uzUjAZrmQ8qqUvh9Spqx1kmuPW/r3AJddxr
	f3KM7o1bpHTSVzRFICW6AQAaLaI+5hVrEcunb1z+rqbij7Tg3KL4S5NY5DPRrve+54EYu8Qof+Tfy
	f09o0QZ90i4ywMtVLMQBWbj6IdeWu5hrRodb6ZydOaqTNDGzhMuNMN1PR2dX4SxocU9zdaVdWBr9w
	q3HU31n17OsNvIkU8jsDxCVKrWZvDVA822S3yJYpaGIB51ueHwgJdR4e5ZrTwCOpfURHBktuP9hL3
	VYl2/MnTQlxQRfoJgUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radMV-0000000Gfgt-3joF;
	Thu, 15 Feb 2024 15:09:19 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radMT-0000000GffY-1P1D;
	Thu, 15 Feb 2024 15:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708009758; x=1739545758;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=1dewdp2A0Zo42dyThGoQOQMbyk8kJSMF3Ua2SIJeM54=;
  b=PbzCZiaXI4XnI/Ps/KHiuLKuxa5xjpkFcTc2gAlTdKuItME41r5uUeE1
   CR1Ra2oQjXai/9V9gabNcJs3JVbn20lvKgD7tOjI+P3V1Eia5sgTMIk4p
   QcUXwvjsfHXn1T0vJixcijmGObkOhwJPyu2z+lwbutcjmhLtJNvRPGqga
   iSkUsb5hEWgNQpb0SFps51wFCND2nJ2TtP9/XJkcgao5uoavEQbt/3iP0
   viEI4w+a9KpynXoWLWj+u6vBqLiEdeWlenOKZcvcXvH1437Ca4fsqeVT1
   kwERWsjO3vSRKnjwL7UL6NENk3i58Iop1WRk+VNYMZZutjS9L09T2LJt4
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5930144"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="5930144"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2024 07:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826423681"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="826423681"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 07:09:06 -0800
Received: by stinkbox (sSMTP sendmail emulation); Thu, 15 Feb 2024 17:09:05 +0200
Date: Thu, 15 Feb 2024 17:09:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sebastian Wick <sebastian.wick@redhat.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi:
 Add Broadcast RGB property
Message-ID: <Zc4pEfVRItn0ZCXE@intel.com>
References: <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
 <ZcsqoPCJDjA5PJUF@intel.com>
 <dti6zcuzszhut5m4g2bxiwfogwctfhktv2mwuqlij7wtvh3bny@ry4mxpiqidmt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dti6zcuzszhut5m4g2bxiwfogwctfhktv2mwuqlij7wtvh3bny@ry4mxpiqidmt>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_070917_464565_12350285 
X-CRM114-Status: GOOD (  57.82  )
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

T24gVGh1LCBGZWIgMTUsIDIwMjQgYXQgMTE6NTM6MTdBTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBUdWUsIEZlYiAxMywgMjAyNCBhdCAxMDozODo1NkFNICswMjAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBNb24sIEZlYiAxMiwgMjAyNCBhdCAwNTo1Mzo0OFBNICsw
MTAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiBPbiBNb24sIEZlYiAxMiwgMjAyNCBhdCAw
NTo0OTozM1BNICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBG
ZWIgMTIsIDIwMjQgYXQgMTE6MDE6MDdBTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+
ID4gPiA+IE9uIEZyaSwgRmViIDA5LCAyMDI0IGF0IDA5OjM0OjM1UE0gKzAxMDAsIFNlYmFzdGlh
biBXaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBNb24sIEZlYiAwNSwgMjAyNCBhdCAxMDozOToz
OEFNICswMTAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIEZyaSwgRmVi
IDAyLCAyMDI0IGF0IDA2OjM3OjUyUE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+
ID4gPiA+ID4gPiA+IE9uIEZyaSwgRmViIDAyLCAyMDI0IGF0IDA0OjU5OjMwUE0gKzAxMDAsIE1h
eGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIEZyaSwgRmViIDAyLCAyMDI0
IGF0IDA1OjQwOjQ3UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gPiA+ID4g
PiA+ID4gPiBPbiBGcmksIEZlYiAwMiwgMjAyNCBhdCAwMjowMTozOVBNICswMTAwLCBNYXhpbWUg
UmlwYXJkIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gSGksCj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IE9uIE1vbiwgSmFuIDE1LCAyMDI0IGF0IDAzOjM3
OjIwUE0gKzAxMDAsIFNlYmFzdGlhbiBXaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gIC8qKgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICAqIERPQzogSERNSSBjb25u
ZWN0b3IgcHJvcGVydGllcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICAqCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiArICogQnJvYWRjYXN0IFJHQgo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gKyAqICAgICAgSW5kaWNhdGVzIHRoZSBSR0IgUXVhbnRpemF0aW9uIFJhbmdlIChG
dWxsIHZzIExpbWl0ZWQpIHVzZWQuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICogICAg
ICBJbmZvZnJhbWVzIHdpbGwgYmUgZ2VuZXJhdGVkIGFjY29yZGluZyB0byB0aGF0IHZhbHVlLgo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAqCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiArICogICAgICBUaGUgdmFsdWUgb2YgdGhpcyBwcm9wZXJ0eSBjYW4gYmUgb25lIG9mIHRoZSBm
b2xsb3dpbmc6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICoKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ICsgKiAgICAgIEF1dG9tYXRpYzoKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ICsgKiAgICAgICAgICAgICAgUkdCIFJhbmdlIGlzIHNlbGVjdGVkIGF1dG9tYXRpY2FsbHkg
YmFzZWQgb24gdGhlIG1vZGUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgKiAgICAgICAg
ICAgICAgYWNjb3JkaW5nIHRvIHRoZSBIRE1JIHNwZWNpZmljYXRpb25zLgo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gKyAqCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICogICAgICBG
dWxsOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAqICAgICAgICAgICAgICBGdWxsIFJH
QiBSYW5nZSBpcyBmb3JjZWQuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICoKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgKiAgICAgIExpbWl0ZWQgMTY6MjM1Ogo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gKyAqICAgICAgICAgICAgICBMaW1pdGVkIFJHQiBSYW5nZSBpcyBm
b3JjZWQuIFVubGlrZSB0aGUgbmFtZSBzdWdnZXN0cywKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ICsgKiAgICAgICAgICAgICAgdGhpcyB3b3JrcyBmb3IgYW55IG51bWJlciBvZiBiaXRzLXBl
ci1jb21wb25lbnQuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICoKPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ICsgKiAgICAgIERyaXZlcnMgY2FuIHNldCB1cCB0aGlzIHByb3BlcnR5
IGJ5IGNhbGxpbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsgKiAgICAgIGRybV9jb25u
ZWN0b3JfYXR0YWNoX2Jyb2FkY2FzdF9yZ2JfcHJvcGVydHkoKS4KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ICsgKgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IFRoaXMgaXMgYSBnb29kIHRpbWUgdG8gZG9jdW1lbnQgdGhpcyBpbiBtb3JlIGRl
dGFpbC4gVGhlcmUgbWlnaHQgYmUgdHdvCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZGlmZmVy
ZW50IHRoaW5ncyBiZWluZyBhZmZlY3RlZDoKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAxLiBUaGUgc2lnbmFsbGluZyAoSW5mb0ZyYW1lL1NEUC8u
Li4pCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gMi4gVGhlIGNvbG9yIHBpcGVsaW5lIHByb2Nl
c3NpbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiBBbGwgdmFsdWVzIG9mIEJyb2FkY2FzdCBSR0IgYWx3YXlzIGFmZmVjdCB0aGUgY29sb3IgcGlw
ZWxpbmUgcHJvY2Vzc2luZwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHN1Y2ggdGhhdCBhIGZ1
bGwtcmFuZ2UgaW5wdXQgdG8gdGhlIENSVEMgaXMgY29udmVydGVkIHRvIGVpdGhlciBmdWxsLSBv
cgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGxpbWl0ZWQtcmFuZ2UsIGRlcGVuZGluZyBvbiB3
aGF0IHRoZSBtb25pdG9yIGlzIHN1cHBvc2VkIHRvIGFjY2VwdC4KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBXaGVuIGF1dG9tYXRpYyBpcyBzZWxl
Y3RlZCwgZG9lcyB0aGF0IG1lYW4gdGhhdCB0aGVyZSBpcyBubyBzaWduYWxsaW5nLAo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IG9yIHRoYXQgdGhlIHNpZ25hbGxpbmcgbWF0Y2hlcyB3aGF0IHRo
ZSBtb25pdG9yIGlzIHN1cHBvc2VkIHRvIGFjY2VwdAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IGFjY29yZGluZyB0byB0aGUgc3BlYz8gQWxzbywgaXMgdGhpcyByZWFsbHkgSERNSSBzcGVjaWZp
Yz8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBX
aGVuIGZ1bGwgb3IgbGltaXRlZCBpcyBzZWxlY3RlZCBhbmQgdGhlIG1vbml0b3IgZG9lc24ndCBz
dXBwb3J0IHRoZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHNpZ25hbGxpbmcsIHdoYXQgaGFw
cGVucz8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEZv
cmdvdCB0byBtZW50aW9uOiB1c2VyLXNwYWNlIHN0aWxsIGhhcyBubyBjb250cm9sIG92ZXIgUkdC
IHZzIFlDYkNyIG9uCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHRoZSBjYWJsZSwgc28gaXMgdGhp
cyBvbmx5IGFmZmVjdGluZyBSR0I/IElmIG5vdCwgaG93IGRvZXMgaXQgYWZmZWN0Cj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+IFlDYkNyPwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBTbyBJIGR1ZyBhIGJpdCBpbnRvIGJvdGggdGhlIGk5MTUgYW5kIHZjNCBkcml2
ZXJzLCBhbmQgaXQgbG9va3MgbGlrZSBpZgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gd2UncmUgdXNp
bmcgYSBZQ2JDciBmb3JtYXQsIGk5MTUgd2lsbCBhbHdheXMgdXNlIGEgbGltaXRlZCByYW5nZSB3
aGlsZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gdmM0IHdpbGwgZm9sbG93IHRoZSB2YWx1ZSBvZiB0
aGUgcHJvcGVydHkuCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gVGhl
IHByb3BlcnR5IGlzIGxpdGVyYWxseSBjYWxsZWQgIkJyb2FkY2FzdCAqUkdCKiIuCj4gPiA+ID4g
PiA+ID4gPiA+ID4gVGhhdCBzaG91bGQgZXhwbGFpbiB3aHkgaXQncyBvbmx5IGFmZmVjdGluZyBS
R0IuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBSaWdodC4gQW5kIHRoZSBs
aW1pdGVkIHJhbmdlIG9wdGlvbiBpcyBjYWxsZWQgIkxpbWl0ZWQgMTY6MjM1IiBkZXNwaXRlCj4g
PiA+ID4gPiA+ID4gPiA+IGJlaW5nIHVzYWJsZSBvbiBicGMgPiA4IGJpdHMuIE5hbWluZyBlcnJv
cnMgb2NjdXJzLCBhbmQgaGlzdG9yeSBoYXBwZW5zCj4gPiA+ID4gPiA+ID4gPiA+IHRvIG1ha2Ug
bmFtZXMgaW5jb25zaXN0ZW50IHRvbywgdGhhdCdzIGZpbmUgYW5kIG5vdCBhbiBhcmd1bWVudCBp
bgo+ID4gPiA+ID4gPiA+ID4gPiBpdHNlbGYuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiA+ID4gPiA+IEZ1bGwgcmFuZ2UgWUNiQ3IgaXMgYSBtdWNoIHJhcmVyIGJlYXN0IHNvIHdlJ3Zl
IG5ldmVyIGJvdGhlcmVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gdG8gZW5hYmxlIGl0Lgo+ID4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gdmM0IHN1cHBvcnRzIGl0Lgo+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBTb21lb25lIGltcGxlbWVudGVkIGl0IGluY29ycmVjdGx5
IHRoZW4uCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gSW5jb3JyZWN0bHkgYWNjb3JkaW5n
IHRvIHdoYXQgZG9jdW1lbnRhdGlvbiAvIHNwZWNpZmljYXRpb24/IEknbSBzb3JyeSwKPiA+ID4g
PiA+ID4gPiBidXQgSSBmaW5kIGl0IHN1cGVyIGlyb25pYyB0aGF0IGk5MTUgZ2V0cyB0byBkbyBp
dHMgb3duIHRoaW5nLCBub3QKPiA+ID4gPiA+ID4gPiBkb2N1bWVudCBhbnkgb2YgaXQsIGFuZCB3
aGVuIHBlb3BsZSB0cnkgdG8gY2xlYW4gdGhpbmdzIHVwIHRoZXkgZ2V0IHRvbGQKPiA+ID4gPiA+
ID4gPiB0aGF0IHdlIGdvdCBpdCBhbGwgd3JvbmcuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBG
V0lXLCB0aGlzIHdhcyBhbiBpOTE1IHByb3BlcnR5IGFuZCBpZiBhbm90aGVyIGRyaXZlciB1c2Vz
IHRoZSBzYW1lCj4gPiA+ID4gPiA+IHByb3BlcnR5IG5hbWUgaXQgbXVzdCBoYXZlIHRoZSBzYW1l
IGJlaGF2aW9yLiBZZXMsIGl0IGlzbid0IHN0YW5kYXJkaXplZAo+ID4gPiA+ID4gPiBhbmQgeWVz
LCBpdCdzIG5vdCBkb2N1bWVudGVkIChoZW5jZSB0aGlzIGVmZm9ydCBoZXJlKSBidXQgaXQncyBz
dGlsbCBvbgo+ID4gPiA+ID4gPiB2YzQgdG8gbWFrZSB0aGUgcHJvcGVydHkgY29tcGF0aWJsZS4K
PiA+ID4gPiA+IAo+ID4gPiA+ID4gSG93IGlzIGl0IG5vdCBjb21wYXRpYmxlPyBJdCdzIGEgc3Vw
ZXJzZXQgb2Ygd2hhdCBpOTE1IHByb3ZpZGVzLCBidXQKPiA+ID4gPiA+IGl0J3Mgc3RyaWN0bHkg
Y29tcGF0aWJsZSB3aXRoIGl0Lgo+ID4gPiA+IAo+ID4gPiA+IE5vIGl0IGlzIG5vdC4KPiA+ID4g
Cj4gPiA+IFRoZSBwcm9wZXJ0eSBpcyBjb21wYXRpYmxlIHdpdGggaTkxNSBpbnRlcnByZXRhdGlv
biBvZiBpdCwgd2hldGhlciB5b3UKPiA+ID4gbGlrZSBpdCBvciBub3QuIEFuZCB0aGF0J3Mgd2hh
dCBTZWJhc3RpYW4gd2FzIHJlZmVycmluZyB0by4KPiA+ID4gCj4gPiA+ID4gRWcuIHdoYXQgaGFw
cGVucyBpZiB5b3Ugc2V0IHRoZSB0aGluZyB0byBmdWxsIHJhbmdlIGZvciBSR0IgKHdoaWNoIHlv
dQo+ID4gPiA+IG11c3Qgb24gbWFueSBicm9rZW4gbW9uaXRvcnMpLCBhbmQgdGhlbiB0aGUga2Vy
bmVsIGF1dG9tYWdpY2FsbHkKPiA+ID4gPiBzd2l0Y2hlcyB0byBZQ2JDciAoZm9yIHdoYXRldmVy
IHJlYXNvbikgYnV0IHRoZSBtb25pdG9yIGRvZXNuJ3QKPiA+ID4gPiBzdXBwb3J0IGZ1bGwgcmFu
Z2UgWUNiQ3I/IEFuc3dlcjogeW91IGdldCBjcmFwIG91dHB1dC4KPiA+ID4gCj4gPiA+IEFuZCB0
aGF0IHBhcnQgaXMganVzdCBtb3ZpbmcgZ29hbHBvc3RzLgo+ID4gCj4gPiBOby4gQWxsb3dpbmcg
dXNlcnMgdG8gZ2V0IGNvcnJlY3QgY29sb3JzIHdpdGggYnJva2VuIGRpc3BsYXlzCj4gPiBpcyB0
aGUgc29sZSByZWFzb24gd2h5IHRoaXMgcHJvcGVydHkgZXZlbiBleGlzdHMuCj4gCj4gSERNSSAx
LjQsIFNlY3Rpb24gNi42IC0gVmlkZW8gUXVhbnRpemF0aW9uIFJhbmdlczoKPiAKPiAgIElmIHRo
ZSBzaW5r4oCZcyBFRElEIGRlY2xhcmVzIGEgc2VsZWN0YWJsZSBZQ0MgUXVhbnRpemF0aW9uIFJh
bmdlCj4gICAoUVk9MSksIHRoZW4gaXQgc2hhbGwgZXhwZWN0IGxpbWl0ZWQgcmFuZ2UgcGl4ZWwg
dmFsdWVzIGlmIGl0IHJlY2VpdmVzCj4gICBBVkkgWVE9MCBhbmQgaXQgc2hhbGwgZXhwZWN0IGZ1
bGwgcmFuZ2UgcGl4ZWwgdmFsdWVzIGlmIGl0IHJlY2VpdmVzCj4gICBBVkkgWVE9MS4gRm9yIG90
aGVyIHZhbHVlcyBvZiBZUSwgdGhlIHNpbmsgc2hhbGwgZXhwZWN0IHBpeGVsIHZhbHVlcwo+ICAg
d2l0aCB0aGUgZGVmYXVsdCByYW5nZSBmb3IgdGhlIHRyYW5zbWl0dGVkIHZpZGVvIGZvcm1hdC4K
PiAKPiBTbywgdGhlIG9ubHkgY29uY2VybiB5b3UgaGF2ZSBpcyBpZiB0aGUgRURJRCBoYXMgUVkg
c2V0IHRvIDEgYnV0IHRoZQo+IG1vbml0b3IgZG9lc24ndCBhY3R1YWxseSBzdXBwb3J0IGl0PyBJ
ZiBzbywgY291bGQgd2UgcXVhbGlmeSB0aGUgbW9uaXRvcgo+IGFzIGEgImJyb2tlbiBkaXNwbGF5
IiBhbmQgdGh1cyB3b3VsZCByZXF1aXJlIHRoYXQgcHJvcGVydHkgdG8gYXBwbHkgdG8KPiBZVVYg
dG9vPwoKU2lua3MgdGhhdCBkZWNsYXJlIGEgc2VsZWN0YWJsZSBxdWFudGl6YXRpb24gcmFuZ2Ug
YXJlIG5vdCB0aGUKcHJvYmxlbSwgb3IgYXQgbGVhc3QgSSBkb24ndCByZWNhbGwgZXZlciBzZWVp
bmcgb25lIHRoYXQgbGllZCBhYm91dAp0aGF0LiBUaGUgcHJvYmxlbSBpcyB0aGUgc2lua3MgdGhh
dCBkb24ndCBoYXZlIHNlbGVjdGFibGUgcXVhbnRpemF0aW9uCnJhbmdlLCBhbmQgd2hpY2ggaW1w
bGVtZW50IHRoZSBkZWZhdWx0IHJ1bGVzIGluY29ycmVjdGx5LiBUaGUgb25seSB3YXkKdG8gZ2V0
IGNvcnJlY3QgY29sb3JzIG9uIHRob3NlIGlzIGZvciB0aGUgdXNlciB0byBvdmVycmlkZSB0aGUK
cXVhbnRpemF0aW9uIHJhbmdlIG1hbnVhbGx5LgoKVHlwaWNhbGx5IFRWcyBnZXQgaXQgbW9zdGx5
IHJpZ2h0ICh0aG91Z2ggSSBoYXZlIGF0IGxlYXN0IG9uZSB0aGF0CmFsc28gZXhwZWN0cyBsaW1p
dGVkIHJhbmdlIGZvciA2NDB4NDgwIHdoaWNoIGlzIG5vdCBjb3JyZWN0KSwgYW5kIAptYW55IChw
ZXJoYXBzIGV2ZW4gbW9zdD8pIGNvbXB1dGVyIGRpc3BsYXlzIGdldCBpdCB3cm9uZyAoYXMgaW4K
dGhleSBhbHdheXMgYXNzdW1lIFJHQiB0byBiZSBmdWxsIHJhbmdlKS4KCldlIGNvdWxkIGluIHRo
ZW9yeSBxdWlyayB0aG9zZSwgYnV0IHRoZSBxdWlyayBsaXN0IHdvdWxkIGJlIGVub3Jtb3VzLAph
bmQgZnJhZ2lsZSB0byBtYWludGFpbiBiZWNhdXNlIHRoZSB1c2VyIGNhbiBhbHNvIHNob290IHRo
ZW1zZWx2ZXMgaW4KdGhlIGZvb3QgaGVyZSBieSBmcm9iYmluZyB3aXRoIHRoZSAiYmxhY2sgbGV2
ZWwiL2V0Yy4gc2V0dGluZ3Mgb24gdGhlCmRpc3BsYXkgaXRzZWxmLiBTbyB3ZSdkIHN1cmVseSBl
bmQgdXAgd2l0aCBsb3RzIG9mIGZhbHNlIHBvc2l0aXZlcwpvbiB0aGUgcXVpcmsgbGlzdC4KCi0t
IApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
