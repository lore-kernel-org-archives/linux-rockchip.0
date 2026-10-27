Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB26606A326
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IxbCJI5Z;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=ejPHUn6R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=C7Z9zJ5V43eGhWdTALHz4SBtPNSMQfSdQtEdxJP0AXg=; b=IxbCJI5ZiV5eaWfBjc0cOj8+Fm
	jG48V5bTZqWXTyUNVogC1FT2zIzoCCJPPUnYNZa4icO1l2aBAHzatlR6k1pW68yEdbMTLngO1oxVQ
	VYUTHq0pQJ3EiTTBIUH3Xckd7p5KmKND9ecIOMGapz7Vi179rvj63rfrzVdD32+96gI6NL0gk7Fo+
	Acn8RDUaW5v8wgJzdVO2BB1NjDphsuKGixn3Ax1zqa+YUFCzBzWXr64wg50kQSSytbhviz7gWgMX6
	F/eEVukMqd6QwaAGznCIZKF4/1Ss5BZiA6Yz8T7LR8I3Aog4/QZC0zbYvmmjZuiHUoLhq67Oo4N4s
	kyt+VyUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLhgu-00000004y2f-40Kc;
	Tue, 27 Oct 2026 13:58:16 +0000
Received: from mail-m83249.xmail.ntesmail.com ([156.224.83.249])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLhgr-00000004y21-4AI1;
	Tue, 27 Oct 2026 13:58:16 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5287e04b6;
	Tue, 27 Oct 2026 21:58:09 +0800 (GMT+08:00)
Message-ID: <38baaf87-4d5c-48bc-a11f-a5b6c04c20a8@rock-chips.com>
Date: Tue, 27 Oct 2026 21:58:07 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sergey Bostandzhyan <jin@mediatomb.cc>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SDIO Wi-Fi on NanoPi R2S
 Plus
To: Deomid rojer Ryabkov <rojer@rojer.me>, Heiko Stuebner <heiko@sntech.de>
References: <20261023235959.2988087-1-rojer@rojer.me>
 <20261023235959.2988087-3-rojer@rojer.me>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261023235959.2988087-3-rojer@rojer.me>
X-HM-Tid: 0aa17da7790103a4kunmcef2bd90e493
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaQkpCVktPHk1NTksZTUNNH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ejPHUn6RV6C6gpkCiecTD0LdymLzVdtND/i7tW+egwUwmUnVzgwg1PuoPjdEnE2WzH7LaBj1GyIIUE4DDgWf3rNIFIKLdN6tvHEb3Z+LKLFSWVwyWiCt/civ7J17a+XQ7mdCOCGie+xdPZJ8Pzv6aMTpvJfEauBvYDDLli8VQyI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=kgs6DMIElefIDmmG0Lqe7pZUKcoCtWm8n8LIAs8gWNY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_065814_326279_5B963267 
X-CRM114-Status: GOOD (  19.08  )
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

SGkgRGVvbWlkCgrlnKggMjAyNi8xMC8yNCDmmJ/mnJ/lha0gNzo1OSwgRGVvbWlkIHJvamVyIFJ5
YWJrb3Yg5YaZ6YGTOgo+IFRoZSBOYW5vUGkgUjJTIFBsdXMgaGFzIGFuIE0uMiBFLWtleSBzbG90
IHdpcmVkIHRvIHRoZSBzZG1tY19leHQKPiBjb250cm9sbGVyIGluIDQtYml0IFNESU8gbW9kZSwg
d2hlcmUgRnJpZW5kbHlFbGVjIGZpdCBhbiBvcHRpb25hbAo+IEZuLUxpbmsgNjIyMkItU1JDIChS
ZWFsdGVrIFJUTDg4MjJDUykgbW9kdWxlOgo+IAo+ICAgIC0gU0RJTyBzaWduYWxsaW5nIGF0IGEg
Zml4ZWQgMS44ViAoVkNDXzE4KQo+ICAgIC0gV0lGSV9SRUdfT04gb24gR1BJTzNfQjAsIDMya0h6
IHNsZWVwIGNsb2NrIGZyb20gdGhlIFJLODA1IENMS09VVDIKPiAKPiBFbmFibGUgdGhlIGNvbnRy
b2xsZXIgYW5kIGFkZCB0aGUgcG93ZXIgc2VxdWVuY2UuIFRoZSBTRElPIHBpbnMgbmVlZAo+IDht
QSBkcml2ZSBzdHJlbmd0aCBmb3IgU0RSMTA0IHR1bmluZyB0byBzdWNjZWVkLCBhcyBpbiB0aGUg
dmVuZG9yCj4gZGV2aWNlIHRyZWUgWzFdOyB3aXRoIHRoZSBTb0MgZGVmYXVsdCBvZiA0bUEgbm8g
c2FtcGxlIHBoYXNlIHdvcmtzLgo+IAo+IE9uIGJvYXJkcyB3aXRob3V0IHRoZSBtb2R1bGUgdGhl
IGNvbnRyb2xsZXIgZ2l2ZXMgdXAgYWZ0ZXIgYWJvdXQgMC4ycwo+ICgibW1jMjogRmFpbGVkIHRv
IGluaXRpYWxpemUgYSBub24tcmVtb3ZhYmxlIGNhcmQiKTsgbm90aGluZyBlbHNlIGlzCj4gYWZm
ZWN0ZWQuCj4gCj4gV2l0aCB0aGUgbW1jIGNvcmUgY2hhbmdlIGZvciB0aGUgbW9kdWxlJ3MgQ01E
MTEgaGFuZGxpbmcgYXQgYSBmaXhlZAo+IDEuOFYgWzJdLCB0aGUgbW9kdWxlIGlzIHR1bmVkIHRv
IFNEUjEwNCBhdCAxNTAgTUh6IGFuZCB3b3JrcyB3aXRoIHRoZQo+IHJ0dzg4Xzg4MjJjcyBkcml2
ZXI7IHdpdGhvdXQgaXQsIGl0IHJ1bnMgaW4gaGlnaC1zcGVlZCBtb2RlIGF0IDUwIE1Iei4KPiAK
PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL2ZyaWVuZGx5YXJtL2tlcm5lbC1yb2NrY2hpcC9ibG9i
LzkyMzhkZjlkMjFlODM1YmJhMzVjOGJhNTI0ODc4NDM4NzkzNmNiMmUvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIyLXJldjI0LmR0cyNMMTQ0LUwxNzIKPiBbMl0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW1jLzIwMjYxMDIzMjMyODEzLjI5ODMzNjgt
MS1yb2plckByb2plci5tZS8KPiBTaWduZWQtb2ZmLWJ5OiBEZW9taWQgcm9qZXIgUnlhYmtvdiA8
cm9qZXJAcm9qZXIubWU+Cj4gLS0tCj4gICAuLi4vZHRzL3JvY2tjaGlwL3JrMzMyOC1uYW5vcGkt
cjJzLXBsdXMuZHRzICAgfCA1NiArKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzMyOC1uYW5vcGktcjJzLXBsdXMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cwo+IGluZGV4IDZiYTRhNzRjYjFm
Li5kYjE5YTE4YWU0NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC1uYW5vcGktcjJzLXBsdXMuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtbmFub3BpLXIycy1wbHVzLmR0cwo+IEBAIC0xNyw2ICsxNywxNSBAQCAv
IHsKPiAgIAlhbGlhc2VzIHsKPiAgIAkJbW1jMSA9ICZlbW1jOwo+ICAgCX07Cj4gKwo+ICsJc2Rp
b19wd3JzZXE6IHNkaW8tcHdyc2VxIHsKPiArCQljb21wYXRpYmxlID0gIm1tYy1wd3JzZXEtc2lt
cGxlIjsKPiArCQljbG9ja3MgPSA8JnJrODA1IDE+Owo+ICsJCWNsb2NrLW5hbWVzID0gImV4dF9j
bG9jayI7Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8
JndpZmlfcmVnX29uX2g+Owo+ICsJCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjAgR1BJT19B
Q1RJVkVfTE9XPjsKPiArCX07Cj4gICB9Owo+ICAgCj4gICAmZW1tYyB7Cj4gQEAgLTM0LDMgKzQz
LDUwIEBAICZpb19kb21haW5zIHsKPiAgIAl2Y2NpbzQtc3VwcGx5ID0gPCZ2Y2NfaW9fMzM+Owo+
ICAgCXZjY2lvNi1zdXBwbHkgPSA8JnZjY18xOD47Cj4gICB9Owo+ICsKPiArJnBpbmN0cmwgewo+
ICsJd2lmaSB7Cj4gKwkJd2lmaV9yZWdfb25faDogd2lmaS1yZWctb24taCB7Cj4gKwkJCXJvY2tj
aGlwLHBpbnMgPSA8MyBSS19QQjAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gKwkJ
fTsKPiArCX07Cj4gK307Cj4gKwo+ICsvKgo+ICsgKiBTRFIxMDQgdHVuaW5nIGZhaWxzIHdpdGgg
dGhlIGRlZmF1bHQgNG1BIGRyaXZlIHN0cmVuZ3RoLCB1c2UgOG1BIGxpa2UgdGhlCj4gKyAqIHZl
bmRvciBkZXZpY2UgdHJlZS4KPiArICovCj4gKyZzZG1tYzBleHRfYnVzNCB7Cj4gKwlyb2NrY2hp
cCxwaW5zID0KPiArCQk8MyBSS19QQTQgMyAmcGNmZ19wdWxsX3VwXzhtYT4sCj4gKwkJPDMgUktf
UEE1IDMgJnBjZmdfcHVsbF91cF84bWE+LAo+ICsJCTwzIFJLX1BBNiAzICZwY2ZnX3B1bGxfdXBf
OG1hPiwKPiArCQk8MyBSS19QQTcgMyAmcGNmZ19wdWxsX3VwXzhtYT47Cj4gK307Cj4gKwo+ICsm
c2RtbWMwZXh0X2NsayB7Cj4gKwlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEEyIDMgJnBjZmdfcHVs
bF9ub25lXzhtYT47Cj4gK307Cj4gKwo+ICsmc2RtbWMwZXh0X2NtZCB7Cj4gKwlyb2NrY2hpcCxw
aW5zID0gPDMgUktfUEEwIDMgJnBjZmdfcHVsbF91cF84bWE+Owo+ICt9Owo+ICsKPiArLyogT3B0
aW9uYWwgTS4yIEUta2V5IFNESU8gV2ktRmkgbW9kdWxlIChGbi1MaW5rIDYyMjJCLVNSQywgUlRM
ODgyMkNTKSAqLwo+ICsmc2RtbWNfZXh0IHsKPiArCWJ1cy13aWR0aCA9IDw0PjsKPiArCWNhcC1z
ZC1oaWdoc3BlZWQ7Cj4gKwljYXAtc2Rpby1pcnE7Cj4gKwlkaXNhYmxlLXdwOwoKRHJvcCBkaXNh
YmxlLXdwLgoKT3RoZXJ3aXNlLAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgoKPiArCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiArCW1tYy1wd3JzZXEg
PSA8JnNkaW9fcHdyc2VxPjsKPiArCW5vLW1tYzsKPiArCW5vLXNkOwo+ICsJbm9uLXJlbW92YWJs
ZTsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnNkbW1j
MGV4dF9jbGsgJnNkbW1jMGV4dF9jbWQgJnNkbW1jMGV4dF9idXM0PjsKPiArCXNkLXVocy1zZHIx
MDQ7Cj4gKwl2bW1jLXN1cHBseSA9IDwmdmNjX2lvXzMzPjsKPiArCXZxbW1jLXN1cHBseSA9IDwm
dmNjXzE4PjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
