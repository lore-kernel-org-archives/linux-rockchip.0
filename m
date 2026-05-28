Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95DC4CD5BD5
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 May 2026 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEbGSPy1CFkVe/WqUOahTdXTfrSi1/6SthzXTUoWVW4=; b=aSIzEm4zSkLIBl
	+sF+VLDmQ0khQhqWWQ+AhLF4kh5MgGRs3PRWTkiMs0sxqcSMORX6Kw/q6lO9BpwqNvHYtruNyAmNU
	uRihOHQeoa8VhjPFCSyOiQsX7SY30fZ3mcTlTcyGksx4pjDr9A+hWeV5z8A3T7nzvJgxgrBw7yqxX
	eIjQVKQbiEVQ+ue06hXidOeRuS1l8FLNAMJP+W1H6/KoDLol1JuTVRnX48uPl6E1z92brDl6lCry2
	0yQWc2Q2JRSWoKVFBz3pvHJHIyB2Ak5lcz3emouW/KzVYn6tNhCxLIqRAAg+DGS9InRSUzaWNSwVT
	axnRHbpZ71M5CFodCv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSiyA-00000006Sba-1rTG;
	Thu, 28 May 2026 22:12:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSiy7-00000006Sav-350T;
	Thu, 28 May 2026 22:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vrDLdKSVaGwj0WHI4sdHIiYlLMo3OmoPXFdy4E2nHJg=; b=NboZHQsTQ1ZxknZG2sCj469/Pf
	u8SeI3n3cNy8XnGkKSQNJoezJ7Ed71sP5cq0thZY/j1Hf1gM3mEhEVoiH/Ad+zJLSDCWRkAh6yu/l
	yhMqqR4h+j9QhO9YTp5UuFG3pBoIkJdjoxlifEVeLpH10QC/GWyl94auZYDpDBuFMDcdOVYOj5IVH
	ST54yIC0wGfMUZqmLrpplUz+KXY7Bsgr0l6WHSA+aFVbwUmzmgp89grstStqXIC4pRONR3MFCwU7T
	QZoDvPVIx/5AoCVttw5drYudGtJb3m3QjltqNLIQqEM9h9tYwxhfBbYF4lrof16YDlMDUoR9PLaYI
	q/2RDg1w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v2 4/5] arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
Date: Fri, 29 May 2026 00:12:33 +0200
Message-ID: <6849370.F8r316W7xa@phil>
In-Reply-To: <20260525070010.1060602-1-amadeus@jmu.edu.cn>
References: <20260505171208.3267387-5-heiko@sntech.de>
 <20260525070010.1060602-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_151247_795355_A70C61A2 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

QW0gTW9udGFnLCAyNS4gTWFpIDIwMjYsIDA5OjAwOjEwIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgQ2h1a3VuIFBhbjoKPiBIaSwKPiAKPiA+ICsmdXNiX2hvc3QwX3hoY2kg
ewo+ID4gKwlleHRjb24gPSA8JnVzYjJwaHk+Owo+ID4gKwltYXhpbXVtLXNwZWVkID0gImhpZ2gt
c3BlZWQiOwo+ID4gKwlwaHlzID0gPCZ1c2IycGh5X290Zz47Cj4gPiArCXBoeS1uYW1lcyA9ICJ1
c2IyLXBoeSI7Cj4gCj4gVGhlIHNhbWUgd2FybmluZyBmb3IgdGhpcyBvdGcgcG9ydDoKPiBbICAg
IDAuMjMyMjExXSBkd2MzIGZlNTAwMDAwLnVzYjogQ29uZmlndXJhdGlvbiBtaXNtYXRjaC4gZHJf
bW9kZSBmb3JjZWQgdG8gaG9zdAoKQWNjb3JkaW5nIHRvIHRoZSBzY2hlbWF0aWNzLCB0aGlzIGlz
IGFuIGFjdHVhbCBUeXBlLUMgcG9ydCwgc28gbm90IHJlYWxseQpzdXJlIHdoYXQgdGhlIGNvbnRy
b2xsZXIgb3IgZHJpdmVyIGlzIGRvaW5nIHRoZXJlLgoKQ291bGQgeW91IHBvc3NpYmx5IGNoZWNr
IHdoaWNoIGNvbmRpdGlvbiBpbgpkd2MzX2dldF9kcl9tb2RlKCkgaW4gZHJpdmVycy91c2IvZHdj
My9jb3JlLmMgaXMgdHJpZ2dlcmluZyB0aGlzPwoKCj4gPiArJnVzYjJwaHlfb3RnIHsKPiA+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gCj4gT1RHIHBvcnQgbWlzc2luZzogYHZidXMtc3Vw
cGx5ID0gPCZ2Y2M1djBfdXNiX290Zz47YCBbMV0KCkkndmUgYWRkZWQgdGhlIHN1cHBseSBub3cu
CgoKVGhhbmtzIGZvciB0ZXN0aW5nCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
