Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 425F6C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 10:20:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A78B061370
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 10:20:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A78B061370
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Th+4aGNjmMb2iyO+aW3vVRDFrbB65CKklrNdqNqn284=; b=PxLp8p0ofwNGobEbNIdt9aOXq
	tkP3EAbEbqU3YJbFbVAOAFoLuL22piAj4lwt4xY5eEQZ8xMfiXy+rNv4MYX41ACwI3qqfttHHm0HY
	z1R6eZr685qvScBQ1xZJ1vPohx+WC0TJkpYYB16nU3BK1MhIXHBZlHcR9GdRQsDXUs8C30K7Op1oX
	gaWMk/ifrkboq843PxeEMgI0bwluJGi9KgjNm8Duo4CGN+24W3EYi7b4ANIcXj7ETLF3cwPspW98d
	9KVsHgirzISWsKaZUt3Ezc9EvJcUFLX/ZUX/C4g+LlNSuHgwWG2BnZ7jnMq1I52cIdeqGOMnRY7o5
	dzjMQe7LQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1labsO-005SCA-4J; Sun, 25 Apr 2021 10:20:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labsC-005SAE-Hp; Sun, 25 Apr 2021 10:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:From:
 Message-ID:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=WtvKpgorwgJmmqzqLR9nGbcJiSFcPjxUwpPy+vqsOTc=; b=afRXo0AUvwYTK4TcZIGaLrqe5S
 iqrTG5fn+OnAwzgQKQj3XJOpuFpK6GQ8hpO0OPzurPRPnWEjtNalQpOD2x0Spexir3XJ+lPqMOlG+
 afdAUZiw4OxeOurNejLRi9p+w75wY8Iff5NYntDBjZeezZDSxh+UGGFGJ8vfWHjWW+Q71qElAyRUs
 Xs2C+zVyLJlqh4NqfWkC6hpl+QJJGy33ydWC2tCthfFkxqEZkJQQfPfi2XgazhzAIV3VpuitBG0dp
 Pfq4CJqLOauBawLVXsiywtsGaowm6SsXE79hVRDZ2dEy3/xJimftHrIDoE7CIOsDuzZIssMZEJb9O
 gvYlKKkg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labsA-00FOly-0N; Sun, 25 Apr 2021 10:20:19 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E197613AA;
 Sun, 25 Apr 2021 10:20:17 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1labs7-009JuV-1s; Sun, 25 Apr 2021 11:20:15 +0100
Date: Sun, 25 Apr 2021 11:20:13 +0100
Message-ID: <87o8e2sm1u.wl-maz@kernel.org>
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
 zhangqing@rock-chips.com, huangtao@rock-chips.com
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
In-Reply-To: <ec556a6c-e950-d152-c878-986e2616ddcd@rock-chips.com>
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com>
 <87zgxrpxo5.wl-maz@kernel.org>
 <ec556a6c-e950-d152-c878-986e2616ddcd@rock-chips.com>
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
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_032018_114468_0893E18B 
X-CRM114-Status: GOOD (  23.71  )
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

T24gU3VuLCAyNSBBcHIgMjAyMSAxMDoxNjo1MCArMDEwMCwK6ZmI5LquIDxjbEByb2NrLWNoaXBz
LmNvbT4gd3JvdGU6Cj4gCj4gSGkgTWFyY++8jAo+IAo+IMKgwqDCoCBUaGFua3MgZm9yIHJlcGx5
Lgo+IAo+IMKgwqDCoCBTZWUgYmVsb3cuCj4gCj4g5ZyoIDIwMjEvNC8yMSDkuIvljYg5OjM2LCBN
YXJjIFp5bmdpZXIg5YaZ6YGTOgo+ID4gT24gV2VkLCAyMSBBcHIgMjAyMSAwNzo1OToyMCArMDEw
MCwKPiA+IDxjbEByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gPj4gRnJvbTogTGlhbmcgQ2hlbiA8
Y2xAcm9jay1jaGlwcy5jb20+CgpbLi4uXQoKPiA+PiArCXRpbWVyIHsKPiA+PiArCQljb21wYXRp
YmxlID0gImFybSxhcm12OC10aW1lciI7Cj4gPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEz
IChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfSElHSCk+LAo+ID4+ICsJ
CQkgICAgIDxHSUNfUFBJIDE0IChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVW
RUxfSElHSCk+LAo+ID4+ICsJCQkgICAgIDxHSUNfUFBJIDExIChHSUNfQ1BVX01BU0tfU0lNUExF
KDQpIHwgSVJRX1RZUEVfTEVWRUxfSElHSCk+LAo+ID4+ICsJCQkgICAgIDxHSUNfUFBJIDEwIChH
SUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfSElHSCk+Owo+ID4gVGhpcyBk
b2Vzbid0IG1hdGNoIHRoZSBHSUN2MyBiaW5kaW5nIGZvciBQUElzLgo+IGZpeGVkIGluIFYyLgo+
ID4gCj4gPj4gKwkJYXJtLG5vLXRpY2staW4tc3VzcGVuZDsKPiA+IE9oLCByZWFsbHk/IDotKAo+
IHllcywgYXJtIGFyY2ggdGltZXIgd2lsbCBzdG9wIGluIHN1c3BlbmQgbW9kZSBvbiByazM1Njgu
CgpUaGF0IHRoZSBjb21wYXJhdG9yIHN0b3BzIGlzIGNvbXBsZXRlbHkgZXhwZWN0ZWQsIGFzIGl0
IGxpdmVzIGluIHRoZQpDUFUgcG93ZXIgZG9tYWluLgoKQnV0IGxvc2luZyB0aGUgc3lzdGVtIGNv
dW50ZXIgb24gc3VzcGVuZCBpcyBhIGNvbXBsZXRlIHZpb2xhdGlvbiBvZgp0aGUgYXJjaGl0ZWN0
dXJlLCB3aGljaCBjbGVhcmx5IHN0YXRlcyB0aGF0ICJUaGUgc3lzdGVtIGNvdW50ZXIgbXVzdApi
ZSBpbXBsZW1lbnRlZCBpbiBhbiBhbHdheXMtb24gcG93ZXIgZG9tYWluLiIgKEFSTXY4IEFSTSBH
X2EsIEQxMS4xLjIKVGhlIHN5c3RlbSBjb3VudGVyKS4KCkFyZSB5b3UgYWN0dWFsbHkgbG9zaW5n
IHRoZSBzeXN0ZW0gY291bnRlcj8KCj4gPgo+ID4+ICsJfTsKPiA+PiArCj4gPj4gKwl4aW4yNG06
IHhpbjI0bSB7Cj4gPj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPj4gKwkJI2Ns
b2NrLWNlbGxzID0gPDA+Owo+ID4+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNDAwMDAwMD47Cj4g
Pj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gInhpbjI0bSI7Cj4gPj4gKwl9Owo+ID4+ICsKPiA+
PiArCXhpbjMyazogeGluMzJrIHsKPiA+PiArCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsK
PiA+PiArCQljbG9jay1mcmVxdWVuY3kgPSA8MzI3Njg+Owo+ID4+ICsJCWNsb2NrLW91dHB1dC1u
YW1lcyA9ICJ4aW4zMmsiOwo+ID4+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiA+PiArCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+ICsJCXBpbmN0cmwtMCA9IDwmY2xrMzJrX291dDA+
Owo+ID4+ICsJfTsKPiA+PiArCj4gPj4gKwlzY21pX3NobWVtOiBzY21pLXNobWVtQDEwZjAwMCB7
Cj4gPj4gKwkJY29tcGF0aWJsZSA9ICJhcm0sc2NtaS1zaG1lbSI7Cj4gPj4gKwkJcmVnID0gPDB4
MCAweDAwMTBmMDAwIDB4MCAweDEwMD47Cj4gPj4gKwl9Owo+ID4+ICsKPiA+PiArCWdpYzogaW50
ZXJydXB0LWNvbnRyb2xsZXJAZmQ0MDAwMDAgewo+ID4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLGdp
Yy12MyI7Cj4gPj4gKwkJI2ludGVycnVwdC1jZWxscyA9IDwzPjsKPiA+PiArCQkjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKPiA+PiArCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiA+PiArCQlyYW5nZXM7Cj4g
Pj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4gPj4gKwo+ID4+ICsJCXJlZyA9IDwweDAgMHhm
ZDQwMDAwMCAwIDB4MTAwMDA+LCAvKiBHSUNEICovCj4gPj4gKwkJICAgICAgPDB4MCAweGZkNDYw
MDAwIDAgMHhjMDAwMD47IC8qIEdJQ1IgKi8KPiA+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19QUEkg
OSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+IFBsZWFzZSBhZGQgdGhlICdtYmktYWxpYXMnIHBy
b3BlcnR5LCB3aGljaCBzaG91bGQgbWFwIG9udG8gdGhlIEdJQ0EKPiA+IHJhbmdlIHRoYXQgR0lD
NjAwIHByb3ZpZGVzLiBBdCBsZWFzdCB0aGlzIGNvdWxkIGJlIHVzZWZ1bCB0byBoYXZlIE1TSXMK
PiA+IGRlc3BpdGUgdGhlIGxhY2sgb2YgYSB3b3JraW5nIElUUy4gV2UgY2FuIHdvcmsgb3V0IHRo
ZSB1c2FibGUgcmFuZ2VzCj4gPiBvbiBhIHBlci1ib2FyZCBiYXNpcy4KPiAKPiBUaGFua3MsIHdl
IHdpbGwgdHJ5IG1iaS1hbGlhcyBsYXRlciwgYnV0IHdlIGFyZSBhZnJhaWQgdGhhdCB0aGUgbnVt
YmVyCj4gb2YgU1BJIGlzIG5vdCBlbm91Z2guCgpOb3QgZW5vdWdoIGZvciB3aGF0PyBQZW9wbGUg
bWlnaHQgd2FudCB0byB0cmFkZSB0aGUgdXNlIG9mIGluLVNvQwpkZXZpY2VzIGZvciBNU0lzLiBB
bHNvLCB0aGUgRFQgc2hvdWxkIGRlc2NyaWJlIHRoZSB3aG9sZSBvZiB0aGUgSFcsCmluY2x1ZGlu
ZyBmZWF0dXJlcyB0aGF0IHlvdSBkb24ndCBmaW5kIHVzZWZ1bC4KClRoYW5rcywKCglNLgoKLS0g
CldpdGhvdXQgZGV2aWF0aW9uIGZyb20gdGhlIG5vcm0sIHByb2dyZXNzIGlzIG5vdCBwb3NzaWJs
ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
