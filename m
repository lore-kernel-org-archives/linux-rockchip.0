Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 973C2D1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 09:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ld4SCr6d0QTHtBI1oARmvAk0Ln73zjfbDBhBBn2Bd+k=; b=z8BHgFNetRzEIa
	NdxGgkUr3AAWxbSxLoCPEKgRYn4kDoDN9JczCDHzq9oVs+++Pxkwhi+Hw3XLQTSeDhcxRSWPbUeBD
	Vya0gj3/lj/1nhuiJHqZs5O8Z9rzl5R7BDmCtJc4d5vfkR+RZBdAOjCintkB3+qfewG86Ox+QFh2R
	0YPy3zdTkc0pEMcbtPL7aN1Z5dHO9YL4a3EFg84mZDlneXPMgqVLahZ5BqUx8BNIXJbQCkgloTVK0
	0jdnP7i3WpWAGYEKHPUTpOhoV/zBFJTlosF3HdQN1LGS2Taj6k+KVtnMZ2fTpdDhjXugvDVpXwGDL
	F0YEp2WGGx+lhM5d1QBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSu3y-0000000E2n7-37zF;
	Tue, 09 Dec 2025 09:31:18 +0000
Received: from mail-m155110.qiye.163.com ([101.71.155.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSu3v-0000000E2mO-3nSc;
	Tue, 09 Dec 2025 09:31:17 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2c8cc602d;
	Tue, 9 Dec 2025 17:31:03 +0800 (GMT+08:00)
Message-ID: <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com>
Date: Tue, 9 Dec 2025 17:31:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issues with DRM_ACCEL_ROCKET (Oops, power-domain, probe-ordering)
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Quentin Schulz <quentin.schulz@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de>
 <77685900-2c34-49b8-8c7e-14718841ef17@rock-chips.com>
 <fa82d11f-ce11-4feb-bdb4-c31d360a2a62@rock-chips.com>
 <CAAObsKDYLXVf1GdYUNeaOya+pWD4jTOEf55ouXAL9iM_kWCcMw@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAAObsKDYLXVf1GdYUNeaOya+pWD4jTOEf55ouXAL9iM_kWCcMw@mail.gmail.com>
X-HM-Tid: 0a9b027335b403abkunm41f438e635d96c8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxKT1ZDTkNLQ0seTkxKGUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=hiq+HVmS9ouBOLn5EdNKviGgYRYZJB/DNQU9P+jo5nnuhLcGwb7VK051dApOrw1EwxmRKa22tJkf88lu4fr8Q7ioJAYxel45NfV/+6phYFrPS2oyFpWn0cnJFnCdakabtFAI+0ptoEgdywXNiU5S1Fb/Kh+dii8zMDZjsr/GvLg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vKvhbBj92/QPwk0Jc3NX9v7/0BjdeDe2DFhKcDpoywI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_013116_112945_936779B3 
X-CRM114-Status: GOOD (  12.49  )
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

SGVsbG8gVG9tZXUsCgpPbiAxMi85LzIwMjUgMjo1NSBQTSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+
IE9uIFR1ZSwgRGVjIDIsIDIwMjUgYXQgODowMOKAr0FNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6CgpbLi4uXQoKPiAKPiBUaGlzIG5lZWQgd2FzIHF1ZXN0
aW9uZWQgZHVyaW5nIHRoZSByZXZpZXcgcHJvY2VzcywgYW5kIGR1cmluZyBteQo+IHN0cmVzcyB0
ZXN0aW5nIEkgZGlkbid0IGZpbmQgYSBuZWVkIGZvciBjb3JlIDAgdG8gYmUgdHJlYXRlZAo+IHNw
ZWNpYWxseS4gU28gaXQgd2FzIGNvbnNpZGVyZWQgdW5uZWVkZWQgY29tcGxleGl0eSBhbmQgdGhl
IGNvZGUgd2FzCj4gZHJvcHBlZC4KPgoKT2gsIEkganVzdCBub3RpY2VkIHRoYXQgdGhlIGNvbW1p
dCBjb21tZW50IGluIHRoZSBkZXZpY2V0cmVlIHN0aWxsCmNvbnRhaW5zIGEgcmVsZXZhbnQgZGVz
Y3JpcHRpb24uCgo+IE15IHRlc3RpbmcgaW52b2x2ZXMgcnVubmluZyB0aGUgc3VwcG9ydGVkIG1v
ZGVscyBhcyBhIHdob2xlLCBhbmQgYWxzbwo+IHRoZWlyIGluZGl2aWR1YWwgb3BlcmF0aW9ucyBh
cyBpbmRpdmlkdWFsIHRlc3RzLiBJIHJ1biB0aGVtIGluIDgKPiBwYXJhbGxlbCBwcm9jZXNzZXMs
IGluIGJhdGNoZXMgc28gd2UgaGF2ZSBjb250aW51b3VzIGJyaW5nIHVwIGFuZCBkb3duCj4gb2Yg
Y2xpZW50cy4KPiAKPiBJJ20gYSBiaXQgc3VycHJpc2VkIHRoYXQgdGhhdCB0ZXN0aW5nIHdvcmtl
ZCBzdGFibHkgYnV0IHdlIGhhdmUgc3RpbGwKPiBmYWlsdXJlcyBpbiBzb21lIHNldHVwcy4KCkNv
dWxkIHlvdSBwbGVhc2UgZGVzY3JpYmUgdGhlIGZhaWx1cmVzIHRoYXQgc3RpbGwgZXhpc3Q/IFRo
YW5rIHlvdS4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
