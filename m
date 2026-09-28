Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F612C9832F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 03:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEyzZCg+Rt8waKX26AVx3yw3ZJ0pyOZGWd1Vuy4SwE8=; b=vOfM3C92GbX4VG
	BKBp2WN4sNMQC6/X5X86tHpdg51VEukS2lZFEjku0FJk8A2+lT968Mm90aDDNM0hg2bE7eGVjMCRa
	NY2GIaLGDGi5fjCUgmADqJ50Iyv98Icfmx/WNWBtOLlsU5yHCn74d1ay9XROvH/uTwlAaPGtw5yQs
	djigJgEzNb1oEXDuvcTXijPzTh1yvC0+hWQxaCTHUh8Z9/KzKJZqsvdkdkU4ulT/swBrDbuope46w
	OrxkSFCOyeYVj2Fh98l9iVUNkFpn/FAKa3+2qUP5YnehIbHJl7PRVTlTG0OVR1LYdrU52V5KOVqXM
	U6o8u+loiO6tRBlXdCAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB1ks-0000000HEMB-028o;
	Mon, 28 Sep 2026 03:10:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB1kq-0000000HELd-0Ikz;
	Mon, 28 Sep 2026 03:10:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2587D42A4E;
	Mon, 28 Sep 2026 03:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D4031F000FF;
	Mon, 28 Sep 2026 03:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790565011;
	bh=572ZApzffR2V5WVZZG923BXMb95uxq8rXlHIXJhmvi4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=e5D282Bw7e+LCL3BfaBn/xHL5axhjK4+/hI1+KnHpF0fOc4M9VGiMkah8tqedfPPl
	 4VozO5QljckrQqi8d0htX/SoPJlvWkhnhUZYftpsleLPSrpkm19v4PDxW1CzQfvcEI
	 vDlTuAQ30QQ7t83WpGIWk0dgxvid1/E1R01F0+s1m5/lpAf311A+12PDXutGyY3ySF
	 y8/WERcDxVbsK1VAZBfzo4ai8jbwwRtZApBBw0wZwMKn6B589YPSX9y97ceVN87k4O
	 u2invxepd54ZbZSaXlzT5kqIp5XK1U8UbNev8wcVzBZdFcoBOesOvJYB4qAGxkQiLq
	 bdH8j9IeCzd4w==
From: Manivannan Sadhasivam <mani@kernel.org>
To: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
 helgaas@kernel.org, heiko@sntech.de, yue.wang@Amlogic.com, 
 Hans Zhang <18255117159@163.com>
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, cassel@kernel.org, 
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20260911162537.469018-1-18255117159@163.com>
References: <20260911162537.469018-1-18255117159@163.com>
Subject: Re: [PATCH 0/2] PCI: dwc: Clean up DWC PCIe register macros
Message-Id: <179056500511.302500.18235445992989185257.b4-ty@b4>
Date: Mon, 28 Sep 2026 05:10:05 +0200
MIME-Version: 1.0
X-Mailer: b4 0.15.2
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

Ck9uIFNhdCwgMTIgU2VwIDIwMjYgMDA6MjU6MzUgKzA4MDAsIEhhbnMgWmhhbmcgd3JvdGU6Cj4g
VGhpcyBzZXJpZXMgY2xlYW5zIHVwIHRoZSBEV0MgUENJZSBjb250cm9sbGVyIHJlZ2lzdGVyIG1h
Y3JvcyB0byBiZXR0ZXIKPiBtYXRjaCB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBQQ0llIENvbnRy
b2xsZXIgUmVmZXJlbmNlIE1hbnVhbCwgYW5kCj4gcmVtb3ZlcyBhbiB1bnVzZWQgc2V0IG9mIGlB
VFUgdW5yb2xsIHJlZ2lzdGVyIGRlZmluaXRpb25zLgo+IAo+IFBhdGNoIDEgcmVuYW1lcyB2YXJp
b3VzIHJlZ2lzdGVyIGFuZCBmaWVsZCBtYWNyb3MsIGRyb3BwaW5nIHJlZHVuZGFudAo+IFBDSUVf
IHByZWZpeGVzIGFuZCB1c2luZyBkb2N1bWVudGVkIGJhc2UgbmFtZXMuICBGaWVsZCBtYWNyb3Mg
YXJlCj4gcmVuYW1lZCBjb25zaXN0ZW50bHkgc28gdGhlaXIgcmVnaXN0ZXIgYXNzb2NpYXRpb24g
aXMgY2xlYXIuICBObwo+IGZ1bmN0aW9uYWwgY2hhbmdlIGludGVuZGVkLgo+IAo+IFsuLi5dCgpB
cHBsaWVkLCB0aGFua3MhCgpbMS8yXSBQQ0k6IGR3YzogQWxpZ24gcmVnaXN0ZXIgbWFjcm9zIHdp
dGggU3lub3BzeXMgZG9jdW1lbnRhdGlvbgogICAgICBjb21taXQ6IGYyOTcxOWI1MDY0YzA3Y2Vj
MjNjOTI4MDU1ZGYzMDIxODEzNzRkZjUKWzIvMl0gUENJOiBkd2M6IFJlbW92ZSB1bnVzZWQgUENJ
RV9BVFVfVU5SXyogcmVnaXN0ZXIgZGVmaW5pdGlvbnMKICAgICAgY29tbWl0OiA0OTk2MzY0YTQ2
ZTczOGNjNDU1ZjVmYTliOGIwOWYyZjMzNDhiY2M5CgpCZXN0IHJlZ2FyZHMsCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
