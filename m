Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF1DC71136
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 15:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r15k6QMiVFKnCeGGoHLWoq9LqmX+u5W7XXEp0mrXiPU=; b=ktTU50D3CvmAN3
	TM2jv4DXqNNwdlmdzTSa7e35fLJBKqXVAR4mB68qfNStfyC7OPGmabAZR2wOhCJVlIkDyN7axkoAi
	z+zxBqimKSbXed12S3gOrAGiL1yGJRCGSeRsXawX23D/Ry6YkKPTA/ITlGdTEop8efLfShbdQK7gh
	wW3zqo8fvhpyJiMONvAQkaFWyT6qQyj3m4XDu191YKRgbJDAw9O+mqntcmo2csxBS6/uIy6iufQG3
	7ugrfOlgDDxe3YAjVlhsKOinRqv+9uFZzu5Iiduln5f9CiGQVxmOXn18oYcxlhPCO6M0carvoLjeH
	EAYbvEhYMjipsI6MnMYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6DK-0000000Gquz-0Zuu;
	Fri, 13 Jun 2025 15:21:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ4z4-0000000Gbk2-09DM;
	Fri, 13 Jun 2025 14:02:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 62B3A62A03;
	Fri, 13 Jun 2025 14:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92389C4CEEF;
	Fri, 13 Jun 2025 14:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749823337;
	bh=CQucgb1bg0xXPls5H7qr6pbanXMG619gYuEhe3r6jdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ur3kkzedQWntfr0lGNXGpqQBM2QdnEihDlqla44a5n6yOytZZEuWdRGcNq6Y91SZ5
	 54CjUgweeYK6CndciVGUbjwh4UK5+u9Lu9WSD4RDbChIgCn1kXkse0BUGrt8eUxOhF
	 t5uuj0X3cKmjV5Kf9AplE1T4SNDVUMT1JujcSNwdOHLXt+WZxlICwYL+B2eWdJutUq
	 BYYC/VSwUEst5VJO5gER5ynfRq3Kn6zWZy8kqx+VV9mQ01nbeuzR0XuHyooCDGfGih
	 tV/9MB3R8rmuY+fEUMl5k2lSGvcBtChKwa4nLgCY8CLxyJH5S/2++EPWyG2ad7RcQe
	 gkEm2Y3e8QrjA==
Date: Fri, 13 Jun 2025 15:02:11 +0100
From: Lee Jones <lee@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH 2/4] mfd: rk8xx-core: allow to customize RK806 reset
 method
Message-ID: <20250613140211.GC897353@google.com>
References: <20250526-rk8xx-rst-fun-v1-0-ea894d9474e0@cherry.de>
 <20250526-rk8xx-rst-fun-v1-2-ea894d9474e0@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250526-rk8xx-rst-fun-v1-2-ea894d9474e0@cherry.de>
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

T24gTW9uLCAyNiBNYXkgMjAyNSwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cgo+IEZyb206IFF1ZW50
aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gCj4gVGhlIFJLODA2IFBNSUMg
KGFuZCBSSzgwOSwgUks4MTc7IGJ1dCB0aG9zZSBhcmVuJ3QgaGFuZGxlZCBoZXJlKSBoYXMgYQo+
IGJpdGZpZWxkIGZvciBjb25maWd1cmluZyB0aGUgcmVzdGFydC9yZXNldCBiZWhhdmlvciAod2hp
Y2ggSSBhc3N1bWUKPiBSb2NrY2hpcCBjYWxscyAiZnVuY3Rpb24iKSB3aGVuZXZlciB0aGUgUE1J
QyBpcyByZXNldCAoYXQgbGVhc3QgYnkKPiBzb2Z0d2FyZTsgYy5mLiBERVZfUlNUIGluIHRoZSBk
YXRhc2hlZXQpLgo+IAo+IEZvciBSSzgwNiwgdGhlIGZvbGxvd2luZyB2YWx1ZXMgYXJlIHBvc3Np
YmxlIGZvciBSU1RfRlVOOgo+IAo+IDBiMDAgbWVhbnMgInJlc3RhcnQgUE1VIgo+IDBiMDEgbWVh
bnMgIlJlc2V0IGFsbCB0aGUgcG93ZXIgb2ZmIHJlc2V0IHJlZ2lzdGVycywgZm9yY2luZwo+IAl0
aGUgc3RhdGUgdG8gc3dpdGNoIHRvIEFDVElWRSBtb2RlIgo+IDBiMTAgbWVhbnMgIlJlc2V0IGFs
bCB0aGUgcG93ZXIgb2ZmIHJlc2V0IHJlZ2lzdGVycywgZm9yY2luZwo+IAl0aGUgc3RhdGUgdG8g
c3dpdGNoIHRvIEFDVElWRSBtb2RlLCBhbmQgc2ltdWx0YW5lb3VzbHkKPiAJcHVsbCBkb3duIHRo
ZSBSRVNFVEIgUElOIGZvciA1bVMgYmVmb3JlIHJlbGVhc2luZyIKPiAwYjExIG1lYW5zIHRoZSBz
YW1lIGFzIGZvciAwYjEwIGp1c3QgYWJvdmUuCj4gCj4gVGhpcyBhZGRzIHRoZSBhcHByb3ByaWF0
ZSBsb2dpYyBpbiB0aGUgZHJpdmVyIHRvIHBhcnNlIHRoZSBuZXcKPiByb2NrY2hpcCxyc3QtZnVu
IERUIHByb3BlcnR5IHRvIHBhc3MgdGhpcyBpbmZvcm1hdGlvbi4KPiAKPiBJZiBpdCBpcyBtaXNz
aW5nLCB0aGUgcmVnaXN0ZXIgaXMgbGVmdCB1bnRvdWNoZWQgYW5kIHJlbGllcyBlaXRoZXIgb24K
PiB0aGUgc2lsaWNvbiBkZWZhdWx0IG9yIG9uIHdoYXRldmVyIHdhcyBzZXQgZWFybGllciBpbiB0
aGUgYm9vdCBzdGFnZXMKPiAoZS5nLiB0aGUgYm9vdGxvYWRlcikuCj4gCj4gU2lnbmVkLW9mZi1i
eTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KPiAtLS0KPiAgZHJp
dmVycy9tZmQvcms4eHgtY29yZS5jICB8IDE1ICsrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xp
bnV4L21mZC9yazgwOC5oIHwgIDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25z
KCspCgpUaGUgdGVzdCByb2JvdHMgc2VlbSB1bmhhcHB5IHdpdGggdGhpcy4gIFBsZWFzZSBmaXgg
YW5kIHJlc3VibWl0LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
