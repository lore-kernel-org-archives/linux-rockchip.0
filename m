Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB89C02183
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 11:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iin/ynTlS5XotCuHJOjVIh26uWD+Gu1gWyPzFukqWhI=; b=4eG6Hm69eBp4d5
	4/y0i9zGZDnzKPC4tV5bbF9B23pPOSTuwCmiIzKOUGVoxgfA6B+7b9H0SyGqbicG73kxRAM+hiD0Q
	dnTKNGzGgQtlUoWpXTBG9lTKTIqNu/1qkE/jj12gtjvbPNhWqhgjjjjv6oJstGacZ+s1pQyR1DvX6
	BYj+8Li5d8Adw0RljGrmy4PDKyUf2ton1MsyYxK2HhhOK4zwMQyoqZtHOZ1v7oSI0tFoAgu+cZnS+
	gD9AQyDpSG8K4u4OrSyMFMGDYk8EORHVGa+M3XczicHcFahbZ2Dc975vfJonHlo2Vw/v2sFiQaxGo
	6p6GvjPsBxNlLPicvrBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZTJ0-00000003mmv-0THR;
	Sun, 19 Jan 2025 11:17:26 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZTHf-00000003meQ-0nqn;
	Sun, 19 Jan 2025 11:16:07 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-21675fd60feso78059335ad.2;
        Sun, 19 Jan 2025 03:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737285362; x=1737890162; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jFwAN4NPK1DZJMX46y1FOD2OnkFuCtYDMQ81C7qA/Ns=;
        b=aMROngmIHXUAv0JKVoU3oUJlkVXpMjxoXuh8koVE9bjLV6ROPvGpvUwXSFzk8o6H72
         WsihlFCc0eQR2wNEVmQcbcIPqTm9XDeDzyJBmHxKkTzmUvI0xgcfC146EhP8KJA9gj2W
         p8+ZNt6STzj3mMoT618MmuSIMYS85ZYck7QlfkoYR9v+v1NK9R54UVOUbR+/EsRqJy1i
         8mBE1M9tttf8j/o+N+J3ni4Jg1tX4q7rVSiDIwNiP7Rvq1BuqIde8OVqM2lveCEja32a
         dGzxDFLM3nBmqkjcUl4aDooGZgIUcCgz9gf7K9Djf9uSvGD5HLMYVkQ1xmbJBctGc5ZS
         AnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737285362; x=1737890162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jFwAN4NPK1DZJMX46y1FOD2OnkFuCtYDMQ81C7qA/Ns=;
        b=Oo8Nckcq8oLpjQfpXPZVCFCdMitZTdwiFONkVdd3mgdJ//yh4cv7vPiYTDPe7VEZY0
         qeAsuvefpj/xM/4ptKizq3RTTTTOb1Sg2N9SMGvDy84+EWv93ACmFqCDRkd6lEqkxACb
         I2eLiiSDIrKF18JC2MPgqTlX+9OpCqmQYj53AeSnmNTlsyPII75vXZYK1TnmxS7+ByD/
         nGhpR/pfy67UJ6fPN329qbACQ2jtbWEnnAYkgGLmAgytKlflQxhLppC7Xy/NzOuSVfJJ
         PaRe+PAw7VF4j6uBb4k8c5rUDTPxHeuo5h25VmK8dEOODw2kFP9oO28tHT/gVuUyD+qh
         FCkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTIZDhtGdIZezN2iIDsDIyN1/7ghO6tBNxode4wYTdHHWvx3X4KSwyLtcLYPmkmr4ns+Z1CPR/wtdFqWDnZFY=@lists.infradead.org, AJvYcCXr+5tNPPF6GTSn/iXTClEyxdfNXhTIVqZeQAwmL9YfCNlflG2pWvZ94P/1PNg+AbjSw0fvRsXj9Ig/McYzwMKL@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+20fon7LsYStcimElNyPfratFW2U9vYGtqBsstJ0+58mDYI16
	BOVQsCo0v1BNgil7Q6crwLV+JR57QpHYR0Y9sj3dhb5pB26XsO4Y
X-Gm-Gg: ASbGnct3n4kLUIPAEev1M10I40xVV92G7Ye6FG51xrGgfg/Cb7QsbBo1QPdavD/e39k
	1CCADptbbYisYtQJSuuHkTa1g5ku4TO+z6xPpHm6VXweTA9kULECL+umiIxWR7fva7LS+XQWvyQ
	UXlq6cszIR7bIpKn71tA1Y5WAKAwccC2USGNitKEMzaOQj904wlC0VeBlvW0LF5dfWW76z7ovDv
	aQxbhCsQxW+CSv1HY8DW1o8b8zj4qoAMUy1i77mqYV22iJGGOuEiuTbfoaFhqqivUyapBThzVoP
	eICEj+ISEHx+cuaikDGlvZXPqvKkfTpvaT+l
X-Google-Smtp-Source: AGHT+IHaTt00aOKIg9mcDnsHrjnAg6faqbxOOHMpsfBN2LwzL1GNhhYFrCUK2KkmLZAv0vVu7zGv+Q==
X-Received: by 2002:a17:903:186:b0:216:69ca:772a with SMTP id d9443c01a7336-21c3563ee3fmr144590885ad.53.1737285361827;
        Sun, 19 Jan 2025 03:16:01 -0800 (PST)
Received: from ?IPV6:2408:8362:245d:4738:bc4b:53ff:fead:2724? ([2401:b60:5:867d:3631:b7db:c3f4:aae2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3a87e4sm43606145ad.111.2025.01.19.03.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2025 03:16:01 -0800 (PST)
Message-ID: <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
Date: Sun, 19 Jan 2025 19:15:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: change eth phy mode to rgmii-id for
 orangepi r1 plus lts
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
References: <20250119091154.1110762-1-cnsztl@gmail.com>
 <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_031603_232697_E6D62B4D 
X-CRM114-Status: GOOD (  17.38  )
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

SGkgRHJhZ2FuLAoKT24gMjAyNS8xLzE5IDE3OjU0LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVs
bG8gVGlhbmxpbmcsCj4gCj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guwqAgUGxlYXNlLCBzZWUgYSBj
b21tZW50IGJlbG93Lgo+IAo+IE9uIDIwMjUtMDEtMTkgMTA6MTEsIFRpYW5saW5nIFNoZW4gd3Jv
dGU6Cj4+IEluIGdlbmVyYWwgdGhlIGRlbGF5IHNob3VsZCBiZSBhZGRlZCBieSB0aGUgUEhZIGlu
c3RlYWQgb2YgdGhlIE1BQywKPj4gYW5kIHRoaXMgaW1wcm92ZXMgbmV0d29yayBzdGFiaWxpdHkg
b24gc29tZSBib2FyZHMgd2hpY2ggc2VlbSB0bwo+PiBuZWVkIGRpZmZlcmVudCBkZWxheS4KPj4K
Pj4gRml4ZXM6IDM4N2IzYmJhYzVlYSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgWHVubG9u
ZyBPcmFuZ2VQaSBSMSAKPj4gUGx1cyBMVFMiKQo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
ZyAjIDYuNisKPj4gU2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNv
bT4KPj4gLS0tCj4+IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3Jhbmdl
cGktcjEtcGx1cy1sdHMuZHRzIHwgMyArLS0KPj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c8KgwqDCoMKgIHwgMSArCj4+IMKgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHNpwqDCoMKg
IHwgMSAtCj4+IMKgMyBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQKPj4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4gaW5kZXggNjdjMjQ2YWQ4
YjhjLi5lYzJjZTg5NGRhMWYgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cwo+PiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4gQEAg
LTE3LDggKzE3LDcgQEAgLyB7Cj4+Cj4+IMKgJmdtYWMyaW8gewo+PiDCoMKgwqDCoCBwaHktaGFu
ZGxlID0gPCZ5dDg1MzFjPjsKPj4gLcKgwqDCoCB0eF9kZWxheSA9IDwweDE5PjsKPj4gLcKgwqDC
oCByeF9kZWxheSA9IDwweDA1PjsKPj4gK8KgwqDCoCBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4g
Cj4gU2hvdWxkbid0IHRoZSAidHhfZGVsYXkiIGFuZCAicnhfZGVsYXkiIERUIHBhcmFtZXRlcnMg
YmUgY29udmVydGVkCj4gaW50byB0aGUgInR4LWludGVybmFsLWRlbGF5LXBzIiBhbmQgInJ4LWlu
dGVybmFsLWRlbGF5LXBzIiBwYXJhbWV0ZXJzLAo+IHJlc3BlY3RpdmVseSwgc28gdGhlIE1vdG9y
Y29tbSBQSFkgZHJpdmVyIGNhbiBwaWNrIHRoZW0gdXAgYW5kCj4gYWN0dWFsbHkgY29uZmlndXJl
IHRoZSBpbnRlcm5hbCBQSFkgZGVsYXlzPwoKVGhlIGRvY3VtZW50YXRpb25bMV0gc2F5cyAie3Qs
cn14LWludGVybmFsLWRlbGF5LXBzIiBkZWZhdWx0IHRvIDE5NTAgYW5kIAp0aGF0IHZhbHVlIGFs
cmVhZHkgd29ya3MgZmluZSBvbiBteSBib2FyZC4KCjEuIApodHRwczovL3d3dy5rZXJuZWwub3Jn
L2RvYy9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21vdG9yY29tbSUyQ3l0
OHh4eC55YW1sCgpUaGFua3MsClRpYW5saW5nLgoKPiAKPj4gwqDCoMKgwqAgc3RhdHVzID0gIm9r
YXkiOwo+Pgo+PiDCoMKgwqDCoCBtZGlvIHsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzCj4+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy5kdHMKPj4gaW5kZXgg
MzI0YThlOTUxZjdlLi44NDZiOTMxZTE2ZDIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzCj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzCj4+IEBA
IC0xNSw2ICsxNSw3IEBAIC8gewo+Pgo+PiDCoCZnbWFjMmlvIHsKPj4gwqDCoMKgwqAgcGh5LWhh
bmRsZSA9IDwmcnRsODIxMWU+Owo+PiArwqDCoMKgIHBoeS1tb2RlID0gInJnbWlpIjsKPj4gwqDC
oMKgwqAgdHhfZGVsYXkgPSA8MHgyND47Cj4+IMKgwqDCoMKgIHJ4X2RlbGF5ID0gPDB4MTg+Owo+
PiDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kKPj4gYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kKPj4gaW5k
ZXggNGYxOTM3MDRlNWRjLi4wOTUwOGUzMjRhMjggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+PiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kK
Pj4gQEAgLTEwOSw3ICsxMDksNiBAQCAmZ21hYzJpbyB7Cj4+IMKgwqDCoMKgIGFzc2lnbmVkLWNs
b2NrcyA9IDwmY3J1IFNDTEtfTUFDMklPPiwgPCZjcnUgU0NMS19NQUMySU9fRVhUPjsKPj4gwqDC
oMKgwqAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmZ21hY19jbGs+LCA8JmdtYWNfY2xrPjsK
Pj4gwqDCoMKgwqAgY2xvY2tfaW5fb3V0ID0gImlucHV0IjsKPj4gLcKgwqDCoCBwaHktbW9kZSA9
ICJyZ21paSI7Cj4+IMKgwqDCoMKgIHBoeS1zdXBwbHkgPSA8JnZjY19pbz47Cj4+IMKgwqDCoMKg
IHBpbmN0cmwtMCA9IDwmcmdtaWltMV9waW5zPjsKPj4gwqDCoMKgwqAgcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
