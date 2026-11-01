Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4B3606A326
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 11:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ry18iBs9;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Y34JQihT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=riuZ6zEfZe+mjh+FktwutLItms8jEUYOFnzkS/cZfqQ=; b=ry18iBs9fEp1fCiM2MkUW0F8p2
	47pZzjMBdT9b3aIeOHexnAFekO5iO+7vJUS+x6v9z043ZZgDVtKpQn0C2XfpHge1w0XQCRuEcSu+s
	JTMonjEl8nUz/Sjmecu8M39uWfBu8EZzGOUEZCAYKlN08E+vuxXZhc1idfzqjhXwkqxnzPVItXKLB
	X8/zIS/QDFFj8RQpREnavCDVw9/TDWNBIrpV7LRCQD1yOw7nt/kMwVvz1/uFvPHcEzKrD1NTkbhye
	+VaQhQSAlyrQx4t+olzywjsLMicRsbwu3P75D532y7AvWQZ5i6wHmM9dwDVEu9MvHDNv3ydXBegeo
	RiUybXVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTS3-0000000E82b-3knZ;
	Sun, 01 Nov 2026 11:10:15 +0000
Received: from mail-m12858.netease.com ([103.209.128.58])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTRz-0000000E81x-21cq;
	Sun, 01 Nov 2026 11:10:14 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5310d4819;
	Sun, 1 Nov 2026 19:09:59 +0800 (GMT+08:00)
Message-ID: <d419faee-354a-4712-b047-d88fa4cab37d@rock-chips.com>
Date: Sun, 1 Nov 2026 19:09:57 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, sebastian.reichel@collabora.com,
 finley.xiao@rock-chips.com, zhangqing@rock-chips.com,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pmdomain: rockchip: do not restore QoS that was never
 saved
To: Jiaxing Hu <gahing@gahingwoo.com>, ulfh@kernel.org, heiko@sntech.de
References: <20261101055633.101309-1-gahing@gahingwoo.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261101055633.101309-1-gahing@gahingwoo.com>
X-HM-Tid: 0aa196cd4d2e03a4kunm5d7bf15e34a8a1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGB1OVkNIShpMTEtOHh0eTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Y34JQihTJ4/ryrn8Fe/mVgqrbxNaBqNU/IPUejG0cY4zW/MkLr6rkK5xwbtsL1z7KLzuFS/S1szB5Dx0HhjbJlQdBh2Th8g0WgJdAGk0fjHumW/0U6M1WWzIq8+6J/ZSWvPo0/9+m0Vsf0jT8a+yVG1G4nmhLIUZvhQiIoUjX6c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=o4gG/i3absZUKyk5WqO7dZSC3KzKqyXdlnRQkR3arf0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_031012_063558_E60A71AD 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMDEg5pif5pyf5pelIDEzOjU2LCBKaWF4aW5nIEh1IOWGmemBkzoKPiByb2Nr
Y2hpcF9wbXVfcmVzdG9yZV9xb3MoKSB3cml0ZXMgYmFjayB3aGF0IHJvY2tjaGlwX3BtdV9zYXZl
X3FvcygpIHJlYWQKPiBvbiB0aGUgbGFzdCBwb3dlci1vZmYuIEEgZG9tYWluIHRoYXQgd2FzIG9m
ZiB3aGVuIGl0IHdhcyByZWdpc3RlcmVkIGhhcwo+IG5vdCBiZWVuIHBvd2VyZWQgb2ZmIGJ5IHRo
ZSBkcml2ZXIgeWV0LCBzbyBvbiBpdHMgZmlyc3QgcG93ZXItb24gdGhlCj4gcmVzdG9yZSB3cml0
ZXMgdGhlIHplcm9lZCBzYXZlIGFycmF5IG92ZXIgdGhlIFFvUyByZXNldCB2YWx1ZXMuCj4gCj4g
T24gUkszNTc2IHRoaXMgaXMgdGhlIEdQVSBvbiBldmVyeSBib290LiBSZWFkIGJhY2sgYWZ0ZXIg
dGhlIHJlc3RvcmUsIGl0cwo+IFFvUyBpcyBhbGwgemVyb3M7IHdpdGggdGhpcyBwYXRjaCBpdCBr
ZWVwcyB0aGUgdmFsdWVzIGl0IHBvd2VycyB1cCB3aXRoLAo+IHByaW9yaXR5IDB4MTAxLCBtb2Rl
IDMsIGJhbmR3aWR0aCAweDgwIGFuZCBzYXR1cmF0aW9uIDguCj4gCgpUaGFua3MgZm9yIHRoZSBw
YXRjaC4gTEdUTSwKClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4KCj4gT25seSByZXN0b3JlIGFmdGVyIGEgc2F2ZS4gUm9ja2NoaXAncyBvd24gZHJpdmVy
IGRvZXMgdGhlIHNhbWUgd2l0aCBhbgo+IGlzX3Fvc19zYXZlZCBmbGFnLgo+IAo+IEZpeGVzOiAw
NzRjNmE0MjJkODYgKCJzb2M6IHJvY2tjaGlwOiBwb3dlci1kb21haW46IHN1cHBvcnQgcW9zIHNh
dmUgYW5kIHJlc3RvcmUiKQo+IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhp
bmd3b28uY29tPgo+IC0tLQo+ICAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5z
LmMgfCAxMCArKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBi
L2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gaW5kZXggZGIzODc5ODQ2
ZGI2Li5kMWMwMjViZGFhMDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hp
cC9wbS1kb21haW5zLmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFp
bnMuYwo+IEBAIC05Nyw2ICs5Nyw3IEBAIHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gewo+ICAg
CWludCBudW1fcW9zOwo+ICAgCXN0cnVjdCByZWdtYXAgKipxb3NfcmVnbWFwOwo+ICAgCXUzMiAq
cW9zX3NhdmVfcmVnc1tNQVhfUU9TX1JFR1NfTlVNXTsKPiArCWJvb2wgcW9zX3NhdmVkOwo+ICAg
CWludCBudW1fY2xrczsKPiAgIAlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsKPiAgIAlzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5vZGU7Cj4gQEAgLTQ3NCw2ICs0NzUsNyBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX3BtdV9zYXZlX3FvcyhzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCkKPiAgIAkJ
CSAgICBRT1NfRVhUQ09OVFJPTCwKPiAgIAkJCSAgICAmcGQtPnFvc19zYXZlX3JlZ3NbNF1baV0p
Owo+ICAgCX0KPiArCXBkLT5xb3Nfc2F2ZWQgPSB0cnVlOwo+ICAgCXJldHVybiAwOwo+ICAgfQo+
ICAgCj4gQEAgLTQ4MSw2ICs0ODMsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbXVfcmVzdG9y
ZV9xb3Moc3RydWN0IHJvY2tjaGlwX3BtX2RvbWFpbiAqcGQpCj4gICB7Cj4gICAJaW50IGk7Cj4g
ICAKPiArCS8qCj4gKwkgKiBBIGRvbWFpbiB0aGF0IHdhcyBvZmYgd2hlbiBpdCB3YXMgcmVnaXN0
ZXJlZCBoYXMgbm90aGluZyBzYXZlZCB5ZXQsCj4gKwkgKiBhbmQgd3JpdGluZyB0aGUgemVyb2Vk
IGFycmF5IHdvdWxkIHJlcGxhY2UgdGhlIHJlc2V0IHZhbHVlcyB0aGUgUW9TCj4gKwkgKiByZWdp
c3RlcnMgY2FtZSB1cCB3aXRoLgo+ICsJICovCj4gKwlpZiAoIXBkLT5xb3Nfc2F2ZWQpCj4gKwkJ
cmV0dXJuIDA7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCBwZC0+bnVtX3FvczsgaSsrKSB7Cj4g
ICAJCXJlZ21hcF93cml0ZShwZC0+cW9zX3JlZ21hcFtpXSwKPiAgIAkJCSAgICAgUU9TX1BSSU9S
SVRZLAo+IAo+IGJhc2UtY29tbWl0OiA3NjQ5YmE3M2Y5ZTdlMWUwNGQwYjQ2MjEzZTM5Yzc5YWUw
OWRkNTVjCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
