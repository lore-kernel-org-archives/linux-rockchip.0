Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CD8AD5C0CF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 14:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6lACdX0z4KAT6mlZ0Y9hu282SRHtw/zLP4HBffmTmSI=; b=u6pY9Svog07/w9f3gjR5uyAS66
	XOdbdyDtYPe5s1ogMkN/1jA7pcKuN9xfY/6MFywNACPcYOijTS7gTDBlhfg9ASxvs+EU9YAnQFpfL
	bD0MWp+N/P4Bu/qGdnZKq35kqHqdXdqVhk8kmV6lWpp1m2on6kO3ZoBsxjYcSNK8YABHSAywZtVEx
	IBnFuHtOJ6trag88z9wZQqKZCbAyqC8uH5/cox90glfv3cGsevZQfgp12zkS/2h7zTKS1vq7vMPNk
	dvBPLMESrBRaeVf0GOzUYlzx4LVmg8mufnfDG7F5jCUeUj1v4KRCda2R5hIxQqoIEx+gNcsVfRtdL
	ZShz5K5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Q1h-0000000ArRH-0M10;
	Fri, 08 Nov 2024 14:31:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Pbm-0000000An5I-12E9;
	Fri, 08 Nov 2024 14:05:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731074703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hPQvHE3q81KEG1KWpRY76/YYpzUKNWMXavpJD8Jdyj8=;
	b=X6+JIDD8w/pV1TnT7U0Owy43XKZNWlYyZGxAGEXciKVjqCG2FkpMvi+HP+IlhfTOnTzZk9
	8r56/KZNaLMB4D+VcUVPKibgBLC9G5ZY61C9/Liy15awpYRC3/r9kwyThxSlZMZazdqlHI
	nDRU/88tU4JCAfavUYsWg3LUKl4IgBsmIemzeiFpd+CL99C/2cDZfxDK+I2SEy2mManDod
	LHmWYccNCv+ek5zuXrZZUDtwiJdqKbOZZQzMlslS9UxsqkLdYRoOXl+K6L0qhscfIfXMDg
	bCN7wzNvAnM3mJKpAIsZMvwCS+MaoRuM5W/uxj4EqpsjOuVjeNZ9Hy6KRXDOQA==
Date: Fri, 08 Nov 2024 15:05:02 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Perform trivial code cleanups
In-Reply-To: <13633881.uLZWGnKmhe@diego>
References: <cover.1731073565.git.dsimic@manjaro.org>
 <35555b58a7284450fb16281514e4e6a3eb9c7b82.1731073565.git.dsimic@manjaro.org>
 <13633881.uLZWGnKmhe@diego>
Message-ID: <3734f6a5424e3537d717c587a058fc85@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_060506_767113_FFAB6BE5 
X-CRM114-Status: GOOD (  16.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTExLTA4IDE0OjU2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBGcmVpdGFnLCA4LiBOb3ZlbWJlciAyMDI0LCAxNDo1Mzo1NyBDRVQgc2NocmllYiBEcmFn
YW4gU2ltaWM6Cj4+IFBlcmZvcm0gYSBmZXcgdHJpdmlhbCBjb2RlIGNsZWFudXBzLCB0byBtYWtl
IG9uZSBsb2dnZWQgbWVzc2FnZSBhIGJpdCAKPj4gbW9yZQo+PiBjb25zaXN0ZW50IHdpdGggdGhl
IG90aGVyIGxvZ2dlZCBtZXNzYWdlcyBieSBjYXBpdGFsaXppbmcgaXRzIGZpcnN0IAo+PiB3b3Jk
LCBhbmQKPj4gdG8gYXZvaWQgbGluZSB3cmFwcGluZyBieSB1c2luZyB0aGUgMTAwLWNvbHVtbiB3
aWR0aCBiZXR0ZXIuCj4+IAo+PiBObyBpbnRlbmRlZCBmdW5jdGlvbmFsIGNoYW5nZXMgYXJlIGlu
dHJvZHVjZWQgYnkgdGhlc2UgY29kZSBjbGVhbnVwcy4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IERy
YWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jIHwgMTIgKysrKy0tLS0tLS0tCj4+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5j
IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+
IGluZGV4IDU4YTQ0YWYwZTlhZC4uZjQ1MWU3MGVmYmRkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+PiBAQCAtMTM3OSw3ICsx
Mzc5LDcgQEAgc3RhdGljIGludCBkd19taXBpX2RzaV9yb2NrY2hpcF9wcm9iZShzdHJ1Y3QgCj4+
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gIAl9Cj4+IAo+PiAgCWlmICghZHNpLT5jZGF0YSkg
ewo+PiAtCQlEUk1fREVWX0VSUk9SKGRldiwgIm5vIGRzaS1jb25maWcgZm9yICVzIG5vZGVcbiIs
IG5wLT5uYW1lKTsKPj4gKwkJRFJNX0RFVl9FUlJPUihkZXYsICJObyBkc2ktY29uZmlnIGZvciAl
cyBub2RlXG4iLCBucC0+bmFtZSk7Cj4gCj4gdGhpcyBpcyBhbGwgcHJvYmUtcmVsYXRlZCwgd2h5
IG5vdCBjb252ZXJ0IHRvIGRldl9lcnJfcHJvYmU/Cj4gCj4gQXMgdGhlIGRvYyBzdGF0ZXMgWzBd
LCBEUk1fREVWX0VSUk9SIGlzIGRlcHJlY2F0ZWQgaW4gZmF2b3Igb2YgZGV2X2Vyci4KPiBTbyBk
ZXZfZXJyX3Byb2JlIHdvdWxkIGJlIHRoZSBjb3JyZWN0IHdheSB0byBnbz8KClRoYW5rcyBmb3Ig
eW91ciBxdWljayByZXNwb25zZSEgIFNlZWluZyB0aGF0IERSTV9ERVZfRVJST1IoKSBpcyBub3cK
ZGVwcmVjYXRlZCAod2hpY2ggSSBvcmlnaW5hbGx5IG1pc3NlZCwgaW4gYWxsIGhvbmVzdHkpIG1h
a2VzIG1lIHZlcnkKaGFwcHkuIDopICBJJ3ZlIG5ldmVyIGJlZW4gYSBodWdlIGZhbiBvZiB0aGUg
Zm9ybWF0IG9mIHRoZSBtZXNzYWdlcwp0aGF0IERSTV9ERVZfRVJST1IoKSBwcm9kdWNlcy4KCkhv
d2V2ZXIsIHBlcmhhcHMgaXQgd291bGQgYmUgYmV0dGVyIHRvIGtlZXAgdGhlc2UgcGF0Y2hlcyBh
cy1pcywgYXMKc29tZSBraW5kIG9mIGFuIGludGVybWVkaWF0ZSwgbGltaXRlZC1zY29wZSBjbGVh
bnVwICsgYnVnZml4IGNvbWJvLAphbmQgbGVhdmUgdGhlIGNvbXBsZXRlIERSTV9ERVZfRVJST1Io
KSAtLT4gZGV2X2VycigpL2Rldl9lcnJfcHJvYmUoKQpjb252ZXJzaW9uIHRvIHNlcGFyYXRlIHBh
dGNoZXMuICBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBhdm9pZAphIHBhcnRpYWwgY29u
dmVyc2lvbiwgYW5kIEknbGwgYmUgbW9yZSB0aGFuIGhhcHB5IHRvIHB1dCB0aGUgY29tcGxldGUK
Y29udmVyc2lvbiBvbiBteSBUT0RPIGxpc3QuIDopCgo+IFswXSAKPiBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni4xMS42L3NvdXJjZS9pbmNsdWRlL2RybS9kcm1fcHJpbnQuaCNM
NDMxCj4gCj4+ICAJCXJldHVybiAtRUlOVkFMOwo+PiAgCX0KPj4gCj4+IEBAIC0xNDA4LDE5ICsx
NDA4LDE2IEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfcm9ja2NoaXBfcHJvYmUoc3RydWN0IAo+
PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAJCQlkc2ktPnBsbHJlZl9jbGsgPSBOVUxMOwo+
PiAgCQl9IGVsc2Ugewo+PiAgCQkJcmV0ID0gUFRSX0VSUihkc2ktPnBsbHJlZl9jbGspOwo+PiAt
CQkJRFJNX0RFVl9FUlJPUihkZXYsCj4+IC0JCQkJICAgICAgIlVuYWJsZSB0byBnZXQgcGxsIHJl
ZmVyZW5jZSBjbG9jazogJWRcbiIsCj4+IC0JCQkJICAgICAgcmV0KTsKPj4gKwkJCURSTV9ERVZf
RVJST1IoZGV2LCAiVW5hYmxlIHRvIGdldCBwbGwgcmVmZXJlbmNlIGNsb2NrOiAlZFxuIiwgCj4+
IHJldCk7Cj4+ICAJCQlyZXR1cm4gcmV0Owo+PiAgCQl9Cj4+ICAJfQo+PiAKPj4gIAlpZiAoZHNp
LT5jZGF0YS0+ZmxhZ3MgJiBEV19NSVBJX05FRURTX1BIWV9DRkdfQ0xLKSB7Cj4+ICAJCWRzaS0+
cGh5X2NmZ19jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicGh5X2NmZyIpOwo+PiAgCQlpZiAoSVNf
RVJSKGRzaS0+cGh5X2NmZ19jbGspKSB7Cj4+ICAJCQlyZXQgPSBQVFJfRVJSKGRzaS0+cGh5X2Nm
Z19jbGspOwo+PiAtCQkJRFJNX0RFVl9FUlJPUihkZXYsCj4+IC0JCQkJICAgICAgIlVuYWJsZSB0
byBnZXQgcGh5X2NmZ19jbGs6ICVkXG4iLCByZXQpOwo+PiArCQkJRFJNX0RFVl9FUlJPUihkZXYs
ICJVbmFibGUgdG8gZ2V0IHBoeV9jZmdfY2xrOiAlZFxuIiwgcmV0KTsKPj4gIAkJCXJldHVybiBy
ZXQ7Cj4+ICAJCX0KPj4gIAl9Cj4+IEBAIC0xNDY1LDggKzE0NjIsNyBAQCBzdGF0aWMgaW50IGR3
X21pcGlfZHNpX3JvY2tjaGlwX3Byb2JlKHN0cnVjdCAKPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+PiAgCWlmIChJU19FUlIoZHNpLT5kbWQpKSB7Cj4+ICAJCXJldCA9IFBUUl9FUlIoZHNpLT5k
bWQpOwo+PiAgCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4+IC0JCQlEUk1fREVWX0VSUk9S
KGRldiwKPj4gLQkJCQkgICAgICAiRmFpbGVkIHRvIHByb2JlIGR3X21pcGlfZHNpOiAlZFxuIiwg
cmV0KTsKPj4gKwkJCURSTV9ERVZfRVJST1IoZGV2LCAiRmFpbGVkIHRvIHByb2JlIGR3X21pcGlf
ZHNpOiAlZFxuIiwgcmV0KTsKPj4gIAkJcmV0dXJuIHJldDsKPj4gIAl9Cj4+IAo+PiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
