Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8FC4CA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 18:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgxsCwWvHcxlHlZw6a5lwGekdi7yw0M44md/uSVTirI=; b=oZqENfUWnkM1Uf
	ZffnduVtmbSb+BmKFGKO86g3F6OT9gchYbWK2ASdBBNPqbvbctFQUL5zVBxGZnLmLuk6nUOotxJLq
	dDqDwmGVYZ+cU8gahsK6thIRWXfu36WJM/yknv3YioeDrvASoMe2mzM1aQlAy9BUT6IoBNYO7dDHk
	N+Xx9x1dAEVH8S09il2qPyh5N4gtErLsYkB2Jmi1kX+HFHtSI0wHErGV3/fQvyEg1Ra1KecNryGyj
	mFo/hMhTkdw6GcFOjmah+D3RvbC3RNiGBpmPKvGILize2+8iJ1ffhsPOmaV+f2slNkharJymZC7+X
	e6lrXNNdAXZpoNljIvyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBcWM-00000004HJg-3QDQ;
	Tue, 29 Sep 2026 18:25:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBcWJ-00000004HIo-2GmO;
	Tue, 29 Sep 2026 18:25:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790706296; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nMxPc38Cl9VS2QoZmUhA2drxBC6wmqcEChJ91L7sAXyZISXwRC6zMm24wq/SE0NLgZuVOoZPXRDd/Q51Fpsoexc1L8lqSWHIXmMEbSZFCB7KtHKS615RNpVKU0h9/toChgOD54Wya17lznelDDsOhDdLQk0YJ6BrmhlPtfTKu6I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790706296; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=thGR81HMiGTJKquWx1al1feKzMrOj7hpr91FOagyffw=; 
	b=kf9KMfWRuYNJkRQ1+xtMr86HPpJsIbEGB6HiRHiao9nORMi1N0lBYVV5eulEC7EJXMt0lbFZyhC71ZVnKch1L2z7dCNljR+QxWJTZUeiAYcRMZmLt7GqaBxplCTm/vaaJdk/W6q0o+JFGdyj3OUnKmkWg2n0dmCddZFM3/F0iEs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790706296;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=thGR81HMiGTJKquWx1al1feKzMrOj7hpr91FOagyffw=;
	b=H27+me2Y6bGa1EIDyLXPtpPoy6B13kvLba8Gre5goQsXgpdbIw/N/O0cOM1P57dy
	E020DeY0glJJjJRplFtYzMz7/Iz7Z10H/lvfEVo4EKbFtqmROPkFbtDMB9Awp1HLTdq
	nGIX1ONF2RV4df0tLVi9lDBroHRF2lcwa/8gL4p0=
Received: by smtp.zohomail.com with SMTPS id 1790706296001546.8130167598731;
	Tue, 29 Sep 2026 11:24:56 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Michel =?UTF-8?B?RMOkbnplcg==?= <michel.daenzer@mailbox.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Xaver Hugl <xaver.hugl@gmail.com>,
 Leo Li <sunpeng.li@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
Date: Tue, 29 Sep 2026 20:24:49 +0200
Message-ID: <tvRw82ZVR2-oL-HXZ6n6bQ@collabora.com>
In-Reply-To: <SwRul6_8Tc-C-2oBT64DOg@collabora.com>
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <164d00c2-e4cb-4962-8e4e-389ae77af943@amd.com>
 <SwRul6_8Tc-C-2oBT64DOg@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_112539_635694_3531AC9E 
X-CRM114-Status: GOOD (  36.17  )
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

T24gVHVlc2RheSwgMjkgU2VwdGVtYmVyIDIwMjYgMjA6MTQ6MzQgQ2VudHJhbCBFdXJvcGVhbiBT
dW1tZXIgVGltZSBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gT24gVHVlc2RheSwgMjkgU2Vw
dGVtYmVyIDIwMjYgMTY6MzQ6NTggQ2VudHJhbCBFdXJvcGVhbiBTdW1tZXIgVGltZSBMZW8gTGkg
d3JvdGU6Cj4gPiAKPiA+IE9uIDIwMjYtMDktMjggMDQ6MTAsIE1pY2hlbCBEw6RuemVyIHdyb3Rl
Ogo+ID4gPj4+IFlvdSBjYW4gcGljdHVyZSBWUlIgbGltaXRpbmcgYXMgYWx3YXlzIGJlaW5nIGFj
dGl2ZSwgYnV0IHdpdGggYSBsaW1pdCByYXRpb25hbAo+ID4gPj4+IG9mIDAgaXQgdXNlcyB0aGUg
ZGlzcGxheSdzIGxpbWl0IGFzIHBlciB0aGUgRURJRCwgd2hpY2ggaXMgd2hhdCB1bmxpbWl0ZWQg
Z2FtZQo+ID4gPj4+IG1vZGUgaXMuIFNvIHdpdGggaG93IGl0J3MgaW1wbGVtZW50ZWQgcmlnaHQg
bm93IGluIGhkbWlfdmFsaWRhdGVfdnJyKCksIHlvdXIKPiA+ID4+PiBleGFtcGxlIHdvdWxkIHNl
dCBhIG1heGltdW0gdGFyZ2V0LCBidXQgbGVhdmUgdGhlIG1pbmltdW0gYXQgd2hhdGV2ZXIgdGhl
Cj4gPiA+Pj4gZGlzcGxheSBkZWZhdWx0cyB0by4KPiA+ID4+Pgo+ID4gPj4+IE5vdyB0aGF0IEkn
bSB0aGlua2luZyB0aHJvdWdoIHRoaXMsIGEgcG9zc2libGUgcHJvYmxlbSBpcyB0aGF0Cj4gPiA+
Pj4gZHJtX2NydGNfaGVscGVyX3Zycl9pc19maXhlZF9yYXRlKCkgb3BlcmF0ZXMgb24gdGhlIHVz
ZXIgc3VwcGxpZWQgbGltaXRzLCBidXQKPiA+ID4+PiBpZiB0aGUgZGlzcGxheSBzdXBwbGllZCBs
b3dlciBsaW1pdCBpcyBlcXVhbCB0byB0aGUgdXNlciBzdXBwbGllZCB1cHBlciBsaW1pdCwKPiA+
ID4+PiB0aGVuIHdlIGhhdmUgYSBmaXhlZCByYXRlIHNjZW5hcmlvIHdpdGhvdXQgcmVjb2duaXNp
bmcgaXQgYXMgc3VjaC4gSSB0aGluayBJCj4gPiA+Pj4gbmVlZCB0byBoYXZlIGEgcG9uZGVyIG9u
IHdoYXQgdGhlIGxlYXN0IHN1cnByaXNpbmcgYmVoYXZpb3VyIGZvciB1c2Vyc3BhY2UKPiA+ID4+
PiBpcyBpbiB0aGF0IGluc3RhbmNlLiBUaGUgZGlzcGxheSBsaW1pdCBzdHVmZiBnZXRzIGEgYml0
IGNvbXBsZXggZHVlIHRvCj4gPiA+Pj4gQ2luZW1hVlJSIGFuZCBRTVMgVEZSbWluL1RGUm1heC4K
PiA+ID4+Pgo+ID4gPj4+IEknbGwgaW1wcm92ZSB0aGUgZG9jdW1lbnRhdGlvbiBvbiB0aGUgbmV4
dCByZXZpc2lvbiB0byBtYWtlIHRoZSBtZWFuaW5ncyBtb3JlCj4gPiA+Pj4gZXhwbGljaXQuCj4g
PiA+PiBQZXJoYXBzIGEgc2ltcGxlIHdheSBpcyB0byByZXF1aXJlIHNpbXVsdGFuZW91cyBzZXR0
aW5nIE1JTiBhbmQgTUFYIHBhaXJzPwo+ID4gPj4gSU9XLCByZXF1aXJlIHVzZXJzcGFjZSB0byBz
ZXQgTUlOIGFuZCBNQVggc2ltdWx0YW5lb3VzbHkgdG8gPjAsIG9yID0wLiBGb3IgZXhhbXBsZToK
PiA+ID4+Cj4gPiA+PiBpZiAoKHZycl9taW5fbiA9PSAwIHx8IHZycl9taW5fZCA9PSAwIHx8Cj4g
PiA+PiAgICAgIHZycl9tYXhfbiA9PSAwIHx8IHZycl9tYXhfZCA9PSAwKSAmJgo+ID4gPj4gICAg
ICh2cnJfbWluX24gPiAwIHx8IHZycl9tYXhfbiA+IDApKQo+ID4gPj4gCXJldHVybiAtRUlOVkFM
Owo+ID4gPj4gVGhhdCB3YXksIGl0J3MgbmV2ZXIgYW1iaWd1b3VzIHdoYXQgdXNlcnNwYWNlIGhh
cyByZXF1ZXN0ZWQgZm9yIHRoZSByYW5nZS4KPiA+ID4+IFRoZXkgY2FuIGNvcHkgdGhlIEVESUQg
c3VwcG9ydGVkIHJhbmdlIGlmIHRoZXkgZG9uJ3QgY2FyZSBhYm91dCBsaW1pdGluZyBvbmUgc2lk
ZSwgcmF0aGVyIHRoYW4gbGVhdmluZyBpdCBhdCAwLgo+ID4gPiBEZXRlcm1pbmluZyB0aGUgYWN0
dWFsIGxpbWl0cyBjYW4gYmUgbm9uLXRyaXZpYWwgKHRob3VnaCBJIGd1ZXNzIHRoYXQgbWlnaHQg
YmUgZmluZSBhcyBsb25nIGFzIGxpYmRpc3BsYXktaW5mbyBjYW4gd29yayB0aGVtIG91dCksIGlm
IHVzZXIgc3BhY2UgZ2V0cyB0aGVtIHdyb25nLCBpdCBtaWdodCBhY2NpZGVudGFsbHkgYXBwbHkg
YSBuYXJyb3dlciBsaW1pdCB0aGFuIGludGVuZGVkLgo+ID4gPiAKPiA+ID4gCj4gPiA+PiBJdCdz
IHRoZW4gYWxzbyBjbGVhciBpZiB0aGV5IHJlcXVlc3RlZCBhIHN0YXRpYyBIei4KPiA+ID4gSSBk
byBzZWUgdGhlIGJlbmVmaXQgb2YgeW91ciBzdWdnZXN0aW9uIGZvciB0aGlzIHRob3VnaC4KPiA+
IAo+ID4gWGF2ZXIgYW5kIEkgd2VyZSBjaGF0dGluZyBhYm91dCB0aGlzIGF0IFhEQywgYW5kIHll
YWggaXQnbGwgYmUgZGlmZmljdWx0Cj4gPiB0byBtYXRjaCBLTUQncyBtb25pdG9yIHJhbmdlLCBl
c3BlY2lhbGx5IGlmIEtNRCBkZWNpZGVzIHRvIHBhdGNoIGl0IHdpdGgKPiA+IHF1aXJrcyBhbmQg
d2hhdG5vdC4KPiA+IAo+ID4gU2luY2Ugd2UgYXJlIGhhbmRpbmcgY29tcG9zaXRvcnMgY29udHJv
bCBvdmVyIHZyciByYW5nZSwgZG9lcyBpdCBzb3VuZAo+ID4gc2Vuc2libGUgdG8gZXhwb3NlIEtN
RCdzIG1vbml0b3IgcmFuZ2UgYXMgYSByZWFkLW9ubHkgcHJvcGVydHkgcGFpciBvbgo+ID4gdGhl
IGRybSBjb25uZWN0b3I/IFdlIHByb2JhYmx5IGRvbid0IG5lZWQgYSBudW0vZGVuIHBhaXIgZm9y
IGl0LCBpdCdzCj4gPiBub3QgbGlrZSBwYW5lbHMgYWR2ZXJ0aXNlIGZyYWN0aW9uYWwgVlJSIHJh
bmdlcyAocmlnaHQ/KS4KPiAKPiBTb3VuZHMgZ29vZCB0byBtZS4KPiAKPiBBbmQgeWVhaCwgd2Ug
ZG9uJ3QgcmVhbGx5IG5lZWQgbnVtL2Rlbm9tIGZvciBpdDsgdGhlIHNhZmUgYXNzdW1wdGlvbiBp
cyB0aGF0IHRoZQo+IG1pbmltdW0gcmFuZ2UgaXMgZXhwcmVzc2VkIHdpdGggYSBkZW5vbWluYXRv
ciBvZiAxLjAwMSB3aGVyZWFzIHRoZSBtYXhpbXVtIHJhbmdlCj4gaXMgZXhwcmVzc2VkIHdpdGgg
YSBudW1lcmF0b3Igb2YgMS4gVGhhdCdzIHNvcnQgb2Ygbm9uLW9idmlvdXMgZm9yIHVzZXJzcGFj
ZQoKZXJyLCAqZGVub21pbmF0b3Igb2YgMSBoZXJlLiBJdCdzIGxhdGUuCgpXaGlsZSBJJ20gYWxy
ZWFkeSBzZW5kaW5nIHRoaXMgY29ycmVjdGlvbiwgSSdtIG5vdyB0aGlua2luZyB0aGF0IHdlIGNv
dWxkIGFsc28KZWl0aGVyIHVzZSBzcGVjaWFsIHZhbHVlcyAobGlrZSAwL24gYWdhaW4sIGJ1dCB3
aXRoIHJld29ya2VkIGxvZ2ljIHRvIGdldCB0aGUKZGVmYXVsdCBmcmFtZSByYXRlPykgb3IgbWF5
YmUgcmVhbGx5IGRvIGhhdmUgYSBudW1lcmF0b3IvZGVub21pbmF0b3IgZGlzcGxheQpwYWlyLgoK
RW50aXJlbHkgcG9zc2libGUgSSdsbCBrZWVwIHRoZSAwL24gYmVoYXZpb3VyIGJ1dCByZWZhY3Rv
ciB0aGUgImdldCByYW5nZSBmcm9tCmNvbm5lY3RvciIgcGFydCBpbnRvIGl0cyBvd24gdGhpbmcu
IEkgdGhpbmsgdGhlIGhkbWlfdmFsaWRhdGVfdnJyIGZ1bmN0aW9uCnJpZ2h0IG5vdyBpcyB0cnlp
bmcgdG8gZG8gdG9vIG11Y2ggYW5kIHN1ZmZlcnMgaW4gY2xhcml0eSBhbmQgcmV1c2FiaWxpdHkg
YXMKYSByZXN1bHQuCgo+IHRob3VnaCwgc28gSSdsbCBuZWVkIHRvIGRvIHNvbWUgdGhpbmtpbmcg
YXJvdW5kIHRoZSBzcGVjaWZpZWQgYmVoYXZpb3VyLgo+IAo+IFRoaXMgc291bmRzIGxpa2UgYSBt
YWlubHkgdGhlb3JldGljYWwgY29uY2VybiBidXQgaXQncyBhIHJlYWwgb25lLCB0aGUgbW9zdAo+
IGNvbW1vbiAxLjAwMSByYXRlcyB3ZSdsbCBydW4gaW50byBhcmUgbGlrZWx5IDI0LzEuMDAxIG9y
IDMwLzEuMDAxIGFuZCB0aG9zZQo+IGFyZSBhbHNvIHZlcnkgcmVhc29uYWJsZSBmb3IgYSBtb25p
dG9yIHRvIGhhdmUgYXMgYSBsb3dlciBsaW1pdC4gQW5kIHdoZW4KPiB0aGV5IHNwZWNpZnkgdGhh
dCBsb3dlciBsaW1pdCwgdGhleSdsbCBkbyBpdCBhcyBqdXN0IHRoZSBpbnRlZ2VyIHJvdW5kZWQK
PiB2YWx1ZSwgYnV0IHNlZW1pbmdseSBleHBlY3QgdGhlbSB0byBiZSB1bmRlcnN0b29kIGFzIHRo
ZSAxLjAwMSB2YWx1ZSBmb3IKPiB0aGUgbG93ZXIgbGltaXQuCj4gCj4gPiBGdW4gZmFjdDogdnJy
X3JhbmdlIGlzIGV4cG9zZWQgdG9kYXkgb3ZlciBkZWJ1Z2ZzIGZvciBJR1QgdGVzdGluZwo+ID4g
aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjcuMy1yYzUvc291cmNlL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZGVidWdmcy5jI0w1ODYKPiAKPiBTcGVha2luZyBvZiB0aGF0LCB2MiB3aWxs
IGRlZHVwbGljYXRlIG15IGFjY2lkZW50YWxseSByZWJhc2VkLW92ZXIKPiBtb3N0bHkgZHVwbGlj
YXRlZCBFRElEIHBhcnNpbmcgYW5kIGZpeCB0aGlzIGZ1bmN0aW9uIHRvIHJlcG9ydCB0aGUKPiBu
ZXdseSBhZGRlZCB2cnJfbWluL3Zycl9tYXggZmllbGRzIG9mIHRoZSBkaXNwbGF5X2luZm8uIChT
aW5jZQo+IGFwcGFyZW50bHkgbW9uaXRvcl9yYW5nZSBpcyBwb3B1bGF0ZWQgYnkgVkVTQSBhbmQg
bWVzc2luZyB3aXRoIGl0Cj4gbWF5IG5vdCBiZSBva2F5PykKPiAKPiBLaW5kIHJlZ2FyZHMsCj4g
Tmljb2xhcyBGcmF0dGFyb2xpCj4gCj4gPiAKPiA+IFRoYW5rcywKPiA+IExlbwo+ID4gCj4gPiA+
IAo+ID4gPiAKPiA+ID4gLS0gRWFydGhsaW5nIE1pY2hlbCBEw6RuemVyIFwgR05PTUUgLyBYd2F5
bGFuZCAvIE1lc2EgZGV2ZWxvcGVyIGh0dHBzOi8vcmVkaGF0LmNvbSBcIExpYnJlIHNvZnR3YXJl
IGVudGh1c2lhc3QKPiA+IAo+ID4gCj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
