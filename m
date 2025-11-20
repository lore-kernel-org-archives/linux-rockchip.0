Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCAD3CF8856
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 12:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxJnrKi861qWzrvl3rYVKe1ly/ih/B1SmKcuouVPJ5c=; b=Ilee3eH/H7Ewey
	MLXUFxmW5BBoje0dpzQ5DgwU6c6BTZogEiC+iQ4+pa+DpNQeb1j7PEmsrZuysIWWdyEL6F4sez9Z0
	RNvGeu8JbwVujt8e30V4k4JR881aIyX8xALJLoNBnV9SE/ypOCnbY8Ly2Hx7Zir9ziHvSQzLcY+34
	PnQonGMcWEcJKQKneJ7yhEyjKweYMvkZ8dlOthBg5hmJxKqDuyl0fCimbU0TMxGdaxeynFrPC64fL
	riswCMMMsbLwnXbCVZoVFzJ9+rTcDXTM0Bzx1ylgIkNqB5fmUvUWALkcW4oriYJyKCzGz/hme36yO
	To8Ob6IiNojZ8o14ThgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM4Fx-00000006gqm-3KKy;
	Thu, 20 Nov 2025 12:59:25 +0000
Received: from mail-m49245.qiye.163.com ([45.254.49.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM4Fv-00000006gpx-0UrC;
	Thu, 20 Nov 2025 12:59:24 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4ca15e8;
	Thu, 20 Nov 2025 20:59:17 +0800 (GMT+08:00)
Message-ID: <a73ea843-6896-4153-9a2b-668a91adba5d@rock-chips.com>
Date: Thu, 20 Nov 2025 20:59:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: remove mmc max-frequency for
 100ASK DshanPi A1
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
 <20251120120011.279104-2-amadeus@jmu.edu.cn>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251120120011.279104-2-amadeus@jmu.edu.cn>
X-HM-Tid: 0a9aa15906e609cckunmccfeb5ed18445b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUkdSFZLSRoeSxlJGU8dGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hJAe7CO0ZSEZNO0KDe8CoVAiS/i+TOEMzk+xlDPP7dtwU5rI7mHgSjXkcIRlCwszrhOqlBh/KGk9OQFCia3hnH2R24GEGQzsr6qmmrtSC7uzRukV27Iz/XsZ21GsCOegP4VASBnS06u5jtjeCgwobC/MqGPBeyn+I0auIKIaVJM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=47n9smvsUtbRtdfwye4aUg0o9m4HmyLtFLAnv1nbXP4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_045923_362894_86BE5134 
X-CRM114-Status: GOOD (  11.93  )
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

5ZyoIDIwMjUvMTEvMjAg5pif5pyf5ZubIDIwOjAwLCBDaHVrdW4gUGFuIOWGmemBkzoKPiBUaGUg
bWF4LWZyZXF1ZW5jeSBwcm9wZXJ0eSBpcyBhbHJlYWR5IGRlZmluZWQgaW4gdGhlIG1tYwo+IG5v
ZGUgb2YgcmszNTc2LmR0c2kuIFJlbW92ZSB0aGUgcmVkdW5kYW50IGRlZmluaXRpb24uCj4gCgpS
ZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IFNpZ25l
ZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KPiAtLS0KPiAgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1kc2hhbnBpLWExLmR0cyB8IDIg
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni0xMDBhc2stZHNoYW5waS1hMS5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni0xMDBhc2stZHNoYW5waS1hMS5k
dHMKPiBpbmRleCBjYjA0YWI5NmQxZTguLmY5ZGM0ZmEzOTE2NyAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni0xMDBhc2stZHNoYW5waS1hMS5kdHMKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni0xMDBhc2stZHNoYW5waS1h
MS5kdHMKPiBAQCAtNjg5LDcgKzY4OSw2IEBAICZzYWk2IHsKPiAgICZzZGhjaSB7Cj4gICAJYnVz
LXdpZHRoID0gPDg+Owo+ICAgCWZ1bGwtcHdyLWN5Y2xlLWluLXN1c3BlbmQ7Cj4gLQltYXgtZnJl
cXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4gICAJbW1jLWhzNDAwLTFfOHY7Cj4gICAJbW1jLWhzNDAw
LWVuaGFuY2VkLXN0cm9iZTsKPiAgIAluby1zZGlvOwo+IEBAIC03MDMsNyArNzAyLDYgQEAgJnNk
bW1jIHsKPiAgIAljYXAtbW1jLWhpZ2hzcGVlZDsKPiAgIAljYXAtc2QtaGlnaHNwZWVkOwo+ICAg
CWRpc2FibGUtd3A7Cj4gLQltYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4gICAJc2QtdWhz
LXNkcjEwNDsKPiAgIAl2bW1jLXN1cHBseSA9IDwmdmNjXzN2M19zMD47Cj4gICAJdnFtbWMtc3Vw
cGx5ID0gPCZ2Y2Npb19zZF9zMD47CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
