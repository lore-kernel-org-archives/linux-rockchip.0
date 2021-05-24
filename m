Return-Path: <SRS0=SEAf=KT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6157C04FF3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 16:52:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E59B613F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 16:52:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8E59B613F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQdJ5lCT1Fk2G/uHa3cClrVc+PNk6tkIeGERfvl7NYQ=; b=VeSEo9pzbX0dry
	z/g3UCrI9KKm1SUQ81aq1ebJu0HADQdirFD8K7R9fqhEo0EkUCstrmC0lB7bNA0baAl8m/67YsqK8
	HN4whfNPyGKK1Ngdil4GOmYVlvRrCcteagbZsRfafHOhRX3LfQeHtrXEIwV7EhBvmt3biuj2mhRti
	nmWjt6EKBoH8c5N0/5pRDk+bKdLj1KuApMPzNYt286k8G2pzk6WK3IjtcbBG/abRuS0mDulGHkbeQ
	nP/TgWduQ7V9qI+LfdNOOBwD+AG8JFdCO0d6/7UTpQ7JzYIPq8jhh4gyd6RYCVH/pbs62lGQtdYdM
	5ziNSEQqBaVxcufBfVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llDoz-001AvP-J0; Mon, 24 May 2021 16:52:53 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llBJN-000zG1-Gm
 for linux-rockchip@lists.infradead.org; Mon, 24 May 2021 14:12:06 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j6so38190111lfr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 24 May 2021 07:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EqzKZy8iG5YtODeoQ+7arxZWeDSaRjeQIJ9lF+wQUvM=;
 b=mceq3hTDdifAJiqp7ulPjiCJ3NEgeMnoBdVCNB9C7MFH36BifBM8EsuhWPsqrv2pus
 de/9fBoSLzgB1hBeDCZK/eQGGsY6G6mx5a09cAnG5je608TnYffFYCGw/733trTGJYGT
 wVRzdDUViH96KyDBLHT8Z/S35/uZ7T4IlauGZeYjXw81oPiv4UkuOCAbkQXAHL8MAnBh
 /4X3ziVwd14FomNlrrXUXkx5PNPcsGxI/STW2Nx3yWxG4ZQ9KFOASEyPOr2hN4N0GxXk
 EK5H8QwSQxixy1DNJtQWThxVRBcuv901Xj8abXpnsbJtxPSYxKftHPKJXVuS5OAnOA4B
 cABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EqzKZy8iG5YtODeoQ+7arxZWeDSaRjeQIJ9lF+wQUvM=;
 b=XnE4hBwZHOI/e5h5eI+ugr7vG2R7CEa9vSC2p0UBa+qkGLkdseDXwSaFpAp6pmf7uq
 PvxCdHWsxRklwtCwuju9UK8JQ2RwlBy0jOdsb/+jwSXZ8P/PkUejNn/cG9+MsS+Nb5jl
 9gF57/BN4UT1jvKIuOkromR7J56cNCEc0y25FJuzaTkmJAWE3wiGNhRYBXro3BhTEF3y
 4b6Imh+GUR/ukNslvarzoBb7urbkzHq1FvcaGdfiEyhKggOq2iORkBRTi4dMICUpRDX1
 CBvuQ+UrIWXEuHR4vfar2vIK+mIbcAoEMMm1CoVUA9o39WGxvRssqtlKROamOQOGY/I6
 YIVg==
X-Gm-Message-State: AOAM532loShd92+qInE3A7q14zGpHDCYeGVEhWDHobSs7kFGBk9XOjkx
 MDNDafr0zMbMYQoCEE2zG9xQ5bKmCBSvdTwISPYbAFHNpcEtAA==
X-Google-Smtp-Source: ABdhPJxPgWa+XQ/7Yg9tLBVcQQ7nzCQ0v/2otc+UDqjvNgiP2uxY0CceWIfPJOWFC9pJWYvoJbCIy35NX/VyVkYlof8=
X-Received: by 2002:a19:c511:: with SMTP id w17mr11003208lfe.113.1621865523890; 
 Mon, 24 May 2021 07:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-7-afaerber@suse.de>
In-Reply-To: <20210516230551.12469-7-afaerber@suse.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 24 May 2021 16:10:30 +0200
Message-ID: <CAPDyKFpfL8uSK5Vk-=FjN+D0Sz3TWn28kWjF0g8cmftu_moZfg@mail.gmail.com>
Subject: Re: [PATCH 6/9] dt-bindings: mmc: rockchip-dw-mshc: Add Rockchip
 RK1808
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-mmc <linux-mmc@vger.kernel.org>, 
 DTML <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_071205_579240_5F0A6FCA 
X-CRM114-Status: GOOD (  12.38  )
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

T24gTW9uLCAxNyBNYXkgMjAyMSBhdCAwMTowNiwgQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPiB3cm90ZToKPgo+IEFkZCBhIGNvbXBhdGlibGUgc3RyaW5nIGZvciBSb2NrY2hpcCBS
SzE4MDggU29DLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgoKQXBwbGllZCBmb3IgbmV4dCwgdGhhbmtzIQoKS2luZCByZWdhcmRzClVmZmUKCgo+
IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3
LW1zaGMueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlw
LWR3LW1zaGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9j
a2NoaXAtZHctbXNoYy55YW1sCj4gaW5kZXggZWFhM2IwZWYyNGY2Li41NGZiNTk4MjBkMmIgMTAw
NjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hp
cC1kdy1tc2hjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbAo+IEBAIC0zMCw2ICszMCw3IEBAIHByb3BlcnRpZXM6
Cj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxweDMwLWR3LW1zaGMKPiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMTgw
OC1kdy1tc2hjCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMwMzYtZHctbXNoYwo+ICAg
ICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LWR3LW1zaGMKPiAgICAgICAgICAgICAgICAt
IHJvY2tjaGlwLHJrMzMwOC1kdy1tc2hjCj4gLS0KPiAyLjMxLjEKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
