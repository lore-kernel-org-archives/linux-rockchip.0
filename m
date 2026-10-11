Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 746C1CA9EC7
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Oct 2026 03:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEbMUnyNc2GBN5/FzwNJpPNQCrop+y2PCFi0C96tKwY=; b=PW4CE9Qf6YpZQV
	haI6x+fatFLZRiSlKHK2CqdO8oZQtJB8DNQbrWnIR4PKU42iCT5gW1bg1MxnVboH/yFvJDV9xQfLF
	HRjisUwm6AKv19D20/mjAStlakeM8sLH9z3XTcr7z0bqKWdbVVmI/gsgftjv3zgzd9TaZNlaR5OA/
	wjMlRu4e0i9dBwJuZirX89qrzn4SXJXse2ofs7tz9byLkFSeyqeaUfkXYYTmbIdvzhRYMxy4SAKl9
	mjlbMkzYDRKvdEsVpKtYcQRcuvSAQ0kie6f4qP3rI1zobHQHsgjHTR/ZDiT05vL17vtV3CkSlPKeJ
	ChBHpFD5lRXMh1kIRLow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFk1I-00000008fyj-21qa;
	Sun, 11 Oct 2026 03:14:40 +0000
Received: from mail-m81189.xmail.ntesmail.com ([156.224.81.189])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFk1D-00000008fyI-3yOb;
	Sun, 11 Oct 2026 03:14:38 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 509894f63;
	Sun, 11 Oct 2026 11:14:28 +0800 (GMT+08:00)
Message-ID: <4903cefa-4926-4bae-93e9-1165bb9ae646@rock-chips.com>
Date: Sun, 11 Oct 2026 11:14:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa E54C
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
References: <20260820100020.3370385-1-amadeus@jmu.edu.cn>
 <20260820100020.3370385-3-amadeus@jmu.edu.cn>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260820100020.3370385-3-amadeus@jmu.edu.cn>
X-HM-Tid: 0aa128f466c803a4kunme554c163fbe0b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHRkYVk0dHRgYSE5MGkkeGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SS8sBXuxdz2my2paSh1oyHFK2MqPW/SkrpaWpdTRGmV1NvKGXoZXlSeOQ/Bd5kv+xflRFmZd2ube+W/yo+MudCLmH+ME+jTgY8jCD4VpFtZL2AtA/I3mz/x8Nyf77PN3bfCQU9MctwsCUetZlef3VRw+R9k8b1wPbCt52lHmODs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=DMFtoZqWRCnK6Yp6lCte4tFbFuG7YOga9wTlhoj+Iqk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_201436_612771_4D12D8CE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

SGkgQ2h1a3VuCgrlnKggMjAyNi8wOC8yMCDmmJ/mnJ/lm5sgMTg6MDAsIENodWt1biBQYW4g5YaZ
6YGTOgo+IFRoZSBSYWR4YSBFNTRDIGlzIGEgaGlnaC1wZXJmb3JtYW5jZSBuZXR3b3JrIGNvbXB1
dGVyIHdpdGgKPiB0aGUgUm9ja2NoaXAgUkszNTgyIFNvQy4gSXQgaGFzIHRoZSBmb2xsb3dpbmcg
ZmVhdHVyZXM6Cj4gCgouLi4KCj4gKwo+ICsJdmNjM3YzX3BjaWU6IHJlZ3VsYXRvci0zdjMtcGNp
ZSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3VsYXRvci1u
YW1lID0gInZjYzN2M19wY2llIjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCXJlZ3Vs
YXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsJCXZpbi1zdXBwbHkg
PSA8JnZjY19zeXNpbj47Cj4gKwl9Owo+ICsKCkkgd2FzIGNoZWNraW5nIGFsbCBQQ0llIHBhcnQg
b2Ygcm9ja2NoaXAgZHRzIGZpbGVzIGFuZCB3b25kZXJlZCB3aHkgaXQncwptYXJrZWQgYXMgYW4g
YWx3YXlzLW9uIHJlZ3VsYXRvci4gQnV0IGlmIGl0J3MgYWN0dWFsbHkgbm90LCBpdCdkIGJlIApi
ZXR0ZXIgdG8gaW1wcm92ZSBpdCBsYXRlci4gVGhhdCB3b3VsZCBtYWtlIHJlc2V0IHJvb3Rwb3J0
IG1lY2hhbmlzbQp3b3JrIGJldHRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
