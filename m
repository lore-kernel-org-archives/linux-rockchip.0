Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7906C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:22:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D88626100B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:22:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D88626100B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qYwbMrxSEeVxlC+WgXom6QIKtJqFgI5jrs1LI5n6q68=; b=hoM8buZUUoKgXuzBC6Q4/ViOM
	CDvPhJ9MtHWumKfnTrsOdE+d+aKMyQbXCMjKxYuRP9fh1EP9zKum3kuAK1PPrVI8+VQg3/DUHK2QL
	R3fd8MuEiGIH7LIBfPHsGgfoz1LP3T9oHpcTraDJzcCKxz3Ou5euLZenZvuUyu7ORoUacdreYfw5b
	anwRrPnPcQd0pxq8iwIWCzE0cTYqj4yAeLSMSYE00lg3k9xJtg+197AWO5QVaQkVGtedcS2+7RWSE
	cHNeLQoYBpkcT1blfJcWsFJAug16XRnJPVxqI5HaVbPBKa6/SsO5AxhCbQ0rOMtlE2qj8h+tMnXIa
	NW6cxLK0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxRI-007IP4-NI; Mon, 26 Apr 2021 09:22:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxR7-007IMh-Ni; Mon, 26 Apr 2021 09:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Cc:Sender:Reply-To:Content-ID:Content-Description;
 bh=dCl+8DIVTwtlJQlZvQ7o/9JxhUtT6UcxSErwqOHuosg=; b=ZJs8OZqtTPsS2P/XRL3kqVNjbq
 Q/hgiXKrIxHAosyI2pDpp272DCijxuv9xDxx0i9rrsI4qwW68T0T3PMS11//IIJkapvM4UEuQRptb
 8bkBBN9nhka9FeNdKzo7TUJWYKOxwMjw5sBd5qkWp0zbbhDg1lfhGuizxITWRb4CFObXeJE2G2fB7
 ehbLUIqglaE9gC7lyvFEFKDxqB3eN14EHn0v6SiUnf6JDkFClE7UIlImpNaDHMGiRxM4fVxTP1D3e
 HG28YAxGAgWIARP8vtlDDy7u5xHW4LRG/wmv4xQPM+i4Yhado5rZx+Ld1d29hexMp01C7xlNOT3XN
 NeU6wyFA==;
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxR4-00Fr6F-3c; Mon, 26 Apr 2021 09:21:48 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 6A2857D3;
 Mon, 26 Apr 2021 17:21:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.151] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2752T140649347385088S1619428893484164_; 
 Mon, 26 Apr 2021 17:21:35 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0b6518d01a4b44141c73aba3d00c4597>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: linux-watchdog@vger.kernel.org
X-RCPT-COUNT: 30
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Cc: cl@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: Marc Zyngier <maz@kernel.org>
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094439.25895-1-cl@rock-chips.com> <87mttmslni.wl-maz@kernel.org>
From: =?UTF-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Message-ID: <ee4172da-13a4-2a94-446f-cfdd937574c3@rock-chips.com>
Date: Mon, 26 Apr 2021 17:21:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87mttmslni.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_022146_537218_7BCFF515 
X-CRM114-Status: GOOD (  21.92  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWFyYywKCtTaIDIwMjEvNC8yNSDPws7nNjoyOCwgTWFyYyBaeW5naWVyINC0tcA6Cj4gQXMg
SSByZXZpZXdlZCBhIHByZXZpb3VzIHZlcnNpb24gb2YgdGhpcyBzZXJpZXMsIHBsZWFzZSBoYXZl
IHRoZQo+IGNvdXJ0ZXN5IG9mIGNjJ2luZyBtZSBvbiBmdXJ0aGVyIHJldmlzaW9ucyBvZiB0aGlz
IHNlcmllcy4KSSBhbSByZWFsbHkgc29ycnksIGkgd2lsbCBhZGQgeW91IHRvIHRoZSBjYyBsaXN0
IG9uIGZ1cnRoZXIgcmV2aXNpb25zLgo+Cj4gT24gU3VuLCAyNSBBcHIgMjAyMSAxMDo0NDozOSAr
MDEwMCwKPiA8Y2xAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+PiBGcm9tOiBMaWFuZyBDaGVuIDxj
bEByb2NrLWNoaXBzLmNvbT4KPj4KPj4gUkszNTY4IGlzIGEgaGlnaC1wZXJmb3JtYW5jZSBhbmQg
bG93IHBvd2VyIHF1YWQtY29yZSBhcHBsaWNhdGlvbiBwcm9jZXNzb3IKPj4gZGVzaWduZWQgZm9y
IHBlcnNvbmFsIG1vYmlsZSBpbnRlcm5ldCBkZXZpY2UgYW5kIEFJb1QgZXF1aXBtZW50cy4gVGhp
cyBwYXRjaAo+PiBhZGQgYmFzaWMgY29yZSBkdHNpIGZpbGUgZm9yIGl0Lgo+Pgo+PiBXZSB1c2Ug
c2NtaV9jbGsgZm9yIGNvcnRleC1hNTUgaW5zdGVhZCBvZiBzdGFuZGFyZCBBUk1DTEssIHNvIHRo
YXQKPj4ga2VybmVsL3Vib290L3J0b3MgY2FuIGNoYW5nZSBjcHUgY2xrIHdpdGggdGhlIHNhbWUg
Y29kZSBpbiBBVEYsIGFuZCB3ZSB3aWxsCj4+IGVuYWxiZSBhIHNwZWNpYWwgaGlnaC1wZXJmb3Jt
YWNuZSBQTEwgd2hlbiBoaWdoIGZyZXF1ZW5jeSBpcyByZXF1aXJlZC4gVGhlCj4+IHNtY2lfY2xr
IGNvZGUgaXMgaW4gQVRGLCBhbmQgY2xraWQgZm9yIGNwdSBpcyAwLCBhcyBiZWxvdzoKPj4KPj4g
ICAgICBjcHUwOiBjcHVAMCB7Cj4+ICAgICAgICAgIGRldmljZV90eXBlID0gImNwdSI7Cj4+ICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTUiOwo+PiAgICAgICAgICByZWcgPSA8
MHgwIDB4MD47Cj4+ICAgICAgICAgIGNsb2NrcyA9IDwmc2NtaV9jbGsgMD47Cj4+ICAgICAgfTsK
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4+IC0t
LQo+PiAgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGluY3RybC5kdHNpICAgICB8IDMx
MTkgKysrKysrKysrKysrKysrKysKPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC5kdHNpICAgICAgfCAgODEyICsrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzOTMxIGlu
c2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtcGluY3RybC5kdHNpCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiBbLi4uXQo+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjY2Y2I1MDIxOGNhMQo+PiAtLS0gL2Rldi9udWxsCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4gQEAgLTAsMCAr
MSw4MTIgQEAKPiBbLi4uXQo+Cj4+ICsJdGltZXIgewo+PiArCQljb21wYXRpYmxlID0gImFybSxh
cm12OC10aW1lciI7Cj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMyBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPj4gKwkJCSAgICAgPEdJQ19QUEkgMTQgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4+
ICsJCQkgICAgIDxHSUNfUFBJIDExIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiArCQkJICAgICA8
R0lDX1BQSSAxMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJYXJtLG5vLXRpY2staW4tc3Vz
cGVuZDsKPiBNeSBxdWVzdGlvbnMgb24gdGhpcyBwcm9wZXJ0eSBzdGlsbCBzdGFuZCBbMV0uCgpZ
ZXMsIHJrMzU2OCB3aWxsIGxvc2UgdGhlIHN5c3RlbSBjb3VudGVyIGluIHN1c3BlbmQgbW9kZSwg
d2UgbXVzdCAKcmV0cmlldmUgc3lzdGVtIHRpbWUgZnJvbSBSVEMuCgpyazM1ODggd2lsbCBmaXgg
dGhpcyBpc3N1ZS4KCj4KPj4gKwl9Owo+PiArCj4+ICsJeGluMjRtOiB4aW4yNG0gewo+PiArCQlj
b21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI0MDAw
MDAwPjsKPj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gInhpbjI0bSI7Cj4+ICsJCSNjbG9jay1j
ZWxscyA9IDwwPjsKPj4gKwl9Owo+PiArCj4+ICsJeGluMzJrOiB4aW4zMmsgewo+PiArCQljb21w
YXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsK
Pj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gInhpbjMyayI7Cj4+ICsJCXBpbmN0cmwtMCA9IDwm
Y2xrMzJrX291dDA+Owo+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQkjY2xv
Y2stY2VsbHMgPSA8MD47Cj4+ICsJfTsKPj4gKwo+PiArCWdpYzogaW50ZXJydXB0LWNvbnRyb2xs
ZXJAZmQ0MDAwMDAgewo+PiArCQljb21wYXRpYmxlID0gImFybSxnaWMtdjMiOwo+PiArCQlyZWcg
PSA8MHgwIDB4ZmQ0MDAwMDAgMCAweDEwMDAwPiwgLyogR0lDRCAqLwo+PiArCQkgICAgICA8MHgw
IDB4ZmQ0NjAwMDAgMCAweGMwMDAwPjsgLyogR0lDUiAqLwo+PiArCQlpbnRlcnJ1cHRzID0gPEdJ
Q19QUEkgOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7
Cj4+ICsJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8Mz47Cj4+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDI+
Owo+PiArCQkjc2l6ZS1jZWxscyA9IDwyPjsKPj4gKwkJcmFuZ2VzOwo+IE15IHJlcXVlc3QgZm9y
IGEgZnVsbCBkZXNjcmlwdGlvbiBvZiB0aGUgR0lDQSByZWdpb24gc3RpbGwgc3RhbmRzIFsxXS4K
VGhhbmtzLCBpIHdpbGwgdGVzdCBNU0lzIHdpdGggIm1iaS1hbGlhcyIsIHRoZW4gYWRkIHJlbGF0
aXZlIHByb3BlcnR5IGluIAp0aGUgbmV4dCB2ZXJzaW9uLgo+Cj4gVGhhbmtzLAo+Cj4gCU0uCj4K
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci84N284ZTJzbTF1LndsLW1hekBrZXJuZWwu
b3JnCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
