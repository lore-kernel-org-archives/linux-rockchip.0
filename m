Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B809F532EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 08:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mOfeRpmsirMs0JDx8/d657orpajsCpj3PgXYJYgg3k=; b=Vpc976H1obT14t
	X+CtmsWJZDqJkyd5Ip9bo8ay/8cnYyqN6d7ZBOuzRsIPamSdiU+V1zTZ/LxAYjEWu039abWc4xHJ/
	iHeBN5ib2g59SJiUfDB6WzzSu1xsMSE7gNUyZi/9Psf+QG6pbjJnt9qqTxlPtJscuceub+OAXhV7n
	9pkQ9TRJyCJyZvbkTP2Dbiz1lZIgrBUvQAf0MEc9Wi9fwy5ofm1ZddId40Sapb0bU0uqyNEfvCsEo
	rYFshu8WfE2g4yPeqEZQkhyUDS+6fs5UnJKrsZvu4ndC/bPmzCecQ+42DBWOnmpvsfq1v6LH0YYjX
	v1enbSWoFmD+/Ar2jnLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4wn0-00000000xDA-06Yj;
	Tue, 24 Mar 2026 08:07:02 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4wmw-00000000xCR-2Kt9;
	Tue, 24 Mar 2026 08:07:00 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3812347a3;
	Tue, 24 Mar 2026 15:31:39 +0800 (GMT+08:00)
Message-ID: <418f84d2-fb2c-c4a3-6690-c86ec44d594f@rock-chips.com>
Date: Tue, 24 Mar 2026 15:31:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 1/1] scsi: ufs: rockchip: Drop unused include
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-scsi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260320215606.3236516-1-andriy.shevchenko@linux.intel.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260320215606.3236516-1-andriy.shevchenko@linux.intel.com>
X-HM-Tid: 0a9d1ec1a10009cckunm623cadc09c6d83
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJIGFZOHktDHU4fGBlPSx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JeS80Zun1dOnGKzrio4K+VZ2PPPO3DJFTJeTYaTN0KG9mrg7FpwvVzLlzn0yn68uopv2X3SaR7uJB5V+MDT19eqNh/qx9zSRpDRIduhrPQlhgxz8gIM2qC3IXcagu6h0nhTePVbJpqG0j1j+qgFzlWpHkLOiGKh/NISYsnpiN3g=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RqovqAVOh/J3GxdWkjwkCOMcif7wlkSPNm8sBdge6o4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_010659_155025_7D275011 
X-CRM114-Status: GOOD (  12.14  )
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

5ZyoIDIwMjYvMDMvMjEg5pif5pyf5YWtIDU6NTYsIEFuZHkgU2hldmNoZW5rbyDlhpnpgZM6Cj4g
VGhpcyBkcml2ZXIgaW5jbHVkZXMgdGhlIGxlZ2FjeSBoZWFkZXIgPGxpbnV4L2dwaW8uaD4gYnV0
IGRvZXMKPiBub3QgdXNlIGFueSBzeW1ib2xzIGZyb20gaXQuIERyb3AgdGhlIGluY2x1c2lvbi4K
ClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gCj4g
U2lnbmVkLW9mZi1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1yb2NrY2hpcC5jIHwgMSAt
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3Vmcy9ob3N0L3Vmcy1yb2NrY2hpcC5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtcm9ja2No
aXAuYwo+IGluZGV4IDdmZmYzNDUxM2E2MC4uYmFjNjhmMjM4ZTFjIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvdWZzL2hvc3QvdWZzLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vm
cy1yb2NrY2hpcC5jCj4gQEAgLTYsNyArNiw2IEBACj4gICAgKi8KPiAgIAo+ICAgI2luY2x1ZGUg
PGxpbnV4L2Nsay5oPgo+IC0jaW5jbHVkZSA8bGludXgvZ3Bpby5oPgo+ICAgI2luY2x1ZGUgPGxp
bnV4L2dwaW8vY29uc3VtZXIuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4g
ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
