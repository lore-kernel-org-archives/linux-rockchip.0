Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0091CCFA05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 03:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQVmpmisYjPhiZCj3A2sv4diFXfSmQqsKjUaCvAk/Q0=; b=S66EEQvFm03V+N
	zfdz/gZqFn7PLOWRFQopGmhVltpZOsYiSlbcw8JSsq0sNMQDNy6vwyh7w/u47H+yPsUmfXxHcaU67
	n3katCJ9MqnUqggH5Zh6zXof25x07Q4eKSu+8MW/lR5qVxvU0Bx3bJ/QvTvSMiIlGFBMjI9hntw9v
	tv3lxLMICoMkrvGpmQ/DWxDQw8mY252Ej9Q2MX2nneozjj7kZcZRcn+127Y8eig+maZUNBDTs1Xdx
	jhAHL94pLj1DARS4CH/pmlpxzkUVSIAuftCJnWAXL7EU+fkF9kxgJkTxHN8FmKjR5Mp1DZlIpXQMD
	VjqVeVKLZkAUfHiw+Nsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHCix-0000000GbCU-1NQz;
	Fri, 07 Nov 2025 03:01:15 +0000
Received: from mail-m1973187.qiye.163.com ([220.197.31.87])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHCis-0000000GbBy-3FwM;
	Fri, 07 Nov 2025 03:01:13 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28b7d0bc4;
	Fri, 7 Nov 2025 11:01:05 +0800 (GMT+08:00)
Message-ID: <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
Date: Fri, 7 Nov 2025 11:01:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 Ye Zhang <ye.zhang@rock-chips.com>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aQ1c7ZDycxiOIy8Y@geday>
X-HM-Tid: 0a9a5c42adf909cckunmd8a05e02f6b7ea
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkIaTlYfTkwdH0JKSxgYSE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=N/AjtPdWxmqb/pFSs6gykwYAJznoZ8eog/K1ggyHgiHswHpN2h06IuYOiipUjuL3fkrH9tNI7iUErn2M+xn58GJHlBeesAuUuwLcF7xohvnZc6VYwGmJh+ip2Ox71RepKsnJaUNoX4XVoE81ZYMa3tVHxJcOI2tPNeo7AAFKCxQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=zVsNu3y1SfXzBdfw48QrW2mnVPUuj41sgD9Q3ySf0jw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_190111_329054_269A3CB1 
X-CRM114-Status: GOOD (  10.83  )
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

KyBZZSBaaGFuZwoK5ZyoIDIwMjUvMTEvMDcg5pif5pyf5LqUIDEwOjQzLCBHZXJhbGRvIE5hc2Np
bWVudG8g5YaZ6YGTOgo+IE9uIFdlZCwgTm92IDA1LCAyMDI1IGF0IDA0OjU2OjM2UE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPj4g5ZyoIDIwMjUvMTEvMDUg5pif5pyf5LiJIDE2OjE4LCBHZXJh
bGRvIE5hc2NpbWVudG8g5YaZ6YGTOgo+Pj4gSGkgU2hhd24sIGdsYWQgdG8gaGVhciBmcm9tIHlv
dS4KPj4+Cj4+PiBQZXJoYXBzIHRoZSBmb2xsb3dpbmcgY2hhbmdlIGlzIGJldHRlcj8gSXQgcmVz
b2x2ZXMgdGhlIGlzc3VlCj4+PiB3aXRob3V0IHRoZSBhZGRlZCBjb21wbGljYXRpb24gb2Ygb3Bl
biBkcmFpbi4gQWZ0ZXIgeW91IHF1ZXN0aW9uZWQKPj4+IGlmIG9wZW4gZHJhaW4gaXMgYWN0dWFs
bHkgcGFydCBvZiB0aGUgc3BlYywgSSByZW1lbWJlcmVkIHRoYXQKPj4+IEdQSU9fT1BFTl9EUkFJ
TiBpcyBhY3R1YWxseSAoR1BJT19TSU5HTEVfRU5ERUQgfCBHUElPX0xJTkVfT1BFTl9EUkFJTikK
Pj4+IHNvIEkgZGVjaWRlZCB0byB0ZXN0IHdpdGgganVzdCBHUElPX1NJTkdMRV9FTkRFRCBhbmQg
aXQgd29ya3MuCj4gCj4gU2hhd24sCj4gCj4gSSBxdW90ZSBmcm9tIHRoZSBQQ0llIE1pbmkgQ2Fy
ZCBFbGVjdHJvbWVjaGFuaWNhbCBTcGVjaWZpY2F0aW9uIFJldiAxLjIKPiAKPiAiMy40LjEuIExv
Z2ljIFNpZ25hbCBSZXF1aXJlbWVudHMKPiAKPiBUaGUgMy4zViBjYXJkIGxvZ2ljIGxldmVscyBm
b3Igc2luZ2xlLWVuZGVkIGRpZ2l0YWwgc2lnbmFscyAoV0FLRSMsCj4gQ0xLUkVRIywgUEVSU1Qj
LCBhbmQgV19ESVNBQkxFIykgYXJlIGdpdmVuIGluIFRhYmxlIDMtNy4gWy4uLl0iCj4gCj4gU28g
d2hpbGUgeW91IGFyZSBjb3JyZWN0IHRoYXQgUEVSU1QjIGlzIG1vc3QgZGVmaW5pdGVseSBub3Qg
T3BlbiBEcmFpbiwKPiB0aGVyZSdzIGV2aWRlbmNlIG9uIHRoZSBzcGVjIHRoYXQgZGVmaW5lcyB0
aGlzIHNpZ25hbCBhcyBTaW5nbGUtRW5kZWQuCj4gCgpUaGlzJ3MgdHJ1ZS4gQnV0IEkgY291bGRu
J3QgZmluZCBhbnkgdXNlciBpbiBkdHMgdXNpbmcgZWl0aGVyCkdQSU9fU0lOR0xFX0VOREVEIG9y
IEdQSU9fT1BFTl9EUkFJTiBmb3IgUENJZSBQRVJTVCMuIEknbSBjdXJpb3VzCmhvdyB0aGVzZSB0
d28gZmxhZ3MgYWZmZWN0IGFjdHVhbCBiZWhhdmlvciBvZiBjaGlwcy4gWWUsIGNvdWxkIHlvdQpw
bGVhc2UgaGVscCBjaGVjayBpdD8KCj4gVGhhbmtzLAo+IEdlcmFsZG8gTmFzY2ltZW50bwo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
