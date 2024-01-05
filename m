Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A47B8C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 18:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tr7f58gZn4cdxS1dMW1/ob6qs+xNCEHwj5wscBXPsc=; b=S7zWug7eUImQ9K
	qqcr1vRDpl6Q2s2HLgxZHRqFTiaqcLH1qFAykLxOq/0Z1pyKDJcvjzP/YB7fXzvoVqGmEIZtXmPnp
	+owih4OEP2hV3uPdz1vcpMutflTtKQEG9Sgu1ioe86l4aZM0UuV9jyjSH7c7oI1X9frruEpcPkEdI
	z59yBnsG6fpdRzC+Z2az9o/iELwk73oZhoy4VFDJ7dOoqcrwe/kxlpNdfRP/COU5LQr2pd4qtEH+G
	JXkKAeZwT2jW92ut+BHwX76KVaMtFk5s/+C0ou38yuuFGurObmePMGsR8FrBPYEOoAVHYKM6UdqL2
	1OsEXB+N/4a02t6j++jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoZZ-00HVLZ-2a;
	Fri, 05 Jan 2024 18:05:33 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLoZW-00HVKZ-0m;
	Fri, 05 Jan 2024 18:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704477926;
	bh=uQJ5CDnGDNx+rgzY5LMY9h2PrEsHwPQjkQ2ffCXgmAc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=efk24aoZuX0xCPcK4cwYnRXhQ1ueNI5U8yQ4RGmThNO0rD5BlZQ9K5lUfb1+Q4gTo
	 9qF8rBOS9YPpTNiVdtJtpdbEcxhYXJ1kHTE2v0x7kY2rsKBwzbXijXbEanL53r7Lht
	 321uAGOuy3nraMQJDbBKzJK22PlSevGagsQovfTtmvO+u/swQtAEBnqe7CvfPixOS0
	 olAZ7EmESXAgpxMndisW6o5EhjlIFjMkMJY9hgB8CcYP/9Ba0xdhJPHvGit/Gi1Z4m
	 +3i9nVERV9tnGfNhKGtkDeY30FYMBeNd6PEQVVTNR16DruSFL2SdJV7Zxun5qBNRLt
	 tAY1G7igJ/1uw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 81874378003D;
	Fri,  5 Jan 2024 18:05:25 +0000 (UTC)
Message-ID: <056847ff-46f5-44d5-a038-36042a5d2174@collabora.com>
Date: Fri, 5 Jan 2024 20:05:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Content-Language: en-US
To: Andy Yan <andy.yan@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
 <b017a3e2-f658-4a95-b972-6ffb87acfdc3@collabora.com>
 <6812a957-dafd-4687-8094-074d8d2b5471@rock-chips.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <6812a957-dafd-4687-8094-074d8d2b5471@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_100530_410118_9C87628E 
X-CRM114-Status: GOOD (  20.80  )
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

SGkgQW5keSwKCk9uIDEvNS8yNCAxMToxMywgQW5keSBZYW4gd3JvdGU6Cj4gSGkgQ3Jpc3RpYW46
Cj4gCj4gT24gMS81LzI0IDAzOjEyLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+IEhpIEhl
aWtvLAo+Pgo+PiBPbiAxLzQvMjQgMTc6NTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4gSGkg
Q2hyaXN0aWFuLCBBbmR5LAo+Pj4KPj4+IEFtIERvbm5lcnN0YWcsIDQuIEphbnVhciAyMDI0LCAx
NTozOTo1MCBDRVQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4+Pj4gQ29tbWl0IDVhMDI4
ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU4OCIpCj4+
Pj4gaW50cm9kdWNlZCBhIHZhcmlhYmxlIHdoaWNoIGVuZGVkIHVwIGJlaW5nIHVudXNlZC7CoCBS
ZW1vdmUgaXQuCj4+Pj4KPj4+PiByb2NrY2hpcF9kcm1fdm9wMi5jOjE2ODg6MjM6IHdhcm5pbmc6
IHZhcmlhYmxlIOKAmGlmX2RjbGtfcmF0ZeKAmSBzZXQKPj4+PiBidXQgbm90IHVzZWQgWy1XdW51
c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBD
aW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKWy4uLl0KCj4+IFRo
ZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIGlzIG5vdCBhYmxlIHRvIGhhbmRsZSBhbGwgZGlzcGxh
eSBtb2Rlcwo+PiBzdXBwb3J0ZWQgYnkgY29ubmVjdGVkIGRpc3BsYXlzLCBlLmcuIGluIG15IHRl
c3RpbmcgZW52aXJvbm1lbnQgSQo+PiBlbmNvdW50ZXJlZCBpc3N1ZXMgd2l0aCAyNTYweDE0NDAt
NzUuMDBIeiwgMjA0OHgxMTUyLTYwLjAwSHosCj4+IDEwMjR4NzY4LTYwLjAwSHouwqAgQWRkaXRp
b25hbGx5LCBpdCBkb2Vzbid0IHNlZW0gdG8gY29wZSB3ZWxsIHdpdGgKPj4gbm9uLWludGVnZXIg
cmVmcmVzaCByYXRlcyBsaWtlIDU5Ljk0LCAyOS45NywgMjMuOTgsIGV0Yy4KPiAKPiBJIHRoaW5r
IHRoaXMgaXMgYmVjYXVzZSB0aGUgdGhlZSBQTEwgZnJvbSBjcnUgY2FuJ3QgZGl2aWRlIGFjY3Vy
YXRlCj4gY2xvY2sgZm9yIHRoZXNlCj4gbm9uLWludGVnZXIgcmVmcmVzaCByYXRlcy4KPj4KPj4g
TXkgdGVtcG9yYXJ5IHdvcmthcm91bmQgcmVsaWVzIG9uIHVzaW5nIHRoZSBIRE1JIFBIWSBQTEwg
aW4gY29uanVuY3Rpb24KPj4gd2l0aCBhIGRvd25zdHJlYW0tYmFzZWQgaGFjayB0byBjb21wdXRl
IHRoZSBjbG9jayByYXRlcy7CoCBJJ20gbm90IHN1cmUKPj4gdGhhdCB3b3VsZCBiZSBhbiB1cHN0
cmVhbWFibGUgc29sdXRpb24sIHNvIEkgd291bGQgbGV0IEFuZHkgc2hlZCBzb21lCj4+IGxpZ2h0
IG9uIHRoZSB0b3BpYy4KPiAKPiBZZXMsIHVzZSBQTEwgZnJvbSBIRE1JIFBIWSBjYW4gZ2l2ZSBt
b3JlIGZsZXhpYmxlIGNsb2NrIHJhdGVzIHRvIHN1cHBvcnQKPiBtb3JlIGRpc3BsYXkgbW9kZS4K
PiBXZSBhbHNvIHVzZSBpdCBpbiBvdXIgYnNwIGtlcm5lbCwgYnV0IG9uZSB0aGluZyBzaG91bGTC
oCBrZWVwIGluIG1pbmQKPiB0aGF0wqAgdXNlIEhETUkgUEhZIHBsbAo+IGFzIGRjbGsgc291cmNl
IGNhbiBvbmx5IHdvcmsgZm9yIEhETUkgMi4wIG9yIGJlbGxvdywgaWYgY2FuJ3QgYmUgdXNlZCBp
bgo+IGhkbWkgMi4xIG1vZGUoc3VjaCBhcyA0SzEyMCksCj4gc28gd2UgbmVlZCB0byBzd2l0Y2gg
dGhlIGNsb2NrIHNvdXJjZSBieSBoZG1pIHdvcmsgbW9kZS4KPiAKPiBUaGUgZGlmZmljdWx0IHRo
aW5nIGlzIGhvdyB0byBtYWtlIHRoaXMgYWNjZXB0ZWQgYnkgdXBzdHJlYW0uCgpUaGFua3MgZm9y
IHRoZSBoZWFkcy11cCEgIEkgd2lsbCB0cnkgdG8gaGF2ZSBhIGxvb2sgYXMgc29vbiBhcyBJCmZp
bmFsaXplIHRoZSB3b3JrIG9uIEhETUkgcGh5ICYgYnJpZGdlIGRyaXZlcnMgKHVuZm9ydHVuYXRl
bHkgSSBoYWQgdG8KcHV0IGl0IHRlbXBvcmFyaWx5IG9uIGhvbGQgdG8gZm9jdXMgb24gZGlmZmVy
ZW50IHRhc2tzLCBidXQgSSBleHBlY3QgdG8KcmVzdW1lIHNvb24pLgoKUmVnYXJkcywKQ3Jpc3Rp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
