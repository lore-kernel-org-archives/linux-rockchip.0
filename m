Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5F3CF6A86
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 08:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfVHJXtYFJkDZgxUK+oOaExyge5YTtfE7ZRFXEX2R40=; b=unDqKuiN753f0U
	5S03/k1rB1Zdr1JMg18s2ZRaaKn0EtzpP75wfAUSKAkc4PYXiYfqTOaGfUrWARt06Ot8EEtrhiTkH
	lAaIdzICHxoP0Br3+gUgiGDXKLjATQFxO/Wj305ovzyoNo9qegBzcjziaOIYyrCvZCjsePkXn0EiN
	RFQpSADuZa72fCDVYJpRSEQYgCtubt1K4YrtZt7vvNs8KCzsXo6FAmWP2nO0c1F1Nl+U+NRaStBEv
	U/oQ/bybJ5WNOxnmai+DxWq4UCiho6FO50q/1apmParCin4owHl/c56n6dsTQsmKYDPJZ7+vqTS5A
	ljJZKKKPRDfuf8CxYiuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlX8-0000000GJKY-0KDn;
	Thu, 08 Jan 2026 08:38:18 +0000
Received: from mail-m3289.qiye.163.com ([220.197.32.89])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlX3-0000000GJIO-25YG;
	Thu, 08 Jan 2026 08:38:16 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fef36141;
	Thu, 8 Jan 2026 16:38:07 +0800 (GMT+08:00)
Message-ID: <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
Date: Thu, 8 Jan 2026 16:38:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Alexey Charkov <alchark@gmail.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
 <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
 <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
X-HM-Tid: 0a9b9cc1866103abkunm0e048bb5117cfb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhJQlZKTElOQx1OQk0YS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0
	pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=f79xQ8sZlvCVy2PFQxXZd70Z/gMMUfuu39/WzLEApaY/LtlnAlZLpyn8o0o7YdTMMF9rsFmxcNn+HU/BGHd8baUJbHmZ7Q7uLAgllFhWoZP56g9OZ17+f6gWldn6XDzL8XE03FG4Ba7H2AOQmequz04zyPDk5B86vAscguWQsL4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=lHhK7J9UwVHyDp7OnI2aJtOUELVCPGvnzkrrcOsH38Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_003813_743821_3B55AF1C 
X-CRM114-Status: GOOD (  17.11  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMS84LzIwMjYgNDoxMSBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gVGh1LCBKYW4g
OCwgMjAyNiBhdCAxMjowMuKAr1BNIENoYW95aSBDaGVuIDxrZXJuZWxAYWlya3lpLmNvbT4gd3Jv
dGU6Cj4+Cj4+IE9uIDEvOC8yMDI2IDM6NDIgUE0sIENoYW95aSBDaGVuIHdyb3RlOgo+Pj4gSGVs
bG8gQWxleGV5LCBBbmRyZXcsCj4+Pgo+Pj4gT24gMS84LzIwMjYgMjo1MyBQTSwgQWxleGV5IENo
YXJrb3Ygd3JvdGU6Cj4+Pj4gT24gV2VkLCBKYW4gNywgMjAyNiBhdCAxMDoxOOKAr1BNIEFuZHJl
dyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+PiArJmdtYWMwIHsKPj4+
Pj4+ICsgICAgIGNsb2NrX2luX291dCA9ICJvdXRwdXQiOwo+Pj4+Pj4gKyAgICAgcGh5LW1vZGUg
PSAicmdtaWktcnhpZCI7Cj4+Pj4+Cj4+Pj4+IHJnbWlpLXJ4aWQgaXMgb2RkLiBEb2VzIHRoZSBQ
Q0IgcmVhbGx5IGhhdmUgYW4gZXh0cmEgbG9uZyBUWCBjbG9jawo+Pj4+PiBsaW5lLCBidXQgYSBz
aG9ydCBSWCBjbG9jayBsaW5lPwo+Pj4+Pgo+Pj4+PiBUcnkgY2hhbmdpbmcgdGhpcyB0byByZ21p
aS1pZCwgYW5kIGRyb3AgdGhlIHR4X2RlbGF5IHByb3BlcnR5Lgo+Pj4+Cj4+Pj4gQWN0dWFsbHkg
aXQgd291bGQgYmUgZ3JlYXQgaWYgUm9ja2NoaXAgY291bGQgY2xhcmlmeSB0aGUgZGVsYXkKPj4+
PiBkdXJhdGlvbiBpbnRyb2R1Y2VkIGJ5IGEgc2luZ2xlIGRlbGF5IGVsZW1lbnQgaW4gR01BQy1J
T01VWCBkZWxheQo+Pj4+IGxpbmVzLCB3aGljaCBhcmUgY29udHJvbGxlZCBpbiB0aGUgR01BQyBk
cml2ZXIgYnkgdGhlIHt0eCxyeH1fZGVsYXkKPj4+PiBwcm9wZXJ0aWVzLiBNYXliZSB3ZSBjb3Vs
ZCB0aGVuIHN3aXRjaCB0byB1c2luZwo+Pj4+IHt0eCxyeH1faW50ZXJuYWxfZGVsYXlfcHMgZm9y
IGZpbmUtdHVuaW5nIHRoZSBkZWxheXMgb24gdGhlIEdNQUMgc2lkZQo+Pj4+IGFzIGVudmlzYWdl
ZCBpbiBEVCBiaW5kaW5ncyBbMV0sIGFuZCB1c2UgcGh5LW1vZGUgPSAicmdtaWktaWQiCj4+Pj4g
dGhyb3VnaG91dC4gQ2hhb3lpLCBhbnkgY2hhbmNlIHlvdSBjb3VsZCBhc2sgYXJvdW5kIGluIHlv
dXIgaGFyZHdhcmUKPj4+PiB0ZWFtPwo+Pj4+Cj4+Pj4gQ3VycmVudGx5IHRob3VnaCByZW1vdmlu
ZyB0aGUgZGVsYXlzIGF0IEdNQUMgc2lkZSBhbHRvZ2V0aGVyIGNhdXNlcwo+Pj4+IHVuc3RhYmxl
IGxpbmsgb3BlcmF0aW9uIC0gc2VlIFsyXSBmb3IgZXhhbXBsZS4KPj4+Pgo+Pj4+IFsxXSBodHRw
czovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC1jb250cm9sbGVyLnlhbWwjTDM0Mi1MMzQ3
Cj4+Pj4gWzJdIGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVu
dC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0vY29tbWl0LzM3MmYzZTlhZTYyY2M2MmNkZjI1NDMzOTFl
YTU3YmU2YmI1NDhhMGMKPj4+Cj4+PiBTb3JyeSwgdGhpcyBwcm9ibGVtIGhhcyBiZWVuIGRpc2N1
c3NlZCBtYW55IHRpbWVzIGJlZm9yZS4gSXQncyBiZWNhdXNlCj4+PiB0aGUgZ21hYyBvbiB0aGUg
Um9ja2NoaXAgcGxhdGZvcm0gY3VycmVudGx5IHJlbGllcyBvbiBzZXR0aW5nIHRoZQo+Pj4gY29y
cmVzcG9uZGluZyBkZWxheSB2aWEgcGh5LW1vZGUgWzNdLgo+Pj4KPj4+IFszXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvbXFveWpuN21ucTZ0bXQ2bjZvZXY0d2EzaGVyamF4bHVwbWwyZm1j
YW1wd2lhanZqNGFAcjV6czRkM2pkbTVwLwo+Pj4KPj4+IFRoZSBkZWxheSBpbnRyb2R1Y2VkIGJ5
IHRoZSBkZWxheSBsaW5lIGlzIG5vdCBhYnNvbHV0ZS4gSW4gcmVhbGl0eSwKPj4+IGl0IGRlcGVu
ZHMgb24gZmFjdG9ycyBzdWNoIGFzIHRoZSBjaGlwJ3MgZGVzaWduIGFuZCBwcm9jZXNzIHRlY2hu
b2xvZ3kuCj4+Pgo+Pj4gQW5kIGZvciBSSzM1NzYsIHlvdSBjYW4gYXNzdW1lIHRoYXQ6Cj4+Pgo+
Pj4gICAgICAgdGltZShucykgPSAwLjA1NzkgKiBkZWxheV9saW5lX2NvdW50ICsgMC4xMDUKPj4+
Cj4+PiBGb3IgZXhhbXBsZSwgdHhfZGVsYXkgPSA8MHgyMD4gbWVhbnM6Cj4+Pgo+Pj4gICAgICAg
dGltZSA9IDAuMDU3OSAqIDB4MjAgKyAwLjEwNSBucyA9IDEuOTU3OCBucwo+Pj4KPj4+IEFuZCBJ
IGJlbGlldmUge3R4LHJ4fV9pbnRlcm5hbF9kZWxheV9wcyBpcyBpbmRlZWQgYSBnb29kIGlkZWEu
Cj4+PiBJJ2xsIHRyeSB0byBhZGQgdGhlbSBpbiB2My4gVGhhbmtzLgo+Pj4KPj4KPj4gSSd2ZSBh
bHNvIHNlZSBzb21lIGR0IHRoYXQgdXNlIHt0eCxyeH1faW50ZXJuYWxfZGVsYXlfcHMgaW5zaWRl
IHRoZSBQSFksCj4+IGFuZCBjb21wYXJlZCB0byBkb2luZyBpdCBpbiB0aGUgTUFDLCB3aGljaCBv
bmUgaXMgdGhlIGJldHRlciBjaG9pY2U/Cj4gCj4gWW91ciBQSFkgZGVmYXVsdHMgdG8gMTk1MHBz
IGluIHJnbWlpLWlkIFsxXSwgc28gYWRkaW5nIGFueXRoaW5nIG9uIHRvcAo+IG9mIHRoYXQgb24g
R01BQyBzaWRlIHdvdWxkIGxhbmQgeW91IHdpdGggYSBsb25nZXIgdG90YWwgVFggZGVsYXkgdGhh
bgo+IHlvdSBjdXJyZW50bHkgZ2V0IGFjY29yZGluZyB0byB0aGUgY29lZmZpY2llbnRzIHlvdSd2
ZSBqdXN0IHBvc3RlZAo+ICgxNzg0LjFwcykuIEkgd291bGQgc2F5IGdvIGZvciAidHgtaW50ZXJu
YWwtZGVsYXktcHMgPSA8MTgwMD4iIG9uIHRoZQo+IFBIWSBzaWRlIGZvciB0aGUgY2xvc2VzdCBt
YXRjaC4KPiAKPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFz
dGVyL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbW90b3Jjb21tJTJDeXQ4
eHh4LnlhbWwjTDM2CgpBaCwgSSB0aG91Z2h0IGl0IHdhcyBzb21ldGhpbmcgbGlrZSB0aGlzOgoK
JmdtYWMwIHsKCXBoeS1tb2RlID0gInJnbWlpIjsKCXR4LWludGVybmFsLWRlbGF5LXBzID0gPDE3
ODQ+Owp9OwoKQnV0IHdoYXQgeW91IGFjdHVhbGx5IHNhaWQgd2FzIHRoaXM6CgombWRpbzEgewoJ
cmdtaWlfcGh5OiBldGhlcm5ldC1waHlAMSB7CgkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHkt
aWVlZTgwMi4zLWMyMiI7CgkJcmVnID0gPDB4MT47CgkJdHgtaW50ZXJuYWwtZGVsYXktcHMgPSA8
MTc4ND47Cgl9Owp9OwoKVGhlc2UgdHdvIGB0eC1pbnRlcm5hbC1kZWxheS1wc2AgdGhpbmdzIHNo
b3VsZG4ndCBiZSB0aGUgc2FtZSwgcmlnaHQ/CgotLSAKQmVzdCwgCkNoYW95aQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
