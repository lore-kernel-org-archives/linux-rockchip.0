Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC368CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 23:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ra9oIg4sdc8QbbXQHUS4UUcp0rXnr2YG9rpIaQds1jQ=; b=u8iFcPS2+7jQFS
	MIqwNYihsog9Ry3Lwz+37m7ouq7F7mwTmmIJX5ZxJxG5vwtU6/DNmmTuN1khkG32jk4FzbQZEepwB
	3gSdJ4kzx8aovy4FbSz+hWLRZ8z1ScxhfiZlsybkfhAHBlGDpIgED+agmsRqJzvsoHh25YXYbrPHf
	GCI+ScWW/XLe9Y43SRE+uw8V2IT2JzAyF/Isl/s9xZk/SEEdiITpWTNJq6Duxrmrrw1mDtg/K0hpD
	T12ISkodbVXFb6AXCeK53s4gbraHDGwEnCeUdkTDF6I9m6ZMkzpALki5u0IjOF9q7zzMpKLlY1Wnk
	RpUd71YX1PE5GYn0jRWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGn6u-0000000EcVU-3yqG;
	Wed, 05 Nov 2025 23:40:16 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGn6s-0000000EcUC-1g3Q
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 23:40:16 +0000
X-QQ-mid: zesmtpip3t1762385933t7f24b51e
X-QQ-Originating-IP: jT53XK8v121mS/zobdecZzFwB1tEZfE3MKKGVRWywe8=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 07:38:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5895672341378937030
Message-ID: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Date: Thu, 6 Nov 2025 08:38:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Of2cEohDBRJByV0Ccw7LbWaVloFU7dxuzE2u26KltGM0d6sYeee3RSBS
	Op2yDWsZ1GjHEmRrPTpietjXjKb0SHYmIWFRTM1FAfvx5q7i0vCgLovthjp8ZXKLfdXskSM
	5Uy/k68a5LJ3RWeTyE+lGgCjXwaFq+LEUwRtj3UOEdEBPIwhR8kImoddybpzkoDuqp7zqSv
	rX1cl9NLyfbC98rcCsbpEXm8fytZLGZxlnVEo6jVoR49Px5nLs8wad7sG/shthyUi0W003P
	EoS1O31wQu59fdTBFqLkrLaNnK8bRv4OLt4LVtpl9cxwj20q0XJIlvBpsodMhWijNH5lvjq
	QCPQzkqrANF8NF6KGg0w/fKsU+jBOfWH86m74hlrdVZ8XFOlnEzVLpL5NXh8q092SbrUgNT
	miXguEDuR7jPXzEdh8hVHOSdMP8l6gwTcpf0WHLXpp8Zom0tPgWImTiKgp2f7V5gjlBH4A5
	DHTaX2pxm3r26qX7lvN2NU/3dUIYcbDqhI9y6PU3EQ88y03XiWFPZgUesSBTvschss9guyD
	I2WCRl8yIffiK7FG9AqweScFqcvBV5umhyAw7Eh+7MPc9G6WyiasPxjrudlI0Ry5sXTo6gG
	3KGyp81CR4cycQrWSaE7hjlCpznw4SddNX9EilY3YLuzeLFXP3/o0OdXP+JknwgWzHRlxdM
	F1HToXmXlX9uGv3wb9LbtAhU8ru4EenlsGUyNfWdQVIkkOo+glh5VxAnrrz5mrom8eC4MJO
	wJ/9dElrnAp6JbOtivdwoscLrbCsXkek8JYWpcznIxP9+1trgc6kyCEdaVw8GqpdhhltCMz
	sQerzT0lyfmR2uDeeRgafwtE9X9rqf/QFEZ5Etd2GGZEhFw7Ji21IM2iA71Gfws6cBBgHxu
	W+YNtXAH7SROkdo0ePHPgHyui+8sh6lUNpwbbsvWFlvKDC96vqm+He/6SkCJOo9Ve664IBm
	LCrCdDm4MXXNBcmTgJuIQokQu8xxjtndD3t0UI2F4dfAhEJvDd4zkHIb4IPvm+O9lgSYP8z
	q3uE2fzg==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_154015_325227_3BFBB80F 
X-CRM114-Status: GOOD (  10.29  )
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

SGkgSmltbXksCgpPbiAxMS82LzI1IDAzOjI3LCBKaW1teSBIb24gd3JvdGU6Cj4gT24gVHVlLCBO
b3YgNCwgMjAyNSBhdCAxMToxNOKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4g
d3JvdGU6Cj4+Cj4+IFRoZSBSYWR4YSBDTTUgSU8gQm9hcmQgaXMgYW4gYXBwbGljYXRpb24gYm9h
cmQgZm9yIHRoZSBSYWR4YSBDTTUuCj4+Cj4+IFNwZWNpZmljYXRpb246Cj4gCj4+IC0gMXggbWlj
cm9TRCBjYXJkIHNsb3QKPiAKPiBbIHNuaXAgXQo+IAo+PiArCj4+ICsmc2RtbWMgewo+PiArICAg
ICAgIGJ1cy13aWR0aCA9IDw0PjsKPj4gKyAgICAgICBjYXAtbW1jLWhpZ2hzcGVlZDsKPj4gKyAg
ICAgICBjYXAtc2QtaGlnaHNwZWVkOwo+PiArICAgICAgIGNkLWdwaW9zID0gPCZncGlvMCBSS19Q
QTQgR1BJT19BQ1RJVkVfTE9XPjsKPj4gKyAgICAgICBkaXNhYmxlLXdwOwo+PiArICAgICAgIG5v
LXNkaW87Cj4+ICsgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKyAgICAgICBw
aW5jdHJsLTAgPSA8JnNkbW1jX2J1czQgJnNkbW1jX2NsayAmc2RtbWNfY21kPjsKPj4gKyAgICAg
ICBzZC11aHMtc2RyMTA0Owo+PiArICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3MzPjsK
Pj4gKyAgICAgICB2cW1tYy1zdXBwbHkgPSA8JnZjY2lvX3NkX3MwPjsKPj4gKyAgICAgICBzdGF0
dXMgPSAib2theSI7Cj4+ICt9Owo+IAo+IFdoZW4gdXNlZCBhcyBhIFRGIHNsb3QsIHNob3VsZG4n
dCB0aGVyZSBiZSBhICJuby1tbWMiIGFsc28/CgpXZSBoYXZlICJlTU1DIHRvIHVTRC4iCiAgaHR0
cHM6Ly9yYWR4YS5jb20vcHJvZHVjdHMvYWNjZXNzb3JpZXMvZW1tYy10by11c2QKClsgIDIwMi4x
NzY3NTddIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQ5NTAwMDAwSHogKHNs
b3QgcmVxIAo1MjAwMDAwMEh6LCBhY3R1YWwgNDk1MDAwMDBIWiBkaXYgPSAwKQpbICAyMDIuMTc4
NDc3XSBtbWMxOiBuZXcgaGlnaCBzcGVlZCBNTUMgY2FyZCBhdCBhZGRyZXNzIDAwMDEKWyAgMjAy
LjE3OTUzNF0gbW1jYmxrMTogbW1jMTowMDAxIFNMRDY0RyA1Ny42IEdpQgpbICAyMDIuMjA3MzM2
XSBtbWNibGsxYm9vdDA6IG1tYzE6MDAwMSBTTEQ2NEcgNC4wMCBNaUIKWyAgMjAyLjIxMDM3NF0g
bW1jYmxrMWJvb3QxOiBtbWMxOjAwMDEgU0xENjRHIDQuMDAgTWlCClsgIDIwMi4yMTI5NjddIG1t
Y2JsazFycG1iOiBtbWMxOjAwMDEgU0xENjRHIDQuMDAgTWlCLCBjaGFyZGV2ICg1MTE6MSkKCihJ
J20gbm90IHN1cmUgd2h5IGl0IHNheXMgIk5vdCB3b3JrIHdpdGggdGhlIFNEIHNsb3Qgb24gdGhl
IGJvYXJkLiIgSSAKd2lsbCBjaGVjay4pCgo+IFRoYXQncyBob3cgdGhlIFJvY2sgNUEsIDVCLCBh
bmQgNUMgd2VyZSBkZWZpbmVkLgoKSSBoYXZlIHN1Ym1pdHRlZCBhIHBhdGNoIHdpdGhvdXQgIm5v
LW1tYyIgYmVmb3JlLiBJIGludGVuZCB0byBzZW5kIG9uZSAKYWdhaW4gd2hlbiBJIGhhdmUgdGhl
IGNoYW5jZS4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIg
KFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gSmltbXkKPiAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
