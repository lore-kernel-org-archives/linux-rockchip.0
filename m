Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A28C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:25:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED33061405
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 21:25:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED33061405
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WVsoMsydhNvBX4OSWmemSJ86DvxOM0iD9pYL2/i4uew=; b=nvKsl3bwhk1O4pTs3Bqad2XDS
	acmGLQJqBoD472ok/l4qXbakZqmyz+iiLZkHFGSps46e45ilyk8gG+xkHI4Kvrt40x6YcGH4Vptzs
	j1caxvbyq+ZZLiBzdtUUzkuanwKOyNZbP+Umd4UBZfYBmxSe8IrVeiJMiX63HnHI5geH0SktEt/z3
	2mdlQlmZWqzeXbnAxsDIdpEdTsM/QAZ8rxzgGoBFQsKDbzTYFrVtSI2fD2FByXg02KYaxxPpKs4oT
	DjooCgHC1ehA2KQJBe2SGQLF5ZaCfFsnUAdFjd5o9iGQuQLYr0/yQX9mvW6fCDKqsOX7OvUdXBnR3
	CrnOzGEeg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZKLq-00FDzV-Bh; Wed, 21 Apr 2021 21:25:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZKLn-00FDzI-Uu
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 21:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=ny2kEnyo7Qi04YTjwjJRHOQYn7iwOMQlxio8u8f9oME=; b=qFeveds38is8EQM3XN+xMD6eky
 Oqj4Tnu2YKbfWJDCIOBO4dz20o2DSQvV68R4fgYuflxILpHU6hZeRodXL33UoCkQzsH4lkNzTWcfS
 5MY03NmSGV+xv8yksfNfWkk2t11Yx5uLrLQRcVqnrkbprIU7lVtE8RyQAu+qSxBy0+q30jSXPM9lU
 e/A1m+xLsJGg7/Pcpegjq30o3VfcUFgzVESJxSFdq7mBFlqmM5EudYvj8olzVX8UvAnODiI0xFXV1
 V8lvlpYrHmkTw72I3DoYJ7QlqCPxuhVo5ZY4fHFWFqxadMKWT9jIzEPxJ4pjtHBjWY52mDptW8zaC
 NCPNvVOg==;
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZKLi-00DCXa-5w
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 21:25:34 +0000
Received: by mail-ej1-x630.google.com with SMTP id sd23so56932679ejb.12
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 14:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ny2kEnyo7Qi04YTjwjJRHOQYn7iwOMQlxio8u8f9oME=;
 b=TGhZcmSHGvFBWiziBTPgqew8rGLP8dO2lOjqCvxfmV5bxYjSEgZMU+GMsOiBli/hhm
 b0yA1DipTvvzshC9i+tbvH7TWeVtvk9U6lkuteE/q9XK/m/0SJ8vDUm82QyLefp+CuKs
 EIefupkNUxDTFRvuu+fJmj+UyGqLsG4Dp8vLHpY5ykSYpA3tcyBgf+RrMSeaKhOoQVXJ
 FhZBjbSJlT0PYe+UL9y7cYOVyaxHFYTHqAOREde6iBCAvpFjM37SuiVrpjYymaaXxO+F
 1sdm3niazY8jYO9HI32KARky2fW2g/e9fuYowGARyCyeDn8rgZ/OVITpP7DD1PifYqLZ
 n8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ny2kEnyo7Qi04YTjwjJRHOQYn7iwOMQlxio8u8f9oME=;
 b=LZrpWxwzB59hBUgWHbOGE0g4SNtDcjPSt4eugFx23jiXzFP7elCG1H+4dh0C3uemw2
 DvgVmcTGfmzl4+rMD7tnVmvRdDXob6jiamZcZ34iaRpJT9ddfX1L2v6HjoV9kdN7SA9h
 TPS2dV2ISjZ1Njl4yHvYiB1QJ4oeEsWeDFBdcDFw5WwqTuMdysHq8RZXmL6gBNRbpBGT
 0L3oV3Aqadir7H5ndhkXFeyCMWq2bmiS3ri+ev0J8AcjOcERpe03wQKUbo3b9cH+09wI
 Wn27pda9SzPCoIKZXLsALE+Gvp+JyZ4pN9FXAOq/vk281VrGWuLNuDlI7nsA2Pn8+Aiy
 6bsg==
X-Gm-Message-State: AOAM530fnzl+NmgQip7qdBsWGE2L2vP7LpMbSgC1/sjLKjmjFZSwBUot
 IWLIK0TjnOZNycBryt9YUWI=
X-Google-Smtp-Source: ABdhPJxHp/YPbTxnqWQSu7qWAhxJI0ZWNOda59M46PXcOUGBpKMOBetJiJNE1r2BHu2yXMOC/N0cQQ==
X-Received: by 2002:a17:906:f41:: with SMTP id
 h1mr25243745ejj.399.1619040328314; 
 Wed, 21 Apr 2021 14:25:28 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 k14sm453192edr.75.2021.04.21.14.25.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 14:25:27 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568 SoC
 compatible
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
 <31272ad0e6a5274080831406796960506c6a6912.camel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ca5d55ef-e364-be7a-5ad6-81f039c691e6@gmail.com>
Date: Wed, 21 Apr 2021 23:25:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <31272ad0e6a5274080831406796960506c6a6912.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_142530_257866_00C95E8C 
X-CRM114-Status: GOOD (  18.06  )
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

T24gNC8yMS8yMSAxMTowNiBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IE9uIFdlZCwgMjAy
MS0wNC0yMSBhdCAyMjo0NiArMDIwMCwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+PiBPbiA0LzIxLzIx
IDEwOjA0IFBNLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+PiBBZGQgYSBuZXcgY29tcGF0aWJs
ZSBmb3IgdGhlIHRoZXJtYWwgc2Vuc29yIGRldmljZSBvbiBSSzM1NjggU29Dcy4KPj4+Cj4+PiBT
aWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+
PiAtLS0KPj4+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9j
a2NoaXAtdGhlcm1hbC50eHQgfCAxICsKPj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPj4+IGluZGV4IDdmOTQ2Njll
OWViZS4uMzQ2ZTQ2NmMyMDA2IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKPj4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JvY2tjaGlwLXRoZXJtYWwudHh0
Cj4+PiBAQCAtOSw2ICs5LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPj4+IMKgwqDCoCAicm9j
a2NoaXAscmszMzI4LXRzYWRjIjogZm91bmQgb24gUkszMzI4IFNvQ3MKPj4+IMKgwqDCoCAicm9j
a2NoaXAscmszMzY4LXRzYWRjIjogZm91bmQgb24gUkszMzY4IFNvQ3MKPj4+IMKgwqDCoCAicm9j
a2NoaXAscmszMzk5LXRzYWRjIjogZm91bmQgb24gUkszMzk5IFNvQ3MKPj4KPj4+ICvCoMKgICJy
b2NrY2hpcCxyazM1NjgtdHNhZGMiOiBmb3VuZCBvbiBSSzM1NjggU29Dcwo+Pgo+PiBUaGlzIGlz
IHN0aWxsIGEgdGV4dCBkb2N1bWVudC4KPj4gcm9iK2R0IGhhcyBub3cgc2NyaXB0cyB0aGF0IGNo
ZWNrIGZvciB1bmRvY3VtZW50ZWQgY29tcGF0aWJpbGl0eQo+PiBzdHJpbmdzLCBzbyBmaXJzdCBj
b252ZXJ0IHJvY2tjaGlwLXRoZXJtYWwudHh0IHRvIFlBTUwgYW5kIHRoZW4gYWRkIHRoaXMKPj4g
aW4gYSBzZXBhcmF0ZWQgcGF0Y2guCj4+Cj4gCj4gSXMgaXQgYSBzaG93c3RvcHBlciB0byBjb252
ZXJ0IGRldmljZXRyZWUgYmluZGluZ3MgdG8gWUFNTCBmb3IgZHJpdmVyIHN1Ym1pc3Npb24/CgpZ
b3Ugbm93IHRoYXQgaGFyZHdhcmUgYmVzdCwgc28gdHJ5IHRvIGZpeCB0aGUgZG9jdW1lbnRzIGFz
IHdlbGwuClRoZSBuZXcgbm9ybSBpcyBZQU1MLCBzbyBhaW0gZm9yIHRoYXQuClRyeSB0byBzdWJt
aXQgYSBjb21wbGV0ZSBwYWNrYWdlIG9mIFlBTUwsIGRyaXZlciAoYW5kIGR0cyBub2RlcykgZm9y
IHJldmlldy4KTmV3IG5vZGVzIHNob3VsZCBub3QgZ2VuZXJhdGUgbW9yZSBub3RpZmljYXRpb25z
IHRoZW4gd2UgYWxyZWFkeSBoYXZlLgoKSm9oYW4KPiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
