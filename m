Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1EDC43462
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 14:39:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 447E16124C
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 14:39:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 447E16124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=onNsbSw1fz9WpA1rbBEpb223GVQvB/f3eCGCaJ8OCOI=; b=dnRuLc7oUeUllg0+AnhGeHfon
	Q0HNF7TuZalZBKEENDy1EBYRBt7dj7DHEJUbRerZIzEwW4/R1LRLR695i1sl35i3Yfd2WzmGgcn/Y
	gFVs0DVnbc5hEzqk+U/6dN23Wr3lr6ngreFZQDKclVvhZ8JzxroK6Q5tGksJI3V1Ma+xVx2gPIh/O
	1kyKaPZvjOpL0d8U7+t7IccafzwyxbCoF5+GJmXHCMOD62fSBQ4qbg+W2m05UaIPJPjH9I0qIJxEf
	Bp6Dc0V+Y7v73vSKasUwl6IaAwBdWOFY/lCbCiDXj8ZPpdpt6kvyWkNZZEAVbfR/CCxZn/3gZTbWU
	p+esxZhNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljNMH-004ILj-03; Wed, 19 May 2021 14:39:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNMF-004ILX-29
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 14:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=brguJP1TRfkhoTJgsl8Q1B6FJtdnvT+9aum6CCLmyKI=; b=Va+BMzYtdx5wwpq7L8h7i1tU5K
 /HDTJvbJPufzJJAQE9i/t6SaQNNYd3NvCisIv23BZybAZmeEZlqun5YSb8gzEz+CQKNmp9E4biIBn
 3V3Ueuv0Xy8YSxCowQot6LV8mVEED8rX400IySpszknhpCEgoef+hTRYgbbpoTeaN2Zgltog3IuRA
 mKPKIx0NVpsaDLmr6JVDGYjEjqCl3X0hOeLd05nLGEANqvsEyXcitbBNo3qGn5ZUBl+ijWsEMz1eK
 cyURJj8VlQUnzjQrUQEdrJAlOKqk0QoZlD/JSLA5TbQ44mVvFS3v6C2BasA7GtGAnmRpC4p2d1k7N
 UlqzGWeA==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNMC-00FYO3-Ha
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 14:39:33 +0000
Received: by mail-wr1-x435.google.com with SMTP id h4so14255501wrt.12
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=brguJP1TRfkhoTJgsl8Q1B6FJtdnvT+9aum6CCLmyKI=;
 b=BSofIscenrll+wtAbZVziWi2CjNiD3KGjR7g8Y/cQgbk2KYNrwhXwX0fAOCqcTAUcR
 1m6u35SMvrNsMiN4T4z3PyLe+kwJGHZgg1tpLr6ALjsBgAA1vc8eUIuVTu8y1AdvdWYN
 gjz5NHThtBnnt5pEUVwRZsnWCSR/6tyn95Mjs3JJnqGSpLAWglu6647iOGUXaz8X8X3D
 nQ1UDPp0RYP0wc07+vAOqVa9EK3fA84cSEY5woWkFI2dGakoIxGY/RZKuDHhvTjJcxEy
 OXPKrxh5bmj+3g4Su69PFC1/RHpKc3Syjz87pR2K2UdtrshnNgIBvjGtNLRlOqq4Tz4m
 RGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=brguJP1TRfkhoTJgsl8Q1B6FJtdnvT+9aum6CCLmyKI=;
 b=oXGBczoo387aTknAjx4kRLi3y8DEJDg/kB8H8LV83ZKhBvPMl4rcImfxHo82mBE0Gf
 /Y0JcNOeOGkq0H83AiQDpFFYtHq47SGtTzIQOnWViz6YPp+YsQwGbNI2WBTuHf9E/wY6
 pRCIuoUrFeoRwSk5WrnmVnWeYdvat53FKpXk1/TTOqpkHrPxNeKha3YNZPJ2hWt71nTy
 ro2xm9Nv4ljMblH+E1ea2Cfvc27W5RFUOCwfqO2M6+Mm8R98grUlZbgE8aV53jObYGHy
 wODSpo7W95Fg9Wm3RBID5kAPVG8mnMNl3JT7MJAUJsLM6dYGgjdd+tewg91rZD7YnYjt
 L/+A==
X-Gm-Message-State: AOAM530/3UapaC2vl70I+Zg6ap81McNGl7ghmBOKh2tAvXm1QOeF59Tj
 yE/60/xne6WfcEknmtOzZitzTw==
X-Google-Smtp-Source: ABdhPJz09XPcH5af8DhPokNsIK+NhdlGR/EmcisNcRXKH1/9rm4wA0gp+EyQCV9V7mZI2l2AMaDP2Q==
X-Received: by 2002:a05:6000:104a:: with SMTP id
 c10mr15035593wrx.45.1621435170708; 
 Wed, 19 May 2021 07:39:30 -0700 (PDT)
Received: from dell ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id c15sm25760443wro.21.2021.05.19.07.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 07:39:30 -0700 (PDT)
Date: Wed, 19 May 2021 15:39:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v11 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210519143928.GG2415519@dell>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
 <20210515025749.11291-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515025749.11291-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_073932_614521_44B4FBED 
X-CRM114-Status: GOOD (  15.62  )
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

T24gRnJpLCAxNCBNYXkgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCByazgxNyBjb2RlYyBzdXBw
b3J0IGNlbGwgdG8gcms4MDggbWZkIGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IFRlc3RlZC1ieTogTWFjaWVqIE1hdHVz
emN6eWsgPG1hY2NyYWZ0MTIzbWNAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazgw
OC5jICAgICAgIHwgODMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggfCA4MSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDE2NCBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3JrODA4LmMgYi9kcml2ZXJzL21mZC9yazgwOC5jCj4g
aW5kZXggYWQ5MjNkZDRlMDA3Li5iOTRmODA1NzE5YTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZmQvcms4MDguYwo+ICsrKyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiBAQCAtNjUsNiArNjUsNyBA
QCBzdGF0aWMgYm9vbCByazgxN19pc192b2xhdGlsZV9yZWcoc3RydWN0IGRldmljZSAqZGV2LCB1
bnNpZ25lZCBpbnQgcmVnKQo+ICAJc3dpdGNoIChyZWcpIHsKPiAgCWNhc2UgUks4MTdfU0VDT05E
U19SRUcgLi4uIFJLODE3X1dFRUtTX1JFRzoKPiAgCWNhc2UgUks4MTdfUlRDX1NUQVRVU19SRUc6
Cj4gKwljYXNlIFJLODE3X0NPREVDX0RUT1BfTFBUX1NSU1Q6Cj4gIAljYXNlIFJLODE3X0lOVF9T
VFNfUkVHMDoKPiAgCWNhc2UgUks4MTdfSU5UX1NUU19SRUcxOgo+ICAJY2FzZSBSSzgxN19JTlRf
U1RTX1JFRzI6Cj4gQEAgLTE2Myw2ICsxNjQsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9j
ZWxsIHJrODE3c1tdID0gewo+ICAJCS5udW1fcmVzb3VyY2VzID0gQVJSQVlfU0laRShyazgxN19y
dGNfcmVzb3VyY2VzKSwKPiAgCQkucmVzb3VyY2VzID0gJnJrODE3X3J0Y19yZXNvdXJjZXNbMF0s
Cj4gIAl9LAo+ICsJewo+ICsJCS5uYW1lID0gInJrODE3LWNvZGVjIiwKPiArCX0sCgpUaGlzIHNo
b3VsZCBiZSBvbiBhIHNpbmdsZSBsaW5lIHBsZWFzZS4KCk9uY2UgZml4ZWQsIHBsZWFzZSBhcHBs
eSBteToKCkZvciBteSBvd24gcmVmZXJlbmNlIChhcHBseSB0aGlzIGFzLWlzIHRvIHlvdXIgc2ln
bi1vZmYgYmxvY2spOgoKICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExl
YWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
