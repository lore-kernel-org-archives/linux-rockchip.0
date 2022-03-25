Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFA1C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 16:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSjSPOuNDbADZU7hS0GOOudQLaD8qJosCgjTeYIXOUg=; b=C5abuzUPhl3Ttv
	HOHcPFPWo8q2xmMe10GQSTd3s9NjgqZwJoNb7uRXr7278K37Qf/YagAKesszTYcgzvY8KXmRLRkEh
	jwJrGPB1mDQsi+s2QG5Uf3wDrL+0n0Jk1ceAQyBax8ZwV5faU20m3uThhYS/fP8Qjuxj+mE4UiOE0
	x10h0hqocVYpvj6zR5DbODVcqiBsDoAnwzTfNOX3nLuzd9io0+EcETvFqC/nj+OLImJ+BjigZ63Zz
	QytAe6J0Qvd4ECfWOuPJcu57czqB0HcvCNtAvNWTu1qeU9eV7xswaJSIaWapihfYgo/U9IQhnzagd
	J5YfDqiTjNM1gAlaXQUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnBH-002dvy-Al; Fri, 25 Mar 2022 16:52:55 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnB5-002duS-Hh; Fri, 25 Mar 2022 16:52:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 39F09B82980;
 Fri, 25 Mar 2022 16:52:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9A6DC2BBE4;
 Fri, 25 Mar 2022 16:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648227160;
 bh=Ra8ieuBzaiUMPlsrjMnh2eiTTbFJ7RF3zaiOYqpcWRY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Yc5KjUsXj0C3ePGmhyRuZJgrCSRp4+HyI1a7yErLlR/GcQnY5tNLV1BmC+enHzLg7
 VkPDqNzov93jRYdDqfRphGZaqNe/6MrJKtu0chA542UYeMVcO+026KPHUvImpJHRy2
 SSD8o8rU0W/9ZVKZ5jWypI28tPMm5CFeJHLQj6GiDSEMXIwcm1fA5Ibf42imrE9nnZ
 uC1wRNKl95f+lsEt7efD2foDSsaT82ItZjSJdVJt0btni/gsKvvntazhgnpTDA3D9d
 ljIaXMIYw1l6gpYSSETL24GOW5zcqJ+uT5dWsIDJpz4+X5/ekL/ToquYczoXPsnd+s
 CQYhh6dO5mFPA==
MIME-Version: 1.0
In-Reply-To: <Yj1x5hJEKVL71JZ1@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-18-clabbe@baylibre.com>
 <20220325004125.C80FDC340EC@smtp.kernel.org> <Yj1x5hJEKVL71JZ1@Red>
Subject: Re: [PATCH v3 17/26] clk: rk3399: use proper crypto0 name
From: Stephen Boyd <sboyd@kernel.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
To: LABBE Corentin <clabbe@baylibre.com>
Date: Fri, 25 Mar 2022 09:52:38 -0700
User-Agent: alot/0.10
Message-Id: <20220325165240.C9A6DC2BBE4@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_095243_775677_1B6F9904 
X-CRM114-Status: GOOD (  10.72  )
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

UXVvdGluZyBMQUJCRSBDb3JlbnRpbiAoMjAyMi0wMy0yNSAwMDo0MDoyMikKPiBMZSBUaHUsIE1h
ciAyNCwgMjAyMiBhdCAwNTo0MToyM1BNIC0wNzAwLCBTdGVwaGVuIEJveWQgYSDDqWNyaXQgOgo+
ID4gUXVvdGluZyBDb3JlbnRpbiBMYWJiZSAoMjAyMi0wMy0yMSAxMzowNzozMCkKPiA+IAo+ID4g
JCBnaXQgZ3JlcCBTUlNUX0NSWVBUTwo+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2NyeXB0by9yb2NrY2hpcC1jcnlwdG8udHh0OiAgICAgICAgICAgcmVzZXRzID0gPCZjcnUg
U1JTVF9DUllQVE8+Owo+ID4gYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2k6ICAgICAgICAg
IHJlc2V0cyA9IDwmY3J1IFNSU1RfQ1JZUFRPPjsKPiA+IAo+ID4gVWggb2guIEp1c3QgZG9uJ3Qg
Y2hhbmdlIGl0IGFuZCB0aGluayBhYm91dCBzb21ldGhpbmcgZWxzZSB3aGVuIGl0Cj4gPiBzdGFy
dHMgdG8gZmVlbCBpbmNvbnNpc3RlbnQuCj4gCj4gVGhpcyBpcyBvbiByazMyODgsIHNvIG5vdCBy
ZWxhdGVkIHRvIHJrMzM5OS4KPiBFdmVuIG9uIHRoZSBSSzMzOTkgVFJNLCBhbGwgY3J5cHRvIGNs
b2NrcyBhcmUgY2FsbGVkIGVpdGhlciBjcnlwdG8wIG9yIGNyeXB0bzEgKG5laXRoZXIganVzdCBj
cnlwdG8pCj4gCgpPay4gUGxlYXNlIGFkZCBhIG5vdGUgaW4gdGhlIGNvbW1pdCB0ZXh0IHdoeSBp
dCdzIE9LIHRvIGNoYW5nZSB0aGUKZGVmaW5lIG5hbWVzLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
