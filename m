Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE8FEB48F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 10:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xWntDY/mMLC4AgFZXeN8a3UuxLFKBEYQpJwUZJ+AMYs=; b=he9hAt0tiQBH2L+QLRgpbutPtL
	FhCQt40mNPEXVWM8ZQZ9qlSQFeqUmLCbQyadlA+K0bCxqY1xjKY8EpVJiwqSABDguLeVfIF70ua9i
	rDXHZEKHxAD004Upqw0bvfC6nXIDfGnBRHezqTFswXxZo9gvP9O1b2N0BlayMAgsQdSWwjcZNt3bm
	LLfKtFRReJ7YqqStu36j2R/7YllWjASg8kYdrrRU6trOlt2Ruvzk0k7kPoU2JtQUmhVjlbMDiPTlg
	M4ymk2Ykm1sdwJjBuGtJuGmZAFwCcYcmRFlOEGxte2TWQY2RJUaMILwUzX8ZCpxbK5RjT2ikt3kso
	8S5HOttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU2a-00000001wj9-3la7;
	Thu, 12 Feb 2026 10:35:20 +0000
Received: from mail-m15572.qiye.163.com ([101.71.155.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqU2Y-00000001win-1xx4
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 10:35:20 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33fa67ccc;
	Thu, 12 Feb 2026 18:35:15 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [REGRESSION] rk3588s-evb1-v10 board unable to boot based on
 linux-next
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <87d7abb0-9231-7b9c-bd44-52042701ecd5@rock-chips.com>
Date: Thu, 12 Feb 2026 18:35:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
X-HM-Tid: 0a9c516b584009cckunm2c9b95f41f217c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9MSFZOHUseHh9LSBoYQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FXHak/9epCOrf9Q28/b/legcw06N2exIJCvfrw55X7DWjKxvS6TpyItlObR4+NeW3QRcKSlnvgBQw9Bzwm4nRH7YWyqT5X3UChtzJEQIRTpY+/AUYczrO0u3QVqad9DzeNay5wUpAV1fG4CwOdMQhHSY/MKf8dhHlkh+NdHbOZc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=pb8CdBm6bsgn6RKrmXnQkO7WI9uuSaFY2kWuGvCYSpA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_023519_131025_1729552B 
X-CRM114-Status: GOOD (  11.83  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

KyBTZWJhc3RpYW4gUmVpY2hlbAoK1NogMjAyNi8wMi8xMiDQx8bay8QgMTU6NTksIFNoYXduIExp
biDQtLXAOgo+IEhpIERldGxldiwKPiAKPiBjb21taXQgZjYxNzMxYmQ2MDYyICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCB0aGUgdmRwdTM4MSBWaWRlbwo+IERlY29kZXJzIG9uIFJLMzU4OCIp
IGxhbmRlZCBvbiBsaW51eC1uZXh0IGJyZWFrcyByazM1ODhzLWV2YjEtdjEwLgo+IFJldmVydCBp
dCBmaXhlcyB0aGUgcHJvYmxlbS4gVGhlIGZ1bGwgbG9nIGNvdWxkIGJlIGZvdW5kIGhlcmVbMV0u
Cj4gQWxzbyBjb25maXJtIHRoYXQgaXQgZG9lc24ndCB3b3JrIGJhc2VkIG9uIExpbnVzJyBsYXRl
c3QgbWFpbmxpbmUKPiBhcyB0aGlzIGNvbW1pdCBtZXJnZWQgaW50byBpdCB0aGlzIGN5Y2xlLgo+
IAo+IElmIGFueXRoaW5nIEkgY291bGQgZG8gdG8gaGVscCBkZWJ1ZyBpdCwgcGxlYXNlIGxldCBt
ZSBrbm93Lgo+IAoKSSBkaWQgc29tZSBxdWljayBkZWJ1ZyBhbmQgZm91bmQgaXQncyByZWxhdGVk
IHRvIGEgcG1kb21haW4gcGF0Y2guCkNvbW1pdCBmNjE3MzFiZDYwNjIgaGFwcGVuZWQgdG8gZW5h
YmxlIHJrdmRlYyB3aGljaCByZWx5cyBvbiB0aGUKUERfVkRFQyosIHNvIEkgaGF2ZSBzZW50IGEg
Zml4IHBhdGNoIGZvciB5b3UgdG8gaGVscCByZXZpZXc6CgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC8xNzcwODkxMzY0LTUyMTQ3LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24u
bGluQHJvY2stY2hpcHMuY29tL1QvI3UKCgoKPiBbMV0gaHR0cHM6Ly9wYXN0ZXMuaW8vMDAwMDAw
MC1iby05NDc4Nwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
