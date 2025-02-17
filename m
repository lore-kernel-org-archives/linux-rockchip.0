Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 682C1C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 17:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgPZOnlQPIB9KFjZ7WqF61gCIV325yrx1FVXsqK4l6U=; b=nR3dG8+0mEICgn
	8q8adk9Pw67ewi2IHoJzTFK/anS36Q0kCEKwd5VNTV8vSAPzxFfRM1jp+EONkNKGVC4+vU68Lkfyf
	O7cAudwKvv9AFyb/8lyK9PjSE4iNJijCoNe/gQHnQRWPTHhiz08xbhXBEK/HmFI0whEDbkQ29EqPE
	nAVu+H4N6BR2MTcdlF7XmAvR8iqrWwQQxkd4Sdpob8tjcaPMXXxqpBruezrmJS4qA2EBdz0ZwClBf
	ADjzjAj8mbn7nWm3XRdZeLZWnO3b6QF8RS/X+g/0SjOlu51Hj0m1HldbRJzibN3LVRH3NGOP5eVp6
	7MzNm01KW6JtIREUiXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5OI-00000005Xkq-0M0x;
	Mon, 17 Feb 2025 17:58:46 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk4dj-00000005PJO-22KD
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 17:10:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 820E0152B;
	Mon, 17 Feb 2025 09:10:57 -0800 (PST)
Received: from [10.1.27.38] (e122027.cambridge.arm.com [10.1.27.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A530C3F5A1;
	Mon, 17 Feb 2025 09:10:34 -0800 (PST)
Message-ID: <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
Date: Mon, 17 Feb 2025 17:10:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform
 firmware
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-5-git-send-email-shawn.lin@rock-chips.com>
 <d543a0a7-8e14-483a-bc2b-783dc3aa33e2@arm.com> <2579724.BzM5BlMlMQ@diego>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <2579724.BzM5BlMlMQ@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_091039_566284_6E06F3EC 
X-CRM114-Status: GOOD (  13.73  )
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

T24gMTcvMDIvMjAyNSAxNToxNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgU3RldmVuLAo+
IAo+IEFtIE1vbnRhZywgMTcuIEZlYnJ1YXIgMjAyNSwgMTU6NDc6MjEgTUVaIHNjaHJpZWIgU3Rl
dmVuIFByaWNlOgo+PiBPbiAwNS8wMi8yMDI1IDA2OjE1LCBTaGF3biBMaW4gd3JvdGU6Cj4+PiBJ
bmZvcm0gZmlybXdhcmUgdG8ga2VlcCB0aGUgcG93ZXIgZG9tYWluIG9uIG9yIG9mZi4KPj4+Cj4+
PiBTdWdnZXN0ZWQtYnk6IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+Pj4g
U2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+PiAt
LS0KPj4KPj4gVGhpcyBwYXRjaCBpcyBjYXVzaW5nIG15IEZpcmVmbHkgUkszMjg4IHRvIGZhaWwg
dG8gYm9vdCwgaXQgaGFuZ3MgCj4+IHNob3J0bHkgYWZ0ZXIgcmVhY2hpbmcgdXNlciBzcGFjZSwg
YnV0IHRoZSBib290dXAgbWVzc2FnZXMgaW5jbHVkZSB0aGUgCj4+IHN1c3BpY2lvdXMgbGluZSAi
QmFkIG1vZGUgaW4gcHJlZmV0Y2ggYWJvcnQgaGFuZGxlciBkZXRlY3RlZCIuCj4+IEkgc3VzcGVj
dCB0aGUgZmlybXdhcmUgb24gdGhpcyBib2FyZCBkb2Vzbid0IHN1cHBvcnQgdGhpcyBuZXcgU01D
IAo+PiBjb3JyZWN0bHkuIFJldmVydGluZyB0aGlzIHBhdGNoIG9uIHRvcCBvZiBsaW51eC1uZXh0
IGdldHMgZXZlcnl0aGluZyAKPj4gd29ya2luZyBhZ2Fpbi4KPiAKPiBJcyB5b3VyIGJvYXJkIGFj
dHVhbGx5IHJ1bm5pbmcgc29tZSB0cnVzdGVkIGZpcm13YXJlPwoKTm90IGFzIGZhciBhcyBJIGtu
b3cuCgo+IFN0b2NrIHJrMzI4OCBuZXZlciBoYWQgdGYtYSAvIHBzY2kgWzBdLCBJIGRpZCB3b3Jr
IG9uIHRoYXQgZm9yIGEgd2hpbGUsCj4gYnV0IGRvbid0IHRoaW5rIHRoYXQgZXZlciB0b29rIG9m
Zi4KPiAKPiBJJ20gd29uZGVyaW5nIHdobyB0aGUgc21jYyBjYWxsIGlzIGNhbGxpbmcsIGJ1dCBk
b24ndCBrbm93IGFib3V0Cj4gYWJvdXQgc21jYyBzdHVmZi4KCkdvb2QgcXVlc3Rpb24gLSBpdCdz
IHF1aXRlIHBvc3NpYmxlIHRoaW5ncyBhcmUgYmxvd2luZyB1cCBqdXN0IGJlY2F1c2UKdGhlcmUn
cyBub3RoaW5nIHRoZXJlIHRvIGhhbmRsZSB0aGUgU01DLiBNeSBEVEIgaXMgYXMgdXBzdHJlYW06
CgogICAgICAgIGNwdXMgewogICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MHgwMT47
CiAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwweDAwPjsKICAgICAgICAgICAgICAgIGVu
YWJsZS1tZXRob2QgPSAicm9ja2NoaXAscmszMDY2LXNtcCI7CiAgICAgICAgICAgICAgICByb2Nr
Y2hpcCxwbXUgPSA8MHgwNj47CgpJIGhhdmVuJ3QgaW52ZXN0aWdhdGVkIHdoeSB0aGlzIGNvZGUg
aXMgYXR0ZW1wdGluZyB0byBjYWxsIGFuIFNNQyBvbgp0aGlzIGJvYXJkLgoKU3RldmUKCj4gWzBd
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzI4OC5kdHNpI242
Mwo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
