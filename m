Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628A1D2CE17
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Dec 2025 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNdmKUgFR70xK2YgIedUFHxSOmvpHgZYGa1LLUc5AcU=; b=hbp3NLeuJdQCpZ
	q8yZFo8SROHJ4yqfYNk3Iicke3LAxr1ds/TRQm+yequ2UjIVznFrH9WVGnSqUq1ua9lnOx0iBVe47
	WTe1eSrqUoONvmqpeJcxs3ozfWXsalaUmas1wNmaFvIvwVmppgIv+C6vbhNR6tXCtTMjcG8J1iG4N
	8hpqOObWqmePI6Ai/A2XXYcIzuqGcP0iBuiUeRFzLPc1hGLl0KPi74uhm3MB76zGh4zSpcpYjynY9
	NwvZxIUpAuH/pA9n8lAT8kBdQLVnmcVx7DYHs0dQVSIkz2C9O8dAZKfrOl+JaIG6FSgY+BRH7a8CG
	/XaTsL1274faRjebckBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHjj-0000000FLfX-0w5I;
	Wed, 10 Dec 2025 10:47:59 +0000
Received: from mail-m32101.qiye.163.com ([220.197.32.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHjg-0000000FLey-1sfw;
	Wed, 10 Dec 2025 10:47:58 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2cb688fed;
	Wed, 10 Dec 2025 18:47:43 +0800 (GMT+08:00)
Message-ID: <e7b2ceaf-1fbd-4f02-9d75-be4feab724e3@rock-chips.com>
Date: Wed, 10 Dec 2025 18:47:42 +0800
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
 <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com>
 <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
X-HM-Tid: 0a9b07dfc1c103abkunmca64904d3d50d50
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0kdQ1ZOH0tPTE1DSEtJGR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=TTsBySDauc4RTbYe5EhC7K4j01jlT2OcKOuh76Zuc/ZPet61WIaJ88X+kag1tWleJLVww49BC54QA5br0pqv/bKHzLKy/86Hqnle+NKezwlRI/URbqHBwZPOU4TjKGrDvzTuJDXLcEjj7kitByinbmnqyShuhKN72nDZD1oDo/Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RTBglI0YGfawGwb4/35MKrAl87UMJbCIeSXIoQF2HDk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_024756_989907_6D909549 
X-CRM114-Status: GOOD (  14.77  )
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

SGVsbG8gVG9tZXUsCgpPbiAxMi8xMC8yMDI1IDI6NTAgUE0sIFRvbWV1IFZpem9zbyB3cm90ZToK
PiBPbiBUdWUsIERlYyA5LCAyMDI1IGF0IDEwOjMx4oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5j
aGVuQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gSGVsbG8gVG9tZXUsCj4+Cj4+IE9uIDEy
LzkvMjAyNSAyOjU1IFBNLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4+PiBPbiBUdWUsIERlYyAyLCAy
MDI1IGF0IDg6MDDigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+
IHdyb3RlOgo+Pgo+PiBbLi4uXQo+Pgo+Pj4KPj4+IFRoaXMgbmVlZCB3YXMgcXVlc3Rpb25lZCBk
dXJpbmcgdGhlIHJldmlldyBwcm9jZXNzLCBhbmQgZHVyaW5nIG15Cj4+PiBzdHJlc3MgdGVzdGlu
ZyBJIGRpZG4ndCBmaW5kIGEgbmVlZCBmb3IgY29yZSAwIHRvIGJlIHRyZWF0ZWQKPj4+IHNwZWNp
YWxseS4gU28gaXQgd2FzIGNvbnNpZGVyZWQgdW5uZWVkZWQgY29tcGxleGl0eSBhbmQgdGhlIGNv
ZGUgd2FzCj4+PiBkcm9wcGVkLgo+Pj4KPj4KPj4gT2gsIEkganVzdCBub3RpY2VkIHRoYXQgdGhl
IGNvbW1pdCBjb21tZW50IGluIHRoZSBkZXZpY2V0cmVlIHN0aWxsCj4+IGNvbnRhaW5zIGEgcmVs
ZXZhbnQgZGVzY3JpcHRpb24uCj4+Cj4+PiBNeSB0ZXN0aW5nIGludm9sdmVzIHJ1bm5pbmcgdGhl
IHN1cHBvcnRlZCBtb2RlbHMgYXMgYSB3aG9sZSwgYW5kIGFsc28KPj4+IHRoZWlyIGluZGl2aWR1
YWwgb3BlcmF0aW9ucyBhcyBpbmRpdmlkdWFsIHRlc3RzLiBJIHJ1biB0aGVtIGluIDgKPj4+IHBh
cmFsbGVsIHByb2Nlc3NlcywgaW4gYmF0Y2hlcyBzbyB3ZSBoYXZlIGNvbnRpbnVvdXMgYnJpbmcg
dXAgYW5kIGRvd24KPj4+IG9mIGNsaWVudHMuCj4+Pgo+Pj4gSSdtIGEgYml0IHN1cnByaXNlZCB0
aGF0IHRoYXQgdGVzdGluZyB3b3JrZWQgc3RhYmx5IGJ1dCB3ZSBoYXZlIHN0aWxsCj4+PiBmYWls
dXJlcyBpbiBzb21lIHNldHVwcy4KPj4KPj4gQ291bGQgeW91IHBsZWFzZSBkZXNjcmliZSB0aGUg
ZmFpbHVyZXMgdGhhdCBzdGlsbCBleGlzdD8gVGhhbmsgeW91Lgo+IAo+IEkgd2FzIHJlZmVycmlu
ZyB0byB0aGUgb25lcyB0aGF0IFF1ZW50aW4gcmVwb3J0ZWQgd2hlbiBzdGFydGluZyB0aGlzIHRo
cmVhZC4KPiAKCkkgYmVsaWV2ZSB0aGlzIHBtZG9tYWluIHBhdGNoIGNhbiBhbGxldmlhdGUgc29t
ZSBvZiB0aGUgcHJvYmxlbXMgWzBdLiAKCkhvd2V2ZXIsIHRoZSBwcm9ibGVtIFF1ZW50aW4gbWVu
dGlvbmVkIHN0aWxsIGV4aXN0cy4gRm9yIGV4YW1wbGUsIGlmCnRoZXJlIGlzIGFuIGludmFsaWQg
ZGV2aWNlIG9uIGNvcmUwLCB3aGlsZSBjb3JlMSBhbmQgY29yZTIgYXJlIHZhbGlkLCAKYWNjZXNz
aW5nIHRoZSByZWxldmFudCBkYXRhIG9uIGNvcmUwIHdpbGwgY2F1c2UgcHJvYmxlbXMuIFF1ZW50
aW4ncwpwYXRjaCBjYW4gZml4IHRoaXMsIGJ1dCBoZSBkb2Vzbid0IHNlZW0gdG8gaGF2ZSB0aW1l
IGZvciBpdCBsYXRlbHkuLi4KClswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTEy
MDUwNjQ3MzkuMjAyNzAtMS1ybXhwemxiQGdtYWlsLmNvbS8KCj4gUmVnYXJkcywKPiAKPiBUb21l
dQo+IAo+IAoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
