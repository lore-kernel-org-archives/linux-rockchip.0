Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AB70C02182
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 01:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jc0lIxPUfJqz86IKqqP3PQhhaw4xRy6y8eYc7/UF1gc=; b=YbCrAX+WTACYjp
	FokWueC0Tg5wNGizoayCiCzD+DPM+PvAYofHUJoCZTbf3a3YYiz///dq9IybmgDHMw2cbsY7UcXBq
	sjjDJTYfv7lv6iijRwjqT+l6MerrdM3QQznDTtnqvQ0/84hRo/4o5O/dUWQv7AGUac2IhFxpegfVb
	qZExMim0+b+V0tshSZBy9ZNu5542CstwaDwd/6RO5tlAt+jWuuwsNCZSBiu17eBF/kgjeYaCZvd4e
	1bfCk0aogPzEPTqJY88EXYI9AxhspvzRTFewG5m68Mj2J7k/3d40kfr2bc3DE5HFexo1+K4DRmqnV
	Mjw4ykUm2veZvdhTQ3UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taP7r-000000098L9-2RHp;
	Wed, 22 Jan 2025 01:01:47 +0000
Received: from mail-m15588.qiye.163.com ([101.71.155.88])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taP7n-000000098Jy-3i9b
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jan 2025 01:01:45 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 958360b3;
	Wed, 22 Jan 2025 09:01:36 +0800 (GMT+08:00)
Message-ID: <af72645d-1580-4115-b7d1-5d43afd35921@rock-chips.com>
Date: Wed, 22 Jan 2025 09:01:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v6 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
 <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
 <20250121-organic-exotic-honeybee-e90be3@krzk-bin>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250121-organic-exotic-honeybee-e90be3@krzk-bin>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJJGVZNTBkZGhpCTUxDH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948b876f9b09cckunm958360b3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6Cgw4GjIPKCkwOg4QUU8o
	PEIaFCxVSlVKTEhMTktMTUJDSUNJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNLTjcG
DKIM-Signature: a=rsa-sha256;
	b=ZgH7mGEVaZo8jLdf7H5Vc/0VGo2GTPglS6iiGpb9q47LoLPDAMZi4U5HpIhLKydgSko5/yPxWZccymQNoiWCdEc7jRdEA8Apx1ZfYdsLE91Wv1MBqiSefAnnw5ns/Sdd1+5txx8erFTs3BN/pVZwv7pET/JGzaZOSC4CVRVQLog=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=TNkJR2V+hpQI/zspezH6WFR2/g/dlKK3S/D/lHmxGZI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_170144_456995_147302A9 
X-CRM114-Status: GOOD (  10.88  )
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

SGkgS3J6eXN6dG9mLAoK5ZyoIDIwMjUvMS8yMSAxNjowMiwgS3J6eXN6dG9mIEtvemxvd3NraSDl
hpnpgZM6Cj4gT24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMTE6MDA6MjFBTSArMDgwMCwgU2hhd24g
TGluIHdyb3RlOgo+PiBEb2N1bWVudCBSb2NrY2hpcCBVRlMgaG9zdCBjb250cm9sbGVyIGZvciBS
SzM1NzYgU29DLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAKPiAKPiBKdXN0IGJlY2F1c2UgSSBnYXZlIHJldmll
dywgZG9lcyBub3QgbWVhbiB5b3UgY2FuIHNlbmQgdW50ZXN0ZWQgcGF0Y2hlcyEKPiAKPiBCZXN0
IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCj4gCgpGaXJzdCBvZiBhbGwsIGRvbid0IGdldCBtZSB3
cm9uZywgaXQncyBvYnZpb3VzbHkgbXkgYmFkLgpIb3dldmVyLCBJIHdvdWxkIGxpa2UgdG8gc2F5
IGl0IGhhZCBiZWVuIHRlc3RlZCBiZWZvcmUgc2VuZGluZy4KVGhlIHJlYXNvbiBpcyBJIGRpZG4n
dCBub3RpY2UgeWFtbGxpbnQgd2FzIG1pc3Npbmcgc29tZWhvdyBmcm9tIG15CmVudmlyb25tZW50
LgoKU28gdGhpcyB3YXJuaW5nIGlzIGJ1cnJpZWQgaW4gdGhlIGxvZzoKd2FybmluZzogcHl0aG9u
IHBhY2thZ2UgJ3lhbWxsaW50JyBub3QgaW5zdGFsbGVkLCBza2lwcGluZwoKSSB3b3VsZCBmaXgg
aXQgYW5kIHJlc2VuZCBwYXRjaCAxLiBTb3JyeSBhZ2Fpbi4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
