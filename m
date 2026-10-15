Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9213ACC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 02:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLfWDB/JH/jvgyW/MBgQIOr4sxe1I9i8FOioailayrg=; b=hTgFebRbcE2xBk
	dvauamWjOy48NwrGpiLvs4yf9p/nBNGvqpZ9jXqS2pcwaz4Erze90iQxHCIUZtfmq/6xUXC01j/OJ
	tf5tgfyENSz/v+t+Rxf/M81zGtVHjsfkKfZJ8S4GpywK6gA9C6rNr8szYGFaF7Lb6xm6KOlG6VyML
	CBLxqk99jpJNS8CWT8XRrfObdznqDSZxrwTWv1VeR62HQmn7sbcB8S0CgqW466EV23pQvpBTTXuS3
	J8WP6cM9rvblNT89CUusDGmak+wJN2d59V6CzusduxhJqLTNehbnVmBftPNavGr/1E80y2lfqTN1T
	yNwm63TUK8rk4DskXoaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBNN-0000000GgSR-0mmI;
	Thu, 15 Oct 2026 02:39:25 +0000
Received: from mail-m3296.qiye.163.com ([220.197.32.96])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBNJ-0000000GgRm-2Fwn;
	Thu, 15 Oct 2026 02:39:24 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51193076c;
	Thu, 15 Oct 2026 10:34:17 +0800 (GMT+08:00)
Message-ID: <9ceed0bd-8804-4804-bbce-bb7eb7963fc2@rock-chips.com>
Date: Thu, 15 Oct 2026 10:34:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 9/9] arm64: dts: rockchip: rk3588s-nanopi-m6: rename pcie2
 power rail
To: joachim.eastwood@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-9-e713f71eb4d3@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-9-e713f71eb4d3@gmail.com>
X-HM-Tid: 0aa13d690def03a4kunm6ed793153a31a9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCHx4eVhpNTEwYGR5IGR5DS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PABh/Z8NoX637jTmXGRO/Fgdh9rKIMLPAoJmGbAtAa9fPS0KUWrqDgnmnQSKZbIYZQr0qajDAkUQcNTnCPl2wcf/yxzef7/0DwW0NUXH1m9kFjvQHo4FSoue9vC3expHqTH0JAG9SswjNTXg+YG8ftw6f6MWnWxWbvr0X7z+ZUo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1YqASTwYL9cHxC7rY2PdHzRjS6kBVzdXj54JZkAOZIw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_193922_176204_079B0DF4 
X-CRM114-Status: GOOD (  11.99  )
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

CgrlnKggMjAyNi8xMC8xNSDmmJ/mnJ/lm5sgMDozMywgSm9hY2hpbSBFYXN0d29vZCB2aWEgQjQg
UmVsYXkg5YaZ6YGTOgo+IEZyb206IEpvYWNoaW0gRWFzdHdvb2QgPGpvYWNoaW0uZWFzdHdvb2RA
Z21haWwuY29tPgo+IAo+IHZjYzN2M19wY2llIG1hdGNoZXMgdGhlIHNpZ25hbCBuYW1lIGluIHRo
ZSBzY2hlbWF0aWNzLCB3aGljaCBzaW1wbGlmaWVzCj4gY3Jvc3MtcmVmZXJlbmNpbmcuCj4gCgpS
ZXZpZXdlZC1ieTogU2hhd24gTGluIDxTaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgoKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdtYWlsLmNvbT4K
PiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1uYW5vcGktbTYu
ZHRzaSB8IDYgKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMtbmFub3BpLW02LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OHMtbmFub3BpLW02LmR0c2kKPiBpbmRleCBjYTExNWQ4ZTEwOGEuLmRkNjFjNjFmZTdkNyAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3Bp
LW02LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFu
b3BpLW02LmR0c2kKPiBAQCAtMzYsMTMgKzM2LDEzIEBAIHVzZXJfbGVkOiBsZWQtMSB7Cj4gICAJ
CX07Cj4gICAJfTsKPiAgIAo+IC0JdmNjXzN2M19wY2llOiByZWd1bGF0b3ItdmNjLTN2My1wY2ll
IHsKPiArCXZjYzN2M19wY2llOiByZWd1bGF0b3ItdmNjM3YzLXBjaWUgewo+ICAgCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gICAJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiAgIAkJ
Z3Bpb3MgPSA8JmdwaW8zIFJLX1BDNiBHUElPX0FDVElWRV9ISUdIPjsKPiAgIAkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiAgIAkJcGluY3RybC0wID0gPCZwY2llMjB4MV8yX2Nvbl9wd3Jl
bj47Cj4gLQkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzN2M19wY2llIjsKPiArCQlyZWd1bGF0b3It
bmFtZSA9ICJ2Y2MzdjNfcGNpZSI7Cj4gICAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMz
MDAwMDA+Owo+ICAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiAgIAkJ
dmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gQEAgLTk1LDcgKzk1LDcgQEAgJnBjaWUyeDFs
MSB7IC8qIE0uMiBFLWtleSAyMjMwICovCj4gICAKPiAgICZwY2llMngxbDIgeyAvKiBNLjIgTS1r
ZXkgMjI4MCAqLwo+ICAgCXBpbmN0cmwtMCA9IDwmcGNpZTIweDFfMl9wZXJzdG5fbTA+LCA8JnBj
aWUyMHgxbTBfY2xrcmVxbj4sIDwmcGNpZTIweDFtMF93YWtlbj47Cj4gLQl2cGNpZTN2My1zdXBw
bHkgPSA8JnZjY18zdjNfcGNpZT47Cj4gKwl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2ll
PjsKPiAgIH07Cj4gICAKPiAgICZwaW5jdHJsIHsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
