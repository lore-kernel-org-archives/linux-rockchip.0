Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7572CEDDB7
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 07:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBUNDcjhVAgT/Or/XGJxrLMRYSzAdRkn/x41T8Qr8kY=; b=JgFzmWaSsUpLEfXY/KrXAnkNhF
	ZRiyTAe6b2E5SC2GxlZ1nyh+Ja5XQnbvdjEz7g/Jl0hUQM1jcPsrVvgpLEFpV9oJKyxCAnid3bas3
	UN9e4b0ZhK8wo63U9fzJUGL4tmjl6BebAzqy7yofmO7Mk7JH7MHowm9b2y4r3902zyNrIuub/CN+y
	HPSThLRmJTulJjNWsM+uiufAi7rOCzlI+Q9SNZUlpbBLhG/L4xLj7hldp/c7y5T6xjvBBpA7//n9O
	TABDgQFXFfe4LM8mClA3Fn2yfdz9T0nyyyjNKHEy3O0c7r0B1JUcMzNH/sYSBygvLIfQL00d7cMur
	E4mnxzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9hV-0000000FUBN-2FSf;
	Fri, 11 Oct 2024 07:04:37 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9ZK-0000000FSo2-0oc2;
	Fri, 11 Oct 2024 06:56:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728629767;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jJS99CP66Czeek9OTXCx0i7J11bJHXKEYklS5RBKyCc=;
	b=vo+V9xE8SzMr8AIcvJX9/oxaqhH6UG+OkajEt5hqd1d71I9zxln6wUOYYMmhFlhzPIi5fv
	tGBRPIjlimg2rdOCw/te1SNpxgyWMkXKRfUt23EP/DeSoDjsoJvyhNW4xh3sz0rkWYJfXk
	xaEhBNHNb7FvFoGS4Co/N4392UfAjP6G2SToAFpcrmBfHST2dBEk9CJstMJHlBo6YsGVS5
	zJfZouacvTiE/L9IRFVxsfshIUjjABcKLHUUBW4pJE724ES61dPWu7c8SrVcvJLuXi+mqp
	y6Z7Q5gkPjTivhVZervWUWYpduaFRuBvzga1wkmVpl0DGN9wqWK8qBmyUk98sA==
Date: Fri, 11 Oct 2024 08:56:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dtsi file for RK3399S SoC
 variant
In-Reply-To: <46729153.fMDQidcC6G@diego>
References: <59c524a9a12465c21e01b779b42749fae148c41d.1728482151.git.dsimic@manjaro.org>
 <46729153.fMDQidcC6G@diego>
Message-ID: <ff3e9357b9014a217ace90703688758a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_235610_557756_D70C27EB 
X-CRM114-Status: GOOD (  11.66  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTEwLTEwIDIyOjI0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgOS4gT2t0b2JlciAyMDI0LCAxNjowNjowMCBDRVNUIHNjaHJpZWIgRHJh
Z2FuIFNpbWljOgo+PiBUaGUgd2F5IHRoZSBpbnRyb2R1Y2VkIFJLMzM5OVMgU29DIHZhcmlhbnQg
ZHRzaSBmaWxlIChyazMzOTlzLmR0c2kpIGlzIAo+PiBuYW1lZAo+PiBkaXZlcmdlcyBmcm9tIHRo
ZSB3YXkgdGhlIHR3byBhbHJlYWR5IHByZXNlbnQgUkszMzk5IFNvQyB2YXJpYW50IGR0c2kgCj4+
IGZpbGVzCj4+IChyazMzOTktb3AxLmR0c2kgYW5kIHJrMzM5OS10LmR0c2kpIGFyZSBuYW1lZCwg
YnV0IHRoYXQgc2ltcGx5IGZvbGxvd3MgCj4+IHRoZQo+PiBjb21tb25seSB1c2VkIGFuZC9vciB0
aGUgb2ZmaWNpYWwgUkszMzk5IFNvQyB2YXJpYW50IG5hbWVzLgo+IAo+IFRoaXMgaXMgbXkgb25s
eSBncmlwZSB3aXRoIHRoaXMgOy0pIC4KPiAKPiBJLmUuIGxvb2tpbmcgdGhyb3VnaCBzaW1wbGUg
Z29vZ2xlLCB0aGUgcmszMzk5dCBhbHNvIHNlZW1zIHRvIGJlIAo+IHdyaXR0ZW4KPiB3aXRob3V0
ICItIiBtb3N0IG9mIHRoZSB0aW1lLgo+IAo+IFRob3VnaCBmb3IgbWUgaXQgd291bGQgbWFrZSB0
aGUgbW9zdCBzZW5zZSB0byBqdXN0IGdvIHdpdGggInJrMzM5OS1zIgo+IGhlcmUgZm9yIHNvbWUg
c29ydCBvZiBjbGVhciBzdHlsZSBiZXR3ZWVuIC1zIC10IGFuZCAtb3AxCgpCZWxpZXZlIGl0IG9y
IG5vdCwgdGhlIGluY29uc2lzdGVuY3kgb2YgaGF2aW5nIG5vIGRhc2ggYmVmb3JlIHRoZSAicyIK
aGFzIGJvdGhlcmVkIG1lIHRvby4gOikgIExldCdzIGFkZCB0aGUgZGFzaCwgd2hpY2ggSSdsbCBk
byBpbiB0aGUgdjIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
