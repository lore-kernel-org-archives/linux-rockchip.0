Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA16C282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 04:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngq1Bg+OYczmHxY8tVQgjRTYbZ0W11rudCWWP/njWOE=; b=yXBQviKA5E9m8o
	tDk/zIEEVmTAT3k9/iSPkVsYwo+FepQOExuidsL+YeEIP8y51trAO7F7R+/BAmIPy5IPabjsZFu2L
	fuw3pnxwFFZBsMASo6R0NPwDxx9Vzw3wSN8kxrZQA55Pe8nGs9qiW5c2RLkYFQp9DiLZxzVpaUEgS
	BH0MEB/w+WcU4Vsx/gk26V4EJGGTVM8/cUDircwtOIWrE0shQe25IpSma8aoTOcUzSmZ/SLt9WfTa
	jpqKK2+p14j47Dnn/zj8z9eSHmTN2y9mx81ziyW0HLBYpRSV4U/MVLu9r/0PDjXJa/n+0nIg473YS
	HSFQVRTzmhrk7t/yQDRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnrfq-00000009gOo-1V3k;
	Fri, 28 Feb 2025 04:08:30 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnrPb-00000009euI-03cT
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 03:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740714701;
	bh=yKN09BvLDaiC4SpyxvS+pwLkqAqDF739KyfOxk8S3Kc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=j1GJWQ1wVo8l4SQahFnNcPJYoiKrWO4p6GuKLQqi9NXrqiI/ALqUHsY+6ae0TwfjO
	 EJy6vjVy7RI7ktX0Q/b5kfDO2PbDGV9ox6un8mHJz1RG6h5k3lyM1UnuMA+0UT3my4
	 ljFI4RkkAAvht5Z9f9OE8s7LxWKeuTZ5Zzfnx7irYvgPuBZABELIf6vZfsF1cgPPl4
	 puzJaCA0KxlBE6OYKhiOOVLIEtbsi+kME8mQ1qF0Mt6XIzSl+87FLfIgNzwl1E6FR1
	 RyA7284U97mbh/h1nzhleMd8DZ5cr42NTY5UnHPqvvS+ZgrR5m2ovFbGn0RdrkG4Dz
	 VHT/13iVcfWag==
Received: from [IPv6:2606:6d00:11:e976::c41] (unknown [IPv6:2606:6d00:11:e976::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 04C5B17E087E;
	Fri, 28 Feb 2025 04:51:38 +0100 (CET)
Message-ID: <863f9c1beb7a912f94f8740b3e5095e09e49cee5.camel@collabora.com>
Subject: Re: [PATCH v10 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Dmitry Osipenko	
 <dmitry.osipenko@collabora.com>, Shreeya Patel
 <shreeya.patel@collabora.com>,  Heiko Stuebner	 <heiko@sntech.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com, 
	shawn.wen@rock-chips.com, Sebastian Reichel
 <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Thu, 27 Feb 2025 22:51:37 -0500
In-Reply-To: <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
	 <20250225183058.607047-7-dmitry.osipenko@collabora.com>
	 <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
Organization: Collabora Canada
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_195143_208605_B2A68657 
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

SGkgSGFucywKCkxlIG1lcmNyZWRpIDI2IGbDqXZyaWVyIDIwMjUgw6AgMDk6MzEgKzAxMDAsIEhh
bnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDI1LzAyLzIwMjUgMTk6MzAsIERtaXRyeSBPc2lw
ZW5rbyB3cm90ZToKPiA+IEZyb206IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPgo+ID4gCj4gPiBUaGUgUm9ja2NoaXAgUkszNTg4IGhhcyBhIGJ1aWx0
LWluIEhETUkgcmVjZWl2ZXIgYmxvY2sgZnJvbQo+ID4gU3lub3BzeXMuIExldCdzIGVuYWJsZSB0
aGUgZHJpdmVyIGZvciBpdC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBE
bWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4g
PiDCoGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAyICsrCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcKPiA+IGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwo+ID4gaW5k
ZXggY2I3ZGE0NDE1NTk5Li4zZGNjYzllMWM0YWEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0
L2NvbmZpZ3MvZGVmY29uZmlnCj4gPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
Cj4gPiBAQCAtODU5LDYgKzg1OSw4IEBAIENPTkZJR19WSURFT19TQU1TVU5HX0VYWU5PU19HU0M9
bQo+ID4gwqBDT05GSUdfVklERU9fU0FNU1VOR19TNVBfSlBFRz1tCj4gPiDCoENPTkZJR19WSURF
T19TQU1TVU5HX1M1UF9NRkM9bQo+ID4gwqBDT05GSUdfVklERU9fU1VONklfQ1NJPW0KPiA+ICtD
T05GSUdfVklERU9fU1lOT1BTWVNfSERNSVJYPW0KPiA+ICtDT05GSUdfVklERU9fU1lOT1BTWVNf
SERNSVJYX0xPQURfREVGQVVMVF9FRElEPXkKPiAKPiBJIGRvIG5vdCBiZWxpZXZlIGl0IGlzIGEg
Z29vZCBpZGVhIHRvIGRlZmF1bHQgdG8geSBmb3IgdGhpcyBvcHRpb24uCj4gCj4gVGhlIEVESUQg
ZGVwZW5kcyBvbiB0aGUgc3BlY2lmaWMgZGV2aWNlIHlvdSBtYWtlLCBhbmQgeW91IHNob3VsZAo+
IHRoaW5rIGNhcmVmdWxseSBhYm91dCB3aGV0aGVyIHRoZSBkZWZhdWx0IEVESUQgZml0cyB0aGUg
bmVlZHMgb2YgdGhlCj4gZGV2aWNlLgo+IAo+IFNvIGlmIHlvdSB3YW50IHRoZSBkZWZhdWx0IEVE
SUQsIHRoZW4geW91IHNob3VsZCBtYW51YWxseSBzZWxlY3QgaXQKPiBhbmQgbm90IGhhdmUgaXQg
YXV0b3NlbGVjdGVkLgoKRm9sbG93aW5nIHVwIGhlcmUsIGZyb20gdGhlIGRldmljZSBtYWtlciBw
ZXJzcGVjdGl2ZSBzdXJlLCBidXQgSSdtIG5vdApzdXJlIHRoaXMgaXMgdGhlIGJlc3QgY2hvaWNl
IGZvciBnZW5lcmljIExpbnV4IGRpc3RyaWJ1dGlvbi4gQXMgb2YKdG9kYXksIHByZXR0eSBtdWNo
IG5vIHVzZXJzcGFjZSBjYXB0dXJlIHNvZnR3YXJlIGtub3dzIGFib3V0IHRoaXMsCm1lYW5pbmcg
dGhlIGRldmljZSB3aWxsIG5vdCB3b3JrIG91dCBvZiB0aGUgYm94IGluIE9CUywgR1N0cmVhbWVy
LApGZm1wZWcsIFdlYiBCcm93c2Vycy4gSW4gY29tcGFyaXNvbiwgaWYgeW91IHBpY2sgYW55IFVW
QyBIRE1JIGNhcHR1cmUsCml0IGp1c3Qgd29yaywgd2l0aCBhIGRlZmF1bHQgRURJRCB0aGF0IGNv
dmVycyB0aGUgcmFuZ2Ugb2YKY2FwYWJpbGl0aWVzLCB3aGljaCBpbiB0aGlzIGNhc2UgYXJlIGRl
ZmluZWQgYnkgdGhlIFNvQy4KCldoYXRldmVyIHdlIG1ha2UgYXMgYSBjaG9pY2UsIHdpbGwgYWx3
YXlzIGJlIHRoZSB3cm9uZyBjaG9pY2UgZm9yCnNvbWVvbmUsIHRob3VnaCBJIGV4cGVjdCB0aGlz
IHRvIGJlIGEgbG90IGVhc2llciB0byBjaGFuZ2UgZm9yCiJzcGVjaWFsaXplZCIgaW1wbGVtZW50
YXRpb24uIE5vdywgc2luY2UgdGhlcmUgaXMgbm8gcmVhc29uIHlvdSBjYW4ndApkbyBhIHNwZWNp
bGl6ZWQgaW1wbGVtZW50YXRpb24gb24gZ2VuZXJpYyBMaW51eCBkaXN0cm8sIGFuZCBiZWNhdXNl
IHlvdQptaWdodCBkaXNhZ3JlZSB3aXRoIG1lLCBwZXJoYXBzIGEgY29tcHJvbWlzZSBpcyB0byBh
bHNvIGFkZCBhIG1vZHVsZQpwYXJhbWV0ZXIsIHNvIHRoYXQgdGhlcmUgaXMgYSBydW4tdGltZSBv
dmVycmlkZSB0byB0aGlzLgoKTmljb2xhcwoKPiAKPiBSZWdhcmRzLAo+IAo+IAlIYW5zCj4gCj4g
PiDCoENPTkZJR19WSURFT19USV9KNzIxRV9DU0kyUlg9bQo+ID4gwqBDT05GSUdfVklERU9fSEFO
VFJPPW0KPiA+IMKgQ09ORklHX1ZJREVPX0lNWDIxOT1tCj4gCj4gCgotLSAKTmljb2xhcyBEdWZy
ZXNuZQpQcmluY2lwYWwgRW5naW5lZXIgYXQgQ29sbGFib3JhCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
