Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9595BC369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V11ZTlD84YZt8VXRImmVJT9MnfVSJH84qQLcE5H/52Y=; b=u2eDnNDgFfvKHn
	4TGMBoS5MnSBbXpQilJ3zKLKPm7Rve92jIz/azLpkSRFgTDISVwLKOzKLPoKgXsUC2bZd2iivLqw9
	lRhMglcS6l2oQU8P9nZxGW0lFeXnKy6j/Obpfi5s7BtpMx2BjzPJLm+82auEgqZknmPexsbCbdkhZ
	gDrDYYXabpxNpQM54KuW45HUyIJitSWtxaq5dBo8ymIIMPTvwPT887PyXH2xayJgecirwMle5PO5v
	u8eBFYBFdbsU7FcfwEUnbvJNkcWhZMcKl89vUa3slkS6abehfdJlJsr91vH5Wa8e+0JanSSv9eZwn
	Et3q+6OilfM42MQX2Rhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iIZ-00000002HXJ-3zfG;
	Sat, 26 Apr 2025 16:22:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8h7H-00000002CpT-1mgY;
	Sat, 26 Apr 2025 15:06:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 908C961138;
	Sat, 26 Apr 2025 15:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D99A4C4CEE2;
	Sat, 26 Apr 2025 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745680014;
	bh=ldltt6Txk7jsfPZAR7Ijlb8uPp+jNfir4K8QBlkQzkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PbxTovUF6JPsV4EAqGEuw1RmjADnKA4zydRGySU/qn2Z1cXvDHPKY7T50PJmpLTJP
	 5zNsSzqeqr/kUHy2/xORoIMr8rRMpRtX7bPDyYpAf++CcoSAaIkdX6/3WHszYBSo7A
	 j+ivJ0XF5AtBZ0MZ5BOSueBGi0Od72CgDNxKG05WcTPHNTISotWMxbZ2AeSbnvxLxK
	 q6YogLKhtcTPloClGq1mCZQ9YAXomgreIlxNMRlfXSR1piipkuEkKDdtpUelOb5Kfw
	 PJcHJJk6hfNRQm3qw/6qBS50v5+pShpf8EO+IZW6RhsWt2o8L35jjjO7AUUVltPRp6
	 kDAvLcDympExg==
Received: by pali.im (Postfix)
	id A3E6198A; Sat, 26 Apr 2025 17:06:50 +0200 (CEST)
Date: Sat, 26 Apr 2025 17:06:50 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, thomas.petazzoni@bootlin.com,
	manivannan.sadhasivam@linaro.org, yue.wang@Amlogic.com,
	neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/2] PCI: Remove redundant MPS configuration
Message-ID: <20250426150650.c63x62ugtnwx5nzy@pali>
References: <20250425095708.32662-1-18255117159@163.com>
 <20250425095708.32662-3-18255117159@163.com>
 <20250425181345.bybgcht5tweyg43k@pali>
 <5e2844cc-8359-4b87-a8ce-eb5ebb85f8ff@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e2844cc-8359-4b87-a8ce-eb5ebb85f8ff@163.com>
User-Agent: NeoMutt/20180716
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

T24gU2F0dXJkYXkgMjYgQXByaWwgMjAyNSAyMzowMjowOCBIYW5zIFpoYW5nIHdyb3RlOgo+IE9u
IDIwMjUvNC8yNiAwMjoxMywgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBPbiBGcmlkYXkgMjUgQXBy
aWwgMjAyNSAxNzo1NzowOCBIYW5zIFpoYW5nIHdyb3RlOgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpLWFhcmR2YXJrLmMKPiA+ID4gaW5kZXggYTI5Nzk2Y2NlNDIwLi5kODg1Mjg5Mjk5NGEg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMK
PiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+ID4gPiBA
QCAtNTQ5LDkgKzU0OSw3IEBAIHN0YXRpYyB2b2lkIGFkdmtfcGNpZV9zZXR1cF9odyhzdHJ1Y3Qg
YWR2a19wY2llICpwY2llKQo+ID4gPiAgIAlyZWcgPSBhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09S
RV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZDVEwpOwo+ID4gPiAgIAlyZWcgJj0gflBDSV9FWFBf
REVWQ1RMX1JFTEFYX0VOOwo+ID4gPiAgIAlyZWcgJj0gflBDSV9FWFBfREVWQ1RMX05PU05PT1Bf
RU47Cj4gPiA+IC0JcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9QQVlMT0FEOwo+ID4gPiAgIAlyZWcg
Jj0gflBDSV9FWFBfREVWQ1RMX1JFQURSUTsKPiA+ID4gLQlyZWcgfD0gUENJX0VYUF9ERVZDVExf
UEFZTE9BRF81MTJCOwo+ID4gPiAgIAlyZWcgfD0gUENJX0VYUF9ERVZDVExfUkVBRFJRXzUxMkI7
Cj4gPiA+ICAgCWFkdmtfd3JpdGVsKHBjaWUsIHJlZywgUENJRV9DT1JFX1BDSUVYUF9DQVAgKyBQ
Q0lfRVhQX0RFVkNUTCk7Cj4gPiA+IC0tIAo+ID4gPiAyLjI1LjEKPiA+ID4gCj4gPiAKPiA+IFBs
ZWFzZSBkbyBub3QgcmVtb3ZlIHRoaXMgY29kZS4gSXQgaXMgcmVxdWlyZWQgcGFydCBvZiB0aGUK
PiA+IGluaXRpYWxpemF0aW9uIG9mIHRoZSBhYXJkdmFyayBQQ0kgY29udHJvbGxlciBhdCB0aGUg
c3BlY2lmaWMgcGhhc2UsCj4gPiBhcyBkZWZpbmVkIGluIHRoZSBBcm1hZGEgMzcwMCBGdW5jdGlv
bmFsIFNwZWNpZmljYXRpb24uCj4gCj4gSGkgUGFsaSwKPiAKPiBUaGlzIHNlcmllcyBvZiBwYXRj
aGVzIGlzIGRpc2N1c3NpbmcgdGhlIGluaXRpYWxpemF0aW9uIG9mIERldkN0bC5NUFMgYnkgdGhl
Cj4gUm9vdCBQb3J0LiBQbGVhc2UgbG9vayBhdCB0aGUgZmlyc3QgcGF0Y2ggSSBzdWJtaXR0ZWQu
IElmIHRoZXJlIGlzIGEKPiByZWFzb25hYmxlIG1ldGhvZCBpbiB0aGUgZW5kLCBEZXZDdGwuTVBT
IHdpbGwgYWxzbyBiZSBjb25maWd1cmVkCj4gc3VjY2Vzc2Z1bGx5LgoKVGhpcyBkb2VzIG5vdCBt
YXR0ZXIgd2hhdCB3b3VsZCBiZSBjb25maWd1cmVkIGluIERldkN0bC5NUFMgYXQgdGhlIGVuZC4K
Cj4gVGhlIFBDSWUgbWFpbnRhaW5lciB3aWxsIGdpdmUgdGhlIHJldmlldyBvcGluaW9ucy4gUGxl
YXNlIHJlc3QKPiBhc3N1cmVkIHRoYXQgaXQgd2lsbCBub3QgYWZmZWN0IHRoZSBmdW5jdGlvbnMg
b2YgdGhlIGFhcmR2YXJrIFBDSQo+IGNvbnRyb2xsZXIuCgpUaGlzIHBhdGNoIGlzIG1vZGlmeWlu
ZyBpbml0aWFsaXphdGlvbiBvZiB0aGUgYWFyZHZhcmsgUENJZSBjb250cm9sbGVyCmFuZCBpcyBy
ZW1vdmluZyB0aGUgbWFuZGF0b3J5IHN0ZXAgb2YgdGhlIGNvbnRyb2xsZXIgY29uZmlndXJhdGlv
biBhcwpyZXF1aXJlZCBhbmQgZGVmaW5lZCBpbiB0aGUgQXJtYWRhIDM3MDAgRnVuY3Rpb25hbCBT
cGVjaWZpY2F0aW9uLgpJdCBzYXlzIGV4YWN0bHkgaW4gd2hpY2ggb3JkZXIgYW5kIHdoaWNoIHZh
bHVlcyB0byB3aGljaCByZWdpc3RlcnMgaGFzCnRvIGJlIHdyaXR0ZW4uCgo+IFJvY2tjaGlwJ3Mg
UkszNTg4IGFsc28gaGFzIHRoZSBzYW1lIHByb2JsZW0uCj4gCj4gCj4gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8yMDI1MDQxNjE1MTkyNi4xNDAy
MDItMS0xODI1NTExNzE1OUAxNjMuY29tLwo+IAo+IEJlc3QgcmVnYXJkcywKPiBIYW5zCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
