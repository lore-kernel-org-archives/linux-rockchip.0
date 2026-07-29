Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CA42C53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 16:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4mx7U6aa4E3f+UvUWRRJRh2Aip3t0bEC0i4XlUQIjc=; b=2r/16iy0vYDhh6
	lydVTMHp7HPrA2yDvJTnB8Sfn5n1YQIZS18Vrma5kZKNyxB9tFmwqLkTW+nFMl0qNLFfqwAvkaDgA
	965H/2sET0WC+HbDv+WziwBsgogkfo3Du81uSx3xzbfd4PNsqpEhA/rnBdyeU1F0EzmGdYjI7HCqs
	pa7Fj26bgQCKWQwafOb1NeVrTqM/FxI6PaGnROaflXqyTk5UdKpCZDXcVAzF8Q6eDWt+iry4zapgc
	iXDHrM5ePMcX27YaQq1Sxnpa/e869Ahax0937lISXJpiKLLKo0mkw2/rGVqEJbqkccGC3YAWGXBth
	fg4uzJ3ihv24NWHw4oLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp7JB-00000008aBf-3PKp;
	Wed, 29 Jul 2026 16:39:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp7J9-00000008aBA-3L7k;
	Wed, 29 Jul 2026 16:39:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MEvcjf+hPSNKYzepNwfqlyyO+EK0h7HWQILOOJ7OSPw=; b=M2EPNilAZcFkLn1YkjNSy1+dXx
	zduEtcnM+Ic8TcvVrjMB/F/dw53SxlmjkJmzer9I3etcukntSsy0NNnkwI2Ghb8wAowtHH3TQO0Jd
	/8ncYtjPKEXWt3MGfL/b8zSVBGEIT26Q5zzyudDjAT445nz4+y7n31UyGwsFRu6iWav+NGODTHyOb
	yndJmocGY4w1nmPodo1YGAMH2wEDkyuqqTY/z+DiQU+0kheQDQo7KnrtJCBf77sWlhNZlemrEen19
	Pl5e4Ha/zdZ/2H3PTJ1WPecopWJ1F6ROUqSL/yH/kHtOPpMo2MyIyYg7fWJsvCThZn8v/yvYFHYRO
	/xEKMXAw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Lee Jones <lee@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 2/4] dt-bindings: vendor-prefixes: Add techvision
Date: Wed, 29 Jul 2026 18:38:55 +0200
Message-ID: <1954916.R1toDxpfAE@diego>
In-Reply-To: <178419851981.1265391.16595891427832466278.b4-ty@b4>
References: <20260711192842.845048-3-samuel@sholland.org>
 <178419851981.1265391.16595891427832466278.b4-ty@b4>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_093903_856258_D731B535 
X-CRM114-Status: UNSURE (   7.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTGVlLAoKQW0gRG9ubmVyc3RhZywgMTYuIEp1bGkgMjAyNiwgMTI6NDE6NTkgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBMZWUgSm9uZXM6Cj4gT24gU2F0LCAxMSBKdWwg
MjAyNiAxNDoyODoyNiAtMDUwMCwgU2FtdWVsIEhvbGxhbmQgd3JvdGU6Cj4gPiBUZWNodmlzaW9u
IEludGVsbGlnZW50IFRlY2hub2xvZ3kgQ28uLCBMdGRbMV0gYWthIFNoZW56aGVuIEh1aXdlaQo+
ID4gSW50ZWxsaWdlbnQgVGVjaG5vbG9neSBDby4sIEx0ZFsyXSBpcyBhIG1hbnVmYWN0dXJlciBv
ZiBzaW5nbGUtYm9hcmQKPiA+IGNvbXB1dGVycy4KPiAKPiBBcHBsaWVkLCB0aGFua3MhCj4gCj4g
WzIvNF0gZHQtYmluZGluZ3M6IHZlbmRvci1wcmVmaXhlczogQWRkIHRlY2h2aXNpb24KPiAgICAg
ICBjb21taXQ6IGYwZTA0MTczNzNjYTU1ZDA3Y2JhNTk2ZThhZmUwODFjMDc4ODQzYWQKCkkgY2Fu
J3QgZmluZCBuZWl0aGVyIHBhdGNoMSBub3IgcGF0Y2gyIGluIG5laXRoZXIgdGhlIExFRHMgZ2l0
IG5vcgpsaW51eC1uZXh0LiBJcyB0aGVyZSBhIGdpdCBwdXNoIG1pc3Npbmcgc29tZXdoZXJlPwoK
CkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
