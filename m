Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F69FC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 19:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Wyr7UWB6rbUkdXi2Vs3cNVwBvOPOOX6FBwKCEnvYOA=; b=tG8Di8x9PQD6S2
	RpUi6Uy/NTIUxhZujMcoKumTELDIjDkrhYF9Rc1HDKNXwWb8BjmUA6DYuYpW4lYXn0HV0FlEp2wBx
	MSN8GTlQY8rQzpOwDYjTF3swNcqh2czDbvUxZ3Jwldeg/cEHAZ6QIJbhFQiqXWqU0DtUWLCdHObaK
	QAyut6wxrap+valm/kywTE3wMKImd/aywhsp6xmFa7vH6Ov0qVe5H0IOxdDv8xoUeP1T5r2ZEODKQ
	XsRYZmRmT3FMRQLsM+mYb8wwSIf0b5rhf7EFcrW/XeyzjGyBHqCxiu4kxJ9Fa3adHrsi2axeT4smC
	bU6uczT9OAIA3e1ixnVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBLt-000Shx-0M;
	Wed, 17 Jan 2024 19:13:29 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBLo-000Sfo-1b
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 19:13:26 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-78315243c11so805346485a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 11:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1705518801; x=1706123601; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bV2ObK4Gn6zBfHyaALWYuYvkHMTPFOM7kyZ+I5+TgvA=;
        b=k5l1aKUgZsXq/nRiTYhbl1VRYAjJD9ITiFG6Lw2Y37I2zWcJ2Uqg8fp0S/u7liYOik
         DC6IvHI+QAOPXlINLokoFQ0l9FYOA8mA3ebXWyfAP+/BzGA6md82CzMppFMR/MGfBSmo
         bVdgxVif08zLsI5XViDBtMzrEEKO/KT0hDNQW1N1ve67oDFHdv6JezuoHviDMSG1ZjPP
         1mFin7XCnF6A3Je4Knu+Hya5oWxef0zPiHfTAUmQXl4Pjz8qiyc3X0tll9RANL4psM7N
         jOkkdEjqnlTLVzqt2eE1ezAj/03dxpOlTuJL6F7eA5l6GDOhEF0+i5zIlJQZvoCHZKeb
         TKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705518801; x=1706123601;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bV2ObK4Gn6zBfHyaALWYuYvkHMTPFOM7kyZ+I5+TgvA=;
        b=GJUUrdfBbD/lWfSKuten2ki7lY95kEUf4oZXjc0ZOmo0hNeVhjcRC2Q0JqbHu5YG85
         B4FE0/twRHFjzEo5dg1q7MK5FD1frQU+Eg3LVaUaU0wu24l38L8oAna1t02uVE9wsvza
         AEifb1EFqKdl5MzydkLpnex6SXAacM/5OoCbuJL7LF5icw/mZOOElfO4EKH6bA+zzes7
         swVhh5M6FCy0uOqLcLTJgNWygtYNCrcKFrkJBuiCjS/t/wzT/SG/f73yjx/UJJ+ugowf
         ls8T+qx8VE7bhiFj184lDh9Plen4YvCsthLUjaxr5F03gR2D9QGAS6bvmrcpyn9eX/ti
         t9DA==
X-Gm-Message-State: AOJu0YzPa414IYPmemoGeg/MVq5o71CdFKtCx6Vz7A1YJyVj8+wKP+lg
	Pi6mxePKVvw8GrR9yEsvo6OVwqAOheUxjQ==
X-Google-Smtp-Source: AGHT+IG73tqD/icOIiDqu1zoHWcRrz4j9u5/SPw8nh8PdpyyAo+kwFkgCZy+NiroIxfP1GwDgXR5Lw==
X-Received: by 2002:a05:620a:44d1:b0:783:3ea4:e39d with SMTP id y17-20020a05620a44d100b007833ea4e39dmr10686331qkp.146.1705518801111;
        Wed, 17 Jan 2024 11:13:21 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id i16-20020a05620a249000b007832c2e3b80sm4633406qkn.132.2024.01.17.11.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 11:13:20 -0800 (PST)
Message-ID: <e01c9ab69f3e120cdb9b70fbacebbab32d5abba4.camel@ndufresne.ca>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support
 for RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Date: Wed, 17 Jan 2024 14:13:19 -0500
In-Reply-To: <20231231151112.3994194-2-liujianfeng1994@gmail.com>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
	 <20231231151112.3994194-2-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_111324_743374_562CF1F3 
X-CRM114-Status: GOOD (  12.75  )
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
Cc: sfr@canb.auug.org.au, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSmlhbmZlbmcsCgpMZSBkaW1hbmNoZSAzMSBkw6ljZW1icmUgMjAyMyDDoCAyMzoxMSArMDgw
MCwgSmlhbmZlbmcgTGl1IGEgw6ljcml0wqA6Cj4gVGhpcyBwYXRjaCBlbmFibGVzIEhhbnRybyBH
MSB2aWRlbyBkZWNvZGVyIGluIFJLMzU4OCdzCj4gZGV2aWNldHJlZS4KPiAKPiBUZXN0ZWQgd2l0
aCBGRm1wZWcgdjRsMl9yZXF1ZXN0IGNvZGUgdGFrZW4gZnJvbSBbMV0KPiB3aXRoIE1QRUcyLCBI
LjI2NCBhbmQgVlA4IHNhbXBsZXMuCgpJbiBnZW5lcmFsLCB3ZSBhc2sgc3VibWl0dGVycyB0byBz
aGFyZSBhIGZsdXN0ZXIgWzBdIHNjb3JlICh0aGlzIGlzIGp1c3QgdG8KZGVtb25zdHJhdGUgdGhh
dCB0aGUgaW50ZWdyYXRpb24gaGFzIGJlZW4gd2VsbCB2YWxpZGF0ZWQpLiBMaWJyZUVMRUMgY29t
bXVuaXR5CmhhdmUgcGF0Y2ggdG8gZW5hYmxlIHRoaXMgZmZtcGVnIGZvcmsuIEkgZG9uJ3QgZXhw
ZWN0IGFueSBzdXJwcmlzZSBoZXJlLCBhbmQgeW91CmNhbiBqdXN0IHJlcGx5IHRvIG15IGVtYWls
IGhlcmUuCgpBbHRlcm5hdGl2ZWx5LCB0aGlzIHRlc3QgdG9vbCBpcyBzaGlwcGVkIGluIGxhdGVz
dCBEZWJpYW4sIGFuZCB3aXRoIHRoZQphcHByb3ByaWF0ZSBHU3RyZWFtZXIgcGFja2FnZXMgeW91
J2xsIGJlIGFibGUgdG8gcnVuIHRoZSBWUDggYW5kIEguMjY0IHRlc3RzLgoKTmljb2xhcwoKWzBd
IGh0dHBzOi8vZ2l0aHViLmNvbS9mbHVlbmRvL2ZsdXN0ZXIKCj4gCj4gWzFdIGh0dHBzOi8vZ2l0
aHViLmNvbS9MaWJyZUVMRUMvTGlicmVFTEVDLnR2L2Jsb2IvbWFzdGVyL3BhY2thZ2VzL211bHRp
bWVkaWEvZmZtcGVnL3BhdGNoZXMvdjRsMi1yZXF1ZXN0L2ZmbXBlZy0wMDEtdjRsMi1yZXF1ZXN0
LnBhdGNoCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlhbmZlbmcgTGl1IDxsaXVqaWFuZmVuZzE5OTRA
Z21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMu
ZHRzaSB8IDIwICsrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kK
PiBpbmRleCA1ZmIwYmFmOGEuLmFiMjc5MjE2MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gQEAgLTY0MCw2ICs2NDAsMjYgQEAgaTJjMDogaTJjQGZk
ODgwMDAwIHsKPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJfTsKPiAgCj4gKwl2cHU6IHZp
ZGVvLWNvZGVjQGZkYjUwMDAwIHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC12
cHUiLCAicm9ja2NoaXAscmszNTY4LXZwdSI7Cj4gKwkJcmVnID0gPDB4MCAweGZkYjUwMDAwIDB4
MCAweDgwMD47Cj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExOSBJUlFfVFlQRV9MRVZFTF9I
SUdIIDA+Owo+ICsJCWNsb2NrcyA9IDwmY3J1IEFDTEtfVlBVPiwgPCZjcnUgSENMS19WUFU+Owo+
ICsJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7Cj4gKwkJaW9tbXVzID0gPCZ2ZHB1X21t
dT47Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZEUFU+Owo+ICsJfTsK
PiArCj4gKwl2ZHB1X21tdTogaW9tbXVAZmRiNTA4MDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszNTg4LWlvbW11IiwgInJvY2tjaGlwLHJrMzU2OC1pb21tdSI7Cj4gKwkJcmVnID0g
PDB4MCAweGZkYjUwODAwIDB4MCAweDQwPjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE4
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFj
ZSI7Cj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19WUFU+LCA8JmNydSBIQ0xLX1ZQVT47Cj4gKwkJ
cG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZEUFU+Owo+ICsJCSNpb21tdS1jZWxs
cyA9IDwwPjsKPiArCX07Cj4gKwo+ICAJdm9wOiB2b3BAZmRkOTAwMDAgewo+ICAJCWNvbXBhdGli
bGUgPSAicm9ja2NoaXAscmszNTg4LXZvcCI7Cj4gIAkJcmVnID0gPDB4MCAweGZkZDkwMDAwIDB4
MCAweDQyMDA+LCA8MHgwIDB4ZmRkOTUwMDAgMHgwIDB4MTAwMD47CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
