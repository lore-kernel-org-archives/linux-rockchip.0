Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087E8C25B74
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 May 2024 10:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKpCwTgZeYwp6jCjplP/N3bMvoqDm3qOiGYH7N4nMJA=; b=g5gaem6cLCDet3
	7qLEEJ6FTGgmLWBHII6sVz0O7a71ZOeWMqf4SF9Ya7bdxZwkWbV677VfQG5g4/Wp8ykbg+ZjxO8WS
	HbdoOK05St3d0HCI7whtiQEu9JjehxGM55UEl32Z7J1wQKh9UeU8Ik4x6PC5JB22HhZrVRuMrZHlz
	6jEcr/cuodNSQVMwUKbYmNM90MSJml9FrYqrj5CONszVCsQywj8W/DAqNnOr8RKbQZPaG80Hz54ST
	gW5nd990QHI24lAaZc7xRE2vSV/L4tnl9Ec0eBeOZRjwxiWTvrdiAlTt2eHdRCFGH1DPclQy6mwLo
	zjT7OdjkEnSQjKDiFemA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sASNh-00000008iFB-15EP;
	Fri, 24 May 2024 10:42:37 +0000
Received: from mail-m15572.qiye.163.com ([101.71.155.72])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sASNd-00000008iD3-1OsR
	for linux-rockchip@lists.infradead.org;
	Fri, 24 May 2024 10:42:35 +0000
DKIM-Signature: a=rsa-sha256;
	b=GkfVqmOeodjSsHUIq7QZo9oKtwtbKwTt1qnHgCTG7/yWGhv2yHi+u/CK66SOf+nx56G2fHNn+AAnB5zgRSEuWjsTBo7MLRQ4oNxI3lq9VLlgWAJc6ywdMRjS2vUfXHuxgqyIoQ9fOYEhpFMhZiu+gSqQmlvfR259P0J6HSLXrSY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vlYy6kfDRcuOHsQw1Qcrcg0CgVRI1V2ODtI9AvFKsJ4=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id ADE8E840B0B;
	Fri, 24 May 2024 18:41:51 +0800 (CST)
Message-ID: <5dec9bd2-88ed-46e6-bb8d-fa899b563fd3@rock-chips.com>
Date: Fri, 24 May 2024 18:41:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
From: Andy Yan <andy.yan@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>
Cc: sebastian.reichel@collabora.com, krzysztof.kozlowski+dt@linaro.org,
 chris.obbard@collabora.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20231211115547.1784587-1-andyshrk@163.com>
 <170247871959.753029.11166929824242336708.b4-ty@sntech.de>
 <7a20761b-4cec-4b65-b9fa-efce73ac4c83@rock-chips.com>
Content-Language: en-US
In-Reply-To: <7a20761b-4cec-4b65-b9fa-efce73ac4c83@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJOS1YdTExOHUoeTRlOTkhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8faa315ab403a4kunmade8e840b0b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6Kxw6QzNDMRcDFi5ISUMR
	Gj8KCi5VSlVKTEpNTk9MSEpJTU5OVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEhCTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_034233_672019_ABC8AA7F 
X-CRM114-Status: GOOD (  10.40  )
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

SGkgSGVpa28sCgpPbiAxMi8xNC8yMyAxNDo0NiwgQW5keSBZYW4gd3JvdGU6Cj4gSGkgSGVpa286
Cj4gCj4gT24gMTIvMTMvMjMgMjI6NDYsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+PiBPbiBNb24s
IDExIERlYyAyMDIzIDE5OjU1OjQ3ICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+IEZyb206IEFu
ZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiBUaGlzIHBhdGNoIHNldHMg
YWltcyBhdCBlbmFibGUgdGhlIFZPUDIgc3VwcG9ydCBvbiByazM1ODguCj4+Pgo+Pj4gTWFpbiBm
ZWF0dXJlIG9mIFZPUDIgb24gcmszNTg4Ogo+Pj4gRm91ciB2aWRlbyBwb3J0czoKPj4+IFZQMCBN
YXggNDA5NngyMTYwCj4+PiBWUDEgTWF4IDQwOTZ4MjE2MAo+Pj4gVlAyIE1heCA0MDk2eDIxNjAK
Pj4+IFZQMyBNYXggMjA0OHgxMDgwCj4+Pgo+Pj4gWy4uLl0KPj4KPj4gQXBwbGllZCwgdGhhbmtz
IQo+Pgo+PiBbMTAvMTZdIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiB2b3AyOiBBZGQgcmszNTg4IHN1
cHBvcnQKPj4gwqDCoMKgwqDCoMKgwqDCoCBjb21taXQ6IDRjY2RjOTJjMWZlYTczMmZhYzhmMzQz
OGQ2Mjg4NzE5MDU1ZmExNDEKPj4gWzExLzE2XSBkdC1iaW5kaW5nczogcm9ja2NoaXAsdm9wMjog
QWRkIG1vcmUgZW5kcG9pbnQgZGVmaW5pdGlvbgo+PiDCoMKgwqDCoMKgwqDCoMKgIGNvbW1pdDog
ZGM3MjI2YWNhY2M2NTAyMjkxNDQ2ZjllMzNjZjk2MjQ2ZWM0OWEzMAo+PiBbMTIvMTZdIGRybS9y
b2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU4OAo+PiDCoMKgwqDCoMKgwqDCoMKg
IGNvbW1pdDogNWEwMjhlOGYwNjJmYzg2MmYwNTFmOGU2MmEwZDVhMWFiYWM5MTk1NQo+PiBbMTMv
MTZdIGRybS9yb2NrY2hpcDogdm9wMjogcmVuYW1lIFZPUF9GRUFUVVJFX09VVFBVVF8xMEJJVCB0
byBWT1AyX1ZQX0ZFQVRVUkVfT1VUUFVUXzEwQklUCj4+IMKgwqDCoMKgwqDCoMKgwqAgY29tbWl0
OiA5ZDdmZTc3MDRkNTM0YzJkMDQzYWZmMjk4N2YxMDY3MWE4YjQzNzNkCj4+IFsxNi8xNl0gTUFJ
TlRBSU5FUlM6IEFkZCBteXNlbGYgYXMgYSByZXZpZXdlciBmb3Igcm9ja2NoaXAgZHJtCj4+IMKg
wqDCoMKgwqDCoMKgwqAgY29tbWl0OiA2YzNhYjIxZjM3YTk3YTg2ODE5M2NjYmViOGE0OTJlNTEy
MTBmZjMxCj4+Cj4+Cj4+IEkgc2tpcHBlZCB0aGUgZGVidWdmcyBwYXRjaCBmb3Igbm93LCBhcyBJ
IG5lZWQgdG8gbG9vayBhdCB0aGF0IHNlcGFyYXRlbHkKPj4gYW5kIG9mIGNvdXJzZSB0aGUgZHRz
IHBhdGNoIGFzIHRoYXQgbmVlZHMgdG8gd2FpdCBmb3IgaW9tbXUgbWFpbnRhaW5lcnMKPj4gdG8g
cGljayB1cCB0aGUgYmluZGluZyBhZGRpdGlvbi4KPiAKPiBUaGF0J3MgZmluZS4gVGhhbmtzIGZv
ciBwaWNraW5nIHRoZXNlIHNlcmllcy4KCldvdWxkIHlvdSBwbGVhc2UgdGFrZSBhIGxvb2sgYXQg
dGhlIGRlYnVnZnMgcGF0Y2ggd2hlbiBpdCdzIGNvbnZlbmllbnQgZm9yIHlvdT8KSXQncyByZWFs
bHkgdXNlZnVsIGZvciBkZXZlbG9wbWVudCBhbmQgYnVnIGh1bnRpbmcuCgo+IAo+Pgo+Pgo+PiBC
ZXN0IHJlZ2FyZHMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
