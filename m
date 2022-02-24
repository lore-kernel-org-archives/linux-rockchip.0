Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EAAC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ov5WKZ1xzc5av85RTRjw3D2JsLMJDgz9ofoZFEFxt1A=; b=mmls9YrhE+tkl0
	I1lTSmpg0uIPT11pvXvCTNThrIvxuufQM/maaVj2ng2KXQoa3A9x9rPO8TzGraAqo6p20iLMzrzoq
	sUk7aT/UgqI0s1HvvN5E5QpXbQTTCgfJ1Ji5K7D2nQj4/AqydUV3iafoK9HEelWT9Y5Q77swsFnUe
	txOHyVBnzZfa6PXh8snkD2I7bM/PFizSEARevBkUdTR59u6PPj1vOlEGJCFlBkx2lDq8kLYaYrn/y
	g0fZfjVxqqEc4BISRPuowS3xCibqhETPDXiGuC4SNa5RVNfqMI7g4HfPqm7ZpVgEkeY/InNRtpxHv
	/XcW0n27mUICPvoiKK7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFEe-0018KC-97; Thu, 24 Feb 2022 14:36:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFER-0018Hy-W4; Thu, 24 Feb 2022 14:36:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 22EA41F44EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645713392;
 bh=a5HETx9RdGbA+U2GzdkhgfEme4Mq6cVTNkqDGzsr6CQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=AmfM8svSLgBD0m64Hmxuea3hI/8v+A+wcJ/0920+h5sCWJuax6L7rG2cym4TEbQFj
 +A4fHQmsSxWYBKrZRCJyv4Ahl8isE2+KeSE9wAKfBp5JFCJnGPxbR5vQNwt/2I4mxA
 aL+7fwJKkCL9XLJwNitTHsT8vWirjEDHg4kdAX7SM2HN1OEisEJJJyG8KZRzHa1Nlm
 MHqc37p3gGq5lNNPPNTjtJc02fkPpA9B/ZrI9G3snn6m/1WZV4IyCy5tNR6a0VZQYS
 F5qg5nOgfvtJGMeO/DPdRTN7jwu/sgsj7j7iU0gxfIKa5E2jUaWrhUeK4MFp5oiUZV
 ISNcUqkRGtNcg==
Message-ID: <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
Date: Thu, 24 Feb 2022 17:36:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
 <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
 <20220224074750.GR9136@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220224074750.GR9136@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_063636_200320_EB37AA9A 
X-CRM114-Status: GOOD (  13.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMi8yNC8yMiAxMDo0NywgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFRodSwgRmViIDE3LCAy
MDIyIGF0IDA0OjI0OjI5UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMTcuMDIu
MjAyMiAxMToyOSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4+PiBAQCAtMjgsNiArMjgsMTIg
QEAgY29uZmlnIFJPQ0tDSElQX1ZPUAo+Pj4gIAkgIFRoaXMgc2VsZWN0cyBzdXBwb3J0IGZvciB0
aGUgVk9QIGRyaXZlci4gWW91IHNob3VsZCBlbmFibGUgaXQKPj4+ICAJICBvbiBhbGwgb2xkZXIg
U29DcyB1cCB0byBSSzMzOTkuCj4+PiAgCj4+PiArY29uZmlnIFJPQ0tDSElQX1ZPUDIKPj4+ICsJ
Ym9vbCAiUm9ja2NoaXAgVk9QMiBkcml2ZXIiCj4+PiArCWhlbHAKPj4+ICsJICBUaGlzIHNlbGVj
dHMgc3VwcG9ydCBmb3IgdGhlIFZPUDIgZHJpdmVyLiBZb3Ugc2hvdWxkIGVuYWJsZSBpdAo+Pj4g
KwkgIG9uIGFsbCBuZXdlciBTb0NzIGJlZ2lubmluZyBmb3JtIFJLMzU2OC4KPj4KPj4gcy9mb3Jt
L2Zyb20vCj4+Cj4+IFRoZSBST0NLQ0hJUF9WT1Agb3B0aW9uIGlzICJkZWZhdWx0IHkiLiBEbyB5
b3UgcmVhbGx5IHdhbnQgImRlZmF1bHQgbiIKPj4gZm9yIHRoZSBWT1AyPwo+IAo+IFJPQ0tDSElQ
X1ZPUCBpcyBvbmx5IGRlZmF1bHQgeSB0byBrZWVwIHRoZSBWT1AgZHJpdmVyIGVuYWJsZWQgZm9y
Cj4gZXhpc3RpbmcgZGVmY29uZmlnIHRoYXQgd2VyZSBnZW5lcmF0ZWQgYmVmb3JlIHRoZSBpbnRy
b2R1Y3Rpb24gb2YKPiB0aGF0IHN5bWJvbC4KPiBXZSBkb24ndCBoYXZlIHRoaXMgcHJvYmxlbSBm
b3IgVk9QMiwgc28gbm8gbmVlZCB0byBtYWtlIGl0IGRlZmF1bHQgeS4KClRvIG1lIGl0IHdpbGwg
YmUgbW9yZSBjb25zaXN0ZW50IG9mIHlvdSdsbCBoYXZlIGJvdGggZGVmYXVsdGluZyB0byB5LApz
aW5jZSBib3RoIG9wdGlvbnMgYXJlIGJlaGluZCBEUk1fUk9DS0NISVAuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
