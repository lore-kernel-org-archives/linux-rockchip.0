Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7173FC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 19:53:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 394D42087D
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 19:53:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3MYsZ+v0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 394D42087D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aHZKKsZA0cZkxSaGfmAm2Zq0Dz6RoC9uFbg2fhqKVPU=; b=3MYsZ+v0uJC8Wdw+0qT+bfyK5
	MIMpdIq6V/ewocryLtThOMSfXM+0BionF2ro2QE1iZsms7TwwiuIu8Yex5vjr0KB/1tVGvnguhQU4
	CfoxoUOggHM42hgjHOLJuTUCBy9hCwboIhr+vpgwRTdVZESU9kLDBJS6jj9SJSO0SlmztT7ttBaCp
	QGXTtNpfQmCKMWVF0L8WA/crluaftYPD4hC+u25ofi2/l7zGSxwRpgleqEk4Q/8EP7oGZWNykzRox
	3aJHWZ+MJ35dtjuGYZGWfl9wpVqcR+1sg2gwpy4cDEU3XHCO5ro7QArYdkdUEQ9C4/ScbV7tmwlUv
	t004y5Iww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCprp-0002Bt-SZ; Mon, 31 Aug 2020 19:53:26 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCprn-0002BG-Du
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 19:53:24 +0000
IronPort-SDR: O4Fiek2S0lAKcphrvgxDJimXbFIO1rY/kRiilfMdliuU7M1k4WoDf68/qlYypY5prxQ8WNUheX
 UWBDucJjnIDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="137096379"
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="137096379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 12:53:20 -0700
IronPort-SDR: sfefiNLyiGq5iVg1AwuLny5G5TU/O5qwtlHtgIYCUy4LdeO0dLcBoN1AVzGkDQHFSH3+wA+XN8
 N3efer9xVYiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,376,1592895600"; d="scan'208";a="340770469"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 31 Aug 2020 12:53:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Aug 2020 22:53:16 +0300
Date: Mon, 31 Aug 2020 22:53:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: crj <algea.cao@rock-chips.com>
Subject: Re: [PATCH] drm: Parse Colorimetry data block from EDID
Message-ID: <20200831195316.GC6112@intel.com>
References: <20200826142328.131144-1-algea.cao@rock-chips.com>
 <20200827105701.GS6112@intel.com>
 <4cadf318-cfc3-92d6-6219-170166db94ce@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4cadf318-cfc3-92d6-6219-170166db94ce@rock-chips.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_155323_669180_2DFDE7E2 
X-CRM114-Status: GOOD (  23.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch, airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBBdWcgMjgsIDIwMjAgYXQgMDk6MDc6MTNBTSArMDgwMCwgY3JqIHdyb3RlOgo+IEhp
IFZpbGxlIFN5cmrDpGzDpCwKPiAKPiDlnKggMjAyMC84LzI3IDE4OjU3LCBWaWxsZSBTeXJqw6Rs
w6Qg5YaZ6YGTOgo+ID4gT24gV2VkLCBBdWcgMjYsIDIwMjAgYXQgMTA6MjM6MjhQTSArMDgwMCwg
QWxnZWEgQ2FvIHdyb3RlOgo+ID4+IENFQSA4NjEuMyBzcGVjIGFkZHMgY29sb3JpbWV0cnkgZGF0
YSBibG9jayBmb3IgSERNSS4KPiA+PiBQYXJzaW5nIHRoZSBibG9jayB0byBnZXQgdGhlIGNvbG9y
aW1ldHJ5IGRhdGEgZnJvbQo+ID4+IHBhbmVsLgo+ID4gQW5kIHdoYXQgZXhhY3RseSBkbyB5b3Ug
d2FudCB0byBkbyB3aXRoIHRoYXQgZGF0YT8KPiAKPiAKPiBXZSBjYW4gZ2V0IGNvbG9yaW1ldHJ5
IGRhdGEgYmxvY2sgZnJvbSBlZGlkIHRoZW4gc3VwcG9ydAo+IAo+IEhETUkgY29sb3JpbWV0cnkg
c3VjaCBhcyBCVDIwMjAuCgpCdXQgd2hhdCBkbyB5b3Ugd2FudCB0byBkbyB3aXRoIGl0PyBUaGUg
cGF0Y2ggZG9lcyBub3RoaW5nCmZ1bmN0aW9uYWwuCgo+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IEFs
Z2VhIENhbyA8YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+ID4+IC0tLQo+ID4+Cj4gPj4gICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyAgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPj4gICBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggfCAgMyArKysK
PiA+PiAgIGluY2x1ZGUvZHJtL2RybV9lZGlkLmggICAgICB8IDE0ICsrKysrKysrKysrKwo+ID4+
ICAgMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQu
Ywo+ID4+IGluZGV4IDMxNDk2YjZjZmM1Ni4uNjdlNjA3YzA0NDkyIDEwMDY0NAo+ID4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9lZGlkLmMKPiA+PiBAQCAtMzIyMyw2ICszMjIzLDcgQEAgYWRkX2RldGFpbGVkX21vZGVzKHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIHN0cnVjdCBlZGlkICplZGlkLAo+ID4+ICAg
I2RlZmluZSBWSURFT19CTE9DSyAgICAgMHgwMgo+ID4+ICAgI2RlZmluZSBWRU5ET1JfQkxPQ0sg
ICAgMHgwMwo+ID4+ICAgI2RlZmluZSBTUEVBS0VSX0JMT0NLCTB4MDQKPiA+PiArI2RlZmluZSBD
T0xPUklNRVRSWV9EQVRBX0JMT0NLCQkweDUKPiA+PiAgICNkZWZpbmUgSERSX1NUQVRJQ19NRVRB
REFUQV9CTE9DSwkweDYKPiA+PiAgICNkZWZpbmUgVVNFX0VYVEVOREVEX1RBRyAweDA3Cj4gPj4g
ICAjZGVmaW5lIEVYVF9WSURFT19DQVBBQklMSVRZX0JMT0NLIDB4MDAKPiA+PiBAQCAtNDMwOSw2
ICs0MzEwLDQ4IEBAIHN0YXRpYyB2b2lkIGZpeHVwX2RldGFpbGVkX2NlYV9tb2RlX2Nsb2NrKHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQo+ID4+ICAgCW1vZGUtPmNsb2NrID0gY2xvY2s7
Cj4gPj4gICB9Cj4gPj4gICAKPiA+PiArc3RhdGljIGJvb2wgY2VhX2RiX2lzX2hkbWlfY29sb3Jp
bWV0cnlfZGF0YV9ibG9jayhjb25zdCB1OCAqZGIpCj4gPj4gK3sKPiA+PiArCWlmIChjZWFfZGJf
dGFnKGRiKSAhPSBVU0VfRVhURU5ERURfVEFHKQo+ID4+ICsJCXJldHVybiBmYWxzZTsKPiA+PiAr
Cj4gPj4gKwlpZiAoZGJbMV0gIT0gQ09MT1JJTUVUUllfREFUQV9CTE9DSykKPiA+PiArCQlyZXR1
cm4gZmFsc2U7Cj4gPj4gKwo+ID4+ICsJaWYgKGNlYV9kYl9wYXlsb2FkX2xlbihkYikgPCAyKQo+
ID4+ICsJCXJldHVybiBmYWxzZTsKPiA+PiArCj4gPj4gKwlyZXR1cm4gdHJ1ZTsKPiA+PiArfQo+
ID4+ICsKPiA+PiArc3RhdGljIHZvaWQKPiA+PiArZHJtX3BhcnNlX2NvbG9yaW1ldHJ5X2RhdGFf
YmxvY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgY29uc3QgdTggKmRiKQo+ID4+
ICt7Cj4gPj4gKwlzdHJ1Y3QgZHJtX2hkbWlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItPmRpc3Bs
YXlfaW5mby5oZG1pOwo+ID4+ICsKPiA+PiArCWlmIChkYlsyXSAmIERSTV9FRElEX0NMUk1FVFJZ
X3h2WUNDXzYwMSkKPiA+PiArCQlpbmZvLT5jb2xvcmltZXRyeSB8PSBEUk1fRURJRF9DTFJNRVRS
WV94dllDQ182MDE7Cj4gPj4gKwlpZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV94dllDQ183
MDkpCj4gPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VESURfQ0xSTUVUUllfeHZZQ0Nf
NzA5Owo+ID4+ICsJaWYgKGRiWzJdICYgRFJNX0VESURfQ0xSTUVUUllfc1lDQ182MDEpCj4gPj4g
KwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VESURfQ0xSTUVUUllfc1lDQ182MDE7Cj4gPj4g
KwlpZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV9BREJZQ0NfNjAxKQo+ID4+ICsJCWluZm8t
PmNvbG9yaW1ldHJ5IHw9IERSTV9FRElEX0NMUk1FVFJZX0FEQllDQ182MDE7Cj4gPj4gKwlpZiAo
ZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV9BREJfUkdCKQo+ID4+ICsJCWluZm8tPmNvbG9yaW1l
dHJ5IHw9IERSTV9FRElEX0NMUk1FVFJZX0FEQl9SR0I7Cj4gPj4gKwlpZiAoZGJbMl0gJiBEUk1f
RURJRF9DTFJNRVRSWV9CVDIwMjBfQ1lDQykKPiA+PiArCQlpbmZvLT5jb2xvcmltZXRyeSB8PSBE
Uk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfQ1lDQzsKPiA+PiArCWlmIChkYlsyXSAmIERSTV9FRElE
X0NMUk1FVFJZX0JUMjAyMF9ZQ0MpCj4gPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VE
SURfQ0xSTUVUUllfQlQyMDIwX1lDQzsKPiA+PiArCWlmIChkYlsyXSAmIERSTV9FRElEX0NMUk1F
VFJZX0JUMjAyMF9SR0IpCj4gPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VESURfQ0xS
TUVUUllfQlQyMDIwX1JHQjsKPiA+PiArCS8qIEJ5dGUgNCBCaXQgNzogRENJLVAzICovCj4gPj4g
KwlpZiAoZGJbM10gJiBCSVQoNykpCj4gPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VE
SURfQ0xSTUVUUllfRENJX1AzOwo+ID4+ICsKPiA+PiArCURSTV9ERUJVR19LTVMoIlN1cHBvcnRl
ZCBDb2xvcmltZXRyeSAweCV4XG4iLCBpbmZvLT5jb2xvcmltZXRyeSk7Cj4gPj4gK30KPiA+PiAr
Cj4gPj4gICBzdGF0aWMgYm9vbCBjZWFfZGJfaXNfaGRtaV9oZHJfbWV0YWRhdGFfYmxvY2soY29u
c3QgdTggKmRiKQo+ID4+ICAgewo+ID4+ICAgCWlmIChjZWFfZGJfdGFnKGRiKSAhPSBVU0VfRVhU
RU5ERURfVEFHKQo+ID4+IEBAIC00OTk0LDYgKzUwMzcsOCBAQCBzdGF0aWMgdm9pZCBkcm1fcGFy
c2VfY2VhX2V4dChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ID4+ICAgCQkJZHJt
X3BhcnNlX3ZjZGIoY29ubmVjdG9yLCBkYik7Cj4gPj4gICAJCWlmIChjZWFfZGJfaXNfaGRtaV9o
ZHJfbWV0YWRhdGFfYmxvY2soZGIpKQo+ID4+ICAgCQkJZHJtX3BhcnNlX2hkcl9tZXRhZGF0YV9i
bG9jayhjb25uZWN0b3IsIGRiKTsKPiA+PiArCQlpZiAoY2VhX2RiX2lzX2hkbWlfY29sb3JpbWV0
cnlfZGF0YV9ibG9jayhkYikpCj4gPj4gKwkJCWRybV9wYXJzZV9jb2xvcmltZXRyeV9kYXRhX2Js
b2NrKGNvbm5lY3RvciwgZGIpOwo+ID4+ICAgCX0KPiA+PiAgIH0KPiA+PiAgIAo+ID4+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29u
bmVjdG9yLmgKPiA+PiBpbmRleCBhZjE0NTYwOGI1ZWQuLmQ1OTljM2I5ZTg4MSAxMDA2NDQKPiA+
PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiA+PiArKysgYi9pbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmgKPiA+PiBAQCAtMjA3LDYgKzIwNyw5IEBAIHN0cnVjdCBkcm1faGRt
aV9pbmZvIHsKPiA+PiAgIAo+ID4+ICAgCS8qKiBAeTQyMF9kY19tb2RlczogYml0bWFwIG9mIGRl
ZXAgY29sb3Igc3VwcG9ydCBpbmRleCAqLwo+ID4+ICAgCXU4IHk0MjBfZGNfbW9kZXM7Cj4gPj4g
Kwo+ID4+ICsJLyogQGNvbG9yaW1ldHJ5OiBiaXRtYXAgb2Ygc3VwcG9ydGVkIGNvbG9yaW1ldHJ5
IG1vZGVzICovCj4gPj4gKwl1MTYgY29sb3JpbWV0cnk7Cj4gPj4gICB9Owo+ID4+ICAgCj4gPj4g
ICAvKioKPiA+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaCBiL2luY2x1ZGUv
ZHJtL2RybV9lZGlkLmgKPiA+PiBpbmRleCBjZmE0ZjVhZjQ5YWYuLjk4ZmE3OGMyZjgyZCAxMDA2
NDQKPiA+PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oCj4gPj4gKysrIGIvaW5jbHVkZS9k
cm0vZHJtX2VkaWQuaAo+ID4+IEBAIC0yMjksNiArMjI5LDIwIEBAIHN0cnVjdCBkZXRhaWxlZF90
aW1pbmcgewo+ID4+ICAgCQkJCSAgICBEUk1fRURJRF9ZQ0JDUjQyMF9EQ18zNiB8IFwKPiA+PiAg
IAkJCQkgICAgRFJNX0VESURfWUNCQ1I0MjBfRENfMzApCj4gPj4gICAKPiA+PiArLyoKPiA+PiAr
ICogU3VwcG9ydGVkIENvbG9yaW1ldHJ5IGZyb20gY29sb3JpbWV0cnkgZGF0YSBibG9jawo+ID4+
ICsgKiBhcyBwZXIgQ0VBIDg2MS1HIHNwZWMKPiA+PiArICovCj4gPj4gKyNkZWZpbmUgRFJNX0VE
SURfQ0xSTUVUUllfeHZZQ0NfNjAxICAgKDEgPDwgMCkKPiA+PiArI2RlZmluZSBEUk1fRURJRF9D
TFJNRVRSWV94dllDQ183MDkgICAoMSA8PCAxKQo+ID4+ICsjZGVmaW5lIERSTV9FRElEX0NMUk1F
VFJZX3NZQ0NfNjAxICAgICgxIDw8IDIpCj4gPj4gKyNkZWZpbmUgRFJNX0VESURfQ0xSTUVUUllf
QURCWUNDXzYwMSAgKDEgPDwgMykKPiA+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV9BREJf
UkdCICAgICAoMSA8PCA0KQo+ID4+ICsjZGVmaW5lIERSTV9FRElEX0NMUk1FVFJZX0JUMjAyMF9D
WUNDICgxIDw8IDUpCj4gPj4gKyNkZWZpbmUgRFJNX0VESURfQ0xSTUVUUllfQlQyMDIwX1lDQyAg
KDEgPDwgNikKPiA+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfUkdCICAoMSA8
PCA3KQo+ID4+ICsjZGVmaW5lIERSTV9FRElEX0NMUk1FVFJZX0RDSV9QMyAgICAgICgxIDw8IDE1
KQo+ID4+ICsKPiA+PiAgIC8qIEVMRCBIZWFkZXIgQmxvY2sgKi8KPiA+PiAgICNkZWZpbmUgRFJN
X0VMRF9IRUFERVJfQkxPQ0tfU0laRQk0Cj4gPj4gICAKPiA+PiAtLSAKPiA+PiAyLjI1LjEKPiA+
Pgo+ID4+Cj4gPj4KPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+PiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKPiAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
