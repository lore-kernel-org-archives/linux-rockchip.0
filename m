Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFE43C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 08:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieMoY0UHDyWnAjjFuCk1pSc5zvWOsFLQ8p0vLK1QfBM=; b=AvUy4s7bqd5Nqj
	08ggZPsP+HYibyHIgz19/Oc16ltkREfTgVmj1Ey2iKFnRNHOVgDbZppAbQNRzBHz1/IgHsbFd6uaQ
	MPrPXtKLyIps/1oFprSJ8CIdTLiR2IcZ7YeAflGe/NWO4qxRGoPex/rhBb8MfKDlsQ49oKTC3V2Va
	EdhMXeRsJteKmXOg+f1nKX6oMvvcFKWeNtE3WlyZdt+vdsLnLTsSscOXXhohoji8lpeJYHkkeM9NT
	tI8U3o53GdnKlAHwx13jp3XxWvwnNom+CJc5tzRtZooH9ZHfqYprNbBAG6m4cJCSIxcfBVwARSU5q
	HMmAi9JqbQIuSAi0/fFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5KKA-0000000CENZ-1TpK;
	Thu, 17 Apr 2025 08:10:18 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5KIH-0000000CDwV-1urP;
	Thu, 17 Apr 2025 08:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=HlgWpR09t/bSRSkE9n5lqQqIokkyYXuy0tioT6D2/gU=;
	b=RYGvreS4Se2WbeLN10BDpFsbNJdMWqT3wCNTLrz8G2chlNdbl9oubsIcSiZp09
	zKFwqAeB1t2wfiAGmwsN8s6b+irHTW/vvx8X+7ra05p6uoOxwLQpeVAzHA8VGUcq
	sVA8EuQdLYybGjyc3Tk1jt/NssiajnDWEm1DjQg7z+GUk=
Received: from [192.168.142.52] (unknown [])
	by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id _____wAX613XtgBo09yjAg--.7973S2;
	Thu, 17 Apr 2025 16:07:53 +0800 (CST)
Message-ID: <52a2f6dc-1e13-4473-80f2-989379df4e95@163.com>
Date: Thu, 17 Apr 2025 16:07:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
To: Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, thomas.richard@bootlin.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
 <aACsJPkSDOHbRAJM@ryzen>
 <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
 <aACyRp8S9c8azlw9@ryzen>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <aACyRp8S9c8azlw9@ryzen>
X-CM-TRANSID: _____wAX613XtgBo09yjAg--.7973S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCr4kCr47Jw4rArWrXryrZwb_yoWrGF18p3
	y5Xa1Ykrs8tw45Jrs7t3Wv9rWYyFsxXFy5Wwn8JryUJwn0kr13tr4vkr4UKF17Xr4rGF4j
	qFyUJryfX3WDAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UHrWwUUUUU=
X-Originating-IP: [222.71.101.198]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxcyo2gAsnuqcwAAsl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_010821_878373_C5CFEC3A 
X-CRM114-Status: GOOD (  14.95  )
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

CgpPbiAyMDI1LzQvMTcgMTU6NDgsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gT24gVGh1LCBBcHIg
MTcsIDIwMjUgYXQgMDM6MjU6MDZQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+PiDlnKggMjAy
NS8wNC8xNyDmmJ/mnJ/lm5sgMTU6MjIsIE5pa2xhcyBDYXNzZWwg5YaZ6YGTOgo+Pj4gT24gVGh1
LCBBcHIgMTcsIDIwMjUgYXQgMDM6MDg6MzRQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+Pj4+
IOWcqCAyMDI1LzA0LzE3IOaYn+acn+WbmyAxNTowNCwgTmlrbGFzIENhc3NlbCDlhpnpgZM6Cj4+
Pj4+IEhlbGxvIEhhbnMsCj4+Pj4+Cj4+Pj4+IE9uIFdlZCwgQXByIDE2LCAyMDI1IGF0IDExOjE5
OjI2UE0gKzA4MDAsIEhhbnMgWmhhbmcgd3JvdGU6Cj4+Pj4+PiBUaGUgUkszNTg4J3MgUENJZSBj
b250cm9sbGVyIGRlZmF1bHRzIHRvIGEgMTI4LWJ5dGUgbWF4IHBheWxvYWQgc2l6ZSwKPj4+Pj4+
IGJ1dCBpdHMgaGFyZHdhcmUgY2FwYWJpbGl0eSBhY3R1YWxseSBzdXBwb3J0cyAyNTYgYnl0ZXMu
IFRoaXMgcmVzdWx0cwo+Pj4+Pj4gaW4gc3Vib3B0aW1hbCBwZXJmb3JtYW5jZSB3aXRoIGRldmlj
ZXMgdGhhdCBzdXBwb3J0IGxhcmdlciBwYXlsb2Fkcy4KPj4+Pj4KPj4+Pj4gUGF0Y2ggbG9va3Mg
Z29vZCB0byBtZSwgYnV0IHBsZWFzZSBhbHdheXMgcmVmZXJlbmNlIHRoZSBUUk0gd2hlbiB5b3Ug
Y2FuLgo+Pj4+Pgo+Pj4+PiBCZWZvcmUgdGhpcyBwYXRjaDoKPj4+Pj4gCQlEZXZDYXA6IE1heFBh
eWxvYWQgMjU2IGJ5dGVzCj4+Pj4+IAkJRGV2Q3RsOiBNYXhQYXlsb2FkIDEyOCBieXRlcwo+Pj4+
Pgo+Pj4+Pgo+Pj4+PiBBcyBwZXIgcmszNTg4IFRSTSwgc2VjdGlvbiAiMTEuNC4zLjggRFNQX1BD
SUVfQ0FQIERldGFpbCBSZWdpc3RlcnMgRGVzY3JpcHRpb24iCj4+Pj4+Cj4+Pj4+IERldkNhcCBp
cyBwZXIgdGhlIHJlZ2lzdGVyIGRlc2NyaXB0aW9uIG9mIERTUF9QQ0lFX0NBUF9ERVZJQ0VfQ0FQ
QUJJTElUSUVTX1JFRywKPj4+Pj4gZmllbGQgUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRS4KPj4+
Pj4gV2hpY2ggY2xhaW1zIHRoYXQgdGhlIHZhbHVlIGFmdGVyIHJlc2V0IGlzIDB4MSAoMjU2Qiku
Cj4+Pj4+Cj4+Pj4+IERldkN0bCBpcyBwZXIgdGhlIHJlZ2lzdGVyIGRlc2NyaXB0aW9uIG9mCj4+
Pj4+IERTUF9QQ0lFX0NBUF9ERVZJQ0VfQ09OVFJPTF9ERVZJQ0VfU1RBVFVTLCBmaWVsZCBQQ0lF
X0NBUF9NQVhfUEFZTE9BRF9TSVpFX0NTLgo+Pj4+PiBXaGljaCBjbGFpbXMgdGhhdCB0aGUgcmVz
ZXQgdmFsdWUgaXMgMHgwICgxMjhCKS4KPj4+Pj4KPj4+Pj4gQm90aCBvZiB0aGVzZSBtYXRjaCB0
aGUgdmFsdWVzIGFib3ZlLgo+Pj4+Pgo+Pj4+PiBBcyBwZXIgdGhlIGRlc2NyaXB0aW9uIG9mIFBD
SUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1M6Cj4+Pj4+ICJQZXJtaXNzaWJsZSB2YWx1ZXMgdGhh
dAo+Pj4+PiBjYW4gYmUgcHJvZ3JhbW1lZCBhcmUgaW5kaWNhdGVkIGJ5IHRoZSBNYXhfUGF5bG9h
ZF9TaXplCj4+Pj4+IFN1cHBvcnRlZCBmaWVsZCAoUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRSkg
aW4gdGhlIERldmljZQo+Pj4+PiBDYXBhYmlsaXRpZXMgKERFVklDRV9DQVBBQklMSVRJRVNfUkVH
KSByZWdpc3RlciAoZm9yIG1vcmUKPj4+Pj4gZGV0YWlscywgc2VlIHNlY3Rpb24gNy41LjMuMyBv
ZiBQQ0kgRXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24pLiIKPj4+Pj4KPj4+Pj4gU28geW91ciBw
YXRjaCBsb29rcyBnb29kLgo+Pj4+Pgo+Pj4+PiBJIGd1ZXNzIEknbSBtb3N0bHkgc3VycHJpc2Vk
IHRoYXQgdGhlIGUuZy4gcGNpX2NvbmZpZ3VyZV9tcHMoKSBkb2VzIG5vdAo+Pj4+PiBhbHJlYWR5
IHNldCBEZXZDdGwgdG8gdGhlIG1heChEZXZDYXAuTVBTIG9mIHRoZSBob3N0LCBEZXZDYXAuTVBT
IG9mIHRoZQo+Pj4+PiBlbmRwb2ludCkuCj4+Pj4+Cj4+Pj4+IEFwcGFyZW50bHkgcGNpX2NvbmZp
Z3VyZV9tcHMoKSBvbmx5IGRlY3JlYXNlcyBNUFMgZnJvbSB0aGUgcmVzZXQgdmFsdWVzPwo+Pj4+
PiBJdCBuZXZlciBpbmNyZWFzZXMgaXQ/Cj4+Pj4+Cj4+Pj4KPj4+PiBBY3R1YWxseSBpdCBkb2Vz
Ogo+Pj4+Cj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVy
L0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0I0w0NzU3Cj4+
Pgo+Pj4gSWYgdGhhdCBpcyB0aGUgY2FzZSwgdGhlbiBleHBsYWluIHRoZSBiZWZvcmUvYWZ0ZXIg
d2l0aCBIYW5zIGxzcGNpIG91dHB1dCBoZXJlOgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcGNpL2JiNDAzODVjLTY4MzktNDg0Yy05MGIyLWQ2YzdlY2I5NWJhOUAxNjMuY29tLwo+
Pj4KPj4+IEhpcyBwYXRjaCBjaGFuZ2VzIHRoZSBkZWZhdWx0IHZhbHVlIG9mIERldkN0bC5NUFMg
KGZyb20gMTI4QiB0byAyNTZCKSwgYnV0IGlmCj4+PiBwY2lfY29uZmlndXJlX21wcygpIGNhbiBi
dW1wIERldkN0bC5NUFMgdG8gYSBoaWdoZXIgdmFsdWUsIGhpcyBwYXRjaCBzaG91bGQgbm90Cj4+
PiBiZSBuZWVkZWQsIHNpbmNlIHRoZSBFUCAoYW4gTlZNZSBTU0QgaW4gaGlzIGNhc2UpIGhhcyBE
ZXZDYXAuTVBTIDUxMkIsIGFuZCB0aGUKPj4+IFJDIGl0c2VsZiBoYXMgRGV2Q2FwLk1QUyAyNTZC
Lgo+Pj4KPj4+IFNlZW1zIGxpa2Ugd2UgYXJlIG1pc3Npbmcgc29tZXRoaW5nIGhlcmUuCj4+Cj4+
IFNvIEhhbnMsIGNvdWxkIHlvdSBwbGVhc2UgaGVscCBzZXQgcGNpPXBjaWVfYnVzX3NhZmUgb3IK
Pj4gcGNpPXBjaWVfYnVzX3BlcmYgaW4geW91ciBjbWRsaW5lLCBhbmQgc2VlIGhvdyBsc3BjaSBk
dW1wIGRpZmZlcmVudAo+PiB3aXRob3V0IHlvdXIgcGF0Y2g/Cj4gCj4gSXQgc2VlbXMgdGhhdCB0
aGUgZGVmYXVsdCBNUFMgc3RyYXRlZ3kgY2FuIGJlIHNldCB1c2luZyBLY29uZmlnczoKPiBodHRw
czovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi92Ni4xNS1yYzIvZHJpdmVycy9wY2kv
cGNpLmMjTDEyNi1MMTM2Cj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2Iv
djYuMTUtcmMyL2luY2x1ZGUvbGludXgvcGNpLmgjTDExMTAtTDExMTYKPiAKPiBOb3RlIHRoYXQg
dGhlIHRoZXNlIEtjb25maWdzIGFyZSBoaWRkZW4gYmVoaW5kIENPTkZJR19FWFBFUlQuCj4gU28g
dW5sZXNzIHlvdSBoYXZlIGV4cGxpY2l0bHkgc2V0IG9uZSBvZiB0aGVzZSBLY29uZmlncywgdGhl
IGRlZmF1bHQgc2hvdWxkIGJlOgo+IFBDSUVfQlVTX0RFRkFVTFQsCS8qIEVuc3VyZSBNUFMgbWF0
Y2hlcyB1cHN0cmVhbSBicmlkZ2UgKi8KCgpIaSBOaWtsYXMgYW5kIFNoYXduLAoKVGhhbmsgeW91
IHZlcnkgbXVjaCBmb3IgeW91ciBkaXNjdXNzaW9uIGFuZCByZXBseS4KCkkgdGVzdGVkIGl0IG9u
IFJLMzU4OCBhbmQgb3VyIHBsYXRmb3JtLiBCeSBzZXR0aW5nIHBjaT1wY2llX2J1c19zYWZlLCAK
dGhlIG1heGltdW0gTVBTIHdpbGwgYmUgYXV0b21hdGljYWxseSBtYXRjaGVkIGluIHRoZSBlbmQu
CgpTbyBpcyBteSBwYXRjaCBubyBsb25nZXIgbmVlZGVkPyBGb3IgUkszNTg4LCBkb2VzIHRoZSBj
dXN0b21lciBoYXZlIHRvIApjb25maWd1cmUgQ09ORklHX1BDSUVfQlVTX1NBRkUgb3IgcGNpPXBj
aWVfYnVzX3NhZmU/CgpBbHNvLCBmb3IgcGNpLW1lc29uLmMsIGNhbiB0aGUgbWVzb25fc2V0X21h
eF9wYXlsb2FkIGJlIGRlbGV0ZWQ/CgoKQmVzdCByZWdhcmRzLApIYW5zCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
