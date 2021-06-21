Return-Path: <SRS0=N5vj=LP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961FCC48BE5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 625BB611CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 625BB611CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pFebhBQtuOxrIwuPzrzMwv5mDFOc67V6ZPJfvojhUsQ=; b=RNpXrN3FPNDenlzQf+YUjP8vp1
	W3sOZii8lCYXubH/Q39ZrT9S1lJ/kAx2BGiXv0HWH6nloC0ejhrYfznhfwK5T+U7DIcQrX9aGk3Sa
	6uSi3M5DmfXO6lAXWNDUm6Fhz0l/0jChGVvqnwSDmp18JQenkt05QEVERKBFrLNUQX+nzDw1knKPy
	9DPGrNdymOVZpkA++7Aci61EOYPa0xSMcDSoWaPYBqc5E1wwtztp2DPgMCQ01nhyw8YGGF92VdlHx
	KcJJrrlH4Zz0BbV2iz00HGFRg4q7Ob3k5N/ygsaHlxHXDnEEl6XbJ3YGJzB2mZr1UzyV9uCAhqmhC
	p72S4Trg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGOh-002xDq-Gi; Mon, 21 Jun 2021 09:39:15 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGOe-002xDN-WC
 for linux-rockchip@lists.infradead.org; Mon, 21 Jun 2021 09:39:14 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 h21-20020a1ccc150000b02901d4d33c5ca0so8176331wmb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Jun 2021 02:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xz2iQ3wXKH40FVXn41sFCrnzxq40ArhCxvZyGWhqw/8=;
 b=QXyltf0DQ8Bzl8cV60kIalM6mRGNB9tsfDdBGILXUZnkgiZlDjjZPO2cLFk5bTb3pb
 rrvpdYPSypjwxNIhMSSeg9nNhDKXIE/aIefAx4dGpmEKM0gcO0sDyqhx6hoUk560ebh2
 vqoKsWNzbjzLtBrDgf0wRD0orr8hYTTsoyR7Y8zyGFkZRvY5KIcaiJ5Htb2Zir/rLfkB
 0hA74Xl7dGKhHYQkieIpi1l8Ufv6cgwKbp75eMroDOLOk5bMduYSP6kEH3mS4ADpXrv3
 zzGb4tgw4w6RoNfO0pQlOJ+KidC8uqpK3XQrrCATWnzQbbH8yAqmYQlwJ4BEPaACB5yO
 FyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xz2iQ3wXKH40FVXn41sFCrnzxq40ArhCxvZyGWhqw/8=;
 b=RpKFchdw5d8Mm2OwcQg5o1JtouZ53AS1iyUaI1fNwAKarMFvAxHCSq4gZ6dipMM5YU
 nZ1/FPCE+PBYAHy7k1C0GPOHfOjlc2A87lMMTjPdIv8E+eKcyVkoKaPAu+oJUxcP767I
 6QTptAwDgjVhN5E2E36AOBzWo8nfBucW8THjfDD/gh11YaqEnuL9yUaa2y0fAmoHCMpG
 JgTUct7ZqG0w1SfvYYL3nYsn65DuAPAnOe38yyKEKDmYGBaFBzBnIllYeTYDBCHdb61q
 SRkaK8YHqnNEzrnE1ZVWfMllwj0S+7LexRRzGIu3t6PZceO3TYri/QhGI6rsL+0AjwFq
 Wbew==
X-Gm-Message-State: AOAM530hXrWX1hbj5iEKwhzx5MyqYe3UlSskW+qzL6qbslQIxf/ZccvK
 ai5Q4GEs46HmE1iT1Rzgpl6gRw==
X-Google-Smtp-Source: ABdhPJzpYVLUDYtchrLTE7FOA4YU2weoZRoxr2Znxh2DcgVpOmdZyY1p7AhQAr167VAYA0wT887bHg==
X-Received: by 2002:a1c:f60f:: with SMTP id w15mr26239091wmc.5.1624268351200; 
 Mon, 21 Jun 2021 02:39:11 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211?
 ([2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211])
 by smtp.googlemail.com with ESMTPSA id y189sm3381782wmg.6.2021.06.21.02.39.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Jun 2021 02:39:10 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip, rk-timer.txt
 to YAML
To: Ezequiel Garcia <ezequiel@collabora.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, 
 kernel@collabora.com
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
 <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
 <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9202e696-36f9-eeb2-8f56-8d37babdfe20@linaro.org>
Date: Mon, 21 Jun 2021 11:39:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_023913_075481_027D1B08 
X-CRM114-Status: GOOD (  13.34  )
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

T24gMTkvMDYvMjAyMSAxNjoyNSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IEhpIERhbmllbCwK
PiAKPiBPbiBGcmksIDIwMjEtMDUtMjggYXQgMTc6NTcgKzAyMDAsIERhbmllbCBMZXpjYW5vIHdy
b3RlOgo+PiBPbiAyOC8wNS8yMDIxIDE3OjU2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEhp
IERhbmllbCwKPj4+Cj4+PiBBbSBEb25uZXJzdGFnLCA2LiBNYWkgMjAyMSwgMTM6MTE6MzYgQ0VT
VCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNpYToKPj4+PiBDb252ZXJ0IFJvY2tjaGlwIFRpbWVyIGR0
LWJpbmRpbmdzIHRvIFlBTUwuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJj
aWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+Pgo+Pj4gY2FuIHlvdSBhcHBseSB0aGlzIHBh
dGNoIHRvIHRoZSB0aW1lci10cmVlPwo+Pgo+PiBZZXMKPj4KPj4KPiAKPiBDYW4ndCBmaW5kIHRo
aXMgb25lIGFwcGxpZWQgaW4gLW5leHQsIG1heWJlIGl0IGZlbGwgdGhydSBzb21ld2hlcmUgOikg
PwoKUmlnaHQsIEkganVzdCBwaWNrZWQgaXQuIFRoYW5rcyBmb3IgdGhlIGhlYWRzLXVwCgoKCi0t
IAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2su
Y29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFy
b29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
