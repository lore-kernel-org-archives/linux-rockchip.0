Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 821DCCF58D2
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 19:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:Subject:From:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAypWmX4UBs1X0GADdmOdoOYyNpSNvAxXuiBEoLSw+0=; b=va66CojTEGy1sD
	BA7sQSFyokYV39x5wNfLw+mCTlcHW7ebBoUxbKuPvpAbTOCls+GmO77Yag38BV9BuFjcdnF/SrIBS
	7FshaF0d2DbiQkat3KjF8QimvesYEeBgKDx2peU4YpxKGhxUSMULEb+PJCom2yf2Anc1O7nFmzbUZ
	AqlTPlJtH11YhM+1YSc3GURlt75iJemDO/ISEltvqhzJPMtocPnAEcKHtFGaDwrDFYOHJCC0iGGwN
	JmesURUzm/ROjzE5fmjJwBLYo29Kw9/5M0IVbsy12aoPASSOssIgVYLt8NJRehE9HqOd5zphDVOrg
	E3vcCeRBj5J3d5SoTiEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLoBl-00000005BlL-39HY;
	Wed, 19 Nov 2025 19:50:01 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLoBi-00000005Bik-1Gmc;
	Wed, 19 Nov 2025 19:50:00 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3127A4E417A9;
	Wed, 19 Nov 2025 19:49:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D932060699;
	Wed, 19 Nov 2025 19:49:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9639A102F2165;
	Wed, 19 Nov 2025 20:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763581794; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=idyisNLwX/81MGmvTcXblC/vtIFhEqtsf+2ziThKUl0=;
	b=JXf09Dz37KSxb84fPt0xCNsN6GavF6zxGYaDnAtetqDs1Km7Qg7tyl3ucVCrlP7/wI3vAH
	Brt1JLyQr6Z57RRLIel57nTLTRpZp/sci2HRmjHC9IN8P66AnuvhSLwoAleU1e/B5bLIs9
	iaCY9MyqzKGWVk2uTAulwuStyUlVPQz3dHD/IHrZ0mSJPM4G72sjQoDupWx8MFVv4jORI6
	skNrYrosDF7JY6jIe6vF8gCgT7WtJ7AMpQezOWiZJq6UpmsLH1LyIMmlFoUNpI6slEiwTZ
	GOY43hLWnRXakTMPShCKL/gGL2evdNlbs5ZmEWzSbKZqvB85NowHOsfPoUyZLA==
Mime-Version: 1.0
Date: Wed, 19 Nov 2025 20:49:42 +0100
Message-Id: <DECXKE9A67HG.35AR5UZKKQ8A1@bootlin.com>
To: "Chaoyi Chen" <chaoyi.chen@rock-chips.com>, "Chaoyi Chen"
 <kernel@airkyi.com>, "Heikki Krogerus" <heikki.krogerus@linux.intel.com>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Peter Chen" <hzpeterchen@gmail.com>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Sandy Huang" <hjc@rock-chips.com>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Yubing Zhang" <yubing.zhang@rock-chips.com>,
 "Frank Wang" <frank.wang@rock-chips.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Amit Sunil Dhamne"
 <amitsd@google.com>, "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker"
 <jbx6244@gmail.com>, "Diederik de Haas" <didi.debian@cknow.org>, "Peter
 Robinson" <pbrobinson@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v9 08/10] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Cc: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
X-Mailer: aerc 0.20.1
References: <20251111105040.94-1-kernel@airkyi.com>
 <20251111105040.94-9-kernel@airkyi.com>
 <DE5YP3AVGOG3.OHP68Z0F6KBU@bootlin.com>
 <b1a339e7-a011-4b4b-8988-2e3768753c85@rock-chips.com>
 <2ebace6f-d3c4-4516-b6cb-4951de06b6c8@rock-chips.com>
In-Reply-To: <2ebace6f-d3c4-4516-b6cb-4951de06b6c8@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_114958_481327_BB493417 
X-CRM114-Status: GOOD (  17.67  )
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

SGVsbG8gQ2hhb3lpLAoKT24gTW9uIE5vdiAxNywgMjAyNSBhdCAyOjMzIEFNIENFVCwgQ2hhb3lp
IENoZW4gd3JvdGU6Ci4uLgo+Pj4+ICvCoMKgwqAgLyogT25lIGVuZHBvaW50IG1heSBjb3JyZXNw
b25kIHRvIG9uZSBuZXh0IGJyaWRnZS4gKi8KPj4+PiArwqDCoMKgIGZvcl9lYWNoX29mX2dyYXBo
X3BvcnRfZW5kcG9pbnQocG9ydCwgZHBfZXApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGRldmljZV9ub2RlICpuZXh0X2JyaWRnZV9ub2RlIF9fZnJlZShkZXZpY2Vfbm9kZSkgPQo+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mX2dyYXBoX2dldF9yZW1vdGVfcG9ydF9wYXJlbnQo
ZHBfZXApOwo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqAgYnJpZGdlID0gb2ZfZHJtX2ZpbmRf
YnJpZGdlKG5leHRfYnJpZGdlX25vZGUpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIWJyaWRn
ZSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FUFJPQkVfREVGRVI7Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IH0KPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRwLT5uZXh0X2JyaWRnZV92YWxpZCA9IHRy
dWU7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRwLT5uZXh0X2JyaWRnZV9saXN0W2NvdW50XS5icmlk
Z2UgPSBicmlkZ2U7Cj4+PiBZb3UgYXJlIHN0b3JpbmcgYSByZWZlcmVuY2UgdG8gYSBkcm1fYnJp
ZGdlLCBzbyBoYXZlIHRvIGluY3JlbWVudCB0aGUKPj4+IHJlZmNvdW50Ogo+Pj4KPj4+IMKgwqDC
oMKgwqDCoMKgIGRwLT5uZXh0X2JyaWRnZV9saXN0W2NvdW50XS5icmlkZ2UgPSBkcm1fYnJpZGdl
X2dldChicmlkZ2UpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5e
Xl5eXl5eXgo+Pj4KPj4+IEZZSSB0aGVyZSBpcyBhIHBsYW4gdG8gcmVwbGFjZSBvZl9kcm1fZmlu
ZF9icmlkZ2UoKSB3aXRoIGEgZnVuY3Rpb24gdGhhdAo+Pj4gaW5jcmVhc2VzIHRoZSBicmlkZ2Ug
cmVmY291bnQgYmVmb3JlIHJldHVybmluZyB0aGUgYnJpZGdlLCBidXQgaXQncyBub3QKPj4+IHRo
ZXJlIHlldC4gV2hlbiB0aGF0IHdpbGwgaGFwcGVuLCB0aGUgZXhwbGljaXQgZHJtX2JyaWRnZV9n
ZXQoKSB3b24ndCBiZQo+Pj4gbmVlZGVkIGFueW1vcmUgYW5kIHRoaXMgY29kZSBjYW4gYmUgdXBk
YXRlZCBhY2NvcmRpbmdseS4KPgo+IE91dCBvZiBjdXJpb3NpdHksIEkgY2hlY2tlZCB0aGUgY2Fs
bGVycyBvZiBvZl9kcm1fZmluZF9icmlkZ2UoKSwgYW5kIGl0Cj4gc2VlbXMgdGhhdCB0aGUgdmFz
dCBtYWpvcml0eSBvZiB0aGVtIGRvIG5vdCBwYXkgYXR0ZW50aW9uIHRvIHRoZSBpbmNyZWFzZQo+
IG9yIGRlY3JlYXNlIG9mIHJlZmVyZW5jZSBjb3VudHMuCgpUaGV5IGRvIG5vdCBjYWxsIGRybV9i
cmlkZ2VfcHV0KCkgdG8gZGVjcmVhc2UgdGhlIHJlZmNvdW50LCBhbmQgdGhhdCdzCiJjb3JyZWN0
IiBiZWNhdXNlIG9mX2RybV9maW5kX2JyaWRnZSgpIGRvZXMgbm90IGluY3JlYXNlIGl0LiBUaGlz
IHdhcwp0b3RhbGx5IGNvcnJlY3QgaW4gdGhlIHBhc3QgYmVjYXVzZSBEUk0gYnJpZGdlIHJlZmNv
dW50aW5nIGRpZCBub3QgZXhpc3QuCgpSZWZjb3VudGluZyBoYXMgYmVlbiBhZGRlZCB0byBzdXBw
b3J0IGhvdC1wbHVnZ2FibGUgYnJpZGdlcy4gSWYgeW91IHdhbnQKbW9yZSBpbmZvLCB0aGlzIHBy
ZXNlbnRhdGlvbiBJIGdhdmUgYXQgRUxDRSAyMDI1IGlzIGEgZ29vZCBzdW1tYXJ5LCB3aXRoCmxp
bmtzIHRvIHJlbGV2YW50IHBhdGNoZXM6CgogKiBWaWRlbyAoc3RhcnQgYXQgMTk6MzApOiBodHRw
czovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PW1zbUJRQlN5Wlo0CiAqIFNsaWRlcyAoc3RhcnQg
YXQgc2xpZGUgMjcpOgogICBodHRwczovL2Jvb3RsaW4uY29tL3B1Yi9jb25mZXJlbmNlcy8yMDI1
L2VsY2UvY2VyZXNvbGktaG90cGx1Zy1zdGF0dXMucGRmCgo+IERvZXMgdGhpcyBtZWFuIHRoYXQg
ZXZlbiBpZiB3ZSBhZGQgcmVmZXJlbmNlIGNvdW50aW5nIGluCj4gb2ZfZHJtX2ZpbmRfYnJpZGdl
KCksIHdlIHN0aWxsIG5lZWQgdG8gbW9kaWZ5IHRoZSBjb3JyZXNwb25kaW5nIGZ1bmN0aW9ucwo+
IG9mIHRoZWlyIGNhbGxlcnMgYW5kIGRlY3JlYXNlIHRoZSByZWZlcmVuY2UgY291bnQgYXQgdGhl
IGFwcHJvcHJpYXRlCj4gdGltZT8KCkV4YWN0bHkuIEkgaGF2ZSBleHBsb3JlZCB0aGF0IGFwcHJv
YWNoIGJ1dCBpdCB0dXJuZWQgb3V0IGJlaW5nIG5vdApyZWFzb25hYmx5IGRvYWJsZSBkdWUgdG8g
dGhlIGxhcmdlIG51bWJlciBvZiAoZGlyZWN0ICsgaW5kaXJlY3QpIGNhbGxlcnMgb2YKb2ZfZHJt
X2ZpbmRfYnJpZGdlKCkgYXMgd2VsbCBhcyB0aGUgdHJpY2tpbmVzcyBvZiB0aG9zZSBpbnZvbHZp
bmd0aGUKcGFuZWxfYnJpZGdlLiBTbyBNYXhpbWUgcHJvcG9zZWQgYSBkaWZmZXJlbnQgYXBwcm9h
Y2ggWzBdOiBkZXByZWNhdGUKb2ZfZHJtX2ZpbmRfYnJpZGdlKCkgYW5kIHJlcGxhY2UgaXQgd2l0
aCBhIGZ1bmN0aW9uIHRoYXQgaW5jcmVtZW50cyB0aGUKcmVmY291bnQsIHRoZW4gbGV0IHRoZSB2
YXJpb3VzIGNhbGxlcnMgbW92ZSB0byB0aGUgbmV3IGZ1bmN0aW9uIG92ZXIgdGltZS4KCkVhcmxp
ZXIgdG9kYXkgSSBzZW50IGEgc2VyaWVzIGRvaW5nIHRoYXQsIGFuZCBjb252ZXJ0aW5nIGxvdHMg
b2YgdXNlcnMKWzFdLiBJZi93aGVuIHRoYXQgYXBwcm9hY2ggd2lsbCBiZSBhY2NlcHRlZCwgeW91
IGNhbiB1cGRhdGUgeW91ciBkcml2ZXIgdG8KdXNlIHRoZSBuZXcgZHJtX29mX2Z1bmRfYnJpZGdl
KCkgYW5kIHRha2UgY2FyZSBvZiBwdXR0aW5nIHRoZSByZWZlcmVuY2UKd2hlbiBhcHByb3ByaWF0
ZS4gQnV0IHlvdSBkb24ndCBuZWVkIHRvIGRvIGFueXRoaW5nIHVudGlsIHRoZW4uCgpbMF0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjUwMzE5LXN0eWxpc2gtbGltZS1tb25n
b29zZS0wYTE4YWRAaG91YXQvClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjUx
MTE5LWRybS1icmlkZ2UtYWxsb2MtZ2V0cHV0LWRybV9vZl9maW5kX2JyaWRnZS12MS0wLTBkYjk4
YTdmZTQ3NEBib290bGluLmNvbS8KCj4gVGhhbmsgeW91LgoKWW91J3JlIHdlbGNvbWUuIEkgaG9w
ZSBpdCB3YXMgYSBjbGVhciBleHBsYW5hdGlvbi4KCkx1Y2EKCi0tCkx1Y2EgQ2VyZXNvbGksIEJv
b3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3Rs
aW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
