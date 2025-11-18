Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E98CED25D
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 09:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqslHTuDLFO5KYq77dJpuwhcnYVFqsNNl+lt1q3J/YU=; b=SHryalK4ReEySP
	qjyIlGPiQXYfZ4wE2VJQlYS358klFvbQS35q/Z7jDhRDZrjeFtLMdNIe5JeRIHNo4ZlcSGBoY2t/M
	bxjQ6MSF3c2X879oVvB4Ddebsi1e4Gqqz/GUAF0O13zFxboQvfBMBgrMLhNQRXlE4X4UawnMOcNlj
	Xaj/DzlR9xXw7rq3cu9MlwtJb5K91VS/2RBpsOM9OXAi2vikrFhGOZMtKn88sEkwGEsKg9YFRLMGr
	SknT90hlosweDvzQ8aYY1LwRYQbZW6i5oIW82zGIXTA2rpIvwaj10mGFpG2h0J0usIvJjjvtanusH
	jUjAO8m5WiAElAHWMjcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLI9t-00000000Akk-0Qae;
	Tue, 18 Nov 2025 09:37:57 +0000
Received: from mail-m32114.qiye.163.com ([220.197.32.114])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLI9p-00000000Ajf-276p;
	Tue, 18 Nov 2025 09:37:55 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29fbbda7b;
	Tue, 18 Nov 2025 17:37:40 +0800 (GMT+08:00)
Message-ID: <525040d5-84db-4de1-aed0-3b4b5a672f8b@rock-chips.com>
Date: Tue, 18 Nov 2025 17:37:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 06/10] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251111105040.94-1-kernel@airkyi.com>
 <20251111105040.94-7-kernel@airkyi.com>
 <7ca46d0d-d235-421e-95cb-901efb856b0c@linaro.org>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <7ca46d0d-d235-421e-95cb-901efb856b0c@linaro.org>
X-HM-Tid: 0a9a9653b96903abkunmdd5bac12ac7c5b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkaTlYfHUoaThlMGkNMSk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	9VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IX/NU+qLfjpc6jNOUokdq+mlntEXb77qHZKkJ9s4nb711L7OON8h5dqK7p3ob8lQuodsMJH5PP/UEAjPxp2FGszqJCz5PIUkZPtYDoAMdBI3gqfWs9lxcFir/AqFnDfu3ECbZBWBOW0/7v/CHt0D1o3TWssNEa9VVNiVVtzULiQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ju+gAVn51Xi01WO06/xEtoW6S8aMqC2W8WHS0vrOthQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_013754_022557_211B3A1C 
X-CRM114-Status: GOOD (  17.94  )
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

SGkgTmVpbCwKCk9uIDExLzE4LzIwMjUgNTowOCBQTSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4g
T24gMTEvMTEvMjUgMTE6NTAsIENoYW95aSBDaGVuIHdyb3RlOgo+PiBGcm9tOiBDaGFveWkgQ2hl
biA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IFVzaW5nIHRoZSBEUk1fQVVYX0JS
SURHRSBoZWxwZXIgdG8gY3JlYXRlIHRoZSB0cmFuc3BhcmVudCBEUk0gYnJpZGdlCj4+IGRldmlj
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hp
cHMuY29tPgo+PiAtLS0KPj4KPj4gKG5vIGNoYW5nZXMgc2luY2UgdjcpCj4+Cj4+IENoYW5nZXMg
aW4gdjY6Cj4+IC0gRml4IGRlcGVuZCBpbiBLY29uZmlnLgo+Pgo+PiDCoCBkcml2ZXJzL3BoeS9y
b2NrY2hpcC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKwo+PiDCoCBk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyB8IDUyICsrKysrKysrKysr
KysrKysrKysrKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL0tjb25maWcKPj4gaW5kZXggZGI0YWRjN2M1M2RhLi5iY2I1NDc2MjIyZmMgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL0tjb25maWcKPj4gKysrIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvS2NvbmZpZwo+PiBAQCAtMTIwLDYgKzEyMCw4IEBAIGNvbmZpZyBQSFlf
Uk9DS0NISVBfVFlQRUMKPj4gwqDCoMKgwqDCoCB0cmlzdGF0ZSAiUm9ja2NoaXAgVFlQRUMgUEhZ
IERyaXZlciIKPj4gwqDCoMKgwqDCoCBkZXBlbmRzIG9uIE9GICYmIChBUkNIX1JPQ0tDSElQIHx8
IENPTVBJTEVfVEVTVCkKPj4gwqDCoMKgwqDCoCBkZXBlbmRzIG9uIFRZUEVDIHx8IFRZUEVDPW4K
Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIERSTSB8fCBEUk09bgo+PiArwqDCoMKgIHNlbGVjdCBEUk1f
QVVYX0JSSURHRSBpZiBEUk1fQlJJREdFCj4+IMKgwqDCoMKgwqAgc2VsZWN0IEVYVENPTgo+PiDC
oMKgwqDCoMKgIHNlbGVjdCBHRU5FUklDX1BIWQo+PiDCoMKgwqDCoMKgIHNlbGVjdCBSRVNFVF9D
T05UUk9MTEVSCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4+
IGluZGV4IDFmNWI0MTQyY2JlNC4uNzQ4YTZlYjhhZDk1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwo+PiBAQCAtMzYsNiArMzYsNyBAQAo+PiDCoMKg
ICogb3JpZW50YXRpb24sIGZhbHNlIGlzIG5vcm1hbCBvcmllbnRhdGlvbi4KPj4gwqDCoCAqLwo+
PiDCoCArI2luY2x1ZGUgPGxpbnV4L2F1eGlsaWFyeV9idXMuaD4KPj4gwqAgI2luY2x1ZGUgPGxp
bnV4L2Nsay5oPgo+PiDCoCAjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+Cj4+IMKgICNp
bmNsdWRlIDxsaW51eC9kZWxheS5oPgo+PiBAQCAtNTYsNiArNTcsNyBAQAo+PiDCoCAjaW5jbHVk
ZSA8bGludXgvcGh5L3BoeS5oPgo+PiDCoCAjaW5jbHVkZSA8bGludXgvdXNiL3R5cGVjX2RwLmg+
Cj4+IMKgICNpbmNsdWRlIDxsaW51eC91c2IvdHlwZWNfbXV4Lmg+Cj4+ICsjaW5jbHVkZSA8ZHJt
L2JyaWRnZS9hdXgtYnJpZGdlLmg+Cj4+IMKgIMKgICNkZWZpbmUgQ01OX1NTTV9CQU5ER0FQwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAoMHgyMSA8PCAyKQo+PiDCoCAjZGVmaW5lIENNTl9TU01fQklB
U8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKDB4MjIgPDwgMikKPj4gQEAgLTQxNSw2ICs0MTcsNyBA
QCBzdHJ1Y3Qgcm9ja2NoaXBfdXNiM3BoeV9wb3J0X2NmZyB7Cj4+IMKgIMKgIHN0cnVjdCByb2Nr
Y2hpcF90eXBlY19waHkgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldjsKPj4gK8Kg
wqDCoCBzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSBkcF9wb3J0X2RldjsKPj4gwqDCoMKgwqDCoCB2
b2lkIF9faW9tZW0gKmJhc2U7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGV4dGNvbl9kZXYgKmV4dGNv
bjsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdHlwZWNfbXV4X2RldiAqbXV4Owo+PiBAQCAtMTI5OSw2
ICsxMzAyLDUxIEBAIHN0YXRpYyB2b2lkIHRjcGh5X3R5cGVjX211eF91bnJlZ2lzdGVyKHZvaWQg
KmRhdGEpCj4+IMKgwqDCoMKgwqAgdHlwZWNfbXV4X3VucmVnaXN0ZXIodGNwaHktPm11eCk7Cj4+
IMKgIH0KPj4gwqAgK3N0YXRpYyB2b2lkIHRjcGh5X2RwX3BvcnRfZGV2X3JlbGVhc2Uoc3RydWN0
IGRldmljZSAqZGV2KQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlICph
ZGV2ID0gdG9fYXV4aWxpYXJ5X2RldihkZXYpOwo+PiArCj4+ICvCoMKgwqAgb2Zfbm9kZV9wdXQo
YWRldi0+ZGV2Lm9mX25vZGUpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCB0Y3BoeV9kcF9w
b3J0X3VucmVnaXN0ZXJfYWRldih2b2lkICpfYWRldikKPj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3Qg
YXV4aWxpYXJ5X2RldmljZSAqYWRldiA9IF9hZGV2Owo+PiArCj4+ICvCoMKgwqAgYXV4aWxpYXJ5
X2RldmljZV9kZWxldGUoYWRldik7Cj4+ICvCoMKgwqAgYXV4aWxpYXJ5X2RldmljZV91bmluaXQo
YWRldik7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgdGNwaHlfYXV4X2JyaWRnZV9yZWdpc3Rl
cihzdHJ1Y3Qgcm9ja2NoaXBfdHlwZWNfcGh5ICp0Y3BoeSwgc3RydWN0IGRldmljZV9ub2RlICpu
cCkKPj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSAqYWRldiA9ICZ0Y3Bo
eS0+ZHBfcG9ydF9kZXY7Cj4+ICvCoMKgwqAgaW50IHJldDsKPj4gKwo+PiArwqDCoMKgIGFkZXYt
Pm5hbWUgPSAiZHBfcG9ydCI7Cj4+ICvCoMKgwqAgYWRldi0+ZGV2LnBhcmVudCA9IHRjcGh5LT5k
ZXY7Cj4+ICvCoMKgwqAgYWRldi0+ZGV2Lm9mX25vZGUgPSBvZl9ub2RlX2dldChucCk7Cj4+ICvC
oMKgwqAgYWRldi0+ZGV2LnJlbGVhc2UgPSB0Y3BoeV9kcF9wb3J0X2Rldl9yZWxlYXNlOwo+PiAr
Cj4+ICvCoMKgwqAgcmV0ID0gYXV4aWxpYXJ5X2RldmljZV9pbml0KGFkZXYpOwo+PiArCj4KPiBE
cm9wIHRoaXMgZW1wdHkgbGluZS4KCj4KPj4gK8KgwqDCoCBpZiAocmV0KSB7Cj4+ICvCoMKgwqDC
oMKgwqDCoCBvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSk7Cj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gcmV0Owo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldCA9IGF1eGlsaWFy
eV9kZXZpY2VfYWRkKGFkZXYpOwo+PiArwqDCoMKgIGlmIChyZXQpIHsKPj4gK8KgwqDCoMKgwqDC
oMKgIGF1eGlsaWFyeV9kZXZpY2VfdW5pbml0KGFkZXYpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHJldDsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCBkZXZtX2FkZF9hY3Rpb25fb3Jf
cmVzZXQodGNwaHktPmRldiwgdGNwaHlfZHBfcG9ydF91bnJlZ2lzdGVyX2FkZXYsIGFkZXYpOwo+
PiArCj4+ICvCoMKgwqAgcmV0ID0gZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXIoJmFkZXYtPmRldik7
Cj4KPiBBZGRpbmcgYW4gYXV4IGRldmljZSB0byBhbiBhdXggZGV2aWNlIGxvb2tzIHF1aXRlIG92
ZXJlbmdpbmVlcmVkIHRvIG1lICEKPgo+IElmIGl0J3MgYSBtYXR0ZXIgb2YgdXNpbmcgdGhlIHBy
b3BlciBvZl9ub2RlLCB5b3UgbWF5IGluc3RlYWQgY3JlYXRlIGEgc2VwYXJhdGUKPiBkcm1fYXV4
X2JyaWRnZV9yZWdpc3RlcigpIGxpa2UgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2Rl
KCkgaW5zdGVhZC4KClllcywgYXMgeW91IHNhaWQsIHRoZSBhdXggZGV2aWNlIGhlcmUgaXMgb25s
eSB0byBsZXQgdGhlIGRybV9hdXhfYnJpZGdlIGdldCB0aGUgY29ycmVjdCBvZl9ub2RlLiBJIHdp
bGwgYWRkIHRoZSBBUEkgeW91IG1lbnRpb25lZCBpbiB2MTAuIFRoYW5rIHlvdS4KCgotLSAKQmVz
dCwKQ2hhb3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
