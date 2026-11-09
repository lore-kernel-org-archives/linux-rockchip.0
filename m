Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16615606A337
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 02:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fewAdH83;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=RSzMaBpz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AdbpXx660UfDsPXocfjZyqvptDyyqAcw7IbYGdvHnH0=; b=fewAdH83qCq9fnmftx2eDabd/H
	I+qt3VSzTta9rzwMDoWtMQ1q6TANvh6mraSyw2zd/No+eJyP/7kgqJLqatEv5KkGSHN4JrTKKGeI6
	qvyc8k+A/xL4fP/XcenLNWBsIaX1/I9AQFoSJBn14bs4Gnclr49DpPxRco4SE+Jkk4z/LJGOex5XS
	uhwQIteVc6PT9+x6rdYY5g+nb9Ynfxh0LZqS+CiZVjpej+C3NKjR0KRdkzECcBrF3Tbybk4AJE/tv
	zz+96+KKfJamK8wM9z1NLn4c2QoEzpwBFyxp+sFtivX8GEHgxVkRiSIvsm5dqJ+OyJeao060z4TwJ
	zpt0undQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQEmr-0000000H6NJ-0Jpz;
	Mon, 09 Nov 2026 02:07:09 +0000
Received: from mail-m9352.xmail.ntesmail.com ([103.126.93.52])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQEmo-0000000H6Mv-01r6;
	Mon, 09 Nov 2026 02:07:08 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 53eeadfd9;
	Mon, 9 Nov 2026 10:06:57 +0800 (GMT+08:00)
Message-ID: <60fbb95c-63cc-4d22-9e2b-51332a50054d@rock-chips.com>
Date: Mon, 9 Nov 2026 10:06:55 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, =?UTF-8?Q?Enrique_Hern=C3=A1ndez_Bello?=
 <ehbello@gmail.com>, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 0/2] PCI: rockchip-host: Retry training and hot-reset
 a JMB585 on RK3399
To: Igor Velkov <iav@iav.lv>
References: <20261024-rockchip-pcie-resume-v1-0-58e54a5cf5f1@iav.lv>
 <20261106-rockchip-pcie-ltssm-trace-1@iav.lv>
 <6c9adabe-d632-471e-8fc1-aafe62115167@rock-chips.com>
 <20261109-rockchip-pcie-deskew-result-1@iav.lv>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261109-rockchip-pcie-deskew-result-1@iav.lv>
X-HM-Tid: 0aa1be0f01f703a4kunm84dec09857da6c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ0hKGlZIH01CGUNDTk
	5MQk9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUJCSU5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=RSzMaBpzKBX5tqLpuWQ15ZQyFDH114v8q2IeBzHG+Vp+GQV3bxrhL7Kcukqj4D585i+sB7hqCNAmmV5+6/8cW1TRIEKMKs7Cvk18QPkUaOOQk3gusQTpcjDlblAIqw8/pktunXi45CRaK61wjrAV/kL9AvGg/8sY2nt5fnKVZUg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=We4ESE2til4bSkM1vEMn0soL7vZrg8WY8DZ2Y26nFnk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_180706_615483_3C16E329 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMDkg5pif5pyf5LiAIDc6MDUsIElnb3IgVmVsa292IOWGmemBkzoKPiBIaSBT
aGF3biwKPiAKPiBUaGFua3MuIERlc2tldyBtYWtlcyBubyBkaWZmZXJlbmNlLiBIZWxpb3M2NCwg
eDIsIGJpbmQvdW5iaW5kLCB2YXJpYW50cwo+IGFsdGVybmF0aW5nIGV2ZXJ5IGN5Y2xlLCBiYWQg
bGluayBicmluZy11cHM6Cj4gCj4gICAgZGVmYXVsdHMgNi8xMDQsIGF1dG8gZGVza2V3IG9mZiAr
IHRyaW0gMHhmOiA1LzEwNAo+ICAgIGRlZmF1bHRzIDYvMTA0LCBtYWduaXR1ZGUgb2ZmOiA2LzEw
NAo+IAo+IFlvdXIgbWFpbCBoYXMgdGhlIG1hZ25pdHVkZSBhdCAweGIsIGJ1dCBUUk0gVjEuMyBw
YXJ0IDIsIDE3LjYuMTAuMSBoYXMKPiBUWF9URVJNSU5BVElPTl9UUklNIHRoZXJlIGFuZCBERVNL
RVdfTUFHTklUVURFIGF0IDB4Yywgc28gSSB3cm90ZSAweGMuCgpTb3JyeSwgbXkgdHlwby4KCj4g
Cj4gREVCVUdfREFUQV9PVVQgZGlkIHNob3cgc29tZXRoaW5nLiBXaXRoIERlYnVnIE11eCBDb250
cm9sICgweDIwOCkgPSA1LAo+IHNoYXJlIG9mIHNhbXBsZXMgd2l0aCBpbl9kbGxwMF9kYXRhX3Zh
bGlkIHNldCwgMTAwIG1zIHdpbmRvdyBhZnRlciBob3QgcmVzZXQ6Cj4gCj4gICAgZ29vZCBicmlu
Zy11cHMgMC4xNiUgKDk5KSwgYmFkIGJyaW5nLXVwcyA1MSUgKDMsIHJhbmdlIDQ1LTUzKQo+IAo+
IFRoZSBmaXJzdCB0cmFpbmluZyBsb29rcyB0aGUgc2FtZTogMC4xNSUgKDk3KSBhZ2FpbnN0IDQ3
JSAoNSkuIG1nbXRfZGxscF9lcnJvciwKPiBjcmMzMl9lcnJvciBhbmQgaW5fdGxwX2Vycm9yIHN0
YXkgMCBpbiBhbGwgb2YgdGhlbS4gV2l0aCB0aGUgbXV4IGF0IDQsCj4gc3RhcnRfcmVwbGF5LCBy
ZXBsYXkgdGltZW91dCBhbmQgZGxfcHJvdG9jb2xfZXJyb3Igc3RheSAwIHRvby4KPiAKPiBTbyBp
biBhIGJhZCBicmluZy11cCB0aGUgUkMgcmVjZWl2ZXMgYSBjb25zdGFudCBlcnJvci1mcmVlIHN0
cmVhbSBvZiBETExQcy4KPiBJIHJlYWQgdGhhdCBhcyB0aGUgSk1CNTg1IHJlcGVhdGluZyBmbG93
IGNvbnRyb2wgaW5pdCBiZWNhdXNlIGl0IGRvZXMgbm90Cj4gZ2V0IHdoYXQgdGhlIFJDIHNlbmRz
LCBidXQgdGhpcyBidXMgZG9lcyBub3Qgc2hvdyB0aGUgRExMUCB0eXBlLiBJdCB3b3VsZCBwdXQK
PiB0aGUgZmF1bHQgaW4gdGhlIFJDIHRvIEpNQjU4NSBkaXJlY3Rpb24sIG9uIHgyIG9ubHkuCj4g
Cj4gSXMgdGhlcmUgYW4gUkMgdHJhbnNtaXR0ZXIgc2V0dGluZyB3b3J0aCB0cnlpbmcgZm9yIHRo
YXQsIHN1Y2ggYXMgc3dpbmcgb3IKPiBkZS1lbXBoYXNpcz8gSWYgbm90LCBJIHdpbGwgc3RvcCBs
b29raW5nIGZvciB0aGUgY2F1c2UgaGVyZS4KPiAKClJlZyAweGEgaXMgZm9yIHN3aW5nLCBpdCBz
YXlzOiAiVGhpcyB2YWx1ZSBzaG91bGQgYmUgc2V0IHRvICg2NC01NiowIC45LwpWREQwOSkgZGVw
ZW5kaW5nIG9uIGFjdHVhbCB2b2x0YWdlIG9mIFZERDA5IgoKQnV0IGRlLWVtcGhhc2lzIGlzIGZp
eGVkIGluIGVhY2gga2luZCBvZiBidXMgc3BlZWQuCgo+IElnb3IKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
