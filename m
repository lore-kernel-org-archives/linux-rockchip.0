Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1689CA9ED5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1B4wB4zz96l3tvIu35xdOofAB3qrT/nIcEQHBp3IIeI=; b=235CvSK2g0fN3v
	7s5oc28BbCLH+d6yGfPTWYxGbNPHf8B+xlWohkUXA3uUGncBIxlm49Tj53TsQFgFokMJml0vBhVOv
	qJTbq2TLh7unWmoY7IuFuyQLz9fIu/Hx6HWkphA7WCrB7CBOUD/PSI3B5Z084CDeYpJ2sFItN9Sod
	haCDVHpY4Sn7ph/uFAIsjCNSR01MFNY0KjNri7IXGcV4IcEsBG3UJnFeuqj+eFzN+bOUhovDIM3Sc
	iSP81EbmZdz88QU/PljbpKpp499+WXzzK3ahgq7FWNllScsNVuuB3ukvN1NJc9JUSJtkL0fyEiODR
	wWBNO6whOmwzWMc9TEpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9wJ-00000009mKL-1FCn;
	Mon, 12 Oct 2026 06:55:15 +0000
Received: from mail-m128239.netease.com ([103.209.128.239])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9wG-00000009mJW-0Axl;
	Mon, 12 Oct 2026 06:55:14 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 50b00267e;
	Mon, 12 Oct 2026 14:55:04 +0800 (GMT+08:00)
Message-ID: <5c8a2985-e1aa-4062-bca8-fb05809b0d3c@rock-chips.com>
Date: Mon, 12 Oct 2026 14:55:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa E54C
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <4903cefa-4926-4bae-93e9-1165bb9ae646@rock-chips.com>
 <20261012064010.1837103-1-amadeus@jmu.edu.cn>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261012064010.1837103-1-amadeus@jmu.edu.cn>
X-HM-Tid: 0aa12ee4bb9903a4kunm5e92b5b71addac
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTxlOVh8aTk1JT0IaGUsaSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dcu/8CbeQxrj27k75dgmHMQK6ZG4pjwsRnfgVTy3VCZnsY8P+MDVlGNRuoNvTij7L2dO5fIOYhNEptPmKWbplAQGYt3St/9nEpH4XpkDG9TgqtyYd0ditS0+jwqoM4+h2f2afFrULgkuZqTjvgtqXrQko6tLcWoL8JYuUpGgOaU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=d8fEydYQ9ABesQI0CRxDNvPg0eyljVYmUDFMToCw+i0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_235512_634074_635443D6 
X-CRM114-Status: GOOD (  12.01  )
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

SGkgQ2h1a3VuCgrlnKggMjAyNi8xMC8xMiDmmJ/mnJ/kuIAgMTQ6NDAsIENodWt1biBQYW4g5YaZ
6YGTOgo+IEhpLAo+IAo+PiBJIHdhcyBjaGVja2luZyBhbGwgUENJZSBwYXJ0IG9mIHJvY2tjaGlw
IGR0cyBmaWxlcyBhbmQgd29uZGVyZWQgd2h5IGl0J3MKPj4gbWFya2VkIGFzIGFuIGFsd2F5cy1v
biByZWd1bGF0b3IuIEJ1dCBpZiBpdCdzIGFjdHVhbGx5IG5vdCwgaXQnZCBiZQo+PiBiZXR0ZXIg
dG8gaW1wcm92ZSBpdCBsYXRlci4gVGhhdCB3b3VsZCBtYWtlIHJlc2V0IHJvb3Rwb3J0IG1lY2hh
bmlzbQo+PiB3b3JrIGJldHRlci4KPiAKPiBQbGVhc2UgcmVmZXIgdG8gcGFnZSAyMSBvZiB0aGUg
c2NoZW1hdGljWzFdLiBUaGUgM1YzX1BDSUUgcmVndWxhdG9yCj4gaXMgZW5hYmxlZCBieSB0aGUg
UE1JQyBhbmQgY2Fubm90IGJlIGNvbnRyb2xsZWQgYnkgdGhlIGtlcm5lbC4gU28gSQo+IHRoaW5r
IGl0J3MgY29ycmVjdCB0byBtYXJrIGl0IGFzIGFsd2F5cy1vbi4KPiAKPiBbMV0gaHR0cHM6Ly9k
bC5yYWR4YS5jb20vZS9lNTRjL2h3L3JhZHhhX2U1NGNfdjEuMl9zY2hlbWF0aWMucGRmCj4gCgpU
aGFuayB5b3UgZm9yIHByb3ZpZGluZyB0aGUgc2NoZW1hdGljLiBJdCBkb2VzIGFwcGVhciB0byBi
ZSBpbiBhbgp1bmNvbnRyb2xsZWQgc3RhdGUuIFRoZW9yZXRpY2FsbHksIFBDSWUgY29udHJvbCB0
aW1pbmcgcmVxdWlyZXMgYQpjb250cm9sbGFibGUgcG93ZXIgc3VwcGx5LiBUaGUgY3VycmVudCBk
ZXNpZ24gbWF5IGNhdXNlIHRyb3VibGUKZW51bWVyYXRpbmcgY2VydGFpbiBkZXZpY2VzIGR1ZSB0
byBhbHdheXMtb24gcG93ZXIuIFVuZm9ydHVuYXRlbHksIHRoaXMKYm9hcmQgYWxyZWFkeSBoYXMg
YWx3YXlzLW9uIHBvd2VyLCBzbyBsZXQncyBqdXN0IGxlYXZlIGl0IGFzIGlzLgoKPiBUaGFua3Ms
Cj4gQ2h1a3VuCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
