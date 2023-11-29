Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C393C07E97
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g5ugQJPnDulSzXQhOPaw9C+1YBphZ9xu5HoLckximI=; b=gHsXEaBTqnB9uP
	va+HYGXyiTC4QPpPqeUQMe2yPokydyioj9F7N0NiIhj+HCcZC47Gb0H23KdRze3hWdvEkoHBo+7PT
	mryrSq7L3d3hMSIbkRDdnEvNQPGfpaYSeorDlHmqCjm8dD4vVVsleVSMaxemCJMofRIxuRwU2WwFs
	dVqhRJ/WwImdznLRQUiZZ18FDx9Y9AcgU5TLWsQzUJ7NC+DjiS5iyoCaUyX+jHb9OQ6Am1656Ta/i
	VHxGNDGSfdnzsIu4iWySXYDApbTPMkF2WFj9dHTT/nWprwEYG7eLcaIrwRs7XGvPXk9bnbjOIT43i
	9vaIJRdHRF568lB3s24w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H1y-007hKj-2C;
	Wed, 29 Nov 2023 09:38:54 +0000
Received: from mgamail.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8H1v-007hK1-2H;
	Wed, 29 Nov 2023 09:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701250731; x=1732786731;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=AKuXrJt5cSWlwQTjHEOlVJMaFv/ThpR7gpZ8mCu+jiM=;
  b=oEC1EpQo5rf8b6v1akur41tQJRUNUQjy6Bv2QHzwhIehBvQo0kICStJm
   Q9x+di2pNCxRZglfOYp8W61hdpAJxt4KtE9bDcDYbUTBiVkeatdXo1ghS
   KmmBm99laTrCHU8YSurt7L6dDTzWp4hCRO4hODFm5tETqVJCO+F80IDDn
   Vd+D4BL+r9eyui3YMKwlPGGAZzSs23K/jp1baNi4bEFCw8cx4RLuxwyOV
   25nXF/1PmYuRuPbUWpPSxGEC7dR1g5HMj3G6MLPPe4IKgsSU5VXP323x1
   DydywNxTQ7jO7LHKCs4dcaH5cp8RfJPCWYW9i9rVgH2CGkAVD2JKwzIfh
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="424277743"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="424277743"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2023 01:38:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="745194703"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="745194703"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost) ([10.252.60.61])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2023 01:38:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org, Samuel
 Holland <samuel@sholland.org>, Sandy Huang <hjc@rock-chips.com>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, linux-doc@vger.kernel.org, Hans
 Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, Chen-Yu
 Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
In-Reply-To: <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
 <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
Date: Wed, 29 Nov 2023 11:38:42 +0200
Message-ID: <8734wo7vbx.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_013851_798174_59FA9267 
X-CRM114-Status: GOOD (  33.21  )
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

T24gV2VkLCAyOSBOb3YgMjAyMywgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3
cm90ZToKPiBIaSBWaWxsZSwKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDAzOjQ5OjA4UE0g
KzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQg
MDI6Mjk6NDBQTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPj4gPiBPbiBUdWUsIE5vdiAy
OCwgMjAyMyBhdCAwMjo1NDowMlBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPiA+IE9u
IFR1ZSwgMjggTm92IDIwMjMsIE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3Jv
dGU6Cj4+ID4gPiA+IEFsbCB0aGUgZHJtX2Nvbm5lY3Rvcl9pbml0IHZhcmlhbnRzIHRha2UgYXQg
bGVhc3QgYSBwb2ludGVyIHRvIHRoZQo+PiA+ID4gPiBkZXZpY2UsIGNvbm5lY3RvciBhbmQgaG9v
a3MgaW1wbGVtZW50YXRpb24uCj4+ID4gPiA+Cj4+ID4gPiA+IEhvd2V2ZXIsIG5vbmUgb2YgdGhl
bSBjaGVjayB0aGVpciB2YWx1ZSBiZWZvcmUgZGVyZWZlcmVuY2luZyB0aG9zZQo+PiA+ID4gPiBw
b2ludGVycyB3aGljaCBjYW4gbGVhZCB0byBhIE5VTEwtcG9pbnRlciBkZXJlZmVyZW5jZSBpZiB0
aGUgYXV0aG9yCj4+ID4gPiA+IGlzbid0IGNhcmVmdWwuCj4+ID4gPiAKPj4gPiA+IEFyZ3VhYmx5
IG9vcHNpbmcgb24gdGhlIHNwb3QgaXMgcHJlZmVycmFibGUgd2hlbiB0aGlzIGNhbid0IGJlIGNh
dXNlZCBieQo+PiA+ID4gdXNlciBpbnB1dC4gSXQncyBhbHdheXMgYSBtaXN0YWtlIHRoYXQgc2hv
dWxkIGJlIGNhdWdodCBlYXJseSBkdXJpbmcKPj4gPiA+IGRldmVsb3BtZW50Lgo+PiA+ID4gCj4+
ID4gPiBOb3QgZXZlcnlvbmUgY2hlY2tzIHRoZSByZXR1cm4gdmFsdWUgb2YgZHJtX2Nvbm5lY3Rv
cl9pbml0IGFuZCBmcmllbmRzLAo+PiA+ID4gc28gdGhvc2UgY2FzZXMgd2lsbCBsZWFkIHRvIG1v
cmUgbXlzdGVyaW91cyBidWdzIGxhdGVyLiBBbmQgcHJvYmFibHkKPj4gPiA+IG9vcHNlcyBhcyB3
ZWxsLgo+PiA+IAo+PiA+IFNvIG1heWJlIHdlIGNhbiBkbyBib3RoIHRoZW4sIHdpdGggc29tZXRo
aW5nIGxpa2UKPj4gPiAKPj4gPiBpZiAoV0FSTl9PTighZGV2KSkKPj4gPiAgICByZXR1cm4gLUVJ
TlZBTAo+PiA+IAo+PiA+IGlmIChkcm1fV0FSTl9PTihkZXYsICFjb25uZWN0b3IgfHwgIWZ1bmNz
KSkKPj4gPiAgICByZXR1cm4gLUVJTlZBTDsKPj4gPiAKPj4gPiBJJ2Qgc3RpbGwgbGlrZSB0byBj
aGVjayBmb3IgdGhpcywgc28gd2UgY2FuIGhhdmUgcHJvcGVyIHRlc3RpbmcsIGFuZCB3ZQo+PiA+
IGFscmVhZHkgY2hlY2sgZm9yIHRob3NlIHBvaW50ZXJzIGluIHNvbWUgcGxhY2VzIChsaWtlIGZ1
bmNzIGluCj4+ID4gZHJtX2Nvbm5lY3Rvcl9pbml0KSwgc28gaWYgd2UgZG9uJ3QgY292ZXIgZXZl
cnl0aGluZyB3ZSdyZSBpbmNvbnNpc3RlbnQuCj4+IAo+PiBQZW9wbGUgd2lsbCBpbnZhcmlhYmx5
IGNhcmdvLWN1bHQgdGhpcyBraW5kIG9mIHN0dWZmIGFic29sdXRlbHkKPj4gZXZlcnl3aGVyZSBh
bmQgdGhlbiBhbGwgeW91ciBmdW5jdGlvbnMgd2lsbCBoYXZlIHRvbnMgb2YgZGVhZAo+PiBjb2Rl
IHRvIGNoZWNrIHRoZWlyIGFyZ3VtZW50cy4KPgo+IEFuZCB0aGF0J3MgYSBiYWQgdGhpbmcgYmVj
YXVzZS4uLiA/Cj4KPiBBbHNvLCBhcmUgeW91IHJlYWxseSBzYXlpbmcgdGhhdCBjaGVja2luZyB0
aGF0IHlvdXIgYXJndW1lbnRzIG1ha2Ugc2Vuc2UKPiBpcyBjYXJnby1jdWx0PwoKSXQncyBhIHBv
d2VyZnVsIHRoaW5nIHRvIGJlIGFibGUgdG8gYXNzdW1lIGEgTlVMTCBhcmd1bWVudCBpcyBhbHdh
eXMgYQpmYXRhbCBwcm9ncmFtbWluZyBlcnJvciBvbiB0aGUgY2FsbGVyJ3Mgc2lkZSwgYW5kIHNo
b3VsZCBvb3BzIGFuZCBnZXQKY2F1Z2h0IGltbWVkaWF0ZWx5LiBJdCdzIGFuIGFzc2VydGlvbi4K
CldlJ3JlIG5vdCB0YWxraW5nIGFib3V0IHVzZXIgaW5wdXQgb3IgYW55dGhpbmcgbGlrZSB0aGF0
IGhlcmUuCgpJZiB5b3Ugc3RhcnQgY2hlY2tpbmcgZm9yIHRoaW5ncyB0aGF0IGNhbid0IGhhcHBl
biwgYW5kIHJldHVybiBlcnJvcnMKZm9yIHRoZW0sIHlvdSBzdGFydCBncmFjZWZ1bGx5IGhhbmRs
aW5nIHRoaW5ncyB0aGF0IGRvbid0IGhhdmUgYW55dGhpbmcKZ3JhY2VmdWwgYWJvdXQgdGhlbS4K
CkhhdmluZyBzdWNoIGNoZWNrcyBpbiBwbGFjZSB0cmFpbnMgcGVvcGxlIHRvIHRoaW5rIHRoZXkg
Km1heSogaGFwcGVuLgoKV2hpbGUgaXQgc2hvdWxkIGZhaWwgZmFzdCBhbmQgbG91ZCBhdCB0aGUg
ZGV2ZWxvcGVyJ3MgZmlyc3Qgc21va2UgdGVzdCwKYW5kIGdldCBmaXhlZCB0aGVuIGFuZCB0aGVy
ZS4KCgpCUiwKSmFuaS4KCgo+Cj4gV2UncmUgYWxyZWFkeSBkb2luZyBpdCBpbiBzb21lIHBhcnRz
IG9mIEtNUywgc28gd2UgaGF2ZSB0byBiZQo+IGNvbnNpc3RlbnQsIGFuZCB0aGUgYW5zd2VyIHRv
ICJtb3N0IGRyaXZlcnMgZG9uJ3QgY2hlY2sgdGhlIGVycm9yIgo+IGNhbm5vdCBiZSAibGV0J3Mg
anVzdCBnaXZlIG9uIGVycm9yIGNoZWNraW5nIHRoZW4iLgo+Cj4+IEknZCBwcmVmZXIgbm90IHRv
IGdvIHRoZXJlIHVzdWFsbHkuCj4+IAo+PiBTaG91bGQgd2UgcGVyaGFwcyBzdGFydCB0byB1c2Ug
dGhlIChhcmd1YWJseSBoaWRlb3VzKQo+PiAgLSB2b2lkIGYoc3RydWN0IGZvbyAqYmFyKQo+PiAg
KyB2b2lkIGYoc3RydWN0IGZvbyBiYXJbc3RhdGljIDFdKQo+PiBzeW50YXggdG8gdGVsbCB0aGUg
Y29tcGlsZXIgd2UgZG9uJ3QgYWNjZXB0IE5VTEwgcG9pbnRlcnM/Cj4+IAo+PiBIbW0uIEFwcGFy
ZW50bHkgdGhhdCBoYXMgdGhlIHNhbWUgcHJvYmxlbSBhcyB1c2luZyBhbnkKPj4gb3RoZXIga2lu
ZCBvZiBhcnJheSBzeW50YXggaW4gdGhlIHByb3RvdHlwZS4gVGhhdCBpcywKPj4gdGhlIGNvbXBp
bGVyIGRlbWFuZHMgdG8ga25vdyB0aGUgZGVmaW5pdGlvbiBvZiAnc3RydWN0IGZvbycKPj4gZXZl
biB0aG91Z2ggd2UncmUgcGFzc2luZyBpbiBlZmZlY3RpdmVseSBhIHBvaW50ZXIuIFNpZ2guCj4K
PiBIb25lc3RseSwgSSBkb24ndCBjYXJlIGFzIGxvbmcgYXMgaXQncyBzb21ldGhpbmcgd2UgY2Fu
IHVuaXQtdGVzdCB0bwo+IG1ha2Ugc3VyZSB3ZSBtYWtlIGl0IGNvbnNpc3RlbnQuIFdlIGNhbid0
IHVuaXQgdGVzdCBhIGNvbXBsZXRlIGtlcm5lbAo+IGNyYXNoLgoKLS0gCkphbmkgTmlrdWxhLCBJ
bnRlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
