Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78832CCD1AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 08:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcUcVQl87Tfs0z+OHAznRvkjh3ZrHbqHhi8TKw2VvtY=; b=1AvmsH7kBRa6+B
	3cj0lCPbuhXGMJDrrjcmPh9NaJXS0OyHji63RFEoJiBC/4LkljhBfxzUbbIVcxTu+fisb2KLPcwYs
	4f4k2tjw+Vrel3fV69FbxIXMQ1ZlGPNggFzh3TKzZqVhy3AO9wI+ajNoxBkIqAtdDzmtuZhePZ1zZ
	vlS2k5vkjAzsQ0/R629OJVRu/ftFU4thk/Pe5VdzmoV+qO38Tb4qWhzKb2cY03frbyWa3omLdClsf
	zSmo5xSoUWVWo0z3qhgY7C/Kq5al9oIxEYByCZFuryvWmj8LHLhYmUmkvaSfgvKTAhTy/gaRirOlt
	hlgeT8+YG86xcP8NJARQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7rZ-0000000GIkS-1TM4;
	Tue, 21 Oct 2025 08:37:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7rW-0000000GIhw-15AI;
	Tue, 21 Oct 2025 08:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uzjSzcMiMfvyxgchJvQg0UkKHrfCLh0KZ54XotRuE78=; b=qB5LIpGNS6VFKFLCsQ7oi+wSOg
	/gArHf6epn6m21W3unoEXDPGUQAXZ9m7K7Rn+oeJ7JoBTN+ERYRDShJuirU885aLX5XyGLpHTXBSC
	E1YaPDNxlmOwHcY/a/j2vCuQvvkr2tNAxR5Y2lJh7dynyISUinvs6ndeDB5YVgvegEbddLJbE+3r3
	sita/nZb3YjX638SsaONPcDcq/p9RieF4Nv9+pKLjxP4esookDF/TG2wvF1AkNtYYF3h8sVihnN5a
	hCy0rvV3e/Eq3GOpFSmgjhDapqEmqGYm44wguRibcHutYarOgTIftclczed7RRtZhSD9Y+Z+PoJaK
	zMCyixjQ==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB7rS-0001TP-CV; Tue, 21 Oct 2025 10:36:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com
Subject: Re: [PATCH v4 6/7] dt-bindings: clock: rockchip: Add RK3506 clock and reset
 unit
Date: Tue, 21 Oct 2025 10:36:53 +0200
Message-ID: <24128799.6Emhk5qWAg@phil>
In-Reply-To: <20251021065232.2201500-7-zhangqing@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
 <20251021065232.2201500-7-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_013658_294445_2C16790D 
X-CRM114-Status: GOOD (  15.28  )
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

SGkgRWxhaW5lLAoKQW0gRGllbnN0YWcsIDIxLiBPa3RvYmVyIDIwMjUsIDA4OjUyOjMxIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgo+IEZyb206IEZp
bmxleSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiAKPiBBZGQgZGV2aWNlIHRy
ZWUgYmluZGluZ3MgZm9yIGNsb2NrIGFuZCByZXNldCB1bml0IG9uIFJLMzUwNiBTb0MuCj4gQWRk
IGNsb2NrIGFuZCByZXNldCBJRHMgZm9yIFJLMzUwNiBTb0MuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAuLi4vYmlu
ZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTA2LWNydS55YW1sICAgfCAgNDUgKysrCj4gIC4uLi9k
dC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1MDYtY3J1LmggICB8IDI4NSArKysrKysrKysr
KysrKysrKysKPiAgLi4uL2R0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzUwNi1jcnUuaCAg
IHwgMjExICsrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA1NDEgaW5zZXJ0aW9ucygr
KQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL3JvY2tjaGlwLHJrMzUwNi1jcnUueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1MDYtY3J1LmgKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAscmszNTA2LWNydS5o
Cj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9j
ay9yb2NrY2hpcCxyazM1MDYtY3J1LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTA2LWNydS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjQzZTE5MmQ5YjJhZgo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmsz
NTA2LWNydS55YW1sCj4gQEAgLTAsMCArMSw0NSBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gKyVZQU1MIDEuMgo+ICstLS0KPiAr
JGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9jbG9jay9yb2NrY2hpcCxyazM1MDYt
Y3J1LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMv
Y29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFJvY2tjaGlwIFJLMzUwNiBDbG9jayBhbmQgUmVzZXQg
VW5pdCAoQ1JVKQo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBGaW5sZXkgWGlhbyA8ZmlubGV5
LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4gKyAgLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgUkszNTA2IENSVSBnZW5lcmF0ZXMg
dGhlIGNsb2NrIGFuZCBhbHNvIGltcGxlbWVudHMgcmVzZXQgZm9yIFNvQwo+ICsgIHBlcmlwaGVy
YWxzLgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IHJv
Y2tjaGlwLHJrMzUwNi1jcnUKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4g
KyAgIiNjbG9jay1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiArICAiI3Jlc2V0LWNlbGxz
IjoKPiArICAgIGNvbnN0OiAxCj4gKwoKSSB0aGluayB3ZSB3YW50IGNsb2NrcyBhbmQgY2xvY2st
bmFtZXMgcHJvcGVydGllcyBoZXJlIGZvciB4aW4yNG0Kc2ltaWxhciB0byB0aGUgcnYxMTI2YiBi
aW5kaW5nIChhbmQgb3RoZXIgbW9kZXJuIHNvYyBiaW5kaW5ncykKCkFsc28sIEkgdGhpbmsgd2Un
bGwgbmVlZAoKICAgcm9ja2NoaXAsZ3JmOgogICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwj
L2RlZmluaXRpb25zL3BoYW5kbGUKICAgICBkZXNjcmlwdGlvbjoKICAgICAgIFBoYW5kbGUgdG8g
dGhlIHN5c2NvbiBtYW5hZ2luZyB0aGUgImdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMiIChHUkYpLAog
ICAgICAgaWYgbWlzc2luZyBwbGwgcmF0ZXMgYXJlIG5vdCBjaGFuZ2VhYmxlLCBkdWUgdG8gdGhl
IG1pc3NpbmcgcGxsCiAgICAgICBsb2NrIHN0YXR1cy4KCmJlY2F1c2UsIHlvdSdyZSB1c2luZyBS
SzM1MDZfR1JGX1NPQ19TVEFUVVMKZm9yIHRoZSBQTEwgbG9ja2luZyBzdGF0dXMuCgoKSGVpa28K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
