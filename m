Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74DCFD2ECFB
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 01:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dl15KKyR63YRWtBCyPSJRKRQvvKXs1F0fg8r7eOfZBU=; b=qUFdAQPSuxfdcD
	7t72o2GuFpBZ6znk0zijvPOkDJv9DmXJ0p3HwIMv6VTUVSsj/W+YqPz7QtWwdiV4qYZ3LySHRUbO9
	Hc9YKv+9xUkn6zBHxfmQVxfKrz80aPAyBpBVMCn7WB6d2ZSIgpDXma1DxgpYCXsZX8XufKSALcQjk
	dMjCFp7gCVjk6SpxrFkHm5SzMKWMEU+3wc9zy23yd52qLy6GHa6DuPH2r5nlnMuh0TCKUHgJHyFLz
	rCah/n0bbtBo23Jb8Ukk0jCIKtiGemaznJi1QtERj7hBc4Wu+sZrYOo7iJC8LlBDYeEPBpXkJmah6
	IqJpdJdjapUF6kBMLC8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi0F5-0000000311h-1FNL;
	Tue, 20 Jan 2026 01:09:11 +0000
Received: from mail-m82213681.xmail.ntesmail.com ([8.221.36.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi0F0-0000000311J-1heO;
	Tue, 20 Jan 2026 01:09:09 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31385ed12;
	Tue, 20 Jan 2026 09:08:56 +0800 (GMT+08:00)
Message-ID: <314c7852-a79a-4cdc-9767-187ae5a89a48@rock-chips.com>
Date: Tue, 20 Jan 2026 09:08:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: Johan Jonker <jbx6244@gmail.com>
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
 <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
 <e4ebdde6-4073-4dd6-aef2-abf2c293a48d@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <e4ebdde6-4073-4dd6-aef2-abf2c293a48d@gmail.com>
X-HM-Tid: 0a9bd8f29b0809cckunm185652679dde8c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5MTlZPTU5CSUtOTB9MHk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Fh0Deu1C5ejpCy0CJY9ogr4aBj5Sv9+tlwEhVKIqaWOeoCcUsCdNQeNSfSS7e5Ekw0mC/36iRje7iIbnTbO1RxRZ4OlBUM8jzXtoiDaNSN6WvrmyCaA0uSpM+FX9gOVEWAbc07oU5SaPiptmzPhtP1SvAqrKRcacZ/Ez3/RSiCM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=T/TCsCdIrbCboZ9CYWIOrqCgweLTDpJXdZAWcI4FJpY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_170907_779477_4285FF1E 
X-CRM114-Status: GOOD (  19.70  )
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

5ZyoIDIwMjYvMDEvMjAg5pif5pyf5LqMIDI6MTAsIEpvaGFuIEpvbmtlciDlhpnpgZM6Cj4gCj4g
Cj4gT24gMS8xOS8yNiAwODowOCwgU2hhd24gTGluIHdyb3RlOgo+PiBIaSBKb2hhbiwKPj4KPj4g
5ZyoIDIwMjYvMDEvMTcg5pif5pyf5YWtIDU6MDUsIEpvaGFuIEpvbmtlciDlhpnpgZM6Cj4+PiBU
aGUgdXNlIG9mIG1zaGMgYWxpYXNlcyBpcyBkZXByZWNhdGVkIGZvciBzb21lIHdoaWxlLAo+Pj4g
c28gcmVtb3ZlIHRoZW0gZnJvbSB0aGUgcmszMDM2LmR0c2kgZmlsZS4KPj4+Cj4+Cj4gCj4+IEkg
bm90aWNlZCB0aGF0IHRoZSBhbGlhcyBwcm9wZXJ0eSBpcyBzdGlsbCBsaXN0ZWQgaW4gdGhlCj4+
IGRvY3VtZW50YXRpb25bMV0uIENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgd2hlcmUgaXQgaGFzIGJl
ZW4gZm9ybWFsbHkKPj4gbWFya2VkIGFzIGRlcHJlY2F0ZWQ/IEkgbWF5IGhhdmUgbWlzc2VkIHRo
ZSB1cGRhdGUuCj4+Cj4+IFsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1j
L21tYy1jb250cm9sbGVyLnlhbWwKPiAKPiBNc2hjIGFsaWFzZXMgZHJpdmVyIHN1cHBvcnQgd2Fz
IGludHJvZHVjZWQgMjAxOCBpbiBkd19tbWMuYyBvbmx5IGFuZCBiZWZvcmUgdGhhdCBhIHVuZG9j
dW1lbnRlZCBjb3B5IHBhc3RlIGVudGVyZWQgc29tZWhvdyBpbnRvIGR0c2kgZmlsZXMuCj4gVGhl
IG1tYy1jb250cm9sbGVyLnlhbWwgZmlsZSBjaGFuZ2UgaW4gMjAyMCBtZW50aW9ucyBhIGZpeGVk
IGluZGV4IG1tY04gZm9ybWF0Lgo+IEEgZ2VuZXJpYyBhbGlhcyBuYW1lICJtbWMiIGlzIG5vdyBw
cmVmZXJyZWQgaW5zdGVhZCBvZiBhICJtc2hjIiBkcml2ZXIgc3BlY2lmaWMuCj4gCj4gQXMgc3Vn
Z2VzdGVkIGJ5IEFybmQgQmVyZ21hbm4gYW5kIG90aGVycywgdGhlIG5ld2x5IGFkZGVkIG1tYyBh
bGlhc2VzCj4gc2hvdWxkIGJlIGJvYXJkIHNwZWNpZmljCj4gCgpUaGFua3MgZm9yIHRoZXNlIGRl
dGFpbHMuIFRoZW4gSSdtIGZpbmUgd2l0aCB0aGlzIHBhdGNoLgoKPiBEaXNjdXNzaW9ucyBhYm91
dCBSb2NrY2hpcCBhbGlhc2VzIHN0YXJ0ZWQgYXJvdW5kIDIwMjEKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yb2NrY2hpcC9DQUs4UDNhM191TzIzWTB0eWZkaDI2dG1DVmN5cDZYTSt1
cjBXVWQ0a2hHVW9CYjMySHdAbWFpbC5nbWFpbC5jb20vI3QKPiAKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvQ0FQRHlLRnAxek1CVWZLN0x0ZVcweUVmVHBxdFUrUCtFeWJMc0pCRnhfcjU0
SHdGZE1nQG1haWwuZ21haWwuY29tLwo+IAo+IFtQQVRDSCAwLzRdIG1tYzogZHdfbW1jOiBzdGFy
dCBkZXByZWNhdGluZyBtc2hjTiBhbGlhc2VzCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvMjAyMTExMjQxODQ2MDMuMzg5NzI0NS0xLWpvaG5AbWV0YW5hdGUuY29tLwo+
ID09PT0KPiAKPiBOb3YgMjQsIDIwMTUKPiBBUk06IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIHJr
MzAzNiBkdHNpCj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC9mYWVh
MDk4ZTE4MDg3MjllNDc4NWNkYmEzYTNmYzUyZmFlNDlmMWFiCj4gCj4gRGVjIDE5LCAyMDE1Cj4g
QVJNOiBkdHM6IHJvY2tjaGlwOiBhZGQgdGhlIHNkaW8vc2RtbWMgbm9kZSBmb3IgcmszMDM2Cj4g
aHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC8xODdkNzk2N2E1ZWU2MzBh
ZTA2MmZiNTQzNjU1ZTU5ZDJmMGY5MWZiCj4gCj4gPT09PQo+IAo+IEZlYiAyNywgMjAxOAo+IG1t
YzogZHdfbW1jOiBGYWN0b3Igb3V0IGR3X21jaV9pbml0X3Nsb3RfY2Fwcwo+IGh0dHBzOi8vZ2l0
aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvYTRmYWE0OTI5ZWQzYmUxNWUyZDUwMGQyNDA1
Zjk5MmY2ZGVkYzhlYgo+IAo+ID09PT0KPiAKPiBTZXAgNywgMjAyMAo+IGR0LWJpbmRpbmdzOiBt
bWM6IGRvY3VtZW50IGFsaWFzIHN1cHBvcnQKPiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMv
bGludXgvY29tbWl0LzE3OTYxNjRmYWM3ZTM0OGY3NGEwZjFmMWNhZTk5NWIyMmQwMDIzMTUKPiAK
PiBTZXAgNywgMjAyMAo+IG1tYzogY29yZTogQWxsb3cgc2V0dGluZyBzbG90IGluZGV4IHZpYSBk
ZXZpY2UgdHJlZSBhbGlhcwo+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21t
aXQvZmEyZDBhYTk2OTQxZThkYzM0N2U0OWEwNGM3NTQ2OGUzMDAyZWUyMAo+IAo+Pgo+Pj4gU2ln
bmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4g
IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpIHwgMyAtLS0KPj4+ICDC
oCAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9y
b2NrY2hpcC9yazMwMzYuZHRzaQo+Pj4gaW5kZXggZmNhMjFlYmIyMjRiLi43OGFmYWU0MmY4YjIg
MTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+
Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kKPj4+IEBAIC0y
Myw5ICsyMyw2IEBAIGFsaWFzZXMgewo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBpMmMwID0gJmky
YzA7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGkyYzEgPSAmaTJjMTsKPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgaTJjMiA9ICZpMmMyOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIG1zaGMwID0gJmVtbWM7
Cj4+PiAtwqDCoMKgwqDCoMKgwqAgbXNoYzEgPSAmc2RtbWM7Cj4+PiAtwqDCoMKgwqDCoMKgwqAg
bXNoYzIgPSAmc2RpbzsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgc2VyaWFsMCA9ICZ1YXJ0MDsK
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgc2VyaWFsMSA9ICZ1YXJ0MTsKPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgc2VyaWFsMiA9ICZ1YXJ0MjsKPj4+IC0tIAo+Pj4gMi4zOS41Cj4+Pgo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAKPj4+Cj4+Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
