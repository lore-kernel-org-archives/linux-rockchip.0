Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF4FC79F9F
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2026 14:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u16u7ywEEtaB+6atmmFGvZWocP42zo5m1hW4saIETnY=; b=Dectlt/vBMxPha
	w90onaBNLjPMCo6FxxjK8Zb70CMsC/+FuZpeJAbrPXSnxQ2f+YzYz5H3jPpJPUG+eoNtHuSWXeCl/
	1Z8xFBq4pECezQHsdMw7qni2Gd0n3XOpP+c6PexUA4AENCbitx4G4KgBYrlS6718J/xigUWmY/qRV
	Bm+Hac0l89sYMLqHTn0va516PwzM/NLgd3xFgvxk3NEXWcuDrg1+EqKndPXdxdiSPIoII5Mf2mkdG
	wd28740Hw/du89vlObN8pez65gkG2Cdx1qw1BfnmS12F16FG1DWL/KnxTwEvP+4Et2Nf40LFIk5B1
	nN6OZnFc17A2RiI1D82A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ELO-000000056z4-44S9;
	Sun, 06 Sep 2026 14:59:42 +0000
Received: from email2.ecloud.global ([2a01:4f9:4b:5387::2] helo=mail2.ecloud.global)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ELM-000000056xt-0Hd4;
	Sun, 06 Sep 2026 14:59:41 +0000
Received: from authenticated-user (mail2.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail2.ecloud.global (Postfix) with ESMTPSA id E594C72128A;
	Sun,  6 Sep 2026 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io; s=mail2;
	t=1788706771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zVMGfeFZrB58Lk7o3G3a6wdkQDsZOBW4TUrkVV5ZwgQ=;
	b=a0Splrg6zB00oeVpK4FriY8N+4GX17As20bPsA8Vx68XwCxzPSyZuXZgKfTgxovlJtlesN
	bxEs+wzrGffdT8Ih5QE30TKCExhKjyzbY4otFGSd4YbqpIKaQ+RA4/s7K6HAQBMS8FtR1X
	CSWgY5ki1wIZLfpJGmpXWo8D0uBPuhw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail2; t=1788706771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zVMGfeFZrB58Lk7o3G3a6wdkQDsZOBW4TUrkVV5ZwgQ=;
	b=THJSY92/A/bjlj/pBTmUxyu7CCDs80zoyeYMIggATaIpL8vqJFlBrJhaPBJPGEI6RyIMtR
	NAU+Lsj5+v0YaaS4T+naMaa4I6xDz4kCMWURKf1LKkssivQ9G1gjaQ/S0TqUwpXElYkKGN
	iejrNvcdKwjMq5n3hnEPRs5vl0+GPmY=
ARC-Authentication-Results: i=1;
	mail2.ecloud.global;
	auth=pass smtp.mailfrom=maud_spierings@murena.io
ARC-Seal: i=1; s=mail2; d=murena.io; t=1788706771; a=rsa-sha256; cv=none;
	b=AyIWxjPgvVFrVvAxTXlq0c74VZgXwUKhdAsaAo7owEu5lfVisTLR+RN6ywUsHXhiMJkRFL
	dLC4XUaP3ekFGA1Jjk/HdAWNPCsR/hNMIYi7EFT4SXTQoHtELqbI3vmzjEzvEMPKBN16Z4
	TzdFhlnMtX3Oyh73K4IEa6RNY6VrHLU=
Message-ID: <cb0884b3-c9be-4cfd-ba43-27add3821ddd@murena.io>
Date: Sun, 6 Sep 2026 16:59:28 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 13/15] phy: starfive: Add jh7110-inno-hdmi-phy driver
To: Dominique Belhachemi <domibel@debian.org>
Cc: m.wilczynski@samsung.com, Laurent.pinchart@ideasonboard.com,
 airlied@gmail.com, alex@ghiti.fr, andrzej.hajda@intel.com,
 andy.yan@rock-chips.com, andyshrk@163.com, aou@eecs.berkeley.edu,
 bmasney@redhat.com, conor+dt@kernel.org, conor@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 hal.feng@starfivetech.com, heiko@sntech.de, hello@big-grey.co.uk,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, kernel@esmil.dk,
 krzk+dt@kernel.org, lee@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com,
 m.szyprowski@samsung.com, maarten.lankhorst@linux.intel.com,
 maudspierings@gocontroll.com, mfd@lists.linux.dev, mripard@kernel.org,
 mturquette@baylibre.com, neil.armstrong@linaro.org, p.zabel@pengutronix.de,
 palmer@dabbelt.com, pjw@kernel.org, rfoss@kernel.org, robh@kernel.org,
 sboyd@kernel.org, simona@ffwll.ch, tzimmermann@suse.de, uwu@icenowy.me,
 vkoul@kernel.org
References: <20260828-jh7110-clean-send-v2-13-331680c8b9d1@samsung.com>
 <0ccb4168-ff88-459c-972d-3c091c155db2@murena.io>
 <e780ecb8-918f-4816-99c8-b69b10b25a18@murena.io>
 <CAAvaLCwvVUddS14MPx0FHdnp+QeZ99+ox17pXt2hSWPTCFcHtw@mail.gmail.com>
Content-Language: en-US
From: Maud Spierings <maud_spierings@murena.io>
In-Reply-To: <CAAvaLCwvVUddS14MPx0FHdnp+QeZ99+ox17pXt2hSWPTCFcHtw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_075940_308909_3E7F2A7A 
X-CRM114-Status: GOOD (  16.23  )
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

T24gOS82LzI2IDA3OjM5LCBEb21pbmlxdWUgQmVsaGFjaGVtaSB3cm90ZToKPiBPbiBTdW4sIEF1
ZyAzMCwgMjAyNiBhdCAxMDoxN+KAr0FNIE1hdWQgU3BpZXJpbmdzIAo+IDxtYXVkX3NwaWVyaW5n
c0BtdXJlbmEuaW8gPG1haWx0bzptYXVkX3NwaWVyaW5nc0BtdXJlbmEuaW8+PiB3cm90ZToKPiAK
PiAgICAgSSB3YXMgc3RpbGwgaGF2aW5nIHNvbWUgZ2xpdGNoaW5nIGhhcHBlbmluZyBvbiB0aGUg
ZGlzcGxheSwgYnV0IEkndmUKPiAgICAgZm91bmQgdGhlIHdheSB0byBmaXggdGhhdCwgdGhlIHF1
ZXN0aW9uIGlzIHdoYXQgaXMgYWN0dWFsbHkKPiAgICAgaGFwcGVuaW5nIGhlcmUuCj4gCj4gICAg
ICDCoCDCoDB4Mjk1OTAwMjAgPC0gMHgwMDAwMDAwNQo+ICAgICBUaGlzIG9uZSBJIGhhdmUgbm8g
aWRlYSwgaXQgaXMgMHgwMDAwMDAwOSB3aXRoIHRoaXMgcGF0Y2ggc2VyaWVzIGJ1dAo+ICAgICB3
aXRoIHRoZSB2ZW5kb3Iga2VybmVsIEkgZ2V0IHRoZSB2YWx1ZSBhYm92ZS4gV2hlbiBJIGhvb2sg
dXAgbXkKPiAgICAgZXh0ZXJuYWwKPiAgICAgZGlzcGxheSAocmVndWxhciAxNDQwcCkgdGhpcyBi
ZWNvbWVzIDB4MDAwMDAwMEQgb24gdGhlIHZlbmRvciBrZXJuZWwuCj4gCj4gICAgIEJ1dCBJIGNh
bid0IGZpbmQgdGhpcyByZWdpc3RlciBiZWluZyB3cml0dGVuIHRvIGFueXdoZXJlIHRoZXJlPwo+
IAo+IAo+IE1heWJlIHRoaXMgbmVlZHMgdG8gYmUgc3dhcHBlZD8KPiAKPiBkcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2lubm8taGRtaS5jCj4gIMKgIC0jZGVmaW5lIHZfSFNZTkNfUE9MQVJJVFkobikg
wqAgwqAgwqAgwqAgwqAoKG4pIDw8IDMpCj4gIMKgIC0jZGVmaW5lIHZfVlNZTkNfUE9MQVJJVFko
bikgwqAgwqAgwqAgwqAgwqAoKG4pIDw8IDIpCj4gIMKgICsjZGVmaW5lIHZfSFNZTkNfUE9MQVJJ
VFkobikgwqAgwqAgwqAgwqAgwqAoKG4pIDw8IDIpCj4gIMKgICsjZGVmaW5lIHZfVlNZTkNfUE9M
QVJJVFkobikgwqAgwqAgwqAgwqAgwqAoKG4pIDw8IDMpCj4gCgpUaG9zZSBzZWVtIHRvIG9ubHkg
YmUgcmVsZXZhbnQgdGhlIDB4MDggcmVnaXN0ZXI6CiA+ICNkZWZpbmUgSERNSV9WSURFT19USU1J
TkdfQ1RMCQkweDA4CgphbHNvIGluIHRoZSBjb2RlOgoKID4gLyogU2V0IGRldGFpbCBleHRlcm5h
bCB2aWRlbyB0aW1pbmcgcG9sYXJpdHkgYW5kIGludGVybGFjZSBtb2RlICovCiA+IHZhbHVlID0g
dl9FWFRFUkFOTF9WSURFTygxKTsKID4gdmFsdWUgfD0gbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9G
TEFHX1BIU1lOQyA/CiA+IAkgdl9IU1lOQ19QT0xBUklUWSgxKSA6IHZfSFNZTkNfUE9MQVJJVFko
MCk7CiA+IHZhbHVlIHw9IG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19QVlNZTkMgPwogPiAJ
IHZfVlNZTkNfUE9MQVJJVFkoMSkgOiB2X1ZTWU5DX1BPTEFSSVRZKDApOwogPiB2YWx1ZSB8PSBt
b2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFID8KID4gCSB2X0lORVRMQUNFKDEp
IDogdl9JTkVUTEFDRSgwKTsKID4gaGRtaV93cml0ZWIoaGRtaSwgSERNSV9WSURFT19USU1JTkdf
Q1RMLCB2YWx1ZSk7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
