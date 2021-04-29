Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928AC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:41:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2EA5613BD
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:41:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2EA5613BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=huqkfub1BFcIx3QFsaCtl7dlPGEtkJ2m7t4SdNSbsVM=; b=F0qc4xt/xXX2zakD8JMKjpgcP
	T4uYS223YPFa2TAdR+UtDYLH0gHO8kX6Vp516nZSbqCCJbf9n/niu9Yc74VYwQNbvi8moABsFB59B
	pq1+/bGxmEeRBrqriln9QgtatfbNb/lDAWmJxqvehaA53P1yME3xD3m5zXo2D4aPuwh5qMRgZ3QA8
	lt1Ezqbk9NvHH0+TfhtrqZWof84oe5fD2TXm23VyBbZjyDNnCBvDPWTfIwZpOlaR+BEVToQa/btQV
	TIlTOEfNPrODOETM5N2NwJq/8agJk8efBnZ8DbckT1cNxXFM9774x9R4rdKc9CI9Qm8xzgBWekKY8
	A5qVtIKKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc1IH-005Dzj-Ff; Thu, 29 Apr 2021 07:41:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1I4-005DzD-2R; Thu, 29 Apr 2021 07:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:From:
 Message-ID:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=U9aiwj6o3fcYauG8kGKI9PmtfwQl3eempCDVQ7/Wa0o=; b=Oua++uvnci49P+cQO6ujtd88Zl
 jALI9mnDJwr/+Ijw/Ug+yyxLTO21UlP2QRWaz0YgcnqjI4tziuwnB4XIEvvfBjLSHwT2u7ofQ0T38
 PgKnrpKL+ZdTees5YwXBgby8x5MJZH9J9KI2GMBSpHJbyqqewrNhks1+cTewN+VS3EMdllcamTZVL
 o7JonMbr5tGuDxBi0B/t0YWbXbUownT8n5KLlwPzpF+3zGH/jy+sUgvnSzSntG3XXYCd21vhsA0uH
 sNpmkLNw+UGxVfbiCEcvzQgKNMYhjGy41wijHsDRIGEKAtIyztpsSLW+dZX/Kll32gk00KZASGvHa
 sjHJDAGw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc1I1-000SSk-8I; Thu, 29 Apr 2021 07:40:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 093BB613BD;
 Thu, 29 Apr 2021 07:40:47 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lc1Hw-009zNf-QY; Thu, 29 Apr 2021 08:40:44 +0100
Date: Thu, 29 Apr 2021 08:40:43 +0100
Message-ID: <87eeeto7wk.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: =?UTF-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, wim@linux-watchdog.org,
 linux@roeck-us.net, jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v3 09/10] arm64: dts: rockchip: add core dtsi for RK3568
 SoC
In-Reply-To: <3401442c-24a1-e8f8-fc4a-fa44d94b903b@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
 <20210428135002.22528-1-cl@rock-chips.com>
 <87h7jqo3d2.wl-maz@kernel.org>
 <3401442c-24a1-e8f8-fc4a-fa44d94b903b@rock-chips.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: cl@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_004049_396951_F94B3E35 
X-CRM114-Status: GOOD (  32.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVGh1LCAyOSBBcHIgMjAyMSAwMjoxMzozNSArMDEwMCwK6ZmI5LquIDxjbEByb2NrLWNoaXBz
LmNvbT4gd3JvdGU6Cj4gCj4gSGkgTWFyYywKPiAKPiDlnKggMjAyMS80LzI4IOS4i+WNiDExOjA2
LCBNYXJjIFp5bmdpZXIg5YaZ6YGTOgo+ID4gT24gV2VkLCAyOCBBcHIgMjAyMSAxNDo1MDowMiAr
MDEwMCwKPiA+IDxjbEByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gPj4gRnJvbTogTGlhbmcgQ2hl
biA8Y2xAcm9jay1jaGlwcy5jb20+Cj4gPj4gCj4gPj4gUkszNTY4IGlzIGEgaGlnaC1wZXJmb3Jt
YW5jZSBhbmQgbG93IHBvd2VyIHF1YWQtY29yZSBhcHBsaWNhdGlvbiBwcm9jZXNzb3IKPiA+PiBk
ZXNpZ25lZCBmb3IgcGVyc29uYWwgbW9iaWxlIGludGVybmV0IGRldmljZSBhbmQgQUlvVCBlcXVp
cG1lbnQuIFRoaXMgcGF0Y2gKPiA+PiBhZGQgYmFzaWMgY29yZSBkdHNpIGZpbGUgZm9yIGl0Lgo+
ID4+IAo+ID4+IFdlIHVzZSBzY21pX2NsayBmb3IgY29ydGV4LWE1NSBpbnN0ZWFkIG9mIHN0YW5k
YXJkIEFSTUNMSywgc28gdGhhdAo+ID4+IGtlcm5lbC91Ym9vdC9ydG9zIGNhbiBjaGFuZ2UgY3B1
IGNsayB3aXRoIHRoZSBzYW1lIGNvZGUgaW4gQVRGLCBhbmQgd2Ugd2lsbAo+ID4+IGVuYWxiZSBh
IHNwZWNpYWwgaGlnaC1wZXJmb3JtYW5jZSBQTEwgd2hlbiBoaWdoIGZyZXF1ZW5jeSBpcyByZXF1
aXJlZC4gVGhlCj4gPj4gc21jaV9jbGsgY29kZSBpcyBpbiBBVEYsIGFuZCBjbGtpZCBmb3IgY3B1
IGlzIDAsIGFzIGJlbG93Ogo+ID4+IAo+ID4+ICAgICAgY3B1MDogY3B1QDAgewo+ID4+ICAgICAg
ICAgIGRldmljZV90eXBlID0gImNwdSI7Cj4gPj4gICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0s
Y29ydGV4LWE1NSI7Cj4gPj4gICAgICAgICAgcmVnID0gPDB4MCAweDA+Owo+ID4+ICAgICAgICAg
IGNsb2NrcyA9IDwmc2NtaV9jbGsgMD47Cj4gPj4gICAgICB9Owo+ID4+IAo+ID4+IFNpZ25lZC1v
ZmYtYnk6IExpYW5nIENoZW4gPGNsQHJvY2stY2hpcHMuY29tPgo+ID4+IC0tLQo+ID4+ICAgLi4u
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waW5jdHJsLmR0c2kgICAgIHwgMzExMSArKysrKysr
KysrKysrKysrKwo+ID4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRz
aSAgICAgIHwgIDc3OSArKysrKwo+ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzODkwIGluc2VydGlv
bnMoKykKPiA+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1waW5jdHJsLmR0c2kKPiA+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiBbLi4uXQo+ID4gCj4gPj4gKwln
aWM6IGludGVycnVwdC1jb250cm9sbGVyQGZkNDAwMDAwIHsKPiA+PiArCQljb21wYXRpYmxlID0g
ImFybSxnaWMtdjMiOwo+ID4+ICsJCXJlZyA9IDwweDAgMHhmZDQwMDAwMCAwIDB4MTAwMDA+LCAv
KiBHSUNEICovCj4gPj4gKwkJICAgICAgPDB4MCAweGZkNDYwMDAwIDAgMHhjMDAwMD47IC8qIEdJ
Q1IgKi8KPiA+IElmIHRoaXMgU29DIGhhcyA0IENQVXMsIHRoYXQncyA0IHJlZGlzdHJpYnV0b3Jz
LiBHaXZlbiB0aGF0IEdJQzYwMAo+ID4gZG9lc24ndCBpbXBsZW1lbnQgVkxQSXMsIHRoYXQncyAx
MjhrQiBwZXIgcmVkaXN0cmlidXRvcnMuIFdoeSBpcyBHSUNSCj4gPiBsYXJnZSBlbm91Z2ggZm9y
IDYgQ1BVcyBoZXJlPyBJcyB0aGF0IGNvcHktcGFzdGVkIGZyb20gYW5vdGhlciBTb0M/Cj4gQ29w
eSBmcm9tIHJrMzM5OSwgc29ycnkuCj4gPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDkgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4gPj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4gPj4gKwkJ
I2ludGVycnVwdC1jZWxscyA9IDwzPjsKPiA+PiArCQltYmktYWxpYXMgPSA8MHgwIDB4ZmQ0MDAw
MDA+Owo+ID4+ICsJCW1iaS1yYW5nZXMgPSA8Mjk2IDI0PjsKPiA+PiArCQltc2ktY29udHJvbGxl
cjsKPiA+PiArCX07Cj4gPiBHbGFkIHRvIHNlZSB0aGF0IHlvdSBmb3VuZCBzb21lIHNwYXJlIFNQ
SXMgdG8gZ2V0IE1TSXMgZ29pbmcKPiA+IAo+ID4gSG93ZXZlciwgdGhlIHdob2xlIHBvaW50IG9m
IG1iaS1hbGlhcyAoYWthIEdJQ0EgaW4gR0lDNjAwKSBpcyB0byBiZQo+ID4gZGlmZmVyZW50IGZy
b20gR0lDRCBhbmQgcHJvdmlkZSBzb21lIGlzb2xhdGlvbiB2aWEgYW4gSU9NTVUuICBJZiBJCj4g
PiB0cnVzdCB0aGUgVFJNLCBpZiBzaG91bGQgYmUgYXQgMHhmZDEwMDAwIGluIHlvdXIgaW1wbGVt
ZW50YXRpb24uCj4gCj4gQnV0IGluIHRoZSAuL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0
LWNvbnRyb2xsZXIvYXJtLGdpYy12My55YW1sLCBzYXk6Cj4gCj4gwqAgbWJpLWFsaWFzOgo+IMKg
wqDCoCBkZXNjcmlwdGlvbjoKPiDCoMKgwqDCoMKgIEFkZHJlc3MgcHJvcGVydHkuIEJhc2UgYWRk
cmVzcyBvZiBhbiBhbGlhcyBvZiB0aGUgKkdJQ0QqIHJlZ2lvbgo+IGNvbnRhaW5pbmcKPiDCoMKg
wqDCoMKgIG9ubHkgdGhlIHtTRVQsQ0xSfVNQSSByZWdpc3RlcnMgdG8gYmUgdXNlZCBpZiBpc29s
YXRpb24gaXMgcmVxdWlyZWQsCj4gwqDCoMKgwqDCoCBhbmQgaWYgc3VwcG9ydGVkIGJ5IHRoZSBI
Vy4KCgpbcmVjdXJyaW5nIHRoZW1lOiBJIGhhcHBlbiB0byBrbm93IGFib3V0IHRoaXMgc2VjdGlv
biBvZiB0aGUgYmluZGluZywKaGF2aW5nIHdyaXR0ZW4gdGhlIG9yaWdpbmFsIG15c2VsZl0KCkhv
dyBkb2VzIHRoYXQgY29udHJhZGljdCBteSBjb21tZW50PyBHSUM2MDAncyBHSUNBIHBhZ2Ugb25s
eSBjb250YWlucwp0aGUgZm91ciB7U0VULENMUn1fU1BJIHJlZ2lzdGVycywgYXMgZXhwZWN0ZWQg
KHNlZSBzZWN0aW9uIDQuMyBpbiB0aGUKVFJNWzFdKSwgYW5kIHRoZSBhZGRyZXNzIGlzIGNvbXB1
dGVkIHVzaW5nIHRhYmxlIDQtMSAiUmVnaXN0ZXIgbWFwCnBhZ2VzIiBvZiB0aGUgc2FtZSBkb2N1
bWVudC4KClBsZWFzZSBlaXRoZXIgZml4IHRoZSBEVCBvciBleHBsYWluIHdoeSB0aGUgR0lDQSBk
aXN0cmlidXRvciBhbGlhcwppc24ndCB1c2FibGUuCgoJTS4KClsxXSBodHRwczovL2RvY3VtZW50
YXRpb24tc2VydmljZS5hcm0uY29tL3N0YXRpYy81ZTdkZGRkYWNiZmU3NjY0OWJhNTMwMzQKCi0t
IApXaXRob3V0IGRldmlhdGlvbiBmcm9tIHRoZSBub3JtLCBwcm9ncmVzcyBpcyBub3QgcG9zc2li
bGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
