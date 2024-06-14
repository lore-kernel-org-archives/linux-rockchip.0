Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D49C27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 06:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUwofFYXZAKnb0SsNOaZH4jHYasjcUGHsTDZKYJdwVY=; b=CXirl4bQ1yEGZ6
	iHM3LqdVnz4tbgaCPqhoTjeX7elfCt7kW+goSONEXKfIgoIXj7VQ2KvvaXzHAVD379pe2s6DuYc0r
	X/rxJPo1yjxoIP7Fl/DabRp1sJqLjmY3I86OYXolrTRGFp51cOR/iFncvQ2/8wtyrdnGYdDXtfUbq
	tkwefA4lkOEnpQrFDegyAJEJ4Ah+duRJwu0w38fYllRH5WNQZNHKlcK15pMxFaB6m8pffOAgY6Xup
	vppk0Yz0bqbY7ISir0fLrkj/6dYiumQtg+BirJXcatRZyn34j3GDF4qYfhKKjnJ2EFxG+wyRO1+FP
	YudTGFMtHJwwraKKPjOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0sP-00000001grB-3uGy;
	Fri, 14 Jun 2024 06:57:34 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0sM-00000001gpZ-2Mmy;
	Fri, 14 Jun 2024 06:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=m86rVSpWrUT7GKV3AdRZmPKsD6oplVmcSgc01YtQa6s=; b=R
	fO3s8vrPt986Re4L1zE26Mt3Ovi3UwLGM6G/Hu7Wz5WC08ltLZD2eW9eYAaAy7y+
	c4lA2VXr5VPtTHGA83CmoRZ7lcU8pYixjpB7x4gc115E1gXC/kW5XOtIZYuPWtZN
	K6MCqmX1rLW2DIn62NWAcT2C/g6Hv2gH3c/M5Jn6oM=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-139 (Coremail) ; Fri, 14 Jun 2024 14:56:00 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 14 Jun 2024 14:56:00 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: neil.armstrong@linaro.org
Cc: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, 
	"Sam Ravnborg" <sam@ravnborg.org>, 
	"Andrzej Hajda" <andrzej.hajda@intel.com>, 
	"Robert Foss" <rfoss@kernel.org>, 
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, 
	"Jonas Karlman" <jonas@kwiboo.se>, 
	"Jernej Skrabec" <jernej.skrabec@gmail.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, 
	"Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Conor Dooley" <conor+dt@kernel.org>, 
	"Mark Yao" <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, "Alexandre ARNOUD" <aarnoud@me.com>, 
	"Luis de Arquer" <ldearquer@gmail.com>, 
	"Algea Cao" <algea.cao@rock-chips.com>
Subject: Re:Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX
 controller driver
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
 <20240604204110.GA84949@ravnborg.org>
 <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
 <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
 <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
X-NTES-SC: AL_Qu2aCv+ft0kt5iOYYekZnEobh+Y5UcK2s/ki2YFXN5k0iSX1/AY6fnxFOVrVy86gLTCnsxuyUDx35Od+VKh2UY7Q6aNmi14EuUvgLw7snJnK
MIME-Version: 1.0
Message-ID: <2d8e9235.68f3.19015881d35.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wB3f5GA6Wtmef5xAA--.11944W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwf9XmXAl1B3hgACsG
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_235731_053849_7A23F0A1 
X-CRM114-Status: GOOD (  22.12  )
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

CgoKCgoKCkhpIE5laWzvvIwKCkF0IDIwMjQtMDYtMDUgMTk6NDg6MDksICJOZWlsIEFybXN0cm9u
ZyIgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMDUvMDYvMjAyNCAxMjox
MSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiBPbiA2LzUvMjQgMTI6MzQgQU0sIENyaXN0
aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+IE9uIDYvNC8yNCAxMTo0MSBQTSwgU2FtIFJhdm5ib3Jn
IHdyb3RlOgo+Pj4+IEhpIENyaXN0aWFuLgo+Pj4+Cj4+Pj4gT24gVHVlLCBKdW4gMDQsIDIwMjQg
YXQgMTA6MzI6MDRQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+Pj4+PiBIaSBT
YW0sCj4+Pj4+Cj4+Pj4+IE9uIDYvMS8yNCA1OjMyIFBNLCBTYW0gUmF2bmJvcmcgd3JvdGU6Cj4+
Pj4+PiBIaSBDcmlzdGlhbiwKPj4+Pj4+Cj4+Pj4+PiBhIGZldyBkcml2ZS1ieSBjb21tZW50cyBi
ZWxvdy4KPj4+Pj4+Cj4+Pj4+PiAJU2FtCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+PiArCj4+Pj4+Pj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5jcyBkd19oZG1pX3FwX2Nvbm5l
Y3Rvcl9mdW5jcyA9IHsKPj4+Pj4+PiArCS5maWxsX21vZGVzID0gZHJtX2hlbHBlcl9wcm9iZV9z
aW5nbGVfY29ubmVjdG9yX21vZGVzLAo+Pj4+Pj4+ICsJLmRldGVjdCA9IGR3X2hkbWlfY29ubmVj
dG9yX2RldGVjdCwKPj4+Pj4+PiArCS5kZXN0cm95ID0gZHJtX2Nvbm5lY3Rvcl9jbGVhbnVwLAo+
Pj4+Pj4+ICsJLmZvcmNlID0gZHdfaGRtaV9xcF9jb25uZWN0b3JfZm9yY2UsCj4+Pj4+Pj4gKwku
cmVzZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jb25uZWN0b3JfcmVzZXQsCj4+Pj4+Pj4gKwkuYXRv
bWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kdXBsaWNh
dGVfc3RhdGUsCj4+Pj4+Pj4gKwkuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPSBkcm1fYXRvbWljX2hl
bHBlcl9jb25uZWN0b3JfZGVzdHJveV9zdGF0ZSwKPj4+Pj4+PiArfTsKPj4+Pj4+PiArCj4+Pj4+
Pj4gK3N0YXRpYyBpbnQgZHdfaGRtaV9xcF9icmlkZ2VfYXR0YWNoKHN0cnVjdCBkcm1fYnJpZGdl
ICpicmlkZ2UsCj4+Pj4+Pj4gKwkJCQkgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBm
bGFncykKPj4+Pj4+PiArewo+Pj4+Pj4+ICsJc3RydWN0IGR3X2hkbWkgKmhkbWkgPSBicmlkZ2Ut
PmRyaXZlcl9wcml2YXRlOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArCWlmIChmbGFncyAmIERSTV9CUklE
R0VfQVRUQUNIX05PX0NPTk5FQ1RPUikKPj4+Pj4+PiArCQlyZXR1cm4gZHJtX2JyaWRnZV9hdHRh
Y2goYnJpZGdlLT5lbmNvZGVyLCBoZG1pLT5uZXh0X2JyaWRnZSwKPj4+Pj4+PiArCQkJCQkgYnJp
ZGdlLCBmbGFncyk7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJcmV0dXJuIGR3X2hkbWlfY29ubmVjdG9y
X2NyZWF0ZShoZG1pLCAmZHdfaGRtaV9xcF9jb25uZWN0b3JfZnVuY3MpOwo+Pj4+Pj4+ICt9Cj4+
Pj4+Pgo+Pj4+Pj4gQXJlIHRoZXJlIGFueSB1c2VycyBsZWZ0IHRoYXQgcmVxdWlyZXMgdGhlIGRp
c3BsYXkgZHJpdmVyIHRvIGNyZWF0ZSB0aGUKPj4+Pj4+IGNvbm5lY3Rvcj8KPj4+Pj4+IEluIG90
aGVyIHdvcmRzIC0gY291bGQgdGhpcyBkcml2ZXIgZmFpbCBpZiBEUk1fQlJJREdFX0FUVEFDSF9O
T19DT05ORUNUT1IKPj4+Pj4+IGlzIG5vdCBwYXNzZWQgYW5kIGRyb3AgZHdfaGRtaV9jb25uZWN0
b3JfY3JlYXRlKCk/Cj4+Pj4+Pgo+Pj4+Pj4gSSBkaWQgbm90IHRyeSB0byB2ZXJpZnkgdGhpcyAt
IGp1c3QgYSBuYWl2ZSBxdWVzdGlvbi4KPj4+Pj4KPj4+Pj4gSSd2ZSBqdXN0IHRlc3RlZCB0aGlz
IGFuZCBpdCBkb2Vzbid0IHdvcmsgLSBkd19oZG1pX2Nvbm5lY3Rvcl9jcmVhdGUoKQo+Pj4+PiBp
cyBzdGlsbCBuZWVkZWQuCj4+Pj4KPj4+PiBIbW0sIHNlZW1zIHRoZSBkaXNwbGF5IGRyaXZlciBv
ciBzb21lIG90aGVyIGJyaWRnZSBkcml2ZXIgZmFpbHMgdG8KPj4+PiBzdXBwb3J0ICJEUk1fQlJJ
REdFX0FUVEFDSF9OT19DT05ORUNUT1IiLgo+Pj4+IHdoYXQgb3RoZXIgZHJpdmVycyBhcmUgaW52
b2x2ZWQ/Cj4+Pgo+Pj4gQ291bGQgaXQgYmUgcmVsYXRlZCB0byB0aGUgZ2x1ZSBkcml2ZXIgKHVw
ZGF0ZWQgaW4gdGhlIG5leHQgcGF0Y2gpIHdoaWNoCj4+PiBpcyBhbHNvIHJlc3BvbnNpYmxlIGZv
ciBzZXR0aW5nIHVwIHRoZSBlbmNvZGVyPwo+Pj4KPj4+PiBOb3RlIHRoYXQgbXkgY29tbWVudHMg
aGVyZSBzaG91bGQgYmUgc2VlbiBhcyBwb3RlbnRpYWwgZnV0dXJlCj4+Pj4gaW1wcm92ZW1lbnRz
LCBhbmQgZG8gbm90IGJsb2NrIHRoZSBwYXRjaCBmcm9tIGJlaW5nIHVzZWQuCj4+Pgo+Pj4gVGhh
bmtzIGZvciB0aGUgaGVhZHMgdXAhIFdpbGwgdHJ5IHRvIGdldCBiYWNrIHRvIHRoaXMgc29vbiBh
bmQgaW52ZXN0aWdhdGUuCj4+ICAgCj4+IElJVUMsIG1vZGVybiBicmlkZ2VzIHNob3VsZCBub3Qg
Y3JlYXRlIHRoZSBjb25uZWN0b3IgYnV0IHJlbHkgb24gZGlzcGxheQo+PiBkcml2ZXJzIHRvIHRh
a2UgY2FyZSBvZiwgd2hpY2ggaW4gdGhpcyBjYXNlIGlzIHRoZSBWT1AyIGRyaXZlci4gSG93ZXZl
ciwKPj4gaXQgYWxzbyBoYW5kbGVzIHNvbWUgb2YgdGhlIG9sZGVyIFNvQ3MgcmVseWluZyBvbiB0
aGUgbm9uLVFQIHZhcmlhbnQgb2YKPj4gRFcgSERNSSBJUC4gSGVuY2UgdGhlIGV4aXN0aW5nIGR3
LWhkbWkgZHJpdmVyIHdvdWxkIGJlIGFsc28gaW1wYWN0ZWQgaW4KPj4gb3JkZXIgdG8gY29tZSB1
cCB3aXRoIGEgcHJvcGVyIHNvbHV0aW9uLgo+PiAKPj4gQSBxdWljayBjaGVjayBzaG93cyB0aGVy
ZSBhcmUgc2V2ZXJhbCB1c2VycyBvZiB0aGlzIElQOgo+PiAKPj4gJCBnaXQgZ3JlcCAtRSAnPSBk
d19oZG1pXyhiaW5kfHByb2JlKVwoJwo+PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9pbXg4
bXAtaGRtaS10eC5jOiAgICBoZG1pLT5kd19oZG1pID0gZHdfaGRtaV9wcm9iZShwZGV2LCBwbGF0
X2RhdGEpOwo+PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYzogICAg
ICBoZG1pID0gZHdfaGRtaV9wcm9iZShwZGV2LCBwbGF0X2RhdGEpOwo+PiBkcml2ZXJzL2dwdS9k
cm0vaW14L2lwdXYzL2R3X2hkbWktaW14LmM6ICAgICAgICBoZG1pLT5oZG1pID0gZHdfaGRtaV9w
cm9iZShwZGV2LCBtYXRjaC0+ZGF0YSk7Cj4+IGRyaXZlcnMvZ3B1L2RybS9pbmdlbmljL2luZ2Vu
aWMtZHctaGRtaS5jOiAgICAgIGhkbWkgPSBkd19oZG1pX3Byb2JlKHBkZXYsICZpbmdlbmljX2R3
X2hkbWlfcGxhdF9kYXRhKTsKPj4gZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2R3X2hkbWku
YzogIG1lc29uX2R3X2hkbWktPmhkbWkgPSBkd19oZG1pX3Byb2JlKHBkZXYsICZtZXNvbl9kd19o
ZG1pLT5kd19wbGF0X2RhdGEpOwo+PiBkcml2ZXJzL2dwdS9kcm0vcmVuZXNhcy9yY2FyLWR1L3Jj
YXJfZHdfaGRtaS5jOiBoZG1pID0gZHdfaGRtaV9wcm9iZShwZGV2LCAmcmNhcl9kd19oZG1pX3Bs
YXRfZGF0YSk7Cj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmM6
ICAgICAgICAgICAgaGRtaS0+aGRtaSA9IGR3X2hkbWlfYmluZChwZGV2LCBlbmNvZGVyLCBwbGF0
X2RhdGEpOwo+PiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfZHdfaGRtaS5jOiAgaGRtaS0+
aGRtaSA9IGR3X2hkbWlfYmluZChwZGV2LCBlbmNvZGVyLCBwbGF0X2RhdGEpOwo+PiAKPj4gSSBk
aWRuJ3QgY2hlY2sgd2hpY2ggZGlzcGxheSBkcml2ZXJzIHdvdWxkIGJlIGludm9sdmVkLCBJJ2Qg
Z3Vlc3MgdGhlcmUKPj4gYXJlIHF1aXRlIGEgZmV3IG9mIHRoZW0gYXMgd2VsbC4gU28gaXQgc2Vl
bXMgdGhpcyBlbmRzIHVwIGJlaW5nIGEgcHJldHR5Cj4+IGNvbXBsZXggdGFzay4KPgo+SWYgdGhp
cyB3b3VsZCBiZSBhIGJyYW5kIG5ldyBkcml2ZXIsIHRoZW4gaXQgc2hvdWxkIG9ubHkgc3VwcG9y
dCBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IsCj5zbyB5b3Ugc2hvdWxkIG5vdCBjcmVh
dGUgYSBjb25uZWN0b3IgZnJvbSB0aGUgZHJpdmVyLgo+Cj5UaGUgZmFjdCBkdy1oZG1pIGFjY2Vw
dHMgYW4gYXR0YWNoIHdpdGhvdXQgdGhlIGZsYWcgaXMgZm9yIGxlZ2FjeSBwdXJwb3NlCj5zaW5j
ZSBzb21lIERSTSBkcml2ZXJzIGhhdmVuJ3Qgc3dpdGNoZWQgdG8gRFJNX0JSSURHRV9BVFRBQ0hf
Tk9fQ09OTkVDVE9SIHllcywKPmJ1dCBpdCdzIGEgcmVxdWlyZW1lbnQgZm9yIG5ldyBicmlkZ2Vz
IHNvIGF0IHNvbWUgcG9pbnQgeW91J2xsIG5lZWQgdG8gbWFrZQo+c3VyZSB0aGUgcm9ja2NoaXAg
Z2x1ZSBhbmQgZHJtIGRyaXZlciBzdXBwb3J0cyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNU
T1IuCj4KPlRoaXMgd2lsbCBncmVhdGx5IHNpbXBsaWZ5IHRoZSBkcml2ZXIhCgpCYXNlZCBvbiB0
aGUgcHJldmlvdXMgZGlzY3Vzc2lvbu+8jCB0aGUgRFcgSERNSSBRUCBkcml2ZXJzIHdpbGwgYmUg
aW1wbGVtZW50ZWQgbGlrZSB0aGlz77yaCgpDb3JlIGJyaWRnZSBsaWJyYXJ577yaIAogZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKUm9ja2NoaXAgcGxhdGZvcm0g
c3BlY2lmaWMgZ2x1Ze+8mgpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2Nr
Y2hpcC5jCgpBcyBhIG5ldyBicmlkZ2UgZHJpdmVyIHNob3VsZCBvbmx5IHN1cHBvcnQgRFJNX0JS
SURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCAKSXMgaXQgYWNjZXB0YWJsZSBpZiB3ZSBpbXBsZW1l
bnQgdGhlIGNvbm5lY3RvciBhdCAgdGhlIHJvY2tjaGlwIGdsdWUgZHdfaGRtaV9xcC1yb2NrY2hp
cC5jIO+8nwoKT3VyIGN1cnJlbnQgY29tYmluYXRpb24gaXMgYSBiaXQgY29tcGxleO+8mgpUaGUg
ZGlzcGxheSBjb250cm9sbGVyIGRyaXZlciBpcyAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMg77yMd2hpY2ggc2hhcmVkCmJ5IHJrMzU2OO+8jCByazM1ODggYW5k
IHNvbWUgdXBjb21pbmcgc29jIGxpa2UgcmszNTI4L3JrMzU2Mi4KCkZvciByazM1ODjvvIwgd2Ug
aGF2ZSB0b3RhbGx5IG5ldyBIRE1J44CBRFDjgIFEU0kyICBJUO+8jCB0aGV5IG5lZWQgYnJhbmQg
bmV3IGJyaWRnZSBkcml2ZXIgdGhhdApzaG91bGQgb25seSBzdXBwb3J0IERSTV9CUklER0VfQVRU
QUNIX05PX0NPTk5FQ1RPUu+8jCBhbmQgdGhlcmUgaXMgYWxzbyBhbiBlRFAgb24gcmszNTg4CnVz
ZSBhbmFsb2dpeF9kcF9jb3JlLmMgdGhhdCBjcmVhdGUgY29ubmVjdG9yIGJ5IGFuYWxvZ2l4X2Rw
IGJyaWRnZeOAggoKRm9yICByazM1NjjvvIwgdGhlIEhETUkvZURQL0RTSSBJUCBhcmUgYmFzZWQg
b24gb2xkIElQ77yMIHRoZSBjb3JyZXNwb25kaW5nIGRyaXZlcnMgYXJlIGR3LWhkbWnvvIxhbmFs
b2dpeF9kcAphbmQgZHctbWlwaS1kc2ksIHRoZXkgYm90aCBjcmVhdGUgZHJtIGNvbm5lY3RvciBi
eSBpdCdzIGJyaWRnZSBkcml2ZXIuIEFuZCByazM1MjgvcmszNTYyIGFyZSBsaWtlIHRoaXMgdG9v
44CCCgpTbyBpZiB3ZSBjYW4gY3JlYXRlIGRybV9jb25uZWN0b3IgYXQgZ2x1ZSBzaWRlIChzdWNo
IGFzIGR3X2hkbWlfcXAtcm9ja2NoaXAuYyksIGxldCB0aGUgaW50ZXJmYWNlIGRyaXZlciBkZWNp
ZGUKaWYgaXQgc2hvdWxkIGNyZWF0ZSBkcm1fY29ubmVjdG9yIG9yIG5vdCB3aWxsIG1ha2UgdGhl
IHZvcDIgZHJpdmVyIHNpbXBsZXLjgIIKCgoKCgo+Cj5OZWlsCj4KPj4gCj4+IENyaXN0aWFuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
