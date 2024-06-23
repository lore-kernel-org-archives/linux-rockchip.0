Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94514C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 11:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UOP2ku+6wVu458ipUhJpeNWNsEpj1wctdd5m31Ay7E0=; b=DipB4++L7LVQOX+imVQcSDK4Dx
	hY7X0rLngMLVZuhn3gqEd8kEd7L7ZpkEoB0AEf3bd+jjhjY38lMu9Lc88NzsmdeT1X0FjkfwGfALw
	exWrQOlsAZf9NrjbZL4vokMUr9GVhIXOv+MPigCHnsljQ3a7bQE1HOObp6bhhpEav8AzR3qdjjeE+
	4rRnMhSIqGhFSx/IL5cKMOHclDYpCdUL4NRgCBzSGOqB4mbjVI77RlXw2l1la/aj4m/SJuMYuQrkg
	w2tmnX7hVn0nQNJgLX0jvoz76MjBoRLYFQJAjAbO68mJzyHgXW9PwmUIWMMh0N2vSiem7UmsSUTbU
	znhnpbmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLsk-0000000DvbU-1LiX;
	Sun, 23 Jun 2024 11:59:42 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLsh-0000000Dvaf-24rw
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 11:59:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719143978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Eit2nOI5mdTDLIy/1lxlB+WC2Bc8iIghH1Bk3+quVmI=;
	b=ODPOqDDiAOOgcO8SQCpgeMxgopL7/xxvKAfR/YPNyZF6/JyTSa73MxNyhfLUCBoipOtGFa
	Sivq40H0FRoIhAUCFUNqZ8dCNM25Yr6vUGi8pabXa05deyWcicikk/hPl/XAe9q9ZXhc9q
	CLhRRdSXaBZLraw48Qc4SJB2Z7GyTlkPjlikqtZfraVHx11lO4GRWgooWx29S843W8XEzc
	bWOPK1w3qXc7r5OEFOE41FaHb1iy4qL8toKz11INFyMKzMzc0maIOzgd9CYrv4x6q7YSbD
	i1OdNTNlbN+M0WlzAxle82ksjnTKjL+Q9qyM3RV6pDk4jKSA80I7S2Xwx0sRWQ==
Date: Sun, 23 Jun 2024 13:59:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
In-Reply-To: <2659620.bgRvk7e4E5@diego>
References: <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
 <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
 <2659620.bgRvk7e4E5@diego>
Message-ID: <57ee9d6967b339aa054e4e697e112b28@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_045939_708343_D9FC22A3 
X-CRM114-Status: GOOD (  17.35  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA2LTIzIDEyOjQzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBTb25udGFnLCAyMy4gSnVuaSAyMDI0LCAxMDoxODo1OCBDRVNUIHNjaHJpZWIgRlVLQVVN
SSBOYW9raToKPj4gT24gNi8yMy8yNCAxNzowNywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToK
Pj4gPiBPbiAyMy8wNi8yMDI0IDA5OjUzLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+PiA+PiBSYWR4
YSBST0NLIFBpIEUgdjMuMCBoYXMgRERSNCBTRFJBTSBpbnN0ZWFkIG9mIEREUjMgU0RSQU0uCj4+
ID4+Cj4+ID4+IGZvciBMaW51eCwgdGhpcyBjaGFuZ2UgZG9lc24ndCBtYWtlIGFueSBkaWZmZXJl
bmNlIGZyb20gYSBkZXZpY2UgdHJlZQo+PiA+PiBQT1YuIGJ1dCwgZm9yIGJvb3Rsb2FkZXIgKFUt
Qm9vdCBUUEwpLCBpdCBtYWtlcyBhIGRpZmZlcmVuY2UuCj4+ID4KPj4gPiBXaGF0IGRpZmZlcmVu
Y2U/Cj4+IAo+PiBVLUJvb3QgVFBMIGluaXRpYWxpemUgRERSIFNEUkFNLgo+PiAKPj4gaHR0cHM6
Ly9naXRodWIuY29tL1JhZHhhTmFva2kvdS1ib290L2NvbW1pdC8xNmQ4MjNlYjk1ZmUzMTFjODJh
OGViYjMxNTcwYjU5YjFjNTljNDNiI2RpZmYtMDNjZTZjMjQxZjVkYjc0YWU4N2Q0ZDg2NTRiZmVm
NWVlYjViYzQyYTlmMWZmM2NjODI4YjcwYjNiMmFjNTFkMlI0Cj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS9SYWR4YU5hb2tpL3UtYm9vdC9jb21taXQvMTZkODIzZWI5NWZlMzExYzgyYThlYmIzMTU3MGI1
OWIxYzU5YzQzYiNkaWZmLTMxYjgwMzAzNzc0ZTdjMTBiNTI3ZmIyZGJjNzA0YjgyZTZjNWNjZGM2
ZDUzZGQ0ZjY1ODYxMzA5Y2UwZTc0MTNSNAo+PiAKPj4gdGhlcmUgaXMgMSBsZXR0ZXIgZGlmZmVy
ZW5jZSwgZGRyIjMiIGFuZCBkZHIiNCIuCj4+IAo+PiA+PiBib290bG9hZGVyIG5lZWRzIGEgc2Vw
YXJldGVkIGR0cyBmb3IgdjMsIHNvIEkgYWRkIG5ldyBkdHMgZm9yIGl0Lgo+PiA+PiBkdGIgY2Fu
IGJlIHNoYXJlZCBiZXR3ZWVuIHYzIGFuZCBwcmlvciwgc28gSSBkb24ndCB0b3VjaCBNYWtlZmls
ZS4KPj4gPgo+PiA+IEkgZG9uJ3QgdW5kZXJzdGFuZC4gSWYgeW91IGhhdmUgdGhlIHNhbWUgRFRC
IHRoZW4geW91IGRvIG5vdCBuZWVkIHNlY29uZAo+PiA+IERUUy4KPj4gCj4+IDJuZCBkdHMgaXMg
Zm9yIGJvb3Rsb2FkZXIuIGl0J3Mgbm90IG5lZWRlZCBmb3IgTGludXguCj4gCj4gYnV0IF93aGF0
XyBpcyB0aGlzIGRpZmZlcmVudCBkdCBuZWVkZWQgZm9yLiBJZiBpdCBpcyB1bmNoYW5nZWQgZnJv
bSB0aGUKPiBmaXJzdCBvbmUsIHdoeSBjYW4ndCB5b3UgcmVmZXJlbmNlIHRoYXQgb25lIGluIHUt
Ym9vdD8KPiAKPiBTaW1pbGFyIHRvIEtyenlzenRvZiwgSSBkb24ndCBzZWUgX3doeV8geW91IG5l
ZWQgYSBzZXBhcmF0ZSBkZXZpY2V0cmVlCj4gYXQgYWxsLgoKUGxlYXNlIHNlZSB0aGUgVS1Cb290
IHBhdGNoIHN1Ym1pc3Npb24gWzFdIGZvciBtb3JlIGRldGFpbHMuICBBbnl3YXksCkkgdGhpbmsg
aW4gdGhpcyBjYXNlIHdlJ2xsIG5lZWQgYSByYXRoZXIgZnVsbC1mbGVkZ2VkIHN1cHBvcnQgZm9y
IGEgbmV3CmJvYXJkIHZlcnNpb24sIGJlY2F1c2UgdGhhdCdzIHdoYXQgaXQgYWN0dWFsbHkgaXMu
CgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3UtYm9vdC8yMDI0MDYyMzA0MTU0Mi41MDEz
Ny0xLW5hb2tpQHJhZHhhLmNvbS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
