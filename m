Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F56C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 19:09:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D19B8613F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 19:09:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D19B8613F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=89Zm5wkwD+bLW1jKW+BV4cVx4IbdBukDg9Ah0hLMn+M=; b=H0H6bfWKJr0h8b5D3wVwc1U/c
	FMIFFZZgw5Z3Oh9U7OsnncxhHuSB3cJ6tukcDpn7sroPgO7P9ezlQk0W2jrsWdwjLo8+gzOzBQNAS
	c5Z7Yv+1dJYIKOHdwxMHGyhkFiXTWW1PP73/I6JG60aIBBnBaYaO2czpONrOwopCGgPmdswA7el4e
	iZL+m7fESslstY5vRMIHs25QB2Cl7p/NRZhmEjpKJKfPNnTBnoDM4NLEvO8lpD1JtA7sFdnQnCg6i
	VBrzwsEJO4LyLmbXbVjafIS39zOThBxXz9s9YVfJJLhv6xeIWkfIDRAffawsAy2nvTxCBLeAV5QSp
	LssQT7Rhg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZehP-00HIY3-Qi; Thu, 22 Apr 2021 19:09:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZehO-00HIXw-1d
 for linux-rockchip@desiato.infradead.org; Thu, 22 Apr 2021 19:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2cU5mPNKDtlteNBbk3anMbRMaIXJe5GUHs1/Fqkj1KQ=; b=fDI2UQJTkRbpM+s9DqO0iHyUMc
 yPJgee8hhhgR/HCfZ39vDF86e6rPFqpJ051mWiD8FRyNoR6bigd+UOJHZJGCF/9muOkYtu4xX8hcJ
 a3l+NbvQlgDCm+6U7cMd8OtDSPCu5Uct7CoH65KPw3b+ozixozTb5xwjwrs3DnTxGLsg27NW0RQnL
 67Rwh3dbEMQbFAjdNKMk9yyJ8f2Frwf+EVAmQMC6s2tIFQaUP1T973HCXpR89GwfgTc9oCtfLMiTC
 MRIjFRN7GbXtYvW7FSTuUl2P1fxjhHCXzgwn30HQej9RxHmXGRiiBzkvczOcIK7U0Jp7rcVjtob+A
 iZI2SBdQ==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZehK-00DwH5-PO
 for linux-rockchip@lists.infradead.org; Thu, 22 Apr 2021 19:09:12 +0000
Received: by mail-wr1-x42a.google.com with SMTP id c4so6962915wrt.8
 for <linux-rockchip@lists.infradead.org>; Thu, 22 Apr 2021 12:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2cU5mPNKDtlteNBbk3anMbRMaIXJe5GUHs1/Fqkj1KQ=;
 b=VJ96Aa08ttSQWQvuzjTA9BlAW0s7jMiF7k6HgXg9hU3VLafoR3wMcWr7+xDBVsB87A
 uMX+TSFmyrGofHKGh3V08TbN19vwK5PQ3xJsCSr7k+LeNRMR2NdAuPnQ9UCD+z5Hc9vR
 5L6KJaqBswI+jtkHKtfMZ6N/OqxrvpK2USK9igGWAxJ5wFYpDc8rzF0fzm88FCK6U+Zy
 srbVT2gRDuUb+CF2ogVkCQ16ntBoqqCZsrLmb6kwatTHRRvDd3EER8Zd+3yfJusRPKfW
 ckwJFH3EHrSqUXD7uAr2OCs4dz8jkgOIFOiWItCOKAEqXG+UzBRjNujxYhV5+SS9+ilp
 Zeqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2cU5mPNKDtlteNBbk3anMbRMaIXJe5GUHs1/Fqkj1KQ=;
 b=JRJp8g3qBxB4U9lxSCycEFRNJ6ZW+/EX9ortCznvSt8YpJmbeu9PEAhroD/dmElQ7h
 wxpWmYUrqgVl8f80bhzIdWi7b1UR7i0QJjJV/bJA39MGIGfHoIT90kU7HFwMUHrZgcEc
 x1gQcq+Xh/ttksIjX+nXATWDuP8oaH5hijYVlvu1pG0kU7DqKIaooiicIod1Qgg5R/6L
 FFP5IErWjjJUA7GVvEHUouujvE95WCniuRXDeUKH+qAUUOizA7pEn52rJmiQX+9q4im7
 aYihDHDGtGX709khy023jdAz4Qx1o9tm83McrGA85VfKOCYsuteXcpXYwlYqkMeE9uE7
 Pg3g==
X-Gm-Message-State: AOAM5329DS1dJEcenXBPfkPpQwG6/BbonXFpWPefFzqdqI3ucOaG55A1
 WFbNOHkEhwHvdQOkB2BjlWnOlg==
X-Google-Smtp-Source: ABdhPJx4jRPrEEhqBCLz27LfBVbenxY1/FQ/KIusG0Xm1b6Y8CKEdtdLDoS68KlAng9fcQ0HNMLB7A==
X-Received: by 2002:adf:eb41:: with SMTP id u1mr5959048wrn.20.1619118547875;
 Thu, 22 Apr 2021 12:09:07 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:2191:9b4c:c38f:a1a9?
 ([2a01:e34:ed2f:f020:2191:9b4c:c38f:a1a9])
 by smtp.googlemail.com with ESMTPSA id i15sm5265426wrr.73.2021.04.22.12.09.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 12:09:06 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568 SoC
 compatible
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <bf0771cec69e11bf4622421a3aa8f2092da42429.camel@collabora.com>
 <31c2e531-96d0-a1c1-644c-28c60eb40cf4@gmail.com> <4689477.1oUyQt6lIG@diego>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <573a45cc-5821-8731-e9c2-6b817482ac62@linaro.org>
Date: Thu, 22 Apr 2021 21:09:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4689477.1oUyQt6lIG@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_120911_051715_D1D5A3FD 
X-CRM114-Status: GOOD (  25.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMjIvMDQvMjAyMSAyMDoyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGksCj4gCj4gQW0g
RG9ubmVyc3RhZywgMjIuIEFwcmlsIDIwMjEsIDAwOjEyOjQ1IENFU1Qgc2NocmllYiBKb2hhbiBK
b25rZXI6Cj4+IE9uIDQvMjEvMjEgMTE6NTYgUE0sIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPj4+
IE9uIFdlZCwgMjAyMS0wNC0yMSBhdCAyMzoyNSArMDIwMCwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+
Pj4+IE9uIDQvMjEvMjEgMTE6MDYgUE0sIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPj4+Pj4gT24g
V2VkLCAyMDIxLTA0LTIxIGF0IDIyOjQ2ICswMjAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+Pj4+
PiBPbiA0LzIxLzIxIDEwOjA0IFBNLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+Pj4+Pj4gQWRk
IGEgbmV3IGNvbXBhdGlibGUgZm9yIHRoZSB0aGVybWFsIHNlbnNvciBkZXZpY2Ugb24gUkszNTY4
IFNvQ3MuCj4+Pj4+Pj4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0IHwgMSArCj4+
Pj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4+Pj4+Cj4+Pj4+Pj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tj
aGlwLXRoZXJtYWwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPj4+Pj4+PiBpbmRleCA3Zjk0NjY5ZTllYmUuLjM0NmU0
NjZjMjAwNiAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4dAo+Pj4+Pj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0Cj4+
Pj4+Pj4gQEAgLTksNiArOSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4+Pj4+Pj4gICAgICJy
b2NrY2hpcCxyazMzMjgtdHNhZGMiOiBmb3VuZCBvbiBSSzMzMjggU29Dcwo+Pj4+Pj4+ICAgICAi
cm9ja2NoaXAscmszMzY4LXRzYWRjIjogZm91bmQgb24gUkszMzY4IFNvQ3MKPj4+Pj4+PiAgICAg
InJvY2tjaGlwLHJrMzM5OS10c2FkYyI6IGZvdW5kIG9uIFJLMzM5OSBTb0NzCj4+Pj4+Pgo+Pj4+
Pj4+ICsgICAicm9ja2NoaXAscmszNTY4LXRzYWRjIjogZm91bmQgb24gUkszNTY4IFNvQ3MKPj4+
Pj4+Cj4+Pj4+PiBUaGlzIGlzIHN0aWxsIGEgdGV4dCBkb2N1bWVudC4KPj4+Pj4+IHJvYitkdCBo
YXMgbm93IHNjcmlwdHMgdGhhdCBjaGVjayBmb3IgdW5kb2N1bWVudGVkIGNvbXBhdGliaWxpdHkK
Pj4+Pj4+IHN0cmluZ3MsIHNvIGZpcnN0IGNvbnZlcnQgcm9ja2NoaXAtdGhlcm1hbC50eHQgdG8g
WUFNTCBhbmQgdGhlbiBhZGQgdGhpcwo+Pj4+Pj4gaW4gYSBzZXBhcmF0ZWQgcGF0Y2guCj4+Pj4+
Pgo+Pj4+Pgo+Pj4+PiBJcyBpdCBhIHNob3dzdG9wcGVyIHRvIGNvbnZlcnQgZGV2aWNldHJlZSBi
aW5kaW5ncyB0byBZQU1MIGZvciBkcml2ZXIgc3VibWlzc2lvbj8KPj4+Pgo+Pj4+IFlvdSBub3cg
dGhhdCBoYXJkd2FyZSBiZXN0LCBzbyB0cnkgdG8gZml4IHRoZSBkb2N1bWVudHMgYXMgd2VsbC4K
Pj4+Cj4+PiBXZWxsLCBub3QgcmVhbGx5LiBJJ20ganVzdCBmb3J3YXJkIHBvcnRpbmcgdGhlIGRy
aXZlciBmcm9tIGRvd25zdHJlYW0ga2VybmVscywKPj4+IHNvIHdlIGNhbiBzdXBwb3J0IHRoaXMg
bmV3IFNvQy4gTm90IHJlYWxseSBhIGhhcmR3YXJlIF9leHBlcnRfIGZvciBhbGwgdGhlCj4+PiBk
ZXZpY2VzIEkgcGxhbiB0byBiZSBwdXNoaW5nLgo+Pj4KPj4+PiBUaGUgbmV3IG5vcm0gaXMgWUFN
TCwgc28gYWltIGZvciB0aGF0Lgo+Pj4KPj4+IEkgYW0gYXdhcmUgb2YgdGhhdC4gSW4gZmFjdCwg
YXQgQ29sbGFib3JhIHdlIGVuY291cmFnZSBhbGwgdGhlIGtlcm5lbAo+Pj4gZGV2ZWxvcGVycyB0
byBjb252ZXJ0IHRvIFlBTUwsIGlmL3doZW4gcG9zc2libGUuCj4+Pgo+Pj4+IFRyeSB0byBzdWJt
aXQgYSBjb21wbGV0ZSBwYWNrYWdlIG9mIFlBTUwsIGRyaXZlciAoYW5kIGR0cyBub2RlcykgZm9y
IHJldmlldy4KPj4+Cj4+PiBUaGUgZGV2aWNldHJlZSBmb3IgUkszNTY2IGFuZCBSSzM1NjggaXMg
dW5kZXIgZGlzY3Vzc2lvbiwgaW4gZmFjdCBpdCB3YXMgc3VibWl0dGVkIHRvZGF5Lgo+Pj4gUm9j
a2hpcCBpcyBsZWFkaW5nIHRoYXQsIGFuZCBkb2luZyBhIGdyZWF0IGpvYiBhbHJlYWR5IDopCj4+
Pgo+Pj4gTWVhbndoaWxlLCBJJ2QgbGlrZSB0byBtZXJnZSB0aGUgc21hbGwgZHJpdmVycyAodGhl
cm1hbCwgcG1pYywgZHdtYWMsIGlvLWRvbWFpbnMgYW5kIHNvIG9uKSwKPj4+IHNvIHRoZXkgYXJl
IHJlYWR5IHdoZW4gdGhlIGRldmljZXRyZWUgbGFuZHMuCj4+Pgo+Pgo+Pj4gTW9zdCBpZiBub3Qg
YWxsIG9mIHRoZXNlIGRldmljZXMganVzdCBuZWVkIGEgbmV3IGNvbXBhdGlibGUgc3RyaW5nLiBJ
dCB3b3VsZCByZWFsbHkgZGVsYXkKPj4+IHRoaW5ncyBpZiBJIGFpbSB0byBjb252ZXJ0IGFsbCB0
aG9zZSBiaW5kaW5ncyBkb2NzIHRvIFlBTUwgZmlyc3QsIHNvIGxldCdzIHBsZWFzZSBhdm9pZCB0
aGF0Li4uCj4+PiAuLi4gdW5sZXNzIGl0J3MgYSBuZXcgaGFyZC1ydWxlIHRoYXQgRFQgbWFpbnRh
aW5lcnMgaGF2ZSBhZ3JlZWQgb24uCj4+Cj4+IEV2ZXJ5IGRyaXZlciBncm91cCBoYXMgaXQncyBv
d24gZGVsYXkgdGltZSwgc28gYmV0dGVyIGRvIGl0IHJpZ2h0IGluIG9uZQo+PiBydW4uCj4+IE1v
c3RseSBwZW9wbGUgdGVuZCB0byAnZm9yZ2V0JyBkb2N1bWVudGF0aW9uIGFuZCB0aGVuIHNvbWVv
bmUgZWxzZSBoYXMKPj4gdG8gY2xlYW4gdXAgdGhlIG1lc3MuIFNvIEkgcHJvcG9zZSB0aGF0IHRo
ZSBwZXJzb24gdGhhdCBzdWJtaXRzIGEgbmV3Cj4+IGRyaXZlciBhbHNvIGZpeGVzIHRoZSBkb2N1
bWVudGF0aW9uLiBUaGUgbm9ybSBpcyBub3cgWUFNTCwgc28gdGhpcyBzZXJpZQo+PiBoYXMgbW9y
ZSB3b3JrIHRoZW4gb3RoZXIsIHNvIGJlIGl0LiBPdGhlcnMgY2FuIGhlbHAgeW91IHdpdGggaXQg
aWYgeW91IGFzay4KPiAKPiBwZXJzb25hbGx5IEkgZmVlbCB0aGlzIGFwcHJvYWNoIGJlaW5nIGEg
Yml0IHRvbyBzdHJpY3QuCj4gCj4gV2hpbGUgaXQgaXMgZGVmaW5pdGx5IGNvb2wgdG8gY29udmVy
dCBldmVyeXRoaW5nIHRvIGEgeWFtbCBiYXNlIGluIGEKPiBob3BlZnVsbHkgc2hvcnQgdGltZSwg
YmVpbmcgb3Zlcmx5IHN0cmljdCBjYW4gYWxzbyBzdGlmZmxlIHBhcnRpY2lwYXRpb24uCgorMQoK
Ci0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJv
b2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xp
bmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
