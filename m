Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA069CCD19A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyyfiUa0cpMYnJFWRWo9hTI4a8Fk3mGfGjQV/hEUxdQ=; b=0CYMJNMeHLfI2h
	FitIdO8mTOA5/+iwXDMs7wPAv26THf3Cd2lINXHxWyXWFZrvc5Qf/Pgh+Y37Slckvzn2KtyERAILc
	myZyRsjygXU7zrOe/juiF3GW8RS9fxb5UPv8GbkzrWtXQ+p2H9/OZHuoqLZD2J44PurFfsVIP4g8o
	H0vstBAA/a/YuaSbipfGyjk/Uf5l6UWbyA7tmAExIqKs/F0rr34gb0eVOUWsreBrOOViFLykTOCvT
	jL1aJ2eFOUvBNFyOwC6pHpxgKHYYo0uixKLg/6FWGl8hLW9d8c3Go5FffCNG/DjUNk3mL/VC/PpmV
	urHlYlMDIOPOVSwEAmgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Kre-00000004K4K-3gcu;
	Thu, 16 Oct 2025 10:05:42 +0000
Received: from mail-m49236.qiye.163.com ([45.254.49.236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Kra-00000004K1w-46i0;
	Thu, 16 Oct 2025 10:05:40 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 262323a9f;
	Thu, 16 Oct 2025 18:00:28 +0800 (GMT+08:00)
Message-ID: <3470351f-88ab-48bb-97af-dde4e6eba938@rock-chips.com>
Date: Thu, 16 Oct 2025 18:00:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Damien Le Moal <dlemoal@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Disable L1 substates
To: Niklas Cassel <cassel@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
References: <20251016090422.451982-2-cassel@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251016090422.451982-2-cassel@kernel.org>
X-HM-Tid: 0a99ec76ba4d09cckunmc3027d237c39a4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNKTlZJT0hPSE4ZHx9IQ0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Dkg1ccWxhcEzQTOcTY7bf6wuAXYywd+hMTvRqDxRE1vMLe89yV6Etd0r4HtjD7Lib8ucQ/xO9ILeS0kR9IRcb4AfFbQ7Zq1l5oLWraylks88KcjFaIB10gPecPxyug1hiVMXiTxry8XoDnCwbI/lCmmSFioxp53oLomGc7999KY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=kN3t/e7sa1Sb2IowRbuDgju83rFZL2AXB/0qfNEujok=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_030539_526300_F9BB544D 
X-CRM114-Status: GOOD (  20.73  )
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

5ZyoIDIwMjUvMTAvMTYg5pif5pyf5ZubIDE3OjA0LCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBU
aGUgTDEgc3Vic3RhdGVzIHN1cHBvcnQgcmVxdWlyZXMgYWRkaXRpb25hbCBzdGVwcyB0byB3b3Jr
LCBzZWUgZS5nLgo+IHNlY3Rpb24gJzExLjYuNi40IEwxIFN1YnN0YXRlJyBpbiB0aGUgUkszNTg4
IFRSTSBWMS4wLgo+IAo+IFRoZXNlIHN0ZXBzIGFyZSBjdXJyZW50bHkgbWlzc2luZyBmcm9tIHRo
ZSBkcml2ZXIuCgpZZXMsIHdlIGNvdWxkIGFkZCB0aGVtIGxhdGVyIGlmIGNvbmNlcm5zIGFib3V0
IHN1cHBvcnRzLWNsa3JlcSBpcyBmdWxseQpkaXNjdXNzZWQuCgo+IAo+IFdoaWxlIHRoaXMgaGFz
IGFsd2F5cyBiZWVuIGEgcHJvYmxlbSB3aGVuIHVzaW5nIGUuZy4KPiBDT05GSUdfUENJRUFTUE1f
UE9XRVJfU1VQRVJTQVZFPXksIHRoZSBwcm9ibGVtIGJlY2FtZSBtb3JlIGFwcGFyZW50IGFmdGVy
Cj4gY29tbWl0IGYzYWMyZmYxNDgzNCAoIlBDSS9BU1BNOiBFbmFibGUgYWxsIENsb2NrUE0gYW5k
IEFTUE0gc3RhdGVzIGZvcgo+IGRldmljZXRyZWUgcGxhdGZvcm1zIiksIHdoaWNoIGVuYWJsZWQg
QVNQTSBhbHNvIGZvcgo+IENPTkZJR19QQ0lFQVNQTV9ERUZBVUxUPXkuCj4gCj4gRGlzYWJsZSBM
MSBzdWJzdGF0ZXMgdW50aWwgcHJvcGVyIHN1cHBvcnQgaXMgYWRkZWQuCj4gCgpUaGFua3MgZm9y
IHRoZSBwYXRjaC4KCkFja2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4KCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBGaXhlczogMGU4OThlYjhkZjRlICgi
UENJOiByb2NrY2hpcC1kd2M6IEFkZCBSb2NrY2hpcCBSSzM1NlggaG9zdCBjb250cm9sbGVyIGRy
aXZlciIpCj4gRml4ZXM6IGYzYWMyZmYxNDgzNCAoIlBDSS9BU1BNOiBFbmFibGUgYWxsIENsb2Nr
UE0gYW5kIEFTUE0gc3RhdGVzIGZvciBkZXZpY2V0cmVlIHBsYXRmb3JtcyIpCj4gU2lnbmVkLW9m
Zi1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gQ2hhbmdlcyBz
aW5jZSB2MToKPiAtUmVtb3ZlIHN1cGVyZmx1b3VzIGR3X3BjaWVfcmVhZGxfZGJpKCkKPiAKPiAg
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDIxICsrKysr
KysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
YyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4
IDNlMjc1MmM3ZGQwOS4uODRmODgyYWJiY2E1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0yMDAsNiArMjAwLDI1IEBAIHN0YXRp
YyBib29sIHJvY2tjaGlwX3BjaWVfbGlua191cChzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ICAgCXJl
dHVybiBGSUVMRF9HRVQoUENJRV9MSU5LVVBfTUFTSywgdmFsKSA9PSBQQ0lFX0xJTktVUDsKPiAg
IH0KPiAgIAo+ICsvKgo+ICsgKiBTZWUgZS5nLiBzZWN0aW9uICcxMS42LjYuNCBMMSBTdWJzdGF0
ZScgaW4gdGhlIFJLMzU4OCBUUk0gVjEuMCBmb3IgdGhlIHN0ZXBzCj4gKyAqIG5lZWRlZCB0byBz
dXBwb3J0IEwxIHN1YnN0YXRlcy4gQ3VycmVudGx5LCBub3QgYSBzaW5nbGUgcm9ja2NoaXAgcGxh
dGZvcm0KPiArICogcGVyZm9ybXMgdGhlc2Ugc3RlcHMsIHNvIGRpc2FibGUgTDEgc3Vic3RhdGVz
IHVudGlsIHRoZXJlIGlzIHByb3BlciBzdXBwb3J0Lgo+ICsgKi8KPiArc3RhdGljIHZvaWQgcm9j
a2NoaXBfcGNpZV9kaXNhYmxlX2wxc3ViKHN0cnVjdCBkd19wY2llICpwY2kpCj4gK3sKPiArCXUz
MiBjYXAsIGwxc3ViY2FwOwo+ICsKPiArCWNhcCA9IGR3X3BjaWVfZmluZF9leHRfY2FwYWJpbGl0
eShwY2ksIFBDSV9FWFRfQ0FQX0lEX0wxU1MpOwo+ICsJaWYgKGNhcCkgewo+ICsJCWwxc3ViY2Fw
ID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCBjYXAgKyBQQ0lfTDFTU19DQVApOwo+ICsJCWwxc3Vi
Y2FwICY9IH4oUENJX0wxU1NfQ0FQX0wxX1BNX1NTIHwgUENJX0wxU1NfQ0FQX0FTUE1fTDFfMSB8
Cj4gKwkJCSAgICAgIFBDSV9MMVNTX0NBUF9BU1BNX0wxXzIgfCBQQ0lfTDFTU19DQVBfUENJUE1f
TDFfMSB8Cj4gKwkJCSAgICAgIFBDSV9MMVNTX0NBUF9QQ0lQTV9MMV8yKTsKPiArCQlkd19wY2ll
X3dyaXRlbF9kYmkocGNpLCBjYXAgKyBQQ0lfTDFTU19DQVAsIGwxc3ViY2FwKTsKPiArCX0KPiAr
fQo+ICsKPiAgIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZW5hYmxlX2wwcyhzdHJ1Y3QgZHdf
cGNpZSAqcGNpKQo+ICAgewo+ICAgCXUzMiBjYXAsIGxua2NhcDsKPiBAQCAtMjY0LDYgKzI4Myw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAg
KnBwKQo+ICAgCWlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKGlycSwgcm9ja2NoaXBf
cGNpZV9pbnR4X2hhbmRsZXIsCj4gICAJCQkJCSByb2NrY2hpcCk7Cj4gICAKPiArCXJvY2tjaGlw
X3BjaWVfZGlzYWJsZV9sMXN1YihwY2kpOwo+ICAgCXJvY2tjaGlwX3BjaWVfZW5hYmxlX2wwcyhw
Y2kpOwo+ICAgCj4gICAJcmV0dXJuIDA7Cj4gQEAgLTMwMSw2ICszMjEsNyBAQCBzdGF0aWMgdm9p
ZCByb2NrY2hpcF9wY2llX2VwX2luaXQoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQo+ICAgCXN0cnVj
dCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+ICAgCWVudW0gcGNpX2Jh
cm5vIGJhcjsKPiAgIAo+ICsJcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2wxc3ViKHBjaSk7Cj4gICAJ
cm9ja2NoaXBfcGNpZV9lbmFibGVfbDBzKHBjaSk7Cj4gICAJcm9ja2NoaXBfcGNpZV9lcF9oaWRl
X2Jyb2tlbl9hdHNfY2FwX3JrMzU4OChlcCk7Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
