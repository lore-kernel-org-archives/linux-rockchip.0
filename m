Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F74C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:14:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1215E6113C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:14:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1215E6113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/IDSD0X0SDKrjle3M2PcGMuab/9uP8pQBahVoDPYQg=; b=sfWVSOzKfBiKpu
	Af/cNhHEaYHMhjHrV0Udo8agBiB8RBLr8b4+FvF34GM583fA0qUxK/AHSR1UxYafL6BtIVGYeltY0
	Sa2GtSSWMv+sy0OPIKgCzXdY/PnGpqswyTLu04yvI3si3Ogj+D+qOfXUpcBrHtAqeCsiz9NRI3daO
	y3A/m1nY5CISIBiwyadhfeR+AirDOyKqM7vHFFQpoV/W/QaTI3ef5A9TY1SaoQaiyZoCJ2pQrG1z/
	FXXrv3tyCgHxfMyXe8jim++txBg1PWXeu09We3SGEzOOBwzTjNLrx3h795PwcpXc5hLGPtEu8EQLy
	z4FamIAM5IVk7F7S5/jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBdCL-009dai-Vb; Thu, 05 Aug 2021 13:14:10 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBdC9-009dXX-1T
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 13:14:00 +0000
Received: by mail-wr1-x431.google.com with SMTP id z4so6477717wrv.11
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 06:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UUu523d0YBVb9bSzCWt3RRa6Pgd03o5Xn6oQ4tg8F7w=;
 b=aDTOYxz8dH7dnZEhyCzIcsmSkYNGAm00DR997ghOR4mCJMeOeY+UEPoKObi4M+Xzsi
 NaAvvnU8eKjBNe1JCwifAUs5TXQEoaZtYocEW7xmUiDUjRvMy7NaJSaUglrNZbOF3g/K
 znlpcZs//mW1k2rnKB739JmGh1BTxp7K6/PC4GJQvyCjGvBYGv4A9hwa+Lbx0zGt8wbq
 BAqTj01ZqKapsSkl3NkZdjPJ07yu0nAeoiWdRuBNyPrSb57vi+gGkN1jNyep3r4J9nTb
 2WFRegGYnYQqywRNbelMvGE/OovM4eM3lE8+1WGHQHPFgfJ1eR+dES2M15qxAxw+vnLJ
 5aLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UUu523d0YBVb9bSzCWt3RRa6Pgd03o5Xn6oQ4tg8F7w=;
 b=aZh/XK7vAuRH5ge1c9C7zVmCs3UclcuL+0PvbxHv4aBJ6bjccwdh+O+rYpyJ3nnWIg
 iDolwI5lKTViD1zBUys0Jn7oCOuEdv6FFjpLlEIWxkPHwFyMgz9QEam6/Plwme9gqkRt
 AlazNH69O3+kpC3aEmn0AoZlLHFHVSdR7FeHstrMOGkycaYreTW9Rw659uM7bGk8O1xp
 Xe556/ku2yPyDtrliGj0e3lw0nIIiSn0/TjJQsu5rkyohh9pOggcJHZpE7onkM48ku81
 sUtT6vWLJneIqltFmrLqbActbdcGNkTNL/qI752skPGQcfHf9WKg6T5ts08Nc56TiSST
 0TxA==
X-Gm-Message-State: AOAM531AfTlDakSLipZIDzRkXIsOYXRexFE3LJMVFfc/t9wc00kb9AaU
 qsdxq8ahBBuU/js9SeDiYQZYgQ==
X-Google-Smtp-Source: ABdhPJxQ+UEI5xJdyxlz1PDCgogsvmKKjafiAQQ8CdNDUJZ1OzRvx5onZrnOxCLq+Z8PhJmIHLUrmA==
X-Received: by 2002:a5d:457b:: with SMTP id a27mr5153679wrc.169.1628169223212; 
 Thu, 05 Aug 2021 06:13:43 -0700 (PDT)
Received: from google.com ([109.180.115.228])
 by smtp.gmail.com with ESMTPSA id p10sm8643316wme.30.2021.08.05.06.13.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 06:13:42 -0700 (PDT)
Date: Thu, 5 Aug 2021 14:13:40 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, maccraft123mc@gmail.com,
 sre@kernel.org, heiko@sntech.de, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [RFC v2 2/4] mfd: Add Rockchip rk817 battery charger support
Message-ID: <YQvkBAaFHIGtvmKz@google.com>
References: <20210726190130.1973-1-macroalpha82@gmail.com>
 <20210726190130.1973-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210726190130.1973-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_061357_131803_23ADE5D4 
X-CRM114-Status: GOOD (  10.09  )
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

T24gTW9uLCAyNiBKdWwgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCByazgxNyBjaGFyZ2VyIHN1
cHBvcnQgY2VsbCB0byByazgwOCBtZmQgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF5YSBN
YXR1c3pjenlrIDxtYWNjcmFmdDEyM21jQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQv
cms4MDguYyAgICAgICB8IDE2ICsrKysrKy0KPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8
IDg3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNo
YW5nZWQsIDEwMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpGb3IgbXkgb3duIHJlZmVy
ZW5jZSAoYXBwbHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2NrKToKCiAgQWNrZWQt
Zm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9u
ZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2Vz
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
