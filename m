Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47474E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 06:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBMhIokd+dtZw/EdVCx3AmMztQ21Th0b11nUGnmRnHk=; b=Z6cEQuxXGwRbqS
	ASOEhbLbC3Diq/vkDMT9Z/k5encB5LxA9Gii3UN3iBasZou8TUvffqySNtjzqz3KKz6l64npLKtM7
	btn/uYLw8rrQngEzUtW9z0BGPUz6ArklyGmY4Ndfeqesou+SqzSEcpSoaiwDdv83ByabhZwIhfyLj
	LflmZTe78FrYoUArUBbzEN8aDDNS109jPpXH/jj9JhrBc96dDGvqxv9W4glVZ7kJ8C2uCarcrCjM4
	F01l35yLT1pkXZDCuQ2mksIV5xx1U5+GOmQ0YI4P5TC/ueu6K6FHdi9Zyq2DC0KzjwPfe3Wup+ryH
	DKf7TPipGoGhJ/aPZs9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWsJ-000000047fM-2P5y;
	Fri, 20 Dec 2024 06:52:39 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWsF-000000047ec-3k8G
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 06:52:38 +0000
X-QQ-mid: bizesmtpip4t1734677520tvhj3mp
X-QQ-Originating-IP: ScAdgzpukgJe7kHc8YbgPnAa6+sbJbTbWgnScSiXjr0=
Received: from [IPV6:240f:10b:7440:1:5eab:b2ed ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 20 Dec 2024 14:51:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13909621516329389833
Message-ID: <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
Date: Fri, 20 Dec 2024 15:51:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
From: FUKAUMI Naoki <naoki@radxa.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
Content-Language: en-US
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NKv2G1wnhDBnnfx3f8oLKJLkyq080cAxOO/W8uph5eR63hDF0i+tzzAX
	rAX2FHGCeC7B9evEuawRpHVv9avbE1j0nVKL92/7c8LEGfulRtHfgPv10PHIiz59u3Ez0IB
	0DzAaq5YmgoydCG1tYSlDNFtfiRhwiRfG5++crnj5CWlPAm3nXfrW6Jv4g0bUJRGKan45zo
	qHwsWjwI8PYtHQ1OLcWj9oGQ4U88fK84ZFDAckBDNLC72URMJcEVsfJvNUxOHFEQ43vAbQR
	GqjJyGUzpXk3CrRHPzKLwa0fJs3xU6UZdttND9+4yO45dUoczFcnn2A2fjVsXXNfU+2itlw
	N5XP3Y9jSnyUm6QGJ4N6zd8WZLlqQH5CPTEYSSu5hT3Ryt/P4Djc65WcFP79AhtBeoBMiNb
	bHuN3KEDCum+EsaDA7/N64R19F7o5sAjaUsdFDA5LxqlPRm4VsJwbquXjntF+g099CVczh5
	/BrO+mUIwcEFwJabGG8/BOT0jWUmkrLcEDB55eR7aH1VW7fhTh4A598XhFkOD+Fi6ey4h21
	p65PxFbyFpopN+B7JzcHILwDI8m3aMv02MDeoaJVwhMyX6KlEZgs8ozJYfeAhn/Yz8XwisY
	kDEq13f/gmCa4QvA+zfTeV0UFFcCdFM6uA/LR59HYbxpjtk+vVB6C5xRpd9rGbOpN08avWC
	Es/5fYSx+X/U6qzUZFJEy1N/OJm2pG8ZY8E7/afkIKQ21id0a4PuYlGM9j7PSXwBOmNN/K+
	K/M8UuVtSpVzoSSB42zqzhPbOVsFh4rbZrjrKZg2Pj4X4qmP1hA9bT8njjsGAnc5bDtyJrl
	pmjtN9d9eWY/QdhOs63vjYCbSAZYzr/pxS60H3kczu5xQwqtgeMB8oCCrEjRy3lfsraWDNM
	y3HpQzpEbWwA2/IznJVwIGcGDxeL5fnGbbfbuMr8fYNH+3tR/S1RqkxvoPlVBlZvjjEcmqP
	KMyodqaub9hKQjJ0SS+V50u6F
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_225236_411794_6B1DD637 
X-CRM114-Status: GOOD (  14.33  )
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

SGkgS3J6eXN6dG9mLAoKQ291bGQgeW91IHBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsPwooTm90
IGZvciBtZSwgYnV0IGZvciBldmVyeW9uZSkKCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFv
a2kKUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCk9uIDEyLzE3LzI0IDEwOjEx
LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+IE9uIDEyLzE2LzI0IDIyOjM4LCBLcnp5c3p0b2YgS296
bG93c2tpIHdyb3RlOgo+PiBPbiAxNi8xMi8yMDI0IDEyOjMwLCBGVUtBVU1JIE5hb2tpIHdyb3Rl
Ogo+Pj4gVXNlIGNvbnNpc3RlbnQgbmFtZSB3aXRoIG90aGVyIHJlZ3VsYXRvcnMuIE5vIGZ1bmN0
aW9uYWwgY2hhbmdlLgo+Pj4KPj4+IEZpeGVzOiAzZGRmNWNkYjc3ZTYgKCJhcm02NDogZHRzOiBy
b2NrY2hpcDogYWRkIFJhZHhhIFJPQ0sgNUMiKQo+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBO
YW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pj4gLS0tCj4+PiBDaGFuZ2VzIGluIHY1Ogo+Pj4gLSBS
ZXdvcmQgY29tbWl0IG1lc3NhZ2UKPj4+IENoYW5nZXMgaW4gdjQ6Cj4+PiAtIHJld29yZCBjb21t
aXQgbWVzc2FnZQo+Pj4gQ2hhbmdlcyBpbiB2MzoKPj4+IC0gbm9uZQo+Pj4gQ2hhbmdlcyBpbiB2
MjoKPj4+IC0gbmV3Cj4+PiAtLS0KPj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy1yb2NrLTVjLmR0cyB8IDYgKysrLS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMgYi9hcmNoLyAKPj4+IGFy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4+IGluZGV4IDg1NTg5
ZDFhNmQzYi4uNjFkNzVhYjUwM2IyIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4+IEBAIC03NiwxMyArNzYsMTMgQEAg
cHdtLWZhbiB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcHdtcyA9IDwmcHdtMyAwIDYwMDAwIDA+
Owo+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4gLcKgwqDCoCBwY2llMngxbDJfM3YzOiByZWd1bGF0b3It
cGNpZTJ4MWwyLTN2MyB7Cj4+PiArwqDCoMKgIHZjYzN2M19wY2llMngxbDI6IHJlZ3VsYXRvci12
Y2MzdjNfcGNpZTJ4MWwyIHsKPj4KPj4gTm8sIG5laXRoZXIgZXhwbGFpbmVkLCBub3IgY29ycmVj
dC4gU2VlIERUUyBjb2Rpbmcgc3R5bGUuCj4+Cj4+IFBsZWFzZSB1c2UgbmFtZSBmb3IgYWxsIGZp
eGVkIHJlZ3VsYXRvcnMgd2hpY2ggbWF0Y2hlcyBjdXJyZW50IGZvcm1hdAo+PiByZWNvbW1lbmRh
dGlvbjogJ3JlZ3VsYXRvci1bMC05XXZbMC05XScKPj4KPj4gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0LyAKPj4gdHJlZS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yL2ZpeGVkLXJlZ3VsYXRv
ci55YW1sPyAKPj4gaD12Ni4xMS1yYzEjbjQ2Cj4gCj4gJ3JlZ3VsYXRvci1bMC05XXZbMC05XScg
aXMgcHJlZmVycmVkLCBidXQgJ3JlZ3VsYXRvci1bMC05YS16LV0rJyBpcyBhbHNvIAo+IHBlcm1p
dHRlZCwgcmlnaHQ/Cj4gCj4gaS5lLiByZWd1bGF0b3ItdmNjM3YzX3BjaWUyeDFsMiBzaG91bGQg
YmUgcmVndWxhdG9yLXZjYzN2My1wY2llMngxbDIKPiAKPiAKPiBPciwgc2hvdWxkIHdlIHJldmVy
dCBiZWxvdyBwYXRjaCBhbmQgdXNlICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nPwo+IAo+ICDCoGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnLyAKPiBhbGwvMGFlNDA0OTMtOTNlOS00MGNkLTljYTktOTkw
YWUwNjRmMjFhQGdtYWlsLmNvbS8KPiAKPiBJcyAncmVndWxhdG9yLTB2MCcgdmFsaWQ/Cj4gSXMg
J3JlZ3VsYXRvci0xMnYwJyBpbnZhbGlkPwo+IAo+IEhvdyBzaG91bGQgd2UgaGFuZGxlIG11bHRp
cGxlIDF2OC8zdjMvNXYwIHJlZ3VsYXRvcnM/Cj4gCj4gQXJlIGV4YW1wbGVzIGluIGZpeGVkLXJl
Z3VsYXRvci55YW1sIHZhbGlkPwo+ICdyZWd1bGF0b3ItbmFtZScgc2hvdWxkIGJlICdbMC05XXZb
MC05XScgZXZlbiBpZiB0aGVyZSBpcyBzYW1lIG5hbWU/Cj4gCj4gQmVzdCByZWdhcmRzLAo+IAo+
IC0tIAo+IEZVS0FVTUkgTmFva2kKPiBSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRk
Lgo+IAo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+Pgo+IAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
