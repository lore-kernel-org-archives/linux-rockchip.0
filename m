Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72265CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnAl1dUs3R6txm7yrOsWakdPglLG26MW9Eoq/TvoPAU=; b=CdHf/N+9rwCyw8
	mzTyNSGoFRavZ/FR9kBiY1drshKvqeNfVRyhz5zknqvCMszd6hrKfJTzBjoWJuyy/xalwu3OFHgFO
	JQCgqK8EwmnwUrdVftv03uAyf3awgGdWLLvg1YUUoRhrzmFlV0tkhHazKZ2XllMAG2QI4sPUTFqQd
	HPvfs62jtGBhpKH0kt7i1wjzg3c0uFt6PQu4izCpn7tFanxW7hbO+4F2+gCvCquwCfRDgiWDNZ/FZ
	IOWB9KAFa5AE5tIcPq7VG7ie23zOd0QP5LTN9QtyC1Ls6vC+DDmVGKn+DY+e18k4hgtNa27YF251P
	1Id+f9so2bQTGuPm5lOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOw6-00000005ANX-3cL3;
	Mon, 10 Nov 2025 10:15:46 +0000
Received: from mail-m32111.qiye.163.com ([220.197.32.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOw1-00000005AMB-08hE;
	Mon, 10 Nov 2025 10:15:43 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2909a128f;
	Mon, 10 Nov 2025 18:15:35 +0800 (GMT+08:00)
Message-ID: <dc932773-af5b-4af7-a0d0-8cc72dfbd3c7@rock-chips.com>
Date: Mon, 10 Nov 2025 18:15:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Damien Le Moal <dlemoal@kernel.org>,
 Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, mani@kernel.org
Subject: Re: [RESEND] Re: [PATCH] PCI: dw-rockchip: Skip waiting for link up
To: FUKAUMI Naoki <naoki@radxa.com>, Niklas Cassel <cassel@kernel.org>
References: <20250113-rockchip-no-wait-v1-1-25417f37b92f@kernel.org>
 <1E8E4DB773970CB5+5a52c9e1-01b8-4872-99b7-021099f04031@radxa.com>
 <6e87b611-13ea-4d89-8dbf-85510dd86fa6@rock-chips.com>
 <aQ840q5BxNS1eIai@ryzen> <aQ9FWEuW47L8YOxC@ryzen>
 <55EB0E5F655F3AFC+136b89fd-98d4-42af-a99d-a0bb05cc93f3@radxa.com>
 <aRCI5kG16_1erMME@ryzen>
 <F8B2B6FA2884D69A+b7da13f2-0ffb-4308-b1ba-0549bc461be8@radxa.com>
 <780a4209-f89f-43a9-9364-331d3b77e61e@rock-chips.com>
 <4487DA40249CC821+19232169-a096-4737-bc6a-5cec9592d65f@radxa.com>
 <363d6b4d-c999-43d4-866e-880ef7d0dec3@rock-chips.com>
 <0C31787C387488ED+fd39bfe6-0844-4a87-bf48-675dd6d6a2df@radxa.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <0C31787C387488ED+fd39bfe6-0844-4a87-bf48-675dd6d6a2df@radxa.com>
X-HM-Tid: 0a9a6d438d5d09cckunm2a41cfe81382c3e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhgaSFYaGkgaSkNJGU9PHx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZS1VLVUtVS1kG
DKIM-Signature: a=rsa-sha256;
	b=GaomGJcZFoXy9dmKjLqxt7SSQwarCMv4UTRUnrqYXArfcRVHwNXTJEHw2s9PSPE9iGfN8S0vj7/5FE4SI677ltHzqcx8kqhuDDOr/4Cvmv4GuwiC1PderlOoae7sw3AVJSuz5uBBzLbtDsdOy6roqwSdbIwwONzCSx8H2PtfC1g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=VAr21MtQeeygUzAg/O3leSHmqCylhYlryIgLa6wjxJs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_021541_809329_5D8C9C18 
X-CRM114-Status: GOOD (  17.03  )
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

5ZyoIDIwMjUvMTEvMTAg5pif5pyf5LiAIDE1OjUyLCBGVUtBVU1JIE5hb2tpIOWGmemBkzoKPiBI
aSBTaGF3biwKPiAKPiBPbiAxMS8xMC8yNSAxNjoxMiwgU2hhd24gTGluIHdyb3RlOgo+IChzbmlw
KT4gVGhhbmtzIGZvciB0ZXN0aW5nLiBJIGp1c3QgZ290IGEgQVNNMjgwNiBzd2l0Y2ggYXMgeW91
cnMgYW5kIAo+IHZlcmlmaWVkIGl0Cj4+IG9uIHZhbmlsbGEgdjYuMTgtcmM1LiBBZnRlciAzMCB0
aW1lcyBvZiBjb2xkIGJvb3QsIHR3byBOVk1lcyBiZWhpbmQKPj4gQVNNMjgwNiB3b3JrIGFzIGV4
cGVjdGVkLiBOb3RoaW5nIHNwZWNpYWwgaGFwcGVuZWQgd2hlbiBJIGNoZWNrZWQKPj4gd2l0aCBQ
QSBhcyB3ZWxsLiBZb3UgY291bGQgaGVscCBjaGVjayB0aGUgbG9nIGFuZCBsc3BjaSBkdW1wIHRo
ZXJlWzFdLgo+Pgo+PiBbMV1odHRwczovL3Bhc3RlYmluLmNvbS9zQUYxZlQwZwo+IAo+IFRoYW5r
cyBmb3IgdGhlIGluZm8hCj4gCj4gSSB0cmllZCBBU00yODA2IG9uIFJhZHhhIFJPQ0sgNUIgKFJL
MzU4OCkuCj4gIMKgaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vUmFkeGFOYW9raS82NDBlNDdkMzc3
YWRkOWZlMzgzMDFkZTE2NGQ0MDU4ZQo+IAo+IEl0IGRvZXNuJ3Qgd29yayBvbiBQQ0llIDIuMCAo
TS4yIEUgS2V5KSwgYnV0IGl0IGRvZXMgd29yayBvbiBQQ0llIDMuMCAKPiAoTS4yIE0gS2V5KS4K
PiAKPiBDb3VsZCB5b3UgdHJ5IFBDSWUgMi4wIHNsb3Qgb24geW91ciBib2FyZD8KCkkgZGlkLCBp
dCBkb2Vzbid0IHdvcmsgb24gUENJZSAyLjAgc2xvdC4gRnJvbSB0aGUgUEEsIEkgY291bGQgc2Vl
CnRoZSBsaW5rIGlzIHN0aWxsIGluIHRyYWluaW5nIGR1cmluZyBwY2lfaG9zdF9wcm9iZSgpIGlz
IGNhbGxlZC4KQWRkIHNvbWUgZGVsYXkgYmVmb3JlIHBjaV9yZXNjYW5fYnVzKCkgaW4gcGNpZS1k
dy1yb2NrY2hpcCBkb2Vzbid0CmhlbHAuIEJ1dCB0aGUgYmVsb3cgY2hhbmdlIHNob3VsZCB3b3Jr
IGFzIHdlIGRlbGF5ZWQgcGNpX2hvc3RfcHJvYmUoKS4KCi0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKQEAgLTIzNiw2ICsyMzYsOCBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX3BjaWVfc3RhcnRfbGluayhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQogICAgICAgICBtc2xl
ZXAoUENJRV9UX1BWUEVSTF9NUyk7CiAgICAgICAgIGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChy
b2NrY2hpcC0+cnN0X2dwaW8sIDEpOwoKKyAgICAgICBtc2xlZXAoNTApOworCiAgICAgICAgIHJl
dHVybiAwOwoKT3RoZXJ3aXNlIHdlIGdvdDoKClsgICAgMC44NDE1MThdIHBjaV9idXMgMDAwMzoz
MzogYnVzbl9yZXM6IGNhbiBub3QgaW5zZXJ0IFtidXMgMzMtMzFdIAp1bmRlciBbYnVzIDMyLTMx
XSAoY29uZmxpY3RzIHdpdGggKG51bGwpIFtidXMgMzItMzFdKQpbICAgIDAuODQyNTk2XSBwY2lf
YnVzIDAwMDM6MzM6IGJ1c25fcmVzOiBbYnVzIDMzLTMxXSBlbmQgaXMgdXBkYXRlZCB0byAzMwpb
ICAgIDAuODQzMTg0XSBwY2lfYnVzIDAwMDM6MzM6IGJ1c25fcmVzOiBjYW4gbm90IGluc2VydCBb
YnVzIDMzXSB1bmRlciAKW2J1cyAzMi0zMV0gKGNvbmZsaWN0cyB3aXRoIChudWxsKSBbYnVzIDMy
LTMxXSkKWyAgICAwLjg0NDEyMF0gcGNpIDAwMDM6MzI6MDAuMDogZGV2aWNlcyBiZWhpbmQgYnJp
ZGdlIGFyZSB1bnVzYWJsZSAKYmVjYXVzZSBbYnVzIDMzXSBjYW5ub3QgYmUgYXNzaWduZWQgZm9y
IHRoZW0KWyAgICAwLjg0NTIyOV0gcGNpX2J1cyAwMDAzOjM0OiBidXNuX3JlczogY2FuIG5vdCBp
bnNlcnQgW2J1cyAzNC0zMV0gCnVuZGVyIFtidXMgMzItMzFdIChjb25mbGljdHMgd2l0aCAobnVs
bCkgW2J1cyAzMi0zMV0pClsgICAgMC44NDYzMDldIHBjaV9idXMgMDAwMzozNDogYnVzbl9yZXM6
IFtidXMgMzQtMzFdIGVuZCBpcyB1cGRhdGVkIHRvIDM0ClsgICAgMC44NDY4OThdIHBjaV9idXMg
MDAwMzozNDogYnVzbl9yZXM6IGNhbiBub3QgaW5zZXJ0IFtidXMgMzRdIHVuZGVyIApbYnVzIDMy
LTMxXSAoY29uZmxpY3RzIHdpdGggKG51bGwpIFtidXMgMzItMzFdKQpbICAgIDAuODQ3ODMzXSBw
Y2kgMDAwMzozMjowNi4wOiBkZXZpY2VzIGJlaGluZCBicmlkZ2UgYXJlIHVudXNhYmxlIApiZWNh
dXNlIFtidXMgMzRdIGNhbm5vdCBiZSBhc3NpZ25lZCBmb3IgdGhlbQpbICAgIDAuODQ4OTIzXSBw
Y2lfYnVzIDAwMDM6MzU6IGJ1c25fcmVzOiBjYW4gbm90IGluc2VydCBbYnVzIDM1LTMxXSAKdW5k
ZXIgW2J1cyAzMi0zMV0gKGNvbmZsaWN0cyB3aXRoIChudWxsKSBbYnVzIDMyLTMxXSkKWyAgICAw
Ljg1MDAxNF0gcGNpX2J1cyAwMDAzOjM1OiBidXNuX3JlczogW2J1cyAzNS0zMV0gZW5kIGlzIHVw
ZGF0ZWQgdG8gMzUKWyAgICAwLjg1MDYwNV0gcGNpX2J1cyAwMDAzOjM1OiBidXNuX3JlczogY2Fu
IG5vdCBpbnNlcnQgW2J1cyAzNV0gdW5kZXIgCltidXMgMzItMzFdIChjb25mbGljdHMgd2l0aCAo
bnVsbCkgW2J1cyAzMi0zMV0pClsgICAgMC44NTE1NDBdIHBjaSAwMDAzOjMyOjBlLjA6IGRldmlj
ZXMgYmVoaW5kIGJyaWRnZSBhcmUgdW51c2FibGUgCmJlY2F1c2UgW2J1cyAzNV0gY2Fubm90IGJl
IGFzc2lnbmVkIGZvciB0aGVtClsgICAgMC44NTI0MjRdIHBjaV9idXMgMDAwMzozMjogYnVzbl9y
ZXM6IFtidXMgMzItMzFdIGVuZCBpcyB1cGRhdGVkIHRvIDM1ClsgICAgMC44NTMwMjhdIHBjaV9i
dXMgMDAwMzozMjogYnVzbl9yZXM6IGNhbiBub3QgaW5zZXJ0IFtidXMgMzItMzVdIAp1bmRlciBb
YnVzIDMxXSAoY29uZmxpY3RzIHdpdGggKG51bGwpIFtidXMgMzFdKQpbICAgIDAuODUzMTg0XSBo
dWIgMy0wOjEuMDogVVNCIGh1YiBmb3VuZApbICAgIDAuODUzOTMxXSBwY2kgMDAwMzozMTowMC4w
OiBkZXZpY2VzIGJlaGluZCBicmlkZ2UgYXJlIHVudXNhYmxlIApiZWNhdXNlIFtidXMgMzItMzVd
IGNhbm5vdCBiZSBhc3NpZ25lZCBmb3IgdGhlbQpbICAgIDAuODU0MjYyXSBodWIgMy0wOjEuMDog
MSBwb3J0IGRldGVjdGVkClsgICAgMC44NTUxNDRdIHBjaWVwb3J0IDAwMDM6MzA6MDAuMDogYnJp
ZGdlIGhhcyBzdWJvcmRpbmF0ZSAzMSBidXQgbWF4IApidXNuIDM1ClsgICAgMC44NTU3MjJdIGh1
YiA0LTA6MS4wOiBVU0IgaHViIGZvdW5kClsgICAgMC44NTYxMDldIHBjaSAwMDAzOjMyOjAwLjA6
IFBDSSBicmlkZ2UgdG8gW2J1cyAzM10KWyAgICAwLjg1NjkzOV0gcGNpIDAwMDM6MzI6MDYuMDog
UENJIGJyaWRnZSB0byBbYnVzIDM0XQpbICAgIDAuODU3MTMzXSBodWIgNC0wOjEuMDogMSBwb3J0
IGRldGVjdGVkClsgICAgMC44NTc0MzBdIHBjaSAwMDAzOjMyOjBlLjA6IFBDSSBicmlkZ2UgdG8g
W2J1cyAzNV0KWyAgICAwLjg1ODIzNl0gcGNpIDAwMDM6MzE6MDAuMDogUENJIGJyaWRnZSB0byBb
YnVzIDMyLTM1XQoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCj4gLS0gCj4gRlVLQVVNSSBOYW9raQo+
IFJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCj4gCj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
