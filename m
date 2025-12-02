Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E34BCFD376
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 05:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwbpdJ99deVsSQe0MVuj6kAU7No+JDYJy2JHLQ0F2U0=; b=iGTHov0jI4RIyP
	XJmGFZF3ltU+vUHulTCQszx/Dha4hBUisptBR+fgHv85Wee5q2BMETl4S5yqYzTAJ3izV4Wr84zPU
	fzyvjG1negYmnG5uPXxLeztWfLaPxPBe+Yc2b7xrMKCw0sKUrmkGf0X1UqD+wqI/o1IrR0j7T7lka
	ve7yg8QHv9llqkZOrmwwQ8ET1Vz0bGrNWCVgcg+2SEvYYRwFd4tW5rkyRz5Sm1fesOTXHt/v2YMhO
	20Q2DywAanBqcI2nekwDVVKdm6ZPkITb3Fhy/w0DhPkbEcgxat/tDTH3/RAASMfoeL5zTotqftjFA
	Z+tqFUpNU0Sxk+eppLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJGM-00000004rHd-0jv6;
	Tue, 02 Dec 2025 05:49:22 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJGI-00000004rGZ-2Ocd
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 05:49:20 +0000
X-QQ-mid: zesmtpip4t1764654497td7f0bbc0
X-QQ-Originating-IP: dMNj7OuMLUQ2s1/IHTY+KIkE0jPm5R5G3jBjoT7KqxQ=
Received: from [IPV6:240f:10b:7440:1:46e0:47f6 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 13:48:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8057048665388331268
Message-ID: <4BCD7F3839A572DE+ff51f239-1c74-44b8-829d-4f821508f09c@radxa.com>
Date: Tue, 2 Dec 2025 14:48:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
 <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
Content-Language: en-US
In-Reply-To: <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MQmEcA2BVZmJhwWEculrUnkiVk+9mlsKLAz+NUvUHYm1EnRRSIWLGJsZ
	d4R96oyCQYyYotvyis+HpN8hq4uSVaXzchA4ixIYDMwBktUqK25+dBU+2KGr411KSaFSw2i
	d8KiaHsxEmryCbMk8z6w20UcyqT3r6PHTl9JfKIRpCzA31oJQ+2zqvJHefwZ3/woWfNuNPF
	+PVw6g50RGSYZvOZnu30IgmFIy/y6JV9QVc1deXBnug3GS6hk68xTKpFRgsSoyw7/0YBsUd
	Mg//r6MT1ej8U5THE6i/7L7tGupEAKW4yc5G2cNaXrsLXGA0hf/z81deUsKdvLs60JIw6fv
	TbQwfuEjlUwAd7HbSQgfiDShY1SjFbUQGv5/19Ejejxf7ijwD+k6TJ3Nv6jNg5EfzR2fuFg
	KJme9XjZdiWuvDJQpzZMNr0ocOHsZ4LxHwIYhtBP4X6Z/k9xstjaAtsdjmUnRNlUJs2y7Wr
	5dlMXHVaYLRc+7kHH/AqEWRG4O2Wbg08ccuolAZuNnJhjHWWPv7M2kXx7XlSZl+lg590OPu
	06jgwQGqa/9sIHMHN+6hlH3QT1sx8wrHBeJEQEBDWw/ovnNLTNsdYMnLBGnrTrufTAztejb
	DEho++HlIoTkAI2+3IUxKCLEy9UflmQxmaz3tEQlGBr9Q8HwcCEp0A/zgtB0TgOZNwJHviW
	f1zvG30RgfA9gL/7gG55Q9RIo0DkHlpDYMGZet/eWf++GuQkGZNyj8sl6IC82+7EypgmnoV
	ePA3euu1rAd8hDPt6HdF/lRccEKRM9lr68MtLfZX0FnzDTP7Vyy5J19+SIOu4JpGTbMTiZW
	C7HE5axVwmipa7O5QGrJgFr6hGMzNnHhLNrGea8Ni9sPIZXx1sML/SQSR4laBzPZLoaGhW3
	NLOe3hQk81G9nC8D1nbZugCm1LZOdevkRXjRbDSE769PdQ81fYQexjXxdsIEEGXJE3fkv4e
	7Ola7di0hSiYsjq0TshXJL44ivEfvJmXEBHZqXvGOQJ5Efdu9s2KjvJg916szGJJERSo=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_214919_075215_DFFFD32B 
X-CRM114-Status: GOOD (  18.00  )
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

U29ycnksCgpJIGNoZWNrZWQgc2hlbGwgaGlzdG9yeSwgYW5kIEkgc2VudCBlbWFpbCB0byAia3J6
aytkdEBrZXJuZWwub3JnIiwgbm90IAoia3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnIi4K
Ckkgd2lsbCBub3QgcmVzZW5kIHRoaXMgcGF0Y2ggc2VyaWVzLgoKQmVzdCByZWdhcmRzLAoKLS0K
RlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKT24gMTIv
Mi8yNSAxNDozMywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBhbGwsCj4gCj4gSSBnb3QgdGhl
IGZvbGxvd2luZyBlbWFpbCwKPiAKPiBPbiAxMi8yLzI1IDE0OjI3LCAoRXhpdGluZykgS3J6eXN6
dG9mIEtvemxvd3NraSB3cm90ZToKPiAgPiBUaGFuayB5b3UgZm9yIHlvdXIgZW1haWwuCj4gID4K
PiAgPiBLcnp5c3p0b2YgS296bG93c2tpIG5vIGxvbmdlciB3b3JrcyBmb3IgTGluYXJvLgo+IChz
bmlwKQo+IAo+IEknbGwgcmVzZW5kIHRoaXMgcGF0Y2ggc2VyaWVzIHdpdGggdGhlIGNvcnJlY3Qg
ZW1haWwgYWRkcmVzcy4gSSAKPiBhcG9sb2dpemUgZm9yIHRoZSBpbmNvbnZlbmllbmNlLgo+IAo+
IEJlc3QgcmVnYXJkcywKPiAKPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIg
KFNoZW56aGVuKSBDby4sIEx0ZC4KPiAKPiBPbiAxMi8yLzI1IDE0OjI2LCBGVUtBVU1JIE5hb2tp
IHdyb3RlOgo+PiBGcm9tOiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cj4+
Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgaW5pdGlhbCBkZXZpY2UgdHJlZSBzdXBwb3J0IGZv
ciB0aGUgUmFkeGEgQ001IFNvTQo+PiBhbmQgYWNjb21wYW55aW5nIElPIGJvYXJkLgo+Pgo+PiBW
NCAtPiBWNToKPj4gwqDCoCBQYXRjaCAoMi8zKSwgcGVyIEppbW15Ogo+PiDCoMKgIC0gQWxpYXMg
ZU1NQyB0byBtbWMwCj4+IMKgwqAgLSBSZW1vdmUgdW51c2VkIHNkaW8gYWxpYXMKPj4gwqDCoCAt
IE1vdmUgZ21hYywgaGRtaTAgbm9kZXMgdG8gY2FycmllciBib2FyZCBkdHMKPj4KPj4gwqDCoCBQ
YXRjaCAoMy8zKSwgcGVyIEppbW15Ogo+PiDCoMKgIC0gRW5hYmxlIGhkbWkwX3NvdW5kIGFuZCBp
MnM1XzhjaAo+PiDCoMKgIC0gUmVtb3ZlIHJlZHVuZGFudCBlbmFibGVtZW50IG9mIHNkaGNpCj4+
IMKgwqAgLSBFbmFibGUgdXNiX2hvc3QyX3hoY2kKPj4KPj4gwqDCoCAtIFRlc3RlZCBIRE1JIGF1
ZGlvCj4+Cj4+IFYzIC0+IFY0Ogo+PiDCoMKgIC0gRml4ZWQgWEhDSSBpbml0aWFsaXphdGlvbiBi
dWcgYnkgY2hhbmdpbmcgdHJ5LXBvd2VyLXJvbGUgZnJvbSBzb3VyY2UKPj4gwqDCoMKgwqAgdG8g
c2luawo+Pgo+PiBWMiAtPiBWMzoKPj4gwqDCoCAtIEFkZHJlc3NlZCBZQU1MIHN5bnRheCBlcnJv
ciBpbiBkdCBiaW5kaW5nIChwZXIgUm9iKQo+PiDCoMKgIC0gRml4ZWQgd2hpdGVzcGFjZSBpc3N1
ZSBpbiBkdHMgcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5wbAo+PiDCoMKgIC0gU3BsaXQgYmFzZSBT
b00gYW5kIGNhcnJpZXIgYm9hcmQgaW50byBzZXBhcmF0ZSBwYXRjaGVzCj4+IMKgwqAgLSBBZGRl
ZCBmdXJ0aGVyIGRldGFpbHMgYWJvdXQgdGhlIFNvTSBhbmQgY2FycmllciB0byB0aGUgY29tbWl0
Cj4+IMKgwqDCoMKgIG1lc3NhZ2VzCj4+Cj4+IFYxIC0+IFYyOgo+PiDCoMKgIC0gQWRkZWQgY29w
eXJpZ2h0IGhlYWRlciBhbmQgZGF0YSBzaGVldCBsaW5rcwo+PiDCoMKgIC0gUmVtb3ZlZCBub24t
ZXhpc3RlbnQgcHJvcGVydHkKPj4gwqDCoCAtIFNvcnRlZCBhbHBoYWJldGljYWxseQo+PiDCoMKg
IC0gUmVtb3ZlZCBlcnJhbnQgd2hpdGVzcGFjZQo+PiDCoMKgIC0gTW92ZWQgc3RhdHVzIHRvIHRo
ZSBlbmQgb2YgZWFjaCBub2RlCj4+IMKgwqAgLSBSZW1vdmVkIHBpbmN0cmwtbmFtZXMgcHJvcGVy
dHkgZnJvbSBsZWRzIChpbmRpY2F0ZWQgYnkgQ0hFQ0tfRFRCUykKPj4gwqDCoCAtIFJlbW92ZWQg
ZGVsYXlzIGZyb20gZ21hYyB3aXRoIGludGVybmFsIGRlbGF5Cj4+Cj4+IC0gTGluayB0byB2NDog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDYwNS1yazM1ODhzLWNtNS1pby1kdHMtIAo+
PiB1cHN0cmVhbS12NC0wLTg0NDVkYjVjYTZiMEBnbWFpbC5jb20KPj4KPj4gSm9zZXBoIEtvZ3V0
ICgzKToKPj4gwqDCoCBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIFJhZHhhIENNNSBJ
TyBib2FyZAo+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgcmszNTg4IGJhc2VkIFJh
ZHhhIENNNQo+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3IgQ001
IElPIGNhcnJpZXIKPj4KPj4gwqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWzCoMKgwqDCoCB8wqDCoCA3ICsKPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIC4uLi9kdHMvcm9ja2No
aXAvcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRzwqDCoMKgwqAgfCA0ODYgKysrKysrKysrKysrKysr
KysrCj4+IMKgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpwqAg
fCAxMzUgKysrKysKPj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCA2MjkgaW5zZXJ0aW9ucygrKQo+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LXJhZHhhLWNtNS0gCj4+IGlvLmR0cwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpCj4gCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
