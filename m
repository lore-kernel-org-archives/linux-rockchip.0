Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D619C5320E
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 19:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2mUMRC6V8pSZCESj6gI9w3VqRw8iFmCikLGu0cCip6E=; b=JnXMPqOFO3x2UOzGhUui5y+rmC
	/jNqLtblBVPJqvgHMK2TnRgk7Fc/9s6gcaZ4dUNALMGFmr0XCXuE6dGOGqWD7Q7HPcHOucaSTtiEy
	6oOtItUxUt4OHkHTL7GATskfnJX9VMvp1Z07e6yhXR6EDnaVHhGwSzKmIENtxVI1kandNkqyiKEUU
	OlLkloAghDn/EYUkA77PJwb+7Zt5m9NtjhmEIVKrD9PqwJt9nKepfJfsyCFS7VYFRCM8+B4nso0Bh
	1eVxKDy4U5dhAXV68EFEBkNwxegRS4JHm7bneotF3sEWFFR24tMO4akJqz8xgq5YMkH9cS5DzbneX
	cmAGVGlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfP6n-0000000FfRV-1Jix;
	Sat, 17 Aug 2024 19:29:05 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfP6k-0000000FfQg-25g6
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Aug 2024 19:29:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723922939;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tFYiRFpZZ+LNudIAcbFcB7B2vLrHqRZwTC94lvXn3wM=;
	b=Q+RD2yaXAD+UIMBDhG5F2lRVFX4nhejf4WoZ3YnBxQueiAsDjvDKRUvCRAIT/vp/TQuBjg
	dCb/0HJT7V/hhXJs6/Q7jZ+54m1KUWlM385q1iaYJIblPjz7rYlscvWOlqK6XdpDH2e68+
	/Ynm6CZ0Tj21IYwEtO+0u8CdxRlVTcAUTaR4pwzXtJ3By3G4DkCRD19eWP0i22AV6USOtW
	Zz22hJCzM4vNYf6ikvPdQOgL7gq59ebZLv7n2qeIhJz7+9x3yDt0QNShKV0ZfP/SeKrb5d
	3nFWcW/fZi0AjWYDTsKxb6qYWUpLmBnIPGsJgB7XyflnHq4XXQf/t5FDE0mwOg==
Date: Sat, 17 Aug 2024 21:28:59 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
Message-ID: <cd08ce18bde728e2b33a995834441399@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_122902_851489_4CD88D36 
X-CRM114-Status: UNSURE (   8.92  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gRnVrYXVtaSwKCk9uIDIwMjQtMDgtMTcgMDA6MjAsIEZVS0FVTUkgTmFva2kgd3JvdGU6
Cj4gT24gOC8xNy8yNCAwNzoxMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEFtIEZyZWl0YWcs
IDE2LiBBdWd1c3QgMjAyNCwgMjM6MzQ6MjkgQ0VTVCBzY2hyaWViIEZVS0FVTUkgTmFva2k6Cj4+
PiBSYWR4YSBST0NLIFBpIEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBTQkNbMV0gdXNp
bmcgdGhlIAo+Pj4gUm9ja2NoaXAKPj4+IFJLMzMyOCBjaGlwIHRoYXQgc2hpcHMgaW4gYSBudW1i
ZXIgb2YgUkFNL2VNTUMvV2lGaS9CVCAKPj4+IGNvbmZpZ3VyYXRpb25zOgo+Pj4gCj4+PiAtIFJv
Y2tjaGlwIFJLMzMyOCBTb0MKPj4+IC0gUXVhZCBBNTMgQ1BVCj4+PiAtIDUxMk1CLzFHQi8yR0Ig
RERSNCBSQU0KPiAoc25pcCkKPj4gY2FuIHlvdSBwbGVhc2UgZGVzY3JpYmUgd2hhdCBpcyBkaWZm
ZXJlbnQgaW4gdGhhdCB2MyBib2FyZD8KPj4gRGVzY3JpYmluZyB3aGF0IGlzIGRpZmZlcmVudCB0
byByZXF1aXJlIGEgc2VwYXJhdGUgYm9hcmQgc2hvdWxkJ3ZlIAo+PiBiZWVuCj4+IHBhcnQgb2Yg
dGhlIGNvbW1pdCBtZXNzYWdlLgo+PiAKPj4gQmVjYXVzZSBmcm9tIHRob3NlIGNoYW5nZXMsIHRo
ZSBib3R0b20gbGluZSBjdXJyZW50bHkgc2VlbXMgdG8gYmUKPj4gdGhlIHNhbWUgYm9hcmQgd2l0
aCBzd2FwcGVkIG1tYyBhbGlhc2VzPwo+IAo+IGl0J3MgbmV3IGJvYXJkIHdoaWNoIHVzZXMgRERS
NCBSQU0gKGluc3RlYWQgb2YgRERSMyBSQU0gb24gUGkgRSkuCj4gZGlmZmVyZW50IGJvb3Rsb2Fk
ZXIgKFUtQm9vdCkgaXMgcmVxdWlyZWQuCj4gCj4gYWRkaW5nIHYzIGR0cyBzZWVtcyBub3QgdG8g
YmUgc28gaW1wb3J0YW50IGZvciBMaW51eCwgYnV0IGl0J3MgdmVyeQo+IGltcG9ydGFudCBmb3Ig
VS1Cb290IGFuZCBPcGVuV3J0KGl0IGluY2x1ZGVzIGJvb3Rsb2FkZXIgZm9yCj4gZGlzdHJpYnV0
ZWQgYmluYXJ5KS4KCkFyZW4ndCB0aGVyZSBkaWZmZXJlbnQgbWV0aG9kcyB0aGF0IGFsbG93IHN1
Y2ggYm9hcmQgdmFyaWFudHMgdG8gYmUKc3VwcG9ydGVkIGluIFUtQm9vdCwgd2l0aCBubyBuZWVk
IGZvciBhIHNlcGFyYXRlIERUIGluIHRoZSBrZXJuZWw/CklJUkMsIHRoZXJlIGFyZSBhbHJlYWR5
IG1vcmUgdGhhbiBhIGZldyBleGFtcGxlcyBvZiBzdWNoIGJvYXJkIHZhcmlhbnRzLAp3aGljaCBy
ZXF1aXJlIGRpZmZlcmVudCBEUkFNIGluaXRpYWxpemF0aW9uLCB3aGljaCBpcyBjb3ZlcmVkIGlu
IFUtQm9vdApieSBwcm92aWRpbmcgZGlmZmVyZW50IGJ1aWxkcyB0aGF0IHVzZSB0aGUgc2FtZSBE
VC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
