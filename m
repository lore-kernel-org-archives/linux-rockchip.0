Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36CFC47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 08:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6/dyR9tS9w0bwwzmhwJm2gEkNgc9B8OqubcXFPT7Ig=; b=cArD9hxnFImebT
	xxvjHYLccs+B3GZFJWliMTOyyyDvPzoDQ0UfYFUF0jceT8iDzTFsDrvdgrEDM6mnWZWBYZOBBrUA9
	BCLkV7OYh7qPODTx1OntR6Zvy+3nGtP0lxrgcPs0/hL3LFS1Ri1O0RpR+pdlgqyRigDnYZnhxioRq
	yXJm8Vkfk08IcEKmPoDmrRFzH7X5RA5bBXhOs7whtW9jy1xIzB5vm9XkGcyoTcL95ZfeJGiiXW+fL
	PS721iRqsnjXAKtRRNI7B0oyMrpd/xn8ju2yGnd86Mn8PDMGOrPaB8+4uy+XkFQs6NKODHfLMdg+0
	PtStrWRfzolFy2KV+L+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZq2-00000006HjH-0paB;
	Fri, 22 Mar 2024 08:01:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZpz-00000006HhK-1UZi
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 08:01:17 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 42M811wl115639;
	Fri, 22 Mar 2024 03:01:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1711094461;
	bh=aonmxCcT8p6x3oL13Kq+gj+L0Jfrg/DuVw41r9ecWIM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=YoD5veMTKY7G6a3rf/H2MQGgD8D3cugDZ6ScvIPSAFEDvTrDy8ljtbcUms1dLvORg
	 Yy8O74xrSihtKkhd9Yxc7l8VyITrV+mYldQmyDZ9X87t7YgptoB3vMVxqNXIMw8XE4
	 N2eOkbmxTeHUn/+hY1C34wKVu+U6KzrH1rxMrKPg=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 42M811Xu013055
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 Mar 2024 03:01:01 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 22
 Mar 2024 03:01:00 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 22 Mar 2024 03:01:00 -0500
Received: from localhost (dhruva.dhcp.ti.com [172.24.227.68])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 42M80xA8070119;
	Fri, 22 Mar 2024 03:01:00 -0500
Date: Fri, 22 Mar 2024 13:30:59 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
CC: <finley.xiao@rock-chips.com>, <heiko@sntech.de>,
        <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
        <lukasz.luba@arm.com>, <rafael@kernel.org>, <tao.huang@rock-chips.com>,
        <linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] thermal: devfreq_cooling: Fix perf state when
 calculate dfc res_util
Message-ID: <20240322080059.xopjb2yr766sk5ob@dhruva>
References: <20240321102100.2401340-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240321102100.2401340-1-ye.zhang@rock-chips.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_010115_554938_6C45E631 
X-CRM114-Status: GOOD (  17.51  )
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

SGksCgpPbiBNYXIgMjEsIDIwMjQgYXQgMTg6MjE6MDAgKzA4MDAsIFllIFpoYW5nIHdyb3RlOgo+
IFRoZSBpc3N1ZSBvY2N1cnMgd2hlbiB0aGUgZGV2ZnJlcSBjb29saW5nIGRldmljZSB1c2VzIHRo
ZSBFTSBwb3dlciBtb2RlbAo+IGFuZCB0aGUgZ2V0X3JlYWxfcG93ZXIoKSBjYWxsYmFjayBpcyBw
cm92aWRlZCBieSB0aGUgZHJpdmVyLgo+IAo+IFRoZSBFTSBwb3dlciB0YWJsZSBpcyBzb3J0ZWQg
YXNjZW5kaW5n77yMY2FuJ3QgaW5kZXggdGhlIHRhYmxlIGJ5IGNvb2xpbmcKPiBkZXZpY2Ugc3Rh
dGXvvIxzbyBjb252ZXJ0IGNvb2xpbmcgc3RhdGUgdG8gcGVyZm9ybWFuY2Ugc3RhdGUgYnkKPiBk
ZmMtPm1heF9zdGF0ZSAtIGRmYy0+Y2FwcGVkX3N0YXRlLgoKVGhhbmtzIGZvciB0aGUgdXBkYXRl
ZCBleHBsYW5hdGlvbiEKCj4gCj4gRml4ZXM6IDYxNTUxMGZlMTNiZCAoInRoZXJtYWw6IGRldmZy
ZXFfY29vbGluZzogcmVtb3ZlIG9sZCBwb3dlciBtb2RlbCBhbmQgdXNlIEVNIikKPiBDYzogNS4x
MSsgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgNS4xMSsKPiBTaWduZWQtb2ZmLWJ5OiBZZSBa
aGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gdjEgLT4gdjI6Cj4gICAtIFVw
ZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gCj4gIGRyaXZlcnMvdGhlcm1hbC9kZXZmcmVxX2Nv
b2xpbmcuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9kZXZmcmVxX2Nvb2xpbmcu
YyBiL2RyaXZlcnMvdGhlcm1hbC9kZXZmcmVxX2Nvb2xpbmcuYwo+IGluZGV4IDUwZGVjMjRlOTY3
YS4uOGZkN2NmMTkzMmNkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9kZXZmcmVxX2Nv
b2xpbmcuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9kZXZmcmVxX2Nvb2xpbmcuYwo+IEBAIC0y
MTQsNyArMjE0LDcgQEAgc3RhdGljIGludCBkZXZmcmVxX2Nvb2xpbmdfZ2V0X3JlcXVlc3RlZF9w
b3dlcihzdHJ1Y3QgdGhlcm1hbF9jb29saW5nX2RldmljZSAqY2QKPiAgCj4gIAkJcmVzID0gZGZj
LT5wb3dlcl9vcHMtPmdldF9yZWFsX3Bvd2VyKGRmLCBwb3dlciwgZnJlcSwgdm9sdGFnZSk7Cj4g
IAkJaWYgKCFyZXMpIHsKPiAtCQkJc3RhdGUgPSBkZmMtPmNhcHBlZF9zdGF0ZTsKPiArCQkJc3Rh
dGUgPSBkZmMtPm1heF9zdGF0ZSAtIGRmYy0+Y2FwcGVkX3N0YXRlOwoKUmV2aWV3ZWQtYnk6IERo
cnV2YSBHb2xlIDxkLWdvbGVAdGkuY29tPgoKCi0tIApCZXN0IHJlZ2FyZHMsCkRocnV2YQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
