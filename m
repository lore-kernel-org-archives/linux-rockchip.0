Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6D2C25B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 07:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9H5RXFRioolV/1NlIre872YIjXu0TzF5Gvvc9CsZYo=; b=ekHN8m6Gl5TnGx
	l54Oi6Gcn0QgP117ax8tHI1jdtJIGJTH5yOY7QgmCR3oXcncc7baltsxIIKBvVrMnhTad7t2uflzy
	Y1F7hYNv3HbnAoosTwFQkQT9kn56sOdU/NJVgmminMoI1Oevl9XytmwkfhS2c7BcUcvGUkcyLh+2W
	BBlgci4YNpiAF6OiXbd0JlRBldgML/rPFNdpnRL2Yq2n/nun0/sVhqgT2uyDDdJiWkJ/pQ248Nmpb
	QHcw9pnEIqPj+7PqCMY6BaYTrnSQE+KAlxvhWJmGLd5oVp42CShD6QKElmis0extWWQeeKPrhLWpj
	i0hLU46CNdeUSU/jmUIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9JZ9-0000000GXwb-0L3w;
	Tue, 21 May 2024 07:05:43 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9JZ5-0000000GXtz-0Hsx;
	Tue, 21 May 2024 07:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716275137;
	bh=nS/Dr2W3vGanwW9ifFd+bOFrHEwvBrs3b1sW5lLV82U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qm0vO6hSCRlLszYJes6vtZsP0qVLDOWOlMVSXIEkovjNeL4Dq+Cc+8MXdXP7o9Ngt
	 dEgAlzV+KObOGcAdS/6I44aVkdi+dzENzBC+C8438w5ZDIY3qhWEdam1o+AodVwzjv
	 LXMakGJRGQchKxC8P/1xweTSAiUSv5m/wIebY9OQ7ZoehiIA9kMjvWzZlPc043uEtL
	 I9WPKXT+MUL2ESyAvmJo630D/7kottF1JQB7ihruCKvj6sjbQnA/ZmNcTgV2aj4M44
	 yBEOL1WXeyBsLFdR4/W1aZOQopqDRLXK/J8L1Xq3XC3FW2nsXiT1XtAj/HU/gghFaX
	 X7t22RCH7dZsQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E0B0A378202E;
	Tue, 21 May 2024 07:05:33 +0000 (UTC)
Message-ID: <9ab7eb04-d4c6-4a79-87cb-2d21e4bfa9c4@collabora.com>
Date: Tue, 21 May 2024 12:35:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] drm/ci: generate testlist from build
Content-Language: en-US
To: Helen Koike <helen.koike@collabora.com>, dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 dmitry.baryshkov@linaro.org, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-3-vignesh.raman@collabora.com>
 <c7e0a8b1-5be6-460b-b489-2ab5a8248d32@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <c7e0a8b1-5be6-460b-b489-2ab5a8248d32@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_000539_269833_D7790EF8 
X-CRM114-Status: GOOD (  14.47  )
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

SGkgSGVsZW4sCgpPbiAyMS8wNS8yNCAwMTo1NCwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gCj4gCj4g
T24gMTcvMDUvMjAyNCAwNjoyNCwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4gU3RvcCB2ZW5kb3Jp
bmcgdGhlIHRlc3RsaXN0IGludG8gdGhlIGtlcm5lbC4gSW5zdGVhZCwgdXNlIHRoZQo+PiB0ZXN0
bGlzdCBmcm9tIHRoZSBJR1QgYnVpbGQgdG8gZW5zdXJlIHdlIGRvIG5vdCBtaXNzIHJlbmFtZWQK
Pj4gb3IgbmV3bHkgYWRkZWQgdGVzdHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFt
YW4gPHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+Cj4+IHYyOgo+PiDCoMKg
IC0gRml4IHRlc3RsaXN0IGdlbmVyYXRpb24gZm9yIGFybSBhbmQgYXJtNjQgYnVpbGRzLgo+Pgo+
PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLWlndC5zaMKgIHzCoMKgIDM0ICsK
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5uZXIuc2ggfMKgwqDCoCA5ICstCj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC50eHTCoCB8IDI3NjEgLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwg
Mjc2NSBkZWxldGlvbnMoLSkKPj4gwqAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9jaS90ZXN0bGlzdC50eHQKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS9i
dWlsZC1pZ3Quc2ggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLWlndC5zaAo+PiBpbmRl
eCA3ODU5NTU0NzU2YzQuLmU2MjI0NDcyODYxMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2NpL2J1aWxkLWlndC5zaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQtaWd0
LnNoCj4+IEBAIC0zLDYgKzMsMzAgQEAKPj4gwqAgc2V0IC1leAo+PiArZnVuY3Rpb24gZ2VuZXJh
dGVfdGVzdGxpc3Qgewo+PiArwqDCoMKgIHNldCAreAo+PiArwqDCoMKgIHdoaWxlIHJlYWQgLXIg
bGluZTsgZG8KPj4gK8KgwqDCoMKgwqDCoMKgIGlmIFsgIiRsaW5lIiA9ICJURVNUTElTVCIgXSB8
fCBbICIkbGluZSIgPSAiRU5EIFRFU1RMSVNUIiBdOyAKPj4gdGhlbgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb250aW51ZQo+PiArwqDCoMKgwqDCoMKgwqAgZmkKPj4gKwo+PiArwqDCoMKg
wqDCoMKgwqAgdGVzdHM9JChlY2hvICIkbGluZSIgfCB0ciAnICcgJ1xuJykKPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqAgZm9yIHRlc3QgaW4gJHRlc3RzOyBkbwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBvdXRwdXQ9JCgvaWd0L2xpYmV4ZWMvaWd0LWdwdS10b29scy8iJHRlc3QiIAo+PiAtLWxp
c3Qtc3VidGVzdHMgfHwgdHJ1ZSkKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiBb
IC16ICIkb3V0cHV0IiBdOyB0aGVuCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZWNobyAiJHRlc3QiCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlY2hvICIkb3V0cHV0IiB8IHdoaWxlIHJlYWQgLXIgc3Vi
dGVzdDsgZG8KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVjaG8g
IiR0ZXN0QCRzdWJ0ZXN0Igo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRvbmUK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmkKPj4gK8KgwqDCoMKgwqDCoMKgIGRvbmUKPj4g
K8KgwqDCoCBkb25lIDwgL2lndC9saWJleGVjL2lndC1ncHUtdG9vbHMvdGVzdC1saXN0LnR4dCA+
IAo+PiAvaWd0L2xpYmV4ZWMvaWd0LWdwdS10b29scy90ZXN0bGlzdC50eHQKPiAKPiBKdXN0IGEg
bml0LCBjb3VsZCB5b3UgcmVuYW1lIHRoZSBmaWxlIHRvIGNpLXRlc3RsaXN0LnR4dCA/IFNpbmNl
IAo+IHRlc3QtbGlzdC50eHQgYW5kIHRlc3RsaXN0LnR4dCBjYW4gYmUgZWFzaWx5IGNvbmZ1c2Vk
LgoKU3VyZSwgd2lsbCByZW5hbWUgaXQuIEkgbWlzc2VkIHRvIGFkZCB0aGUgZ2VuZXJhdGluZyB0
ZXN0bGlzdCBwcmludCBhbHNvLgoKUmVnYXJkcywKVmlnbmVzaAoKPiAKPiBSZWdhcmRzLAo+IEhl
bGVuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
