Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADE9CF9C73
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojEQRpWFsYpTPQxWWrDuasR/nYS6SP8C+WSrgt/X0go=; b=KzpTVdYxuNzIfq
	P0yeAJPdIU1JSW97lHyc49dBaNzPvJpYNG8hAQZdR20kXDmvVEI4Ap/pCZAV+i+tfXDoVdf4yT9PY
	TZ9ti58pic2JXcFbDaH1rUJWmjrR/tQNkBU8KNPM6ECASAkgUaqobQjrddHJmABQoOg8bHqJcoGY6
	KDC4zYbaFrC+jOxd+hHPiqhTMTbz1tbijDMZLP+8G/RWYW7pVwOjNFyJQB/W/YXWs502OweFY3sQT
	9f+xusPtObimPE23BN0gDlEXISOUbVlXivkd5qnJdRhV3Eh6cr/4KYvX55tFWSVcaoiixg3z2eyI7
	irgiw+AFYqz6eFs3fE/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssvEK-00000000ser-429y;
	Tue, 24 Sep 2024 02:24:44 +0000
Received: from mail-m1285.netease.com ([103.209.128.5])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssvEG-00000000sdU-1xKd;
	Tue, 24 Sep 2024 02:24:42 +0000
DKIM-Signature: a=rsa-sha256;
	b=jvCf8PFie7Rv4vvgABNuw63KB4eqizQfTPWzFKAXlNhMTWshgMx75uGiMPAcHiTnBDrQu+MUZ7t/pD6/2Q50ryzpCdaV62WZnCl8jFkxXX5gi6YAVZXoOXKf8JTelVKC2pLC4x2QR2X18vN8Y8v9e3GYL7ZRJ/xBkplvC5LzSHk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4VxoVrkVPVRnqDaq696soZpD1dpa/vvXgnZ7E6DnQJM=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.56] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C6FB22803AA;
	Tue, 24 Sep 2024 10:24:15 +0800 (CST)
Message-ID: <1f996322-e6f6-4dd5-a1d7-c2bde92c876b@rock-chips.com>
Date: Tue, 24 Sep 2024 10:24:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, wmc@rock-chips.com
References: <20240923025326.10467-1-frank.wang@rock-chips.com>
 <snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr>
Content-Language: en-US
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDT00aVk9NSB8YGB5KTU8eTFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a9221d800c109d3kunmc6fb22803aa
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBQ6SBw5KjIzGUMvAQgXN0o0
	HjIaCTRVSlVKTElMSk9PTU5MQ0JDVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9LSkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_192441_017684_0F3CCB46 
X-CRM114-Status: GOOD (  12.77  )
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

SGkgS3J6eXN6dG9mLApPbiAyMDI0LzkvMjMgMTc6MzEsIEtyenlzenRvZiBLb3psb3dza2kgd3Jv
dGU6Cj4gT24gTW9uLCBTZXAgMjMsIDIwMjQgYXQgMTA6NTM6MjVBTSArMDgwMCwgRnJhbmsgV2Fu
ZyB3cm90ZToKPj4gQWRkIGNvbXBhdGlibGUgZm9yIHRoZSBVU0IyIHBoeSBpbiB0aGUgUm9ja2No
aXAgUkszNTc2IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV2FuZyA8ZnJhbmsud2Fu
Z0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3JvY2tjaGlwLGlubm8tdXNiMnBoeS55YW1sIHwgMTAgKysrKysrKysrLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAsaW5uby11c2Iy
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlw
LGlubm8tdXNiMnBoeS55YW1sCj4+IGluZGV4IDUyNTQ0MTMxMzdjNjQuLjIxNDkxN2U1NWMwYjYg
MTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9j
a2NoaXAsaW5uby11c2IycGh5LnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxpbm5vLXVzYjJwaHkueWFtbAo+PiBAQCAtMjAsNiArMjAs
NyBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMzY2LXVzYjJwaHkKPj4g
ICAgICAgICAtIHJvY2tjaGlwLHJrMzM5OS11c2IycGh5Cj4+ICAgICAgICAgLSByb2NrY2hpcCxy
azM1NjgtdXNiMnBoeQo+PiArICAgICAgLSByb2NrY2hpcCxyazM1NzYtdXNiMnBoeQo+PiAgICAg
ICAgIC0gcm9ja2NoaXAscmszNTg4LXVzYjJwaHkKPj4gICAgICAgICAtIHJvY2tjaGlwLHJ2MTEw
OC11c2IycGh5Cj4+ICAgCj4+IEBAIC0zNCwxMCArMzUsMTYgQEAgcHJvcGVydGllczoKPj4gICAg
ICAgY29uc3Q6IDAKPj4gICAKPj4gICAgIGNsb2NrczoKPj4gLSAgICBtYXhJdGVtczogMQo+PiAr
ICAgIG1pbkl0ZW1zOiAxCj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBw
aHljbGsgLSBQSFkgaW5wdXQgcmVmZXJlbmNlIGNsb2Nrcy4KPj4gKyAgICAgIC0gZGVzY3JpcHRp
b246IGFjbGsgYW5kIGFjbGtfc2x2IGFyZSBvcHRpb25hbCBhbmQgdXNlZCBmb3IgVVNCIE1NVS4K
Pj4gICAKPj4gICAgIGNsb2NrLW5hbWVzOgo+PiArICAgIG1pbkl0ZW1zOiAxCj4+ICAgICAgIGNv
bnN0OiBwaHljbGsKPj4gKyAgICBjb25zdDogYWNsawo+PiArICAgIGNvbnN0OiBhY2xrX3Nsdgo+
IFBsZWFzZSB0ZXN0Li4uIE5vdCBzdXJlIHdoYXQgeW91IHdhbnRlZCB0byBhY2hpZXZlIGhlcmUs
IGJ1dCBtYXliZQo+IG9uZU9mPwoKVGhlICJhY2xrIiBhbmQgImFjbGtfc2x2IiBjbG9ja3MgYXJl
IG5ldyBpbiBSSzM1NzYsIHlvdSBtZWFuIHRoZSBjaGFuZ2VzIApzaG91bGQgYmUgbGlrZSB0aGUg
YmVsb3c/CgpAQCAtMzQsMTAgKzM1LDIwIEBAIHByb3BlcnRpZXM6CiDCoMKgwqDCoCBjb25zdDog
MAoKIMKgwqAgY2xvY2tzOgotwqDCoMKgIG1heEl0ZW1zOiAxCivCoMKgwqAgbWluSXRlbXM6IDEK
K8KgwqDCoCBtYXhJdGVtczogMwoKIMKgwqAgY2xvY2stbmFtZXM6Ci3CoMKgwqAgY29uc3Q6IHBo
eWNsaworwqDCoMKgIG1pbkl0ZW1zOiAxCivCoMKgwqAgbWF4SXRlbXM6IDMKK8KgwqDCoCBpdGVt
czoKK8KgwqDCoMKgwqAgb25lT2Y6CivCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBQSFkg
aW5wdXQgcmVmZXJlbmNlIGNsb2Nrcy4KK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogcGh5Y2xr
CivCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBhY2xrIGZvciBVU0IgTU1VLgorwqDCoMKg
wqDCoMKgwqDCoMKgIGNvbnN0OiBhY2xrCivCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBh
Y2xrX3NsdiBmb3IgVVNCIE1NVS4KK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogYWNsa19zbHYK
CgpCUi4KRnJhbmsKCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
