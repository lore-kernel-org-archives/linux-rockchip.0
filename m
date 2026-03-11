Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF4C1FCC9AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 05:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/w+B7m8GfEuLU3nWaiwPZOsytzIenV6ZXpHc5AHdOA=; b=VWeoc3UvwELHI1uwzckCAk14uE
	+NSwj3f1H6F8ePJBCCqhpugNd3v4HcbRL50ZjF3ngHZza+qxPw9DQJ5gNIu4Jl+ePEZyVTd5PCF4p
	TnXo4ZTJ2+jdOKe4PXUGA0vEBIyZHXmuwwlNipoCrgBhmN4ozmQnkRv3w0l89LYZDMttU5xxgc1sX
	iWFJH+Mt1A5fL4DKawfF9cuAPbNT6e53xFOC3eQtKPIUmDFBp7XHx2+6UzHIFg2CKg3+EjK3WP+Gy
	QIjK2kjgjnBIcojvEoqco9E0U22MrWcIK2cGwC2GXzBd64SIS52RZyzM09KxqTvAnxMNmLmOiexwb
	WJVHN+zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0C5c-0000000AmJX-05UY;
	Wed, 11 Mar 2026 05:26:36 +0000
Received: from mail-m19731113.qiye.163.com ([220.197.31.113])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0C5Z-0000000AmI6-28Hx;
	Wed, 11 Mar 2026 05:26:34 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36820e818;
	Wed, 11 Mar 2026 13:26:29 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Lukas Wunner <lukas@wunner.de>, Richard Zhu <hongxing.zhu@nxp.com>,
 Brian Norris <briannorris@chromium.org>, Wilson Ding <dingwei@marvell.com>,
 Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v7 1/4] PCI/ERR: Add support for resetting the Root Ports
 in a platform specific way
To: manivannan.sadhasivam@oss.qualcomm.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
 <20260310-pci-port-reset-v7-1-9dd00ccc25ab@oss.qualcomm.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <e951b005-d9c9-224b-ed52-23abbccf7212@rock-chips.com>
Date: Wed, 11 Mar 2026 13:26:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260310-pci-port-reset-v7-1-9dd00ccc25ab@oss.qualcomm.com>
X-HM-Tid: 0a9cdb5c5d4d09cckunma929f57d18cd2d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlDTlZPHxlISE4ZSx8aHUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=K7wZRUJk1emUgxCcHil5+9JB/ANF+IxeKRXJYfvQNEB51UFMvURGvaB1+hEuaGfLw6gNqqGdYK7+AzOAJqC3QeulrOvdMdg98utMWmVdILteJwz08dWusEIiUceoqY1rrzpiBbUcuejudxcc0a8Y5GCv3zU3YmURNiNhYMC2e6Q=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=9yG8NQ0gHRExp7u3DqeTqLY+f4Q07ToFiRLsE78NeCU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_222633_715679_706BD2FB 
X-CRM114-Status: GOOD (  23.82  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8xMCDQx8batv4gMjI6MDEsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB2aWEgQjQg
UmVsYXkg0LS1wDoKPiBGcm9tOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9y
Zz4KPiAKPiBTb21lIGhvc3QgYnJpZGdlIGRldmljZXMgcmVxdWlyZSByZXNldHRpbmcgdGhlIFJv
b3QgUG9ydHMgaW4gYSBwbGF0Zm9ybQo+IHNwZWNpZmljIHdheSB0byByZWNvdmVyIHRoZW0gZnJv
bSBlcnJvciBjb25kaXRpb25zIHN1Y2ggYXMgRmF0YWwgQUVSCj4gZXJyb3JzLCBMaW5rIERvd24g
ZXRjLi4uIFNvIGludHJvZHVjZSBwY2lfaG9zdF9icmlkZ2U6OnJlc2V0X3Jvb3RfcG9ydCgpCj4g
Y2FsbGJhY2sgYW5kIGNhbGwgaXQgZnJvbSBwY2liaW9zX3Jlc2V0X3NlY29uZGFyeV9idXMoKSBp
ZiBhdmFpbGFibGUuIEFsc28sCj4gc2F2ZSB0aGUgUm9vdCBQb3J0IGNvbmZpZyBzcGFjZSBiZWZv
cmUgcmVzZXQgYW5kIHJlc3RvcmUgaXQgYWZ0ZXJ3YXJkcy4KPiAKPiBUaGUgJ3Jlc2V0X3Jvb3Rf
cG9ydCcgY2FsbGJhY2sgaXMgcmVzcG9uc2libGUgZm9yIHJlc2V0dGluZyB0aGUgZ2l2ZW4gUm9v
dAo+IFBvcnQgcmVmZXJlbmNlZCBieSB0aGUgJ3BjaV9kZXYnIHBvaW50ZXIgaW4gYSBwbGF0Zm9y
bSBzcGVjaWZpYyB3YXkgYW5kCj4gYnJpbmcgaXQgYmFjayB0byB0aGUgd29ya2luZyBzdGF0ZSBp
ZiBwb3NzaWJsZS4gSWYgYW55IGVycm9yIG9jY3VycyBkdXJpbmcKPiB0aGUgcmVzZXQgb3BlcmF0
aW9uLCByZWxldmFudCBlcnJubyBzaG91bGQgYmUgcmV0dXJuZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9y
Zz4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgo+IFRlc3RlZC1ieTogQnJpYW4gTm9ycmlzIDxicmlh
bm5vcnJpc0BjaHJvbWl1bS5vcmc+Cj4gVGVzdGVkLWJ5OiBLcmlzaG5hIENoYWl0YW55YSBDaHVu
ZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KPiBUZXN0ZWQtYnk6IFJpY2hh
cmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogRnJhbmsgTGkgPEZy
YW5rLkxpQG54cC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BjaS9wY2kuYyAgICAgIHwgMjAgKysr
KysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvcGNpL3BjaWUvZXJyLmMgfCAgNSAtLS0tLQo+
ICAgaW5jbHVkZS9saW51eC9wY2kuaCAgICB8ICAxICsKPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjEg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
Y2kvcGNpLmMgYi9kcml2ZXJzL3BjaS9wY2kuYwo+IGluZGV4IDg0NzljMmUxZjc0Zi4uNmYwOTA1
N2Q4M2UwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL3BjaS5jCj4gKysrIGIvZHJpdmVycy9w
Y2kvcGNpLmMKPiBAQCAtNDgxMiw2ICs0ODEyLDI2IEBAIHZvaWQgcGNpX3Jlc2V0X3NlY29uZGFy
eV9idXMoc3RydWN0IHBjaV9kZXYgKmRldikKPiAgIAo+ICAgdm9pZCBfX3dlYWsgcGNpYmlvc19y
ZXNldF9zZWNvbmRhcnlfYnVzKHN0cnVjdCBwY2lfZGV2ICpkZXYpCj4gICB7Cj4gKwlzdHJ1Y3Qg
cGNpX2hvc3RfYnJpZGdlICpob3N0ID0gcGNpX2ZpbmRfaG9zdF9icmlkZ2UoZGV2LT5idXMpOwo+
ICsJaW50IHJldDsKPiArCj4gKwlpZiAocGNpX2lzX3Jvb3RfYnVzKGRldi0+YnVzKSAmJiBob3N0
LT5yZXNldF9yb290X3BvcnQpIHsKPiArCQkvKgo+ICsJCSAqIFNhdmUgdGhlIGNvbmZpZyBzcGFj
ZSBvZiB0aGUgUm9vdCBQb3J0IGJlZm9yZSBkb2luZyB0aGUKPiArCQkgKiByZXNldCwgc2luY2Ug
dGhlIHN0YXRlIGNvdWxkIGJlIGxvc3QuIFRoZSBFbmRwb2ludCBzdGF0ZQo+ICsJCSAqIHNob3Vs
ZCd2ZSBiZWVuIHNhdmVkIGJ5IHRoZSBjYWxsZXIuCj4gKwkJICovCj4gKwkJcGNpX3NhdmVfc3Rh
dGUoZGV2KTsKPiArCQlyZXQgPSBob3N0LT5yZXNldF9yb290X3BvcnQoaG9zdCwgZGV2KTsKPiAr
CQlpZiAocmV0KQo+ICsJCQlwY2lfZXJyKGRldiwgIkZhaWxlZCB0byByZXNldCBSb290IFBvcnQ6
ICVkXG4iLCByZXQpOwo+ICsJCWVsc2UKPiArCQkJLyogTm93IHJlc3RvcmUgaXQgb24gc3VjY2Vz
cyAqLwo+ICsJCQlwY2lfcmVzdG9yZV9zdGF0ZShkZXYpOwo+ICsKPiArCQlyZXR1cm47Cj4gKwl9
Cj4gKwo+ICAgCXBjaV9yZXNldF9zZWNvbmRhcnlfYnVzKGRldik7Cj4gICB9Cj4gICAKCkxHVE0s
CgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9wY2llL2Vyci5jIGIvZHJpdmVycy9wY2kvcGNpZS9lcnIu
Ywo+IGluZGV4IGJlYmU0YmMxMTFkNy4uMTNiOWQ5ZWI3MTRmIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGNpL3BjaWUvZXJyLmMKPiArKysgYi9kcml2ZXJzL3BjaS9wY2llL2Vyci5jCj4gQEAgLTI1
NiwxMSArMjU2LDYgQEAgcGNpX2Vyc19yZXN1bHRfdCBwY2llX2RvX3JlY292ZXJ5KHN0cnVjdCBw
Y2lfZGV2ICpkZXYsCj4gICAJfQo+ICAgCj4gICAJaWYgKHN0YXR1cyA9PSBQQ0lfRVJTX1JFU1VM
VF9ORUVEX1JFU0VUKSB7Cj4gLQkJLyoKPiAtCQkgKiBUT0RPOiBTaG91bGQgY2FsbCBwbGF0Zm9y
bS1zcGVjaWZpYwo+IC0JCSAqIGZ1bmN0aW9ucyB0byByZXNldCBzbG90IGJlZm9yZSBjYWxsaW5n
Cj4gLQkJICogZHJpdmVycycgc2xvdF9yZXNldCBjYWxsYmFja3M/Cj4gLQkJICovCj4gICAJCXN0
YXR1cyA9IFBDSV9FUlNfUkVTVUxUX1JFQ09WRVJFRDsKPiAgIAkJcGNpX2RiZyhicmlkZ2UsICJi
cm9hZGNhc3Qgc2xvdF9yZXNldCBtZXNzYWdlXG4iKTsKPiAgIAkJcGNpX3dhbGtfYnJpZGdlKGJy
aWRnZSwgcmVwb3J0X3Nsb3RfcmVzZXQsICZzdGF0dXMpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L3BjaS5oIGIvaW5jbHVkZS9saW51eC9wY2kuaAo+IGluZGV4IDFjMjcwZjFkNTEyMy4u
MzRjNDM0Yjc5YWJiIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvcGNpLmgKPiArKysgYi9p
bmNsdWRlL2xpbnV4L3BjaS5oCj4gQEAgLTY0NCw2ICs2NDQsNyBAQCBzdHJ1Y3QgcGNpX2hvc3Rf
YnJpZGdlIHsKPiAgIAl2b2lkICgqcmVsZWFzZV9mbikoc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAq
KTsKPiAgIAlpbnQgKCplbmFibGVfZGV2aWNlKShzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdlICpicmlk
Z2UsIHN0cnVjdCBwY2lfZGV2ICpkZXYpOwo+ICAgCXZvaWQgKCpkaXNhYmxlX2RldmljZSkoc3Ry
dWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlLCBzdHJ1Y3QgcGNpX2RldiAqZGV2KTsKPiArCWlu
dCAoKnJlc2V0X3Jvb3RfcG9ydCkoc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlLCBzdHJ1
Y3QgcGNpX2RldiAqZGV2KTsKPiAgIAl2b2lkCQkqcmVsZWFzZV9kYXRhOwo+ICAgCXVuc2lnbmVk
IGludAlpZ25vcmVfcmVzZXRfZGVsYXk6MTsJLyogRm9yIGVudGlyZSBoaWVyYXJjaHkgKi8KPiAg
IAl1bnNpZ25lZCBpbnQJbm9fZXh0X3RhZ3M6MTsJCS8qIE5vIEV4dGVuZGVkIFRhZ3MgKi8KPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
