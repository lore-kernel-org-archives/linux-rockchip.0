Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76429C3DA79
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytCBynTqRr/i9A9zm2WOk5t4/5NRLxY2yhNqSH/Vfew=; b=QLx1Os1Z0CxdVc
	1fb26T7jgWjX+U7dhjmqC+t9rZlXkhL77f6B94P6QSxeL2wACGAEybmHP8y+MM5ce4tSZVRHRSuwk
	I+/4iEWKmLeZ4TSX5k1eqDxmDepo7VGskqDk5iCLPwhziAmC/43b0x1g93ZqePXbZQFItn0J5mU4e
	pn4Lr8oDsNTMT/qXDACHaWz6J6aL4PGVYCw2TMrit57QxcY8nHJUPar8XpcX7aIlYsez7Z5UoQm5K
	xIjczkW/5SkO8vs4c2HVYKYaPiDuOkTKeE8QvAcJX3l/wvumyAcQ+birGUlTYup++WhMbeag42rNp
	cq0RKul5RKcbU0ZgM5rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPYko-00Alo2-1o;
	Tue, 16 Jan 2024 02:00:38 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPYkk-00Almp-0z;
	Tue, 16 Jan 2024 02:00:36 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 5FB0A5C0178;
	Mon, 15 Jan 2024 21:00:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 15 Jan 2024 21:00:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705370425; x=1705456825; bh=2Z1qmxEMsTLQKMDBfJ+3O0kjmLD/ZIDW
	rrbu4Nd1JY8=; b=nQp7+hD1mEDFNO9npIAC09Ca9w/EUlHo5mORB4C09PhCzBaN
	vPaMLM3XpxZ0mdePdFX9F+cVNHRM0YuecJV9brXIQHCtMh+71H8sVoBCkzLvTi1E
	HIGouJJSU94nSPb8PgY4lSppEnL4x4Z5WmKAKB+KTejQ/zFJIyfF0h97Oc67J590
	pKC3Mo88Iao1rb6t1tDJQ/71TtBRBRaHRrWpO+LjLKuQiwdQ0t0oWs+saA3r0F6d
	BbOqtf1QSIlQiijNOhr57KA1PZpp2jyl50pSO+BIM3+yGk/jJkRmRgZ2mfep/NtA
	lpLAqIrKmXN3Lr15z64O1RVVMxUwxZ7HWgfuww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705370425; x=
	1705456825; bh=2Z1qmxEMsTLQKMDBfJ+3O0kjmLD/ZIDWrrbu4Nd1JY8=; b=U
	f9q2wMCYiBq/sv/XZ0oWHcrEPi5NNNjVQNkEkxP4pvGO8hOGUyCunIDIY3S75nCs
	TiDPxJXJVckT4/Lmwb8o3bKFhs1k93/585YD/GN9LX5JV4po2kqLNAzh1JatpmpS
	ahxvTOayTo6mv7aVBL56W7dHsJ1HZon//HO1LgRgaKXgLfE4MLj4FY848T1Kul5+
	nI8YI/wrNr5/r4HWZa4CjwT3K9Z0WNe8pFb+9f1w1EFFTHA0I3UhZHVQKrd14YSX
	0uigaULCZeMy0ilwADhDb3YVIdcMmRib1ktFD2RC25B9T869M8TL5sORW+eTnRbx
	AGjRzdLOusHM1liQpc1bA==
X-ME-Sender: <xms:OOOlZfmX7XpJvnjcIa9Kq1JcYz2nDGCrHILkaK0r93BG80MKu4kAAg>
    <xme:OOOlZS2HNR2SJlC5C0scqG2XwwqLfVf8jIJKLItxWifU6nkS-AAOHdsVmprJHDHJ0
    m74amzj1w>
X-ME-Received: <xmr:OOOlZVpUGSIBay8uQZZCejcjUleP1uczMxKswtuDkjbnkqnYe6l14zz-CiyMXppb_My4wmOQ4AgkwnjT1N6qpzOBgTtfgGD2lwF4Hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejvddggedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepjeekhfeikeffgfeuvdefgfehudevffeiudeiudfgveevudeukeetveeiueehtedv
    necuffhomhgrihhnpehlihhnrghrohdrohhrghdpihhnfhhrrgguvggrugdrohhrghenuc
    evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehf
    vggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:OOOlZXkybVrzi8xkVydYhUDZetMJ5H9fWi2TATa3iDPS_elPcyfW2g>
    <xmx:OOOlZd33pk1pFHCqC1v0oPRHV-Iuhw8aquvYHI4Ng45Wt0CngGujVA>
    <xmx:OOOlZWuzarl8bGVNlAV5XEobCJXPhTeUbmQnEQ8ZTwEl_5Qf88gKrA>
    <xmx:OeOlZc3UFnagpq3i1sFx5jLSm0Ps7dZvTsFgMsCgGQgm8ltRqTCecQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jan 2024 21:00:18 -0500 (EST)
Message-ID: <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
Date: Tue, 16 Jan 2024 13:00:15 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 KyuHyuk Lee <lee@kyuhyuk.kr>, Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 Andy Yan <andyshrk@163.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_180035_396138_4F3DF327 
X-CRM114-Status: GOOD (  17.09  )
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

Ck9uIDEvMTYvMjQgMDE6NTgsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTUvMDEv
MjAyNCAxNTo1MSwgS3l1SHl1ayBMZWUgd3JvdGU6Cj4+IFRoZSB2ZW5kb3IgaW4gT0RST0lELU0x
IGlzIGhhcmRrZXJuZWwsIGJ1dCBpdCB3YXMgaW5jb3JyZWN0bHkgd3JpdHRlbgo+PiBhcyByb2Nr
Y2hpcC4gRml4ZWQgdGhlIHZlbmRvciBwcmVmaXggY29ycmVjdGx5Lgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBLeXVIeXVrIExlZSA8bGVlQGt5dWh5dWsua3I+Cj4+IC0tLQo+PiAgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDIgKy0KPj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiBZb3UgbmVlZCB0byBz
dGFydCB0ZXN0aW5nIHlvdXIgcGF0Y2hlcy4gWW91ciBsYXN0IE0xIGZhaWxzIGFzIHdlbGwgaW4K
PiBtdWx0aXBsZSBwbGFjZXMuCj4KPiBJdCBkb2VzIG5vdCBsb29rIGxpa2UgeW91IHRlc3RlZCB0
aGUgRFRTIGFnYWluc3QgYmluZGluZ3MuIFBsZWFzZSBydW4KPiBgbWFrZSBkdGJzX2NoZWNrIFc9
MWAgKHNlZQo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93cml0aW5nLXNjaGVt
YS5yc3Qgb3IKPiBodHRwczovL3d3dy5saW5hcm8ub3JnL2Jsb2cvdGlwcy1hbmQtdHJpY2tzLWZv
ci12YWxpZGF0aW5nLWRldmljZXRyZWUtc291cmNlcy13aXRoLXRoZS1kZXZpY2V0cmVlLXNjaGVt
YS8KPiBmb3IgaW5zdHJ1Y3Rpb25zKS4KPgo+IFRoZSBEVFMgY2hhbmdlIHdpbGwgYnJlYWsgdGhl
IHVzZXJzLCBzbyB3b3VsZCBiZSBuaWNlIHRvIG1lbnRpb24gdGhpcyBpbgo+IGl0cyBjb21taXQg
bXNnLgoKSSBub3RpY2UgdGhlcmUgYXJlIGEgY291cGxlIG9mIG90aGVyIGJvYXJkcyB0aGF0IGlu
Y29ycmVjdGx5IHVzZSAKcm9ja2NoaXAgYXMgdGhlIHZlbmRvciBhbHNvOgoKIMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTktb3JhbmdlcGkKIMKgwqDCoMKgwqDCoMKg
wqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtYnBpLXIycHJvCgpQZXJoYXBzIHRoZXNlIHNo
b3VsZCBhbHNvIGJlIGZpeGVkIGF0IHRoZSBzYW1lIHRpbWU/CgpSZWdhcmRzCiDCoCBUaW0KCj4K
PiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4g
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
