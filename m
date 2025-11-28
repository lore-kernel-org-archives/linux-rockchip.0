Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B773BD116EA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 07:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSUm7o7rHu2Kfice/YZTq6OM2eJKa3H/8dhcwZvZ8tA=; b=DdVzuHfuSRE/0q
	5cJmjR0GrSiYcbevFQZFmURJYNR5F4JaMW2gC5xPB3mTtFdbL7eIOYYi+q36eNdhAsoclj4reyWxx
	pt74cyKBEvNhacYP4Y+keiHMXZgNc0CoF7NA2+IIoq/c6OjRwmyt3zgHXBhNTJw+w+BaVMR2OQWZX
	isC+kZu7E9NuHq6mV7GJ7+19YcEaR6i/INqLugnuKxere/uLsgQ+iO5/y/q7kEg30W5HmOzguJVFM
	0/KIOzMEgFpyVGmVXvUEvGsQTIaeYF9ctcCHW5ZNC3Xq7FdAPY3j0XfdgCr+BoWi0SRPqQ1zgJ+/M
	zJa47bYi85dDkFYhj5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOswn-000000006Fi-0eeP;
	Fri, 28 Nov 2025 07:31:17 +0000
Received: from mail-m3281.qiye.163.com ([220.197.32.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOswk-000000006FG-4C1f;
	Fri, 28 Nov 2025 07:31:16 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b3cd4919;
	Fri, 28 Nov 2025 15:31:08 +0800 (GMT+08:00)
Message-ID: <7797ac67-6f57-409a-83c8-0ca21a2d2475@rock-chips.com>
Date: Fri, 28 Nov 2025 15:31:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/2] iommu/rockchip: Use devm_clk_bulk_get_all() to get
 multiple iface clock
To: Chaoyi Chen <kernel@airkyi.com>
References: <20251128071322.92-1-kernel@airkyi.com>
 <20251128071322.92-3-kernel@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251128071322.92-3-kernel@airkyi.com>
X-HM-Tid: 0a9ac95f769b09cckunmc7305c7c6e1258
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJDQ1ZIGkMfHkxJHh5PThlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Hah5/jGePtDDELU7fuGQKBjUJX4Xv8n9cmCZg6hdNhAIQyy4LLFccBZd+upwrE+eU0toqzG4hi1Li9+AkKdYVQ3r7vxE/4B3rbCMwOnMuKQz9GblxsL/s9SZTJlMMnlV1yCZdLWSHPdgXtjLc1xVs/94ztH64ZshQpxgWDfH+z0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YhlZQtQGGH+o1PC9FG1bXh4bzpsQsyhDPSlIK1P1gUw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_233115_527652_95A1A9AB 
X-CRM114-Status: GOOD (  21.30  )
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

5ZyoIDIwMjUvMTEvMjgg5pif5pyf5LqUIDE1OjEzLCBDaGFveWkgQ2hlbiDlhpnpgZM6Cj4gRnJv
bTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoZSBpb21t
dSBmb3VuZCBvbiBSSzM1NzYgTlBVIGFuZCBSSzM1NzYgUktWREVDIGNvbnRhaW4gNCBjbG9jay4K
PiAKPiBKdXN0IHVzZSBkZXZtX2Nsa19idWxrX2dldF9hbGwoKSB0byBnZXQgYWxsIHRoZSBjbG9j
a3MgYW5kIHVzZSB0aGVtLgo+IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5A
cm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIENoYW5nZSBjb21t
ZW50Lgo+IAo+ICAgZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIHwgMjAgKysrKy0tLS0t
LS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE2IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMg
Yi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiBpbmRleCAwODYxZGQ0NjliZDguLjc2
ZjcxZmI2NzlmOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMK
PiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiBAQCAtOTMsMTEgKzkzLDYg
QEAgc3RydWN0IHJrX2lvbW11X2RvbWFpbiB7Cj4gICAJc3RydWN0IGlvbW11X2RvbWFpbiBkb21h
aW47Cj4gICB9Owo+ICAgCj4gLS8qIGxpc3Qgb2YgY2xvY2tzIHJlcXVpcmVkIGJ5IElPTU1VICov
Cj4gLXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcmtfaW9tbXVfY2xvY2tzW10gPSB7Cj4gLQki
YWNsayIsICJpZmFjZSIsCj4gLX07Cj4gLQo+ICAgc3RydWN0IHJrX2lvbW11X29wcyB7Cj4gICAJ
cGh5c19hZGRyX3QgKCpwdF9hZGRyZXNzKSh1MzIgZHRlKTsKPiAgIAl1MzIgKCpta19kdGVudHJp
ZXMpKGRtYV9hZGRyX3QgcHRfZG1hKTsKPiBAQCAtMTIzNiwyNSArMTIzMSwxOCBAQCBzdGF0aWMg
aW50IHJrX2lvbW11X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJaW9t
bXUtPnJlc2V0X2Rpc2FibGVkID0gZGV2aWNlX3Byb3BlcnR5X3JlYWRfYm9vbChkZXYsCj4gICAJ
CQkJCSJyb2NrY2hpcCxkaXNhYmxlLW1tdS1yZXNldCIpOwo+ICAgCj4gLQlpb21tdS0+bnVtX2Ns
b2NrcyA9IEFSUkFZX1NJWkUocmtfaW9tbXVfY2xvY2tzKTsKPiAtCWlvbW11LT5jbG9ja3MgPSBk
ZXZtX2tjYWxsb2MoaW9tbXUtPmRldiwgaW9tbXUtPm51bV9jbG9ja3MsCj4gLQkJCQkgICAgIHNp
emVvZigqaW9tbXUtPmNsb2NrcyksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFpb21tdS0+Y2xvY2tz
KQo+IC0JCXJldHVybiAtRU5PTUVNOwo+IC0KPiAtCWZvciAoaSA9IDA7IGkgPCBpb21tdS0+bnVt
X2Nsb2NrczsgKytpKQo+IC0JCWlvbW11LT5jbG9ja3NbaV0uaWQgPSBya19pb21tdV9jbG9ja3Nb
aV07Cj4gLQo+ICAgCS8qCj4gICAJICogaW9tbXUgY2xvY2tzIHNob3VsZCBiZSBwcmVzZW50IGZv
ciBhbGwgbmV3IGRldmljZXMgYW5kIGRldmljZXRyZWVzCj4gICAJICogYnV0IHRoZXJlIGFyZSBv
bGRlciBkZXZpY2V0cmVlcyB3aXRob3V0IGNsb2NrcyBvdXQgaW4gdGhlIHdpbGQuCj4gICAJICog
U28gY2xvY2tzIGFzIG9wdGlvbmFsIGZvciB0aGUgdGltZSBiZWluZy4KPiAgIAkgKi8KPiAtCWVy
ciA9IGRldm1fY2xrX2J1bGtfZ2V0KGlvbW11LT5kZXYsIGlvbW11LT5udW1fY2xvY2tzLCBpb21t
dS0+Y2xvY2tzKTsKPiArCWVyciA9IGRldm1fY2xrX2J1bGtfZ2V0X2FsbChkZXYsICZpb21tdS0+
Y2xvY2tzKTsKPiAgIAlpZiAoZXJyID09IC1FTk9FTlQpCj4gICAJCWlvbW11LT5udW1fY2xvY2tz
ID0gMDsKPiAtCWVsc2UgaWYgKGVycikKPiArCWVsc2UgaWYgKGVyciA8IDApCj4gICAJCXJldHVy
biBlcnI7Cj4gKwllbHNlCj4gKwkJaW9tbXUtPm51bV9jbG9ja3MgPSBlcnI7Cj4gICAKPiAgIAll
cnIgPSBjbGtfYnVsa19wcmVwYXJlKGlvbW11LT5udW1fY2xvY2tzLCBpb21tdS0+Y2xvY2tzKTsK
PiAgIAlpZiAoZXJyKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
