Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81493C55174
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 01:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nI87AY/zzEYoi8j3asZ4QQqiImMQsexRDE3TbXk2IvQ=; b=bya/6EwqAnQokL
	8wiu6x77f18krsvbXpnDeNi7yxNA1nJV42IxHBEt00Y/Oqjn9IHEc5IWNfxP44+W7CQ2Hg36phlKP
	Q63D+odf+y5i4eftzFPQbclF3H5hiHFQ/tUiQBhIK1K/fbjWrs95C5FfDNzzgn5dTm05blyGF+Ozq
	u/hlvHIWnmW+xEEboOvqRrFb9hEMnIaVCv0GTe9XlcMJbwi+WMuAdKNg5wgvpwLw9wK+xL0aQHSZw
	cSjMK176Nd+gAQ63gnxsrSn+kkH6nedwzEY0HO4Wa2cfmgOW/0flhyJwdVJIN5sSnrae6p4hvA4be
	EnKb8PXo+O6IjVgEE7tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrn2d-00000004mAC-26JS;
	Thu, 06 Aug 2026 01:37:03 +0000
Received: from mail-vk1-xa2a.google.com ([2607:f8b0:4864:20::a2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrn2b-00000004m9V-1z9z
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 01:37:02 +0000
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-5c3163a88a1so443201e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 18:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785980220; cv=none;
        d=google.com; s=arc-20260327;
        b=Lgj8cJQuD1LILf5EjjRSsxpLZ2SgNj9LT6hSwkvyrVk8KxIo25/haHbZ3nWmg5Snr5
         exPHWfKrJwkS/thajgwoOCwqExRJVjSF4R5miQAOkUMHf3byIjZTWSsSe0yPqVaz/W6Z
         UTDZ1ZYXp4wd0HFBhr3OhSykrPRRvfmIDptD4qvo+jLgtQsgXe+9yTo7r06zb4GbZ1Mf
         iKSdAa0+/s6MuNXLcY8hRvXif1QymhMX5C3YhxCIJqlSI9y6eGbv7+zGC1/dzm4Y+G4j
         WMM3IlEsOM+yK929bifDrRRwI0y/H0ozJvdJ2EDjKUbwrqVgf3M6ug7J5nmBT5Dur4iS
         /0cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CmtSbhR0umzoPCNMklVcndk+0d6Cbu71OPbe5cqrdZM=;
        fh=Vs4eERIxCpmn8Y0HW8is/3LMoF3gQTP5vj6dpcawkVs=;
        b=bQjAJK1ESSldoWSkJcBPOV81G4Alk4aT8N4cnialUiP6YGy46PVJnA2V5WfLLN31OZ
         jYDcQEr62mP1svmom1qMlGaGJfF5VKRekLm3TVvsKAkhHqBNMauykrRCzS29tXpgS/tg
         0dLTMUexwwLmLp/apbqu71s5vHudl07UlYI4f7ZXtdgLCvC0IdkLkVqwOCdezL5W789/
         2f3jOlm4Kg8jQZyd+izUOEesJz+cMoF8R8NHnORkPTdGP0RjbEOKgo9wT5HfNQY8ajA6
         C5Cf/5MUB0iU7mABpQSIwU/V9rxqD3TxQ0bpITEdvZPyAoicRboqlV0HGt/HSUktQJj7
         ix8g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785980220; x=1786585020; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CmtSbhR0umzoPCNMklVcndk+0d6Cbu71OPbe5cqrdZM=;
        b=ic4WxjUMI8zeQMrIGKmYMnImuJgWlUel6WAKEKrM0dNDFZ7gCm3BbfkqCS+WG/gARx
         4jywxNyAXt5joK95A1vOuPsNnyRoqcvuBBcaPA2B1My/IbLFA4Lt+VFklMqtv6lEh5GO
         YsdA4YAeLOyEGPsml6sDufa4k4Duh8l+jrpXpy8JHJB2/kJvgrLJM78UvGu8oUrnx2ay
         QS+HV4HDwCG/Yd7TF/Xr3bRMbdMQcv8CwJOzC+Vg2qbn9K0/jiYKuzbwVZwZLeSh8PKl
         pZ61aH0LVrbaz51tjZSptyrs/DmokEMM3AF+V26L5Q/Jcq4ORlpsDLaJ/4V/qIK8I0EL
         9rtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785980220; x=1786585020;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CmtSbhR0umzoPCNMklVcndk+0d6Cbu71OPbe5cqrdZM=;
        b=K3t5Tvt+6DKTSu8+n8OKfMSLocnLRUNALVTAbFgSD2zmxCBT7+Y7u/DFWZ8FbSeTfb
         w3zQwBT2kVuqwy+YbDQKQfOQAzFZ3+O+5cjHQfQsoudYM6KyCXh7z6ZxWvznXFm5aWYQ
         g0S01A7PwNrwqD5UzDto9bV7xE1TuucYWG+cL8mlzk5Zg79RIExXpR3J6CyVsGt//o7f
         5U0wHXlctv0B+7e6xnnncGXF+YMBlk9upCcO3Ba1yvzBLonOAr1i2QUxIiMJWaMlm2Mb
         /I4on3inesDY18DTkg+G9+Vj8rRLdCkYq/IWIYGASNeZLmA5OG1PRhN1JgT/OfX11AR8
         GeOw==
X-Forwarded-Encrypted: i=1; AHgh+RrVIu/dbQapzhxBA4IptsnBNbmGdvpNvfrfugoAGc/68Z6isyLOKZcGZwunhiV872pt45FecxTQsyaHsB0xjA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh6rZxi8lIfWaw8ONLnHGYHMsWLihoYJjVbe0GfwfljZdnx8q6
	LMXBT54bWglyUy8Yp9O9eYyrEcMrxnuqf/ZqVAiMG2fKo7Vk7qPjNaUBPD2CXmNduiZV6WbCxtg
	l5btd9CyKJJEc8EnWfIxh6qgkjPKvOyE=
X-Gm-Gg: AR+sD10VoT6hiQ3G6LDgl/oIfLAfmKFGoNA6DoBAsEvAKEpCLtRE9F5Z/HJfQ5LwzY/
	V16d5bTTyN+LpfhCNUn1bmoCTEa4sSuo1rQlq2lcCEDrgPbTzlIr5sMl2q7ffPNMOyfFny2R39W
	a8JLo9re1a2lLqGCL6uozzOmg+X43cvNJWEJfUkCVvRCmQbHdXDoxnU3ZQANR6kUfEAjOEEQ7hL
	ZzbT/pqH33YQK0UkmlWg/jEb/87cm4+he3W2rkctH59W01bdreUWA/XWpDW44WWfMcDHJMFThaY
	PY/Veje1aWtzE/j6mApU2eXQwvhtd5UjYz36PEFFz1EZyvsvmg2NDJ9uOiiK9reMHneYjEQ+OUW
	r1R0ikte/MrSxsMFNK1i/pVc39GxsA9HkPD8Q/RvXolyG7l9Zm6ezkcaMH//2hcWPYpgACoBld3
	nUY1h2gpV75F90IptEZbokLLh41G927nK1t5rT
X-Received: by 2002:a05:6122:4f8a:b0:5bf:bb66:414f with SMTP id
 71dfb90a1353d-5c3d93a8410mr1586273e0c.11.1785980220218; Wed, 05 Aug 2026
 18:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-5-3eef49ff1d8c@gmail.com> <20260805141737.GA715959-robh@kernel.org>
In-Reply-To: <20260805141737.GA715959-robh@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 5 Aug 2026 19:36:49 -0600
X-Gm-Features: AUfX_mzQwafoGswTs6dpUFv2c34FSJlAsZ9bjOHCBKQRghZLcM4QQZUZyorkfog
Message-ID: <CADvTj4r7qwdb4+-k11HD7d_8kYhJX3=XE1ftaRKP+-xpSiST5A@mail.gmail.com>
Subject: Re: [PATCH net-next v2 5/8] dt-bindings: net: x-powers: add AC300
 EPHY control
To: Rob Herring <robh@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_183701_517547_259FA133 
X-CRM114-Status: GOOD (  24.18  )
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

T24gV2VkLCBBdWcgNSwgMjAyNiBhdCA4OjE34oCvQU0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEF1ZyAwNCwgMjAyNiBhdCAwODoyNzowM1BNIC0wNjAw
LCBKYW1lcyBIaWxsaWFyZCB3cm90ZToKPiA+IFRoZSBBQzMwMCBleHBvc2VzIGl0cyBGYXN0IEV0
aGVybmV0IFBIWSBjb250cm9sIHJlZ2lzdGVycyB0aHJvdWdoIGEKPiA+IHNlcGFyYXRlIG5vbi1Q
SFkgQ2xhdXNlIDIyIGFkZHJlc3MuIFRoZSBtYW51YWwgZGVmaW5lcyB0aGF0IGFkZHJlc3MgYXMK
PiA+IHRoZSBsaW5rIFBIWSBhZGRyZXNzIHBsdXMgMTYsIGdpdmluZyBjb250cm9sIGFkZHJlc3Nl
cyAxNiB0aHJvdWdoIDIzIGFuZAo+ID4gbGluayBhZGRyZXNzZXMgMCB0aHJvdWdoIDcuCj4KPiBU
aGF0J3Mgbm90IGEgc2VwYXJhdGUgZGV2aWNlLCBidXQganVzdCBhIHNlY29uZCBhZGRyZXNzIHJh
bmdlLiBZb3UKPiBzaG91bGQgbWFrZSAncmVnJyBoYXZlIDIgZW50cmllcy4KCkkgdHJpZWQgYSBk
aWZmZXJlbnQgYXBwcm9hY2ggaW4gbXkgdjMgdXNpbmcgZXRoZXJuZXQtcGh5LXBhY2thZ2UgdG8K
aW5zdGVhZCBvZiBjdHJsIGRyaXZlcnMgd2l0aCB0aGUgQUMzMDAgY29udHJvbCBhZGRyZXNzIHNw
ZWNpZmllZCBieSB0aGUKZXRoZXJuZXQtcGh5LXBhY2thZ2UgcmVnaXN0ZXIoaW50ZXJuYWwgaXQn
cyBkb2luZyBhICsgMTYgdG8gZ2V0IGFsaWduCndpdGggZXhpc3RpbmcgY29udmVudGlvbnMpLgoK
Pgo+ID4KPiA+IERlc2NyaWJlIHRoZSBjb250cm9sIGVuZHBvaW50LCBpdHMgcmVxdWlyZWQgVkND
MSBzdXBwbHksIGl0cyAyNCwgMjUgb3IKPiA+IDI3IE1IeiBpbnB1dCBjbG9jayBhbmQgaXRzIFNv
QyBTSUQgY2FsaWJyYXRpb24gY2VsbC4gVGhlIGFjdHVhbCBQSFkKPiA+IHJlbWFpbnMgYSBzZXBh
cmF0ZSBldGhlcm5ldC1waHkgbm9kZSBhbmQgc3VwcGxpZXMgdGhlIE1BQy1zZWxlY3RlZAo+ID4g
aW50ZXJmYWNlIG1vZGUgYXQgcnVudGltZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBI
aWxsaWFyZCA8amFtZXMuaGlsbGlhcmQxQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9iaW5k
aW5ncy9uZXQveC1wb3dlcnMsYWMzMDAtZXBoeS1jdGwueWFtbCAgICAgIHwgNzAgKysrKysrKysr
KysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQveC1w
b3dlcnMsYWMzMDAtZXBoeS1jdGwueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQveC1wb3dlcnMsYWMzMDAtZXBoeS1jdGwueWFtbAo+ID4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uOGE2MTZmZjNlODlmCj4gPiAtLS0gL2Rldi9u
dWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3gtcG93
ZXJzLGFjMzAwLWVwaHktY3RsLnlhbWwKPiA+IEBAIC0wLDAgKzEsNzAgQEAKPiA+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICsl
WUFNTCAxLjIKPiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L25ldC94LXBvd2VycyxhYzMwMC1lcGh5LWN0bC55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBY
LVBvd2VycyBBQzMwMCBFdGhlcm5ldCBQSFkgY29udHJvbCBpbnRlcmZhY2UKPiA+ICsKPiA+ICtt
YWludGFpbmVyczoKPiA+ICsgIC0gSmFtZXMgSGlsbGlhcmQgPGphbWVzLmhpbGxpYXJkMUBnbWFp
bC5jb20+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246Cj4gPiArICBUaGUgQUMzMDAgRmFzdCBFdGhl
cm5ldCBQSFkgaGFzIGEgc2VwYXJhdGUgY29udHJvbCBpbnRlcmZhY2UgYWNjZXNzZWQgYXMgYQo+
ID4gKyAgbm9uLVBIWSBDbGF1c2UgMjIgZGV2aWNlLiBJdHMgYWRkcmVzcyBpcyAxNiBwbHVzIHRo
ZSBhZGRyZXNzIG9mIHRoZSBsaW5rIFBIWS4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAg
Y29tcGF0aWJsZToKPiA+ICsgICAgY29uc3Q6IHgtcG93ZXJzLGFjMzAwLWVwaHktY3RsCj4gPiAr
Cj4gPiArICByZWc6Cj4gPiArICAgIG1pbmltdW06IDE2Cj4gPiArICAgIG1heGltdW06IDIzCj4g
PiArCj4gPiArICBjbG9ja3M6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArICAgIGRlc2NyaXB0
aW9uOgo+ID4gKyAgICAgIEFDMzAwIGlucHV0IGNsb2NrLiBJdHMgY29uZmlndXJlZCByYXRlIG11
c3QgYmUgMjQsIDI1LCBvciAyNyBNSHogYW5kCj4gPiArICAgICAgZGV0ZXJtaW5lcyB0aGUgY29y
cmVzcG9uZGluZyBFUEhZX0NMS19TRUwgdmFsdWUuCj4gPiArCj4gPiArICB2Y2MxLXN1cHBseToK
PiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgMy4zIFYgc3VwcGx5IGZvciB0aGUgQUMz
MDAgSS9PLCBiYW5kZ2FwLCBFdGhlcm5ldCBQSFkgYW5hbG9nIGZyb250IGVuZCwKPiA+ICsgICAg
ICBhbmQgaW50ZXJuYWwgZGlnaXRhbCBMRE8KPgo+IFNvdW5kcyBsaWtlIHRoaXMgc3VwcGx5IGFu
ZCBjbG9jayB3b3VsZCBuZWVkIHRvIGJlIGVuYWJsZWQgYmVmb3JlCj4gYWNjZXNzaW5nIHRoZSAi
bGluayBQSFkgYWRkcmVzcyI/IElmIHNvLCB0aGVuIDIgbm9kZXMgaXMgcmVhbGx5IGEKPiBwcm9i
bGVtLgoKSSB0aGluayBoYXZpbmcgdGhlIGxpbmsgbm9kZSBkZXBlbmQgb24gdGhlIGN0cmwgbm9k
ZSB3YXMgcHJldmVudGluZwppc3N1ZXMgdGhlcmUgQUZBSVUuIE15IHYzIHdvcmtzIGRpZmZlcmVu
dGx5IHRob3VnaC4KCj4KPiBSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
