Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1945C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 09:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrF4ceV6moU2JhyRvWz+P22ol0P0/xcwILsNfQ7FxBs=; b=jm6ctVF2hKIgIB
	si6DwbL3A3aPcauqpF+PqGO2EJzITVbbt7CQJ9kL4fYGF4lv1jp4+l1IZddJwtJwvIsFR1LW4Hx3W
	+17YlEo5/1/jqWIjyDfvre4NJSdGJbLTgnAjSsr24OKPoK4wNdaQUbpAgxgUcyFATvgC7S5cE8j3o
	NlCxuHZsgTiIl22JuQEUvBqZD3YBI/3TKXpk8JFK2DhJV1fnNcgs2B3mHeKhhpdPrENigzlQre4u1
	r2sQ3WIXEk3KWTsQ8TqjxBih6I/s3NRlj//RN8wjW/u2D80c560avi5g5tYtpxbWXKwjplAiCHLi1
	NOrOlVpugXy1fcfZ7R6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLg8v-00GKmA-2E;
	Fri, 05 Jan 2024 09:05:29 +0000
Received: from mail-m118115.qiye.163.com ([115.236.118.115])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLg8s-00GKkf-0r;
	Fri, 05 Jan 2024 09:05:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=J49zP1kcxyDLDuYjM1j/Nm85RnUYMNpETkXTFJtmfMkDN7noi608Tk7coSGxV/XODolyLuQGAfQwK5z9r8GBmQTRolRWVBxr3xENAIZ/q631aqmpzcv2t/h44mHU7k8zm6iScrfG66xhRB6ZXc+4CrxCcpc58vsJz6ASrURiAxE=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7Rpg1YBO3YN3stA5+Iw9eTT2absDZpy7ygnLlv2cEYU=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 799D37802A7;
	Fri,  5 Jan 2024 17:04:56 +0800 (CST)
Message-ID: <acb52035-4f0c-430d-a2d2-26ab37805d7b@rock-chips.com>
Date: Fri, 5 Jan 2024 17:04:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <5867171.29KlJPOoH8@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlPTFZDH0lJTh0fQkJPTkJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8cd8de4dd6b24fkuuu799d37802a7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kxg6Pww*MDwZST8KPjc*F09R
	UTAaCRxVSlVKTEtPT09OT0JMSEhMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT09IQzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_010526_818335_1B6E3AE8 
X-CRM114-Status: GOOD (  16.28  )
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

SGk6CgpPbiAxLzQvMjQgMjM6NTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIENocmlzdGlh
biwgQW5keSwKPiAKPiBBbSBEb25uZXJzdGFnLCA0LiBKYW51YXIgMjAyNCwgMTU6Mzk6NTAgQ0VU
IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBDb21taXQgNWEwMjhlOGYwNjJmICgiZHJt
L3JvY2tjaGlwOiB2b3AyOiBBZGQgc3VwcG9ydCBmb3IgcmszNTg4IikKPj4gaW50cm9kdWNlZCBh
IHZhcmlhYmxlIHdoaWNoIGVuZGVkIHVwIGJlaW5nIHVudXNlZC4gIFJlbW92ZSBpdC4KPj4KPj4g
cm9ja2NoaXBfZHJtX3ZvcDIuYzoxNjg4OjIzOiB3YXJuaW5nOiB2YXJpYWJsZSDigJhpZl9kY2xr
X3JhdGXigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFA
Y29sbGFib3JhLmNvbT4KPiAKPiBpbiBnZW5lcmFsLCBwbGVhc2UgZG9uJ3Qgc2VuZCBub24tc2Vy
aWVzIHBhdGNoZXMgYXMgcmVwbGllcyB0byBvdGhlciBwYXRjaGVzLgo+IEl0IGNvbmZ1c2VzIHRv
b2xpbmcgbGlrZSBiNCB3YXkgdG9vIG9mdGVuLCBhcyB0aGlzIHBhdGNoIGlzIG5vdCBkZXNpZ25h
dGVkCj4gYXMgYSAyLzIgKHNpbWlsYXIgdG8gdGhlIGZpcnN0IG9uZSBub3QgYmVpbmcgMS8yKS4K
PiAKPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Ay
LmMgfCAyIC0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+IGluZGV4IDQ0NTA4
YzJkZDYxNC4uOTIzOTg1ZDQxNjFiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+PiBAQCAtMTY4NSw3ICsxNjg1LDYgQEAgc3RhdGljIHVu
c2lnbmVkIGxvbmcgcmszNTg4X2NhbGNfY3J1X2NmZyhzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2
cCwgaW50IGlkLAo+PiAgIAl1bnNpZ25lZCBsb25nIGRjbGtfY29yZV9yYXRlID0gdl9waXhjbGsg
Pj4gMjsKPj4gICAJdW5zaWduZWQgbG9uZyBkY2xrX3JhdGUgPSB2X3BpeGNsazsKPj4gICAJdW5z
aWduZWQgbG9uZyBkY2xrX291dF9yYXRlOwo+PiAtCXVuc2lnbmVkIGxvbmcgaWZfZGNsa19yYXRl
Owo+PiAgIAl1bnNpZ25lZCBsb25nIGlmX3BpeGNsa19yYXRlOwo+PiAgIAlpbnQgSyA9IDE7Cj4+
ICAgCj4+IEBAIC0xNzAwLDcgKzE2OTksNiBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyByazM1ODhf
Y2FsY19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZwLCBpbnQgaWQsCj4+ICAgCQl9
Cj4+ICAgCj4+ICAgCQlpZl9waXhjbGtfcmF0ZSA9IChkY2xrX2NvcmVfcmF0ZSA8PCAxKSAvIEs7
Cj4+IC0JCWlmX2RjbGtfcmF0ZSA9IGRjbGtfY29yZV9yYXRlIC8gSzsKPj4gICAJCS8qCj4+ICAg
CQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtfcmF0ZSAvIGlmX3BpeGNsa19yYXRlOwo+PiAgIAkJ
ICogKmlmX2RjbGtfZGl2ID0gZGNsa19yYXRlIC8gaWZfZGNsa19yYXRlOwo+PiAgIAkJICovCj4g
CQkqaWZfcGl4Y2xrX2RpdiA9IDI7Cj4gCQkqaWZfZGNsa19kaXYgPSA0Owo+IAo+IHdpdGggdGhl
IGNvZGUgY29udGludWluZyB3aXRoIHRob3NlIHN0YXRpYyBjb25zdGFudHMgYnV0IHRoZSBjb21t
ZW50Cj4gc2hvd2luZyBhIGZvcnVtdWxhLCBJIGRvIGhvcGUgQW5keSBjYW4gcHJvdmlkZSBhIGJp
dCBvZiBpbnNpZ2h0IGludG8KPiB3aGF0IGlzIGhhcHBlbmluZyBoZXJlLgo+IAo+IEkuZS4gSSdk
IHJlYWxseSBsaWtlIHRvIHVuZGVyc3RhbmQgaWYgdGhhdCByZWFsbHkgaXMganVzdCBhIHJlbW5h
bnQgb3IKPiBzb21ldGhpbmcgZGlmZmVyZW50IGlzIG5lZWRlZC4KClRoaXMgaXMgbm90IGEgcmVt
bmFudCwgaW4gbXkgVjEsIEkgY2FsY3VsYXRlIGFsbCB0aGUgZGl2IGJ5IGZvcm11bGEsIGJ1dCBT
YXNjaGEgcHJlZmVyCm1vcmUgZm9yIGEgY29uc3RhbnRzIHZhbHVlWzBdLCBzbyBJIGtlZXAgdGhp
cyBmb3JtdWxhIGFzIGNvbW1lbnRzIHRvIGluZGljYXRlIGhvdyB0aGVzZSB2YWx1ZSBjb21lIGZy
b20uCgpbMF1odHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2No
aXAvcGF0Y2gvMjAyMzExMTQxMTI4NTUuMTc3MTM3Mi0xLWFuZHlzaHJrQDE2My5jb20vCj4gCj4g
Cj4gSGVpa28KPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
