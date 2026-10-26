Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6B6606A31B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 02:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w+3oxFHb;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=JcYUNmGU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6jfSmZ5o2VxL9YChPInZ2unzvLSR9c5pYjyUgUM1lm0=; b=w+3oxFHb6VvPplsnu8dKvhFJXc
	kF2ODUVs3l+OyD1Jq2zcy1v99n4MZoUH1DR2iMDKbh4WlBo/y+cdjb7Ty6QCooayCAgiu2ELgVMi7
	9PE/dVebpwZs2ywYLeSpgYfEXwJjUUZT90Z4OFmBAK0NzU6ukkYEIBNqNqnFlefzAex1ypKlQv8UM
	+Wp2EtbflyXle6DoV6ecWMZKMfkNnZGwcfJAKLipZ7Geh/MVHDaVkDGzyUhLJi7BcLRc8MI1yd6zH
	9KSsPMhAW8ENkhXw+CN4+9pWRRZBqyTnIaHObE33snpEgcBTKZyxd0p+05XSaKjuGwbsPfrCx3Y4v
	Vj5T5uUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLAPy-00000001c9V-0I4k;
	Mon, 26 Oct 2026 02:26:34 +0000
Received: from mail-m1063.netease.com ([154.81.10.63])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLAPv-00000001c8l-00k8;
	Mon, 26 Oct 2026 02:26:32 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 524c7990e;
	Mon, 26 Oct 2026 10:26:27 +0800 (GMT+08:00)
Message-ID: <78564cbc-8faa-4392-ab66-2a1395fdca4e@rock-chips.com>
Date: Mon, 26 Oct 2026 10:26:26 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
To: Diederik de Haas <diederik@cknow-tech.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
References: <20261021101533.609118-1-diederik@cknow-tech.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261021101533.609118-1-diederik@cknow-tech.com>
X-HM-Tid: 0aa17607d42803a4kunm445aa2303d8aee
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUhCS1YaQh9PHk5LQh
	0YHxlWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JcYUNmGUGamMX0H4edPTX5buUkXYPXtzWNZJzuHFd2cO8Zvt2/2GQlk2tcILYDNXTCofCO2xjK3aRQhgmlyWPSA+CVjG9pvEvwbP3R0qUDmNF7iOLfUaaigRZOrSbL2fVRjdZ4PAwHFI6XI/ULrph+sqGPCExHf1KWV2SXip0NM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=urfEyyHn5kTPStI4ZHijB5qvt2eSMg21ywUW0EWxMho=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_192631_255403_7E4F6C2A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTAvMjEg5pif5pyf5LiJIDE4OjE0LCBEaWVkZXJpayBkZSBIYWFzIOWGmemBkzoK
PiBUaGUgZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgpIGZ1bmN0aW9uIGFscmVhZHkgYXV0b21h
dGljYWxseSBsb2dzCj4gZGV0YWlsZWQgZXJyb3IgbWVzc2FnZXMgb24gZmFpbHVyZSBzaW5jZSBj
b21taXQKPiA1NWI0OGUyM2Y1YzQgKCJnZW5pcnEvZGV2cmVzOiBBZGQgZXJyb3IgaGFuZGxpbmcg
aW4gZGV2bV9yZXF1ZXN0XypfaXJxKCkiKQo+IFNvIHJlbW92ZSB0aGUgbm93LXJlZHVuZGFudCBk
cml2ZXItc3BlY2lmaWMgZGV2X2VycigpIGNhbGxzLgo+IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExp
biA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLgoKPiBTaWduZWQtb2ZmLWJ5OiBE
aWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDggKystLS0tLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IDE0
OTc2ODYxZjhlZi4uYTRkYmZjNTJjMmYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC03MTgsMTAgKzcxOCw4IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
diwKPiAgIAlyZXQgPSBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKGRldiwgaXJxLCBOVUxMLAo+
ICAgCQkJCQlyb2NrY2hpcF9wY2llX3JjX3N5c19pcnFfdGhyZWFkLAo+ICAgCQkJCQlJUlFGX09O
RVNIT1QsICJwY2llLXN5cy1yYyIsIHJvY2tjaGlwKTsKPiAtCWlmIChyZXQpIHsKPiAtCQlkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byByZXF1ZXN0IFBDSWUgc3lzIElSUVxuIik7Cj4gKwlpZiAocmV0
KQo+ICAgCQlyZXR1cm4gcmV0Owo+IC0JfQo+ICAgCj4gICAJLyogTFRTU00gZW5hYmxlIGNvbnRy
b2wgbW9kZSAqLwo+ICAgCXZhbCA9IEZJRUxEX1BSRVBfV00xNihQQ0lFX0xUU1NNX0VOQUJMRV9F
TkhBTkNFLCAxKTsKPiBAQCAtNzY0LDEwICs3NjIsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3Bj
aWVfY29uZmlndXJlX2VwKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gICAJcmV0ID0g
ZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShkZXYsIGlycSwgTlVMTCwKPiAgIAkJCQkJcm9ja2No
aXBfcGNpZV9lcF9zeXNfaXJxX3RocmVhZCwKPiAgIAkJCQkJSVJRRl9PTkVTSE9ULCAicGNpZS1z
eXMtZXAiLCByb2NrY2hpcCk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2VycihkZXYsICJmYWls
ZWQgdG8gcmVxdWVzdCBQQ0llIHN5cyBJUlFcbiIpOwo+ICsJaWYgKHJldCkKPiAgIAkJcmV0dXJu
IHJldDsKPiAtCX0KPiAgIAo+ICAgCS8qCj4gICAJICogTFRTU00gZW5hYmxlIGNvbnRyb2wgbW9k
ZSwgYW5kIGF1dG9tYXRpY2FsbHkgZGVsYXkgbGluayB0cmFpbmluZyBvbgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
