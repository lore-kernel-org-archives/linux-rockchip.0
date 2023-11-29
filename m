Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3997BC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 11:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvdIK/fDDRnX3NzTcZM+itTjwWTz8HHpvRm+rprV904=; b=RPyBjv4QD6hm+f
	aC56VtOjD8xsItE3qu/Fyjgd3TWK30Hank0rGRBGGS3Y35R7TL1qcPY6NjFNy/Bq5JalQLWBf07ha
	5fGZeVsKBqZrupRGUV+pVHAFXaOCSX8fOCcfiDJH6f/+g+AgU/9OM09Qyi1jgwyQCrKkMu0ovr3tk
	dPqHtzu4RvAQyAkeicnzmkyucEdd2W99DLq6mzwnXt0p4my1ltJbKZVlnZ7vljakbLfyYQM+ghK2q
	7nSI/RtAlNVzv5iFotTtrjgNl9+ag4Q3cnvoqT2h0fi/xCsGXYcmOoG3saYnYTtgeTecPik2mgCik
	YqQJ7/FQkjPqE7l7IQlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Iw0-0089qK-0o;
	Wed, 29 Nov 2023 11:40:52 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Ivw-0089pm-2s;
	Wed, 29 Nov 2023 11:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701258049; x=1732794049;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=w91TqZU/Sz95TBAtE+lLgPRTyMnYI3/7ak+ZXvIxwqY=;
  b=CeWDV1pgm/8AvvRPX7R6ba9TLeyFX/w6u3MSVW0tp/iZRwXRKt5xvLMt
   NhHCNQ3F38HRkWOYMVsA71Iz736zA4cPMIdX0W7fxzLWhmbX8por6aNF8
   BP+pSevsMMNHsPim+Og1qVWNqHvTR7sz2wfOZeeFtqL+qHg4rs/uMhphC
   evTSFy5X2iBodMO0u5XppzfoFLM0CBQeN/mMsaUcgYZvfk9RlGh8+IBu0
   HeRbtSYdeCr1tgtMvpqxSX8pGutQip75GQ6Td0kK4nXmmGOKou4Xwpg7o
   Gl5y7qpJga0zgmJUh5XL1EAdXFNjJygjNZntVyHreXwnLlKrVNuSJVNzi
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="35043"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="35043"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2023 03:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="942291528"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="942291528"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost) ([10.252.60.61])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2023 03:40:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Thomas
 Zimmermann
 <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>, Jonathan Corbet
 <corbet@lwn.net>, linux-kernel@vger.kernel.org, Samuel Holland
 <samuel@sholland.org>, Sandy Huang <hjc@rock-chips.com>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, linux-doc@vger.kernel.org, Hans Verkuil
 <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai
 <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
In-Reply-To: <kygezdrfz56zj6lmq6l5s5yyys2urgq3id7r5n4mb3afn5kc5q@eswnd6a2ihqc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
 <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
 <8734wo7vbx.fsf@intel.com>
 <kygezdrfz56zj6lmq6l5s5yyys2urgq3id7r5n4mb3afn5kc5q@eswnd6a2ihqc>
Date: Wed, 29 Nov 2023 13:40:38 +0200
Message-ID: <87ttp46b49.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_034049_002406_02BCDFF0 
X-CRM114-Status: GOOD (  41.23  )
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
cm90ZToKPiBPbiBXZWQsIE5vdiAyOSwgMjAyMyBhdCAxMTozODo0MkFNICswMjAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPj4gT24gV2VkLCAyOSBOb3YgMjAyMywgTWF4aW1lIFJpcGFyZCA8bXJpcGFy
ZEBrZXJuZWwub3JnPiB3cm90ZToKPj4gPiBIaSBWaWxsZSwKPj4gPgo+PiA+IE9uIFR1ZSwgTm92
IDI4LCAyMDIzIGF0IDAzOjQ5OjA4UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4g
Pj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMDI6Mjk6NDBQTSArMDEwMCwgTWF4aW1lIFJpcGFy
ZCB3cm90ZToKPj4gPj4gPiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCAwMjo1NDowMlBNICswMjAw
LCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPj4gPiA+IE9uIFR1ZSwgMjggTm92IDIwMjMsIE1heGlt
ZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3JvdGU6Cj4+ID4+ID4gPiA+IEFsbCB0aGUg
ZHJtX2Nvbm5lY3Rvcl9pbml0IHZhcmlhbnRzIHRha2UgYXQgbGVhc3QgYSBwb2ludGVyIHRvIHRo
ZQo+PiA+PiA+ID4gPiBkZXZpY2UsIGNvbm5lY3RvciBhbmQgaG9va3MgaW1wbGVtZW50YXRpb24u
Cj4+ID4+ID4gPiA+Cj4+ID4+ID4gPiA+IEhvd2V2ZXIsIG5vbmUgb2YgdGhlbSBjaGVjayB0aGVp
ciB2YWx1ZSBiZWZvcmUgZGVyZWZlcmVuY2luZyB0aG9zZQo+PiA+PiA+ID4gPiBwb2ludGVycyB3
aGljaCBjYW4gbGVhZCB0byBhIE5VTEwtcG9pbnRlciBkZXJlZmVyZW5jZSBpZiB0aGUgYXV0aG9y
Cj4+ID4+ID4gPiA+IGlzbid0IGNhcmVmdWwuCj4+ID4+ID4gPiAKPj4gPj4gPiA+IEFyZ3VhYmx5
IG9vcHNpbmcgb24gdGhlIHNwb3QgaXMgcHJlZmVycmFibGUgd2hlbiB0aGlzIGNhbid0IGJlIGNh
dXNlZCBieQo+PiA+PiA+ID4gdXNlciBpbnB1dC4gSXQncyBhbHdheXMgYSBtaXN0YWtlIHRoYXQg
c2hvdWxkIGJlIGNhdWdodCBlYXJseSBkdXJpbmcKPj4gPj4gPiA+IGRldmVsb3BtZW50Lgo+PiA+
PiA+ID4gCj4+ID4+ID4gPiBOb3QgZXZlcnlvbmUgY2hlY2tzIHRoZSByZXR1cm4gdmFsdWUgb2Yg
ZHJtX2Nvbm5lY3Rvcl9pbml0IGFuZCBmcmllbmRzLAo+PiA+PiA+ID4gc28gdGhvc2UgY2FzZXMg
d2lsbCBsZWFkIHRvIG1vcmUgbXlzdGVyaW91cyBidWdzIGxhdGVyLiBBbmQgcHJvYmFibHkKPj4g
Pj4gPiA+IG9vcHNlcyBhcyB3ZWxsLgo+PiA+PiA+IAo+PiA+PiA+IFNvIG1heWJlIHdlIGNhbiBk
byBib3RoIHRoZW4sIHdpdGggc29tZXRoaW5nIGxpa2UKPj4gPj4gPiAKPj4gPj4gPiBpZiAoV0FS
Tl9PTighZGV2KSkKPj4gPj4gPiAgICByZXR1cm4gLUVJTlZBTAo+PiA+PiA+IAo+PiA+PiA+IGlm
IChkcm1fV0FSTl9PTihkZXYsICFjb25uZWN0b3IgfHwgIWZ1bmNzKSkKPj4gPj4gPiAgICByZXR1
cm4gLUVJTlZBTDsKPj4gPj4gPiAKPj4gPj4gPiBJJ2Qgc3RpbGwgbGlrZSB0byBjaGVjayBmb3Ig
dGhpcywgc28gd2UgY2FuIGhhdmUgcHJvcGVyIHRlc3RpbmcsIGFuZCB3ZQo+PiA+PiA+IGFscmVh
ZHkgY2hlY2sgZm9yIHRob3NlIHBvaW50ZXJzIGluIHNvbWUgcGxhY2VzIChsaWtlIGZ1bmNzIGlu
Cj4+ID4+ID4gZHJtX2Nvbm5lY3Rvcl9pbml0KSwgc28gaWYgd2UgZG9uJ3QgY292ZXIgZXZlcnl0
aGluZyB3ZSdyZSBpbmNvbnNpc3RlbnQuCj4+ID4+IAo+PiA+PiBQZW9wbGUgd2lsbCBpbnZhcmlh
Ymx5IGNhcmdvLWN1bHQgdGhpcyBraW5kIG9mIHN0dWZmIGFic29sdXRlbHkKPj4gPj4gZXZlcnl3
aGVyZSBhbmQgdGhlbiBhbGwgeW91ciBmdW5jdGlvbnMgd2lsbCBoYXZlIHRvbnMgb2YgZGVhZAo+
PiA+PiBjb2RlIHRvIGNoZWNrIHRoZWlyIGFyZ3VtZW50cy4KPj4gPgo+PiA+IEFuZCB0aGF0J3Mg
YSBiYWQgdGhpbmcgYmVjYXVzZS4uLiA/Cj4+ID4KPj4gPiBBbHNvLCBhcmUgeW91IHJlYWxseSBz
YXlpbmcgdGhhdCBjaGVja2luZyB0aGF0IHlvdXIgYXJndW1lbnRzIG1ha2Ugc2Vuc2UKPj4gPiBp
cyBjYXJnby1jdWx0Pwo+PiAKPj4gSXQncyBhIHBvd2VyZnVsIHRoaW5nIHRvIGJlIGFibGUgdG8g
YXNzdW1lIGEgTlVMTCBhcmd1bWVudCBpcyBhbHdheXMgYQo+PiBmYXRhbCBwcm9ncmFtbWluZyBl
cnJvciBvbiB0aGUgY2FsbGVyJ3Mgc2lkZSwgYW5kIHNob3VsZCBvb3BzIGFuZCBnZXQKPj4gY2F1
Z2h0IGltbWVkaWF0ZWx5LiBJdCdzIGFuIGFzc2VydGlvbi4KPgo+IFllYWgsIGJ1dCB3ZSdyZSBu
b3QgcmVhbGx5IGRvaW5nIHRoYXQgZWl0aGVyLiBXZSBoYXZlIG5vIGV4cGxpY2l0Cj4gYXNzZXJ0
aW9uIGFueXdoZXJlLiBXZSB0YWtlIGEgcG9pbnRlciBpbiwgYW5kIGp1c3QgaG9wZSB0aGF0IGl0
IHdpbGwgYmUKPiBkZXJlZmVyZW5jZWQgbGF0ZXIgb24gYW5kIHRoYXQgdGhlIGtlcm5lbCB3aWxs
IGNyYXNoLiBUaGUgcG9pbnRlciB0byB0aGUKPiBmdW5jdGlvbnMgZXNwZWNpYWxseSBpcyBvbmx5
IGRlZmVyZW5jZWQgdmVyeSBsYXRlciBvbi4KPgo+IEFuZCBhc3NlcnRpb25zIG1pZ2h0IGJlIHBv
d2VyZnVsLCBidXQgYmVpbmcgYWJsZSB0byBub3RpY2UgZXJyb3JzIGFuZAo+IGRlYnVnIHRoZW0g
aXMgdG9vLiBBIHBhbmljIHRha2VzIGF3YXkgYmFzaWNhbGx5IGFueSByZW1vdGUgYWNjZXNzIHRv
Cj4gZGVidWcuIElmIHlvdSBkb24ndCBoYXZlIGEgY29uc29sZSwgeW91J3JlIGRvbmUuCj4KPj4g
V2UncmUgbm90IHRhbGtpbmcgYWJvdXQgdXNlciBpbnB1dCBvciBhbnl0aGluZyBsaWtlIHRoYXQg
aGVyZS4KPj4gCj4+IElmIHlvdSBzdGFydCBjaGVja2luZyBmb3IgdGhpbmdzIHRoYXQgY2FuJ3Qg
aGFwcGVuLCBhbmQgcmV0dXJuIGVycm9ycwo+PiBmb3IgdGhlbSwgeW91IHN0YXJ0IGdyYWNlZnVs
bHkgaGFuZGxpbmcgdGhpbmdzIHRoYXQgZG9uJ3QgaGF2ZSBhbnl0aGluZwo+PiBncmFjZWZ1bCBh
Ym91dCB0aGVtLgo+Cj4gQnV0IHRoZXJlJ3Mgbm90aGluZyBncmFjZWZ1bCB0byBkbyBoZXJlOiB5
b3UganVzdCByZXR1cm4gZnJvbSB5b3VyIHByb2JlCj4gZnVuY3Rpb24gdGhhdCB5b3UgY291bGRu
J3QgcHJvYmUgYW5kIHRoYXQncyBpdC4gSnVzdCBsaWtlIHlvdSBkbyB3aGVuCj4geW91IGNhbid0
IG1hcCB5b3VyIHJlZ2lzdGVycywgb3IgZ2V0IHlvdXIgaW50ZXJydXB0LCBvciByZWdpc3RlciBp
bnRvCj4gYW55IGZyYW1ld29yayAoaW5jbHVkaW5nIGRybV9kZXZfcmVnaXN0ZXIgdGhhdCBwcmV0
dHkgbXVjaCBldmVyeSBkcml2ZXIKPiBoYW5kbGVzIHByb3Blcmx5IGlmIGl0IHJldHVybnMgYW4g
ZXJyb3IsIHdpdGhvdXQgYmVpbmcgZ3JhY2VmdWwgYWJvdXQKPiBpdCkuCgpUaG9zZSBhcmUgYWxs
IGR5bmFtaWMgdGhpbmdzIHRoYXQgY2FuIGZhaWwuCgpRdWl0ZSBkaWZmZXJlbnQgZnJvbSBwYXNz
aW5nIE5VTEwgZGV2LCBjb25uZWN0b3IsIG9yIGZ1bmNzIHRvCmRybV9jb25uZWN0b3JfaW5pdCgp
IGFuZCBmcmllbmRzLgoKSSB0aGluayBpdCdzIHdyb25nIHRvIHNldCB0aGUgZXhhbXBsZSB0aGF0
IGV2ZXJ5dGhpbmcgbmVlZHMgdG8gYmUKY2hlY2tlZCwgZXZlcnl0aGluZyBuZWVkcyB0byByZXR1
cm4gYW4gZXJyb3IsIGV2ZXJ5IGNhbGwgbmVlZHMgdG8gY2hlY2sKZm9yIGVycm9yIHJldHVybiwg
YWxsIHRoZSB0aW1lLCBldmVyeXdoZXJlLiBQZW9wbGUgYWJzb2x1dGVseSB3aWxsIGNhcmdvCmN1
bHQgdGhhdCwgYW5kIHRoYXQncyB3aGF0IFZpbGxlIGlzIHJlZmVycmluZyB0by4KCklmIHlvdSBw
YXNzIE5VTEwgZGV2LCBjb25uZWN0b3IsIG9yIGZ1bmNzIHRvIGRybV9jb25uZWN0b3JfaW5pdCgp
IEkKdGhpbmsgeW91IGFic29sdXRlbHkgZGVzZXJ2ZSB0byBnZXQgYW4gb29wcy4KCkZvciBkZXYs
IHlvdSBjb3VsZCBwb3NzaWJseSBub3QgaGF2ZSByZWFjaGVkIHRoZSBmdW5jdGlvbiB3aXRoIE5V
TEwKZGV2LiAoQW5kIF9fZHJtX2Nvbm5lY3Rvcl9pbml0KCkgaGFzIGRldi0+bW9kZV9jb25maWcg
YmVmb3JlIHRoZSBjaGVjaywKc28geW91J2xsIGdldCBhIHN0YXRpYyBhbmFseXplciB3YXJuaW5n
IGFib3V0IGRlcmVmZXJlbmNlIGJlZm9yZSB0aGUKY2hlY2suKSBJZiB5b3UgaGF2ZSBOVUxMIGNv
bm5lY3RvciwgeW91IGRpZG4ndCBjaGVjayBmb3IgYWxsb2NhdGlvbgpmYWlsdXJlIGVhcmxpZXIu
IElmIHlvdSBoYXZlIE5VTEwgZnVuY3MsIHlvdSBqdXN0IHBhc3NlZCBOVUxMLCBiZWNhdXNlCml0
J3MgZ2VuZXJhbGx5IHN1cHBvc2VkIHRvIGJlIGEgcG9pbnRlciB0byBhIHN0YXRpYyBjb25zdCBz
dHJ1Y3QuCgo+PiBIYXZpbmcgc3VjaCBjaGVja3MgaW4gcGxhY2UgdHJhaW5zIHBlb3BsZSB0byB0
aGluayB0aGV5ICptYXkqIGhhcHBlbi4KPgo+IEluIG1vc3QgY2FzZXMsIGttYWxsb2MgY2FuJ3Qg
ZmFpbC4gV2Ugc2VlbSB0byBoYXZlIGEgdmVyeSBkaWZmZXJlbnQKPiBwb2xpY3kgdG93YXJkcyBp
dC4KCkFnYWluLCBkeW5hbWljIGluIG5hdHVyZSBhbmQgY2FuIGZhaWwuCgo+PiBXaGlsZSBpdCBz
aG91bGQgZmFpbCBmYXN0IGFuZCBsb3VkIGF0IHRoZSBkZXZlbG9wZXIncyBmaXJzdCBzbW9rZSB0
ZXN0LAo+PiBhbmQgZ2V0IGZpeGVkIHRoZW4gYW5kIHRoZXJlLgo+Cj4gUmV0dXJuaW5nIGFuIGVy
cm9yICsgYSB3YXJuaW5nIGFsc28gcXVhbGlmaWVzIGZvciAiZmFpbCBmYXN0IGFuZCBsb3VkIi4K
PiBCdXQga2VlcHMgdGhlIHN5c3RlbSBhbGl2ZSBmb3Igc29tZW9uZSB0byBub3RpY2UgaW4gYW55
IGNhc2UuCgpCdXQgd2hlcmUgZG8geW91IGRyYXcgdGhlIGxpbmU/IElmIHdlIGtlZXAgYWRkaW5n
IHRoZXNlIGNoZWNrcyB0byB0aGluZ3MKdGhhdCBhY3R1YWxseSBjYW4ndCBoYXBwZW4sIHdlIHRl
YWNoIGRldmVsb3BlcnMgd2UgbmVlZCB0byBjaGVjayBmb3IKaW1wb3NzaWJsZSB0aGluZ3MuIEFu
ZCB3ZSB0ZWFjaCB0aGVtIG5vdCB0byB0cnVzdCBhbnl0aGluZy4KCkkgc2Nyb2xsIGRvd24gdGhl
IGZpbGUgYW5kIHJlYWNoCmRybV9jb25uZWN0b3JfYXR0YWNoX2VkaWRfcHJvcGVydHkoKS4gU2hv
dWxkIHdlIE5VTEwgY2hlY2sgY29ubmVjdG9yPwpTaG91bGQgd2UgY2hhbmdlIHRoZSBmdW5jdGlv
biB0byBpbnQgYW5kIHJldHVybiBhIHZhbHVlPyBTaG91bGQgdGhlCmNhbGxlciBjaGVjayB0aGUg
dmFsdWU/IFRoZW4gdGhlcmUncyBkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVyKCkuIEFuZApk
cm1fY29ubmVjdG9yX2hhc19wb3NzaWJsZV9lbmNvZGVyKCkuIEFuZCBzbyBvbiBhbmQgc28gZm9y
dGguCgpXaGVyZSBkbyB5b3UgZHJhdyB0aGUgbGluZT8KCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
