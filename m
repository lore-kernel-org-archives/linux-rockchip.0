Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FA6C52D7B
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 00:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkjbpuHp1p4mlNjdqEdK+3L/qGT6nKMPWdxGHnSVaB0=; b=GDCOTqEgBXUbAU
	0TNbH7gLTeKCn3zsXGRAob3kN1BqPI2A+PmL+wGRrSbsePDfWtwx1U8FEefTTpGTdm7JgwJtl5GxG
	MdqcShlOewyGpaqXrhGtkIMuytvno7aKb5BBSiq76P78Ox4SOXbDUzZSMK042Znyr9sdmSFqO/3VP
	m+uDzxMi2QkJRcXJ9KCQjTW/I5NjIC7rGsGLwm2izMVHLuEYTXXbi9a16/y4wyK2WvFDdCF5LWZ9W
	j1B759U40ycQ4cTR4tBKkG03ZQpRkjsE80zzVlH6miXfHklzZICJ7zd4zvHlWLOya5omqQILAN5S6
	RH13J0su5huNqUYh0//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDaX-00000009oYp-239e;
	Fri, 09 Aug 2024 00:34:37 +0000
Received: from mail-m254102.xmail.ntesmail.com ([103.129.254.102])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDaT-00000009oYA-0Xne
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 00:34:35 +0000
DKIM-Signature: a=rsa-sha256;
	b=edXVeSU/tlo0ib3//1REPLrCrGzPmMGAbJm3CAlzPZhvvjtYXdpURz6fzWJRqREK209rGKFl4Mnfknvt4rURR71c6gbI97NTm64sCSnBJLfCptEdKn/b/XaPbkfgyt40oaizOpr81o53CLWEUmp/dczw5VCDwwFNDGDv8Go4JX4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0psmqwAZQghCEzaJP7VMmOIMVcUsXtkRYcmJbJCNZ2Q=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id EE3AE4601EB;
	Fri,  9 Aug 2024 08:33:56 +0800 (CST)
Message-ID: <009a9eb8-ff0f-4d77-8ff9-d54b92be5f0d@rock-chips.com>
Date: Fri, 9 Aug 2024 08:33:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
 <a4f8059f-efe0-4874-8746-24e4cf9b9e89@kernel.org>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <a4f8059f-efe0-4874-8746-24e4cf9b9e89@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhPQ1ZJS0MYQkoYT0tKQhlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91348e790003aekunmee3ae4601eb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxg6LQw*MjI9HwlNDyEZIRUU
	M0wKFAlVSlVKTElISk1ITUhDT0xOVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9PTEw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_173433_886237_779FECDF 
X-CRM114-Status: GOOD (  15.88  )
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

SGkgS3J6eXN6dG9mCgrlnKggMjAyNC84LzggMTg6MzQsIEtyenlzenRvZiBLb3psb3dza2kg5YaZ
6YGTOgo+IE9uIDA4LzA4LzIwMjQgMDU6NTIsIFNoYXduIExpbiB3cm90ZToKPj4gRG9jdW1lbnQg
Um9ja2NoaXAgVUZTIGhvc3QgY29udHJvbGxlciBmb3IgUkszNTc2IFNvQy4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IC0tLQo+
Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIHJlbm1hZSBmaWxlIG5hbWUKPj4gLSBmaXggYWxsIGVy
cm9ycyBhbmQgcGFzcyB0aGUgZHRfYmluZGluZ19jaGVjazoKPj4gICAgbWFrZSBkdF9iaW5kaW5n
X2NoZWNrIERUX1NDSEVNQV9GSUxFUz1yb2NrY2hpcCxyazM1NzYtdWZzLnlhbWwKPiAKPiAKPiBZ
b3UgZGlkIG11Y2ggbW9yZS4gU29tZSBwcm9wZXJ0aWVzIGFwcGVhcmVkIHdoaWNoIHdlcmUgaGVy
ZSBub3QKPiBiZWZvcmUuLi4gVGhlIHdheSB5b3Ugc2VuZCBwYXRjaGVzIG1ha2VzIGl0IGRpZmZp
Y3VsdCB0byByZXZpZXcuIExvb2s6Cj4gCgpZZXMsIHdpbGwgdXBkYXRlIGZ1bGwgY2hhbmdlbG9n
IG5leHQgdmVyc2lvbi4KCj4gYjQgZGlmZiAnPDE3MjMwODkxNjMtMjg5ODMtMy1naXQtc2VuZC1l
bWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Jwo+IEdyYWJiaW5nIHRocmVhZCBmcm9tCj4g
bG9yZS5rZXJuZWwub3JnL2FsbC8xNzIzMDg5MTYzLTI4OTgzLTMtZ2l0LXNlbmQtZW1haWwtc2hh
d24ubGluQHJvY2stY2hpcHMuY29tL3QubWJveC5nego+IENoZWNraW5nIGZvciBvbGRlciByZXZp
c2lvbnMKPiBHcmFiYmluZyBzZWFyY2ggcmVzdWx0cyBmcm9tIGxvcmUua2VybmVsLm9yZwo+ICAg
IEFkZGVkIGZyb20gdjE6IDQgcGF0Y2hlcwo+IC0tLQo+IEFuYWx5emluZyAxOCBtZXNzYWdlcyBp
biB0aGUgdGhyZWFkCj4gV0FSTklORzogZHVwbGljYXRlIG1lc3NhZ2VzIGZvdW5kIGF0IGluZGV4
IDIKPiAgICAgU3ViamVjdCAxOiBkdC1iaW5kaW5nczogdWZzOiBEb2N1bWVudCBSb2NrY2hpcCBV
RlMgaG9zdCBjb250cm9sbGVyCj4gICAgIFN1YmplY3QgMjogZHQtYmluZGluZ3M6IHVmczogRG9j
dW1lbnQgUm9ja2NoaXAgVUZTIGhvc3QgY29udHJvbGxlcgo+ICAgIDIgaXMgbm90IGEgcmVwbHku
Li4gYXNzdW1lIGFkZGl0aW9uYWwgcGF0Y2gKPiBMb29raW5nIGZvciBhZGRpdGlvbmFsIGNvZGUt
cmV2aWV3IHRyYWlsZXJzIG9uIGxvcmUua2VybmVsLm9yZwo+IEFuYWx5emluZyAwIGNvZGUtcmV2
aWV3IG1lc3NhZ2VzCj4gUHJlcGFyaW5nIGZha2UtYW0gZm9yIHYxOiBJbml0IHN1cHBvcnQgZm9y
IFJLMzU3NiBVRlMgY29udHJvbGxlcgo+ICAgIHJhbmdlOiBlODZmMGQ4MDc2NWQuLjNhZThlNzIy
ZjZhYgo+IFByZXBhcmluZyBmYWtlLWFtIGZvciB2Mjogc2NzaTogdWZzOiBjb3JlOiBFeHBvcnQK
PiB1ZnNoY2RfZG1lX2xpbmtfc3RhcnR1cCgpIGhlbHBlcgo+IEVSUk9SOiB2MiBzZXJpZXMgaW5j
b21wbGV0ZTsgdW5hYmxlIHRvIGNyZWF0ZSBhIGZha2UtYW0gcmFuZ2UKPiAtLS0KPiBDb3VsZCBu
b3QgY3JlYXRlIGZha2UtYW0gcmFuZ2UgZm9yIHVwcGVyIHNlcmllcyB2Mgo+IAo+IAo+IFNvIGhv
dyBjYW4gd2UgaGFuZGxlIGl0PyBZb3VyIGpvYiBpcyB0byB1c2Ugc3RhbmRhcmQgcHJvY2VzcyBz
byBsaWZlIG9mCj4gcmV2aWV3ZXJzIGlzIG5vdCBtb3JlIGRpZmZpY3VsdCB0aGFuIGl0IHNob3Vs
ZCBiZS4KPiAKPiBQcm92aWRlIEZVTEwgQ0hBTkdFTE9HIHdpdGggZXhwbGFuYXRpb24gd2hhdCBo
YXBwZW5lZCBoZXJlLgoKU29ycnkgZm9yIHRoYXQuIEknbGwgaW1wcm92ZSB0aGVtIHdoZW4gdGhl
IGRlcGVuZGVuY3kgaXMgc29sdmVkLgoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
