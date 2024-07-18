Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98679C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmtJRFLDeiWJkHT5pPaC1xNYp6FGkqM08jnIynbohOU=; b=uqcivL6jbfEhi9
	Qtb1XEhZQDf+ttyAOsv23wocOFxqzmVgEoaGHEJD1LITfWB+UrwcWxqv4hRCjQPLJbBIm8In/3DGT
	WkOuKQwHie1wP/3Dy2HjAQYn20eJvZUK0HPE+D9QbdiRZ3VftbuViz1N8PXlvbbbSa1GmMEvDHWnd
	kCKmgoRIT4BpSmOBSfZQbBE6KYA4+Knt1NITYVP4ICozM78kYejYhowhMNbqg4S36RJinD60w4Bon
	ovEgMIyyjj+9lL0j+dUX70uwxOFKEJaHMifhB+8EdJMUP/l2rJlfrAf59uQ2z77uMuH0J3zdTVO+w
	AxUZhBIs6Ul7yFkapBpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMYc-0000000GOYm-1nw3;
	Thu, 18 Jul 2024 08:32:10 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMYF-0000000GOTl-3ili;
	Thu, 18 Jul 2024 08:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721291506;
	bh=UfboPlF/HZBBn4a1P1PzaHifZoVrnrwWnCf3Un1BSvY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=lLLRis9Q00clE0k3WxllUf99jwGs7cE/uP1Njdlk8FL0KDIfsheQSaUuAUsTgWlg7
	 oSALNx8247kvwAcAhowq9jcmoj1l3wkkBuZjEiVqnCLKSW/Jb8CftQ+T9cmO0n89Jo
	 gvMSTHB7iKdQo3P6noWtziVeMgSnKz/UuVWLadj4N7FL+yIw3ooSh0h6LjIY/VUCAP
	 uC9bu/Q+C5jq3a44dgJiccNKgnwy0y4maZeOpEJvI1hcJpPZPwv0NQcpPxhDlf3sKL
	 7ML5aH+5E+ymf8oJcXjLIcfQYNy46uJY9YzwnYu+LIhdqRxq5s9P5Bj7EyZqi+DMli
	 9Hf1KDUJCLWpw==
Received: from [100.77.12.232] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 144A03782167;
	Thu, 18 Jul 2024 08:31:46 +0000 (UTC)
Message-ID: <e34f1a0a81de24437be7f582c719d3f128d44b51.camel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
From: Christopher Obbard <chris.obbard@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org, Kever
 Yang <kever.yang@rock-chips.com>,  Collabora Kernel Mailing List
 <kernel@collabora.com>
Date: Thu, 18 Jul 2024 09:31:45 +0100
In-Reply-To: <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
	 <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
	 <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_013148_077460_A9FA06DF 
X-CRM114-Status: GOOD (  16.30  )
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

SGkgRHJhZ2FuLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKT24gVGh1LCAyMDI0LTA3LTE4IGF0
IDA2OjM2ICswMjAwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gQ2hyaXN0b3BoZXIsCj4g
Cj4gT24gMjAyNC0wNy0xNyAxODo0NiwgQ2hyaXN0b3BoZXIgT2JiYXJkIHdyb3RlOgo+ID4gQWRk
IGJpbmRpbmcgZm9yIHRoZSBGaXJlZmx5IENvcmUtUFgzMC1KRDQgU29NIHdoZW4gdXNlZCBpbiBj
b25qdW5jdGlvbgo+ID4gd2l0aCB0aGUgTUItSkQ0LVJLMzMyOCAmIFBYMzAgYmFzZWJvYXJkLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlzLm9iYmFyZEBj
b2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiDCoERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDYgKysrKysrCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ID4gYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+IGluZGV4IDFlZjA5ZmJmZGZhZjUu
LjMzY2E4MDI4YmMxNTEgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ID4gQEAgLTE0OCw2ICsxNDgsMTIgQEAg
cHJvcGVydGllczoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGVuZ2ljYW0scHgz
MC1jb3JlCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxweDMwCj4g
PiAKPiA+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IEZpcmVmbHkgQ29yZS1QWDMwLUpENCB3
aXRoIE1CLUpENC1QWDMwIGJhc2Vib2FyZAo+ID4gK8KgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBmaXJlZmx5LHB4MzAtbWItamQ0Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgzMC1jb3JlLWpkNAo+IAo+IFNpbWls
YXJseSB0byBob3cgSSBzdWdnZXN0ZWQgdGhlIG5ldyBkdHMoaSkgZmlsZXMgdG8gYmUgbmFtZWQs
IFsxXQo+IHRoZSBtb2RlbCBuYW1lcyBzaG91bGQgYmUgbmFtZWQgbGlrZSB0aGlzOgo+IAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgzMC1qZDQtY29yZQo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgzMC1qZDQtY29yZS1tYgoKSSBzdXBw
b3NlIHRoZSBvcmRlciBzaG91bGQgYmUgdGhlIG90aGVyIHdheSBhcm91bmQgdG8gbWF0Y2ggb3Ro
ZXIgZW50cmllcywgZS5nCmZpcmVmbHkscHgzMC1qZDQtY29yZS1tYiBmaXJzdD8KCkNocmlzCgo+
IAo+IFRoaXMgd291bGQgYWxzbyBmb2xsb3cgdGhlICJpbmhlcml0YW5jZSBncmFwaCIgcGF0dGVy
biwgc28gdG8gc3BlYWsuCj4gCj4gWzFdIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzM4ZDdiN2U5YWI3MWJmMWIwODE3ZTY2NmY0MjMzYjllQG1hbmphcm8ub3JnLwo+
IAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxweDMwCj4gPiArCj4g
PiDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogRmlyZWZseSBGaXJlZmx5LVJLMzI4OAo+ID4g
wqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZW51bToK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
