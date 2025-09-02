Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1070CCA1009
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 22:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JzOnn08sjQuIv27thi4MLlnDRt9x3mgftFKrGbsrzg=; b=ysmZdvAIo6ijAq
	sFkw/pXzaN8HMvJCjpLJh23yt3helEB+1EfbULRfAlJbje4zqws3XZOS0LfEBC7A0/yGzldOsgV9N
	3k4OBuRTOMdMg07iEA2H6AO6/V/sgv+95S803iIOHTMndsJC0rxFygNggiktijp2jYvDkIUZgBQ0R
	yEU4H1GaJCZT7LzlQCtoo/VVuHWGtU4PZAzByx5jU83zjaz4BRJiyJEdxwaw/Jhm7VHq6Ttl75vdr
	/5qOZulXb131Q5f3NiLoOsdZEZW/OrrVjOiTTSeSsw3IFP3vhaf5zfoxtrsCu/By1KFILelxZmd/v
	MPG3NU1yoR3JwrX7tR7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utZwj-00000002UXm-3fc1;
	Tue, 02 Sep 2025 22:57:49 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utTpc-00000000wfg-3k2V;
	Tue, 02 Sep 2025 16:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756830362;
	bh=WALewwHx2C+Gr6Q65PLmSt5V0bZuUMTVLBppkG5GReI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mnz2RLK4X3Hk5GbUktymH8Z7xV3xj05l/Ro6j5NbhrNjDWsApUu8raDBfmlyQaJpT
	 BVPoxC4eqLR3B+te5KPtj0FiQ1ymxK+fJo23QM2Kq8ihnBNB6t/lT0YvhU48OD/S1A
	 IT1BK+xCwrQDeZqG2pHK8ijHJcop/QUFi57O9hR4Fr6CNSb3WD8DE+/WImSnPaI2oV
	 3rSa7s6KWHrnrGj2EC+3BcOSJfOFz5IadIRB6dZq3G1FCxI68dOqclnUdZda5CKMnD
	 tnQcQvg0wg1GGHeLx/vLzWkxAfjYaO79PVi8Aj5VUf5a2Ifp4YkAoD7RepZN4x+vmf
	 OMyM4CwsQQqtQ==
Received: from [192.168.1.90] (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2FDA617E0B84;
	Tue,  2 Sep 2025 18:26:02 +0200 (CEST)
Message-ID: <2a8ab8c3-36ae-46bd-8f98-6b3760532cb5@collabora.com>
Date: Tue, 2 Sep 2025 19:26:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm: Add CRTC background color property
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Matt Roper <matthew.d.roper@intel.com>
References: <20250902-rk3588-bgcolor-v1-0-fd97df91d89f@collabora.com>
 <20250902-rk3588-bgcolor-v1-1-fd97df91d89f@collabora.com>
 <aLby6OPxgubt7kd_@intel.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <aLby6OPxgubt7kd_@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_092605_080674_816F54B5 
X-CRM114-Status: GOOD (  16.37  )
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

T24gOS8yLzI1IDQ6MzYgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBUdWUsIFNlcCAw
MiwgMjAyNSBhdCAxMjoyNzo1NlBNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+
IFNvbWUgZGlzcGxheSBjb250cm9sbGVycyBjYW4gYmUgaGFyZHdhcmUgcHJvZ3JhbW1lZCB0byBz
aG93IG5vbi1ibGFjawo+PiBjb2xvcnMgZm9yIHBpeGVscyB0aGF0IGFyZSBlaXRoZXIgbm90IGNv
dmVyZWQgYnkgYW55IHBsYW5lIG9yIGFyZQo+PiBleHBvc2VkIHRocm91Z2ggdHJhbnNwYXJlbnQg
cmVnaW9ucyBvZiBoaWdoZXIgcGxhbmVzLiAgVGhpcyBmZWF0dXJlIGNhbgo+PiBoZWxwIHJlZHVj
ZSBtZW1vcnkgYmFuZHdpZHRoIHVzYWdlLCBlLmcuIGluIGNvbXBvc2l0b3JzIG1hbmFnaW5nIGEg
VUkKPj4gd2l0aCBhIHNvbGlkIGJhY2tncm91bmQgY29sb3Igd2hpbGUgdXNpbmcgc21hbGxlciBw
bGFuZXMgdG8gcmVuZGVyIHRoZQo+PiByZW1haW5pbmcgY29udGVudC4KPj4KPj4gVG8gc3VwcG9y
dCB0aGlzIGNhcGFiaWxpdHksIGludHJvZHVjZSB0aGUgQkFDS0dST1VORF9DT0xPUiBzdGFuZGFy
ZCBEUk0KPj4gbW9kZSBwcm9wZXJ0eSwgd2hpY2ggY2FuIGJlIGF0dGFjaGVkIHRvIGEgQ1JUQyB0
aHJvdWdoIHRoZQo+PiBkcm1fY3J0Y19hdHRhY2hfYmFja2dyb3VuZF9jb2xvcl9wcm9wZXJ0eSgp
IGhlbHBlciBmdW5jdGlvbi4KPj4KPj4gQWRkaXRpb25hbGx5LCBkZWZpbmUgYSA2NC1iaXQgQVJH
QiBmb3JtYXQgdmFsdWUgdG8gYmUgYnVpbHQgd2l0aCB0aGUKPj4gaGVscCBvZiBhIGRlZGljYXRl
ZCBkcm1fYXJnYjY0KCkgdXRpbGl0eSBtYWNyby4gIEluZGl2aWR1YWwgY29sb3IKPj4gY29tcG9u
ZW50cyBjYW4gYmUgZXh0cmFjdGVkIHdpdGggZGVzaXJlZCBwcmVjaXNpb24gdXNpbmcgdGhlCj4+
IGNvcnJlc3BvbmRpbmcgRFJNX0FSR0I2NF8qKCkgbWFjcm9zLgo+Pgo+PiBDby1kZXZlbG9wZWQt
Ynk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYt
Ynk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYt
Ynk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+
Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmMgfCAg
MSArCj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMgICAgICAgICB8ICA0ICsr
KysKPj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fYmxlbmQuYyAgICAgICAgICAgICAgIHwgMzcgKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rl
X2NvbmZpZy5jICAgICAgICAgfCAgNiArKysrKwo+PiAgaW5jbHVkZS9kcm0vZHJtX2JsZW5kLmgg
ICAgICAgICAgICAgICAgICAgfCAgNCArKystCj4+ICBpbmNsdWRlL2RybS9kcm1fY3J0Yy5oICAg
ICAgICAgICAgICAgICAgICB8IDEyICsrKysrKysrKysKPj4gIGluY2x1ZGUvZHJtL2RybV9tb2Rl
X2NvbmZpZy5oICAgICAgICAgICAgIHwgIDUgKysrKysKPj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJt
X21vZGUuaCAgICAgICAgICAgICAgIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAg
OCBmaWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKWy4uLl0K
Cj4+ICsvKgo+PiArICogUHV0IDE2LWJpdCBBUkdCIHZhbHVlcyBpbnRvIGEgc3RhbmRhcmQgNjQt
Yml0IHJlcHJlc2VudGF0aW9uIHRoYXQKPj4gKyAqIGNhbiBiZSB1c2VkIGZvciBpb2N0bCBwYXJh
bWV0ZXJzLCBpbnRlci1kcml2ZXIgY29tbXVuaWNhdGlvbiwgZXRjLgo+PiArICovCj4+ICtzdGF0
aWMgaW5saW5lIF9fdTY0Cj4+ICtkcm1fYXJnYjY0KF9fdTE2IGFscGhhLCBfX3UxNiByZWQsIF9f
dTE2IGdyZWVuLCBfX3UxNiBibHVlKQo+PiArewo+PiArCXJldHVybiAoX191NjQpYWxwaGEgPDwg
NDggfCAoX191NjQpcmVkIDw8IDMyIHwgKF9fdTY0KWdyZWVuIDw8IDE2IHwgYmx1ZTsKPj4gK30K
Pj4gKwo+PiArLyoKPj4gKyAqIEV4dHJhY3QgdGhlIHNwZWNpZmllZCBudW1iZXIgb2YgbGVhc3Qt
c2lnbmlmaWNhbnQgYml0cyBvZiBhIHNwZWNpZmljCj4+ICsgKiBjb2xvciBjb21wb25lbnQgZnJv
bSBhIHN0YW5kYXJkIDY0LWJpdCBBUkdCIHZhbHVlLgo+IAo+IFdoeSB3b3VsZCB5b3UgZXZlciB3
YW50IHRoZSBsZWFzdCBzaWduaWZpY2FudCBiaXRzPwoKUmlnaHQsIHRoYXQncyB1c2VsZXNzIC0g
d2lsbCByZXBsYWNlIHdpdGggcHJvcGVyIGhlbHBlcnMgZGVhbGluZyB3aXRoIGN1c3RvbQpwcmVj
aXNpb24uCgpUaGFua3MsCkNyaXN0aWFuCgo+PiArICovCj4+ICsjZGVmaW5lIERSTV9BUkdCNjRf
Q09NUChjLCBzaGlmdCwgbnVtbHNiKSBcCj4+ICsJKChfX3UxNikoKChjKSA+PiAoc2hpZnQpKSAm
ICgoMVVMIDw8IChudW1sc2IpICUgMTcpIC0gMSkpKQo+PiArI2RlZmluZSBEUk1fQVJHQjY0X0FM
UEhBX0xTQihjLCBudW1sc2IpIERSTV9BUkdCNjRfQ09NUChjLCA0OCwgbnVtbHNiKQo+PiArI2Rl
ZmluZSBEUk1fQVJHQjY0X1JFRF9MU0IoYywgbnVtbHNiKSAgIERSTV9BUkdCNjRfQ09NUChjLCAz
MiwgbnVtbHNiKQo+PiArI2RlZmluZSBEUk1fQVJHQjY0X0dSRUVOX0xTQihjLCBudW1sc2IpIERS
TV9BUkdCNjRfQ09NUChjLCAxNiwgbnVtbHNiKQo+PiArI2RlZmluZSBEUk1fQVJHQjY0X0JMVUVf
TFNCKGMsIG51bWxzYikgIERSTV9BUkdCNjRfQ09NUChjLCAwLCBudW1sc2IpCj4+ICsKPj4gKy8q
Cj4+ICsgKiBDb252ZW5pZW5jZSB3cmFwcGVycyB0byBleHRyYWN0IGFsbCAxNiBiaXRzIG9mIGEg
c3BlY2lmaWMgY29sb3IKPj4gKyAqIGNvbXBvbmVudCBmcm9tIGEgc3RhbmRhcmQgNjQtYml0IEFS
R0IgdmFsdWUuCj4+ICsgKi8KPj4gKyNkZWZpbmUgRFJNX0FSR0I2NF9BTFBIQShjKQkJRFJNX0FS
R0I2NF9BTFBIQV9MU0IoYywgMTYpCj4+ICsjZGVmaW5lIERSTV9BUkdCNjRfUkVEKGMpCQlEUk1f
QVJHQjY0X1JFRF9MU0IoYywgMTYpCj4+ICsjZGVmaW5lIERSTV9BUkdCNjRfR1JFRU4oYykJCURS
TV9BUkdCNjRfR1JFRU5fTFNCKGMsIDE2KQo+PiArI2RlZmluZSBEUk1fQVJHQjY0X0JMVUUoYykJ
CURSTV9BUkdCNjRfQkxVRV9MU0IoYywgMTYpCj4+ICsKPj4gICNpZiBkZWZpbmVkKF9fY3BsdXNw
bHVzKQo+PiAgfQo+PiAgI2VuZGlmCj4+Cj4+IC0tIAo+PiAyLjUxLjAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
