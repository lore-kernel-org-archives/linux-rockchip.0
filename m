Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366F6606A327
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E64yRt12;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=LlERGqcA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qRnPlvG4AE3GdvTD4T1GzmAp46q0zjfosZ6gJ9DHInw=; b=E64yRt129OZ6+irtXiPzg7SMRC
	UM6ecbQ7Dwm53i+VGqXt9iBtczRXNkjHujoitJjn34bl7Bhh71dwpUGDJ5rDS5zlX/ODHp/ZQm8w7
	FldAQoauTg5wotA8cFwH7JnuJHeM1Ek4cUqeSQjEoCOiq6JJBAqbW6mqSF02UoGGoPLgapzO1AcmW
	AFKFb33lPq0u1LvwNOWotf4i4LeySpB+c1FVP/VFMqYkExDUhnubolDGh0hwdU6OHLx8HnONOTt7H
	6JudzcGdXBEZbgpGb8rqGOcHZxXxVi+PBCn8YyDFQC9YuyywFdPvxTH4cu+p7TgPeZZWM23d+kUDF
	8epR58SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLheG-00000004xkD-1nL5;
	Tue, 27 Oct 2026 13:55:32 +0000
Received: from mail-m6024.netease.com ([210.79.60.24])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLheD-00000004xjX-1gUG;
	Tue, 27 Oct 2026 13:55:31 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5287e03cc;
	Tue, 27 Oct 2026 21:55:24 +0800 (GMT+08:00)
Message-ID: <e028ba53-0c69-4ba6-9b16-8648b8a787b2@rock-chips.com>
Date: Tue, 27 Oct 2026 21:55:22 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable Wi-Fi on the NanoPi M5
To: Leonard Lausen <leonard@lausen.nl>, Heiko Stuebner <heiko@sntech.de>
References: <20261025205339.14539-2-leonard@lausen.nl>
 <4b7bd146-93fd-41f8-ad3c-88333adc73b4@rock-chips.com>
 <20261026070821.324094-1-leonard@lausen.nl>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261026070821.324094-1-leonard@lausen.nl>
X-HM-Tid: 0aa17da4f44003a4kunm3406670ee05a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTU9DVk4YTBhKTkhJGU5NTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=LlERGqcAe2bas/HHj75UcJ6kYuXtp/j0l7/rh2iyqk7G2g1/8yVarOz7tD22gByc7xjkOtWLDDS+4EMGxkNI73csTgnliUtpV013dicn+DZ32rh6yHSS/g7GVzF9sGqKu77sBdOlG6MLZg6pxtcinaB3yD27pEXwyMmei+TYBBk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sKuXSxiqi1dS1S7ydoFnufGpBsXCwFdivhOS6O9PI0Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_065529_735600_21D89DDB 
X-CRM114-Status: GOOD (  21.10  )
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
X-Spam-Status: No, score=-20.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgTGVvbmFyZCwKCuWcqCAyMDI2LzEwLzI2IOaYn+acn+S4gCAxNTowNiwgTGVvbmFyZCBMYXVz
ZW4g5YaZ6YGTOgo+IFRoZSBOYW5vUGkgTTUgaGFzIGFuIE0uMiBFLWtleSBzbG90IGZvciBTRElP
IFdpLUZpIG1vZHVsZXMgc3VjaCBhcyB0aGUKPiBSVEw4ODIyQ1MtYmFzZWQgQUMyMDAuIFRoZSBT
RElPIGNvbnRyb2xsZXIgaXMgZGlzYWJsZWQgYW5kIHRoZSBtb2R1bGUncwo+IHBvd2VyIHNlcXVl
bmNlIGlzIG5vdCBkZXNjcmliZWQsIHByZXZlbnRpbmcgdGhlIGNhcmQgZnJvbSBlbnVtZXJhdGlu
Zy4KPiAKCkkgc3VzcGVjdCBSVEw4ODIyQ1MgZG9lc24ndCB3b3JrIGFzLWlzLCB1bmxlc3MgeW91
IG5lZWQgdG8gYXBwbHkgaXRbMV0uClBsZWFzZSBkb3VibGUgY2hlY2sgaXQuCgpbMV0gCmh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tYy8yMDI2MTAyNzEyMjQxNy45NTQxMzMtMS1yb2pl
ckByb2plci5tZS9ULyN0Cgo+IEVuYWJsZSB0aGUgY29udHJvbGxlciBpbiBmb3VyLWJpdCBTRFIx
MDQgbW9kZSBhbmQgY29ubmVjdCBpdHMgMy4zIFYgY2FyZAo+IGFuZCAxLjggViBJL08gc3VwcGxp
ZXMuIERlc2NyaWJlIHRoZSBhY3RpdmUtbG93IHJlc2V0IG9uIEdQSU8xX0MyLCB0aGUKPiAyMDAg
bXMgcG93ZXItb24gZGVsYXkgdXNlZCBieSB0aGUgdmVuZG9yIGRldmljZSB0cmVlLCBhbmQgdGhl
IGV4dGVybmFsCj4gMzIuNzY4IGtIeiBjbG9jayBmcm9tIHRoZSBIWU04NTYzIFJUQy4gS2VlcCB0
aGUgY2FyZCBwb3dlcmVkIGR1cmluZwo+IHN1c3BlbmQgYXMgcmVxdWlyZWQgYnkgdGhlIHJ0dzg4
IFNESU8gZHJpdmVyLgo+IAo+IFRoZSBTRElPIHdpcmluZyBhbmQgcmVzZXQgdGltaW5nIGFyZSBi
YXNlZCBvbiBGcmllbmRseUVsZWMncyBOYW5vUGkgTTUKPiB2ZW5kb3IgZGV2aWNlIHRyZWUgYnkg
amVuc2VuIDxqZW5zZW5odWFuZ0BmcmllbmRseWFybS5jb20+Lgo+IAo+IExpbms6IGh0dHBzOi8v
Z2l0aHViLmNvbS9mcmllbmRseWFybS9rZXJuZWwtcm9ja2NoaXAvY29tbWl0LzZmMDdmM2UwYjdl
YzU0YmU5MGFlMzBmMDk3ZDJhOWQ1YWVhODA5NzQKPiBBc3Npc3RlZC1ieTogTExNCj4gU2lnbmVk
LW9mZi1ieTogTGVvbmFyZCBMYXVzZW4gPGxlb25hcmRAbGF1c2VuLm5sPgo+IC0tLQo+IEhpIFNo
YXduLAo+IAo+PiBkaXNhYmxlLXdwIGlzIGZvciBzZCBjYXJkcywgcGxlYXNlIGRyb3AgaXQuCj4g
Cj4gVGhhbmsgeW91LiBEcm9wcGVkIGl0IGZyb20gdGhlIFNESU8gY29udHJvbGxlciBpbiB2Mi4K
PiBUaGlzIHdhcyBtaXN0YWtlbmx5IGNvcGllZCBmcm9tIHZlbmRvciBzb3VyY2UuCj4gCj4gQ2hh
bmdlcyBpbiB2MjoKPiAtIERyb3AgZGlzYWJsZS13cCBmcm9tIHRoZSBTRElPIGNvbnRyb2xsZXIg
KFNoYXduIExpbikuCj4gLSBDcmVkaXQgdGhlIG9yaWdpbmFsIHZlbmRvciBzb3VyY2UgYW5kIGRv
Y3VtZW50IEFJIGFzc2lzdGFuY2UuCj4gCj4gQUkgYXNzaXN0YW5jZSB3YXMgdXNlZCB0byBpbnNw
ZWN0IHRoZSB2ZW5kb3IgRFRTIGFuZCBzY2hlbWF0aWNzLCBkcmFmdAo+IHRoZSBEVFMgY2hhbmdl
cyBhbmQgY29tbWl0IG1lc3NhZ2UsIGFuZCBydW4gYnVpbGQvc3R5bGUgY2hlY2tzLgo+IAo+ICAg
Li4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGktbTUuZHRzICAgIHwgMzMgKysrKysr
KysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbmFub3BpLW01
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LW5hbm9waS1tNS5kdHMK
PiBpbmRleCAzYTMwNTQwOGZhMTZjLi5iYWYxZGVhMmNmYTk4IDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LW5hbm9waS1tNS5kdHMKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGktbTUuZHRzCj4gQEAgLTIzLDYg
KzIzLDcgQEAgYWxpYXNlcyB7Cj4gICAJCWV0aGVybmV0MCA9ICZnbWFjMDsKPiAgIAkJZXRoZXJu
ZXQxID0gJmdtYWMxOwo+ICAgCQltbWMwID0gJnNkbW1jOwo+ICsJCW1tYzEgPSAmc2RpbzsKPiAg
IAl9Owo+ICAgCj4gICAJY2hvc2VuIHsKPiBAQCAtMjEyLDYgKzIxMywxNiBAQCB2Y2NfM3YzX3Mw
OiByZWd1bGF0b3ItdmNjLTN2My1zMCB7Cj4gICAJCXZpbi1zdXBwbHkgPSA8JnZjY18zdjNfczM+
Owo+ICAgCX07Cj4gICAKPiArCXNkaW9fcHdyc2VxOiBzZGlvLXB3cnNlcSB7Cj4gKwkJY29tcGF0
aWJsZSA9ICJtbWMtcHdyc2VxLXNpbXBsZSI7Cj4gKwkJY2xvY2tzID0gPCZoeW04NTYzPjsKPiAr
CQljbG9jay1uYW1lcyA9ICJleHRfY2xvY2siOwo+ICsJCXBpbmN0cmwtMCA9IDwmd2lmaV9yZWdf
b25faD47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwb3N0LXBvd2VyLW9u
LWRlbGF5LW1zID0gPDIwMD47Cj4gKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDMiBHUElP
X0FDVElWRV9MT1c+Owo+ICsJfTsKPiArCj4gICAJc291bmQgewo+ICAgCQljb21wYXRpYmxlID0g
InNpbXBsZS1hdWRpby1jYXJkIjsKPiAgIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiBA
QCAtODU1LDYgKzg2NiwxMiBAQCBwY2llMF9wZXJzdG46IHBjaWUwLXBlcnN0biB7Cj4gICAJCX07
Cj4gICAJfTsKPiAgIAo+ICsJc2Rpby1wd3JzZXEgewo+ICsJCXdpZmlfcmVnX29uX2g6IHdpZmkt
cmVnLW9uLWggewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEMyIFJLX0ZVTkNfR1BJTyAm
cGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgIAlzZG1tYyB7Cj4gICAJCXNk
bW1jMF9wd3Jlbl9oOiBzZG1tYzAtcHdyZW4taCB7Cj4gICAJCQlyb2NrY2hpcCxwaW5zID0gPDAg
UktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiBAQCAtODkwLDYgKzkwNywyMiBA
QCAmc2FyYWRjIHsKPiAgIAlzdGF0dXMgPSAib2theSI7Cj4gICB9Owo+ICAgCj4gKyZzZGlvIHsK
PiArCWJ1cy13aWR0aCA9IDw0PjsKPiArCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gKwljYXAtc2Rpby1p
cnE7Cj4gKwlrZWVwLXBvd2VyLWluLXN1c3BlbmQ7Cj4gKwltbWMtcHdyc2VxID0gPCZzZGlvX3B3
cnNlcT47Cj4gKwluby1tbWM7Cj4gKwluby1zZDsKPiArCW5vbi1yZW1vdmFibGU7Cj4gKwlzZC11
aHMtc2RyMTA0Owo+ICsJdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+ICsJdnFtbWMtc3Vw
cGx5ID0gPCZ2Y2NfMXY4X3MzPjsKPiArCj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+
ICAgJnNkbW1jIHsKPiAgIAlidXMtd2lkdGggPSA8ND47Cj4gICAJY2FwLXNkLWhpZ2hzcGVlZDsK
PiAKPiBiYXNlLWNvbW1pdDogYWU5NjViOTg1NmYwMzMxNDVlMjkyYjBjMjkwODJhMjZiY2M0NWVm
ZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
