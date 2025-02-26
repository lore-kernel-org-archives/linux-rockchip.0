Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B95CBC021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 06:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgVsUlzfDRsIfVChTpyFawEa1ZuGA9qq2kyvqJOr5EU=; b=UMSSJwhevn7BNw
	sKh13mOGiWcUnfG+RwVSuNIoZIeDNftDDPlZAhxUxMg2ot3//lno32veNwfmhV+tBwASEE2bydi1r
	1azXysf2rafzUYnS+pXCQoW+heaJnnWUPQdMtWFFvg6utgwTbM8yNoWZofho32NSw6USU9NS5wG8j
	+5iEdUf58WVCi2AWPuqbHJ1Mzhn3Habv2Q6JXzCmkjkAG3FuRZ9oX1G0SzYNqxAOCvgT9fJYNGiaQ
	exAobzJBMbUZFfMRFbF+ax/OnOOOPLMJjAwILcZRveDrc9EK4E6QQXIk4SPgtKOVsALgX2eA6GYhi
	kmYskXvnb29nz6u+1enA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnBLG-00000002bsj-478d;
	Wed, 26 Feb 2025 06:56:26 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnBEB-00000002aku-0915;
	Wed, 26 Feb 2025 06:49:08 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c3c2a2d3;
	Wed, 26 Feb 2025 14:48:58 +0800 (GMT+08:00)
Message-ID: <a4f43d3e-2e41-4163-8938-5aa1592db371@rock-chips.com>
Date: Wed, 26 Feb 2025 14:48:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] scsi: ufs: rockchip: Fix spelling mistake "susped"
 -> "suspend"
To: Colin Ian King <colin.i.king@gmail.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250225101142.161474-1-colin.i.king@gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250225101142.161474-1-colin.i.king@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNCHlYdTBlJHhodGBpOSENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9541040a1509cckunmc3c2a2d3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngg6PBw4UTILHQsaTh4TMzIq
	VhkKCSNVSlVKTE9LTk5JTkhCTEpJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNNTjcG
DKIM-Signature: a=rsa-sha256;
	b=M1sany9xNBK7VREkWV+9K9oI/K7EOJWY8i/mkHFni5If+uuFp4nTfsfWo9NCBVfDJdv9SDXXVnASaacyLeGHJB5rIQt9n3k0cBugM1hAYPP0B+QlPaT6e/DmwYoHFTvU8BUo6xe397yo4rW3fLRhW2Du3oV/FRStof5aetgnBqQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vU92AfkXpo1upHQPW1E57oSrBRV5YkhXMeN9wMA5lys=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_224907_600201_DEDE14D2 
X-CRM114-Status: GOOD (  12.24  )
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

5ZyoIDIwMjUvMi8yNSAxODoxMSwgQ29saW4gSWFuIEtpbmcg5YaZ6YGTOgo+IFRoZXJlIGlzIGEg
c3BlbGxpbmcgbWlzdGFrZSBpbiBhIGRldl9lcnIgbWVzc2FnZS4gRml4IGl0Lgo+IAoKQWNrZWQt
Ynk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzIENvbGluLgoK
Cj4gU2lnbmVkLW9mZi1ieTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmkua2luZ0BnbWFpbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1yb2NrY2hpcC5jIHwgMiArLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vm
cy1yb2NrY2hpcC5jCj4gaW5kZXggNWIwZWE5ODIwNzY3Li5kZGRmZjVmNTM4YjkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvdWZz
L2hvc3QvdWZzLXJvY2tjaGlwLmMKPiBAQCAtMzA3LDcgKzMwNyw3IEBAIHN0YXRpYyBpbnQgdWZz
X3JvY2tjaGlwX3N5c3RlbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgIAo+ICAgCWVy
ciA9IHVmc2hjZF9zeXN0ZW1fc3VzcGVuZChkZXYpOwo+ICAgCWlmIChlcnIpIHsKPiAtCQlkZXZf
ZXJyKGhiYS0+ZGV2LCAiVUZTSENEIHN5c3RlbSBzdXNwZWQgZmFpbGVkICVkXG4iLCBlcnIpOwo+
ICsJCWRldl9lcnIoaGJhLT5kZXYsICJVRlNIQ0Qgc3lzdGVtIHN1c3BlbmQgZmFpbGVkICVkXG4i
LCBlcnIpOwo+ICAgCQlyZXR1cm4gZXJyOwo+ICAgCX0KPiAgIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
