Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA646C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 09:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtkJyF3rLCg4kI+rC/CTFtJwLP52JNBrScqDn/elvu0=; b=wXjPgvM/k5PhsU
	nToykLv2zklshAbUCFdjSsWlOtc0KkdCVfIU0kOjuPBH0W4eLCM+NA2tfzjQKpp8p0VT3IM86dXgT
	LVGqpyGsAf5v2FF6V5Ao3pAvX9dGxvf5O0cOofw2ouRKQWv7UUI5du61QnWzvZvRhqjz14Ag6QNDx
	Qq7tEGMoDZP4nMt5WIxv07FqsD4DlG65UxhblAMs5+BsKuYn9tHXcPHVCcYBQpCHij5biibhkH9ol
	28nCeH2wLac3GwADLF+Zme+aifNK1XyRc+c2WJ2r3NZ688Gx8QOPF2g0/jGrJk0FTGOJgTDzqq61W
	zjP7p5Rf/9RSxr+Y7E6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMnko-00DS0m-6f; Wed, 23 Feb 2022 09:16:10 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMnkk-00DRyj-DZ
 for linux-rockchip@lists.infradead.org; Wed, 23 Feb 2022 09:16:07 +0000
Received: by mail-wm1-x334.google.com with SMTP id
 v2-20020a7bcb42000000b0037b9d960079so1124487wmj.0
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Feb 2022 01:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZUexAi7XZpt/IXnr6iWEdkKC6eoohAZnCV7GkbV1MDk=;
 b=UPs30jYkSROqMLjG9j1ccaDvuvFBZ5GNgJvTkAHoPWEguU9vkan3wlqp8w4RRC+sNC
 d6HpX1ZOmhxyb28eXxfPplk+OaEdgK7CK1LlCHbScbnKriOWRk9o0nkk8CQL+j3M8rIz
 uHYHshSSLKD9qppDHOPTFPQo1j2TB4mGO6JJt26ND9E5k+LQJNTi3Unm4yssGvV8rK6F
 csNHqtqJuoSDtXq/kTvRq/JNzMut6/oIOrWqxA9Q1fFh92hTdcaLmwyedYdGhRCd/nC8
 Pi6oTFPTmPvKaXDd5PQ2t8SSGOPBjkBgPW7AROQg92nxlhgTUSXDbHq6ozZVhTRGR6WO
 yPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZUexAi7XZpt/IXnr6iWEdkKC6eoohAZnCV7GkbV1MDk=;
 b=XBZeW7lY2esCua2Uj2IvHOO9VxrjhlucEmtRph95uDCcQ4JwL/IkQTG2ZCVt+PpQOG
 CpTBx4+GugpNH2kpUYI+raVN+qBq7BnPkaWDER6NYNxUGWismsWhRlehManuaSpSUL0Z
 LXlMUj2F5re20rKL0vjUMW4FksyO7wWJ+knpIhmwnxIIQR5FHwW7GCkvYNPjbg5V/mzL
 AmLNTACT9Etbm5d46PGYoBjX4jyXEEoC8qUOIScV/HHtSXgmfmIyDR9/4eqElZeUTK1n
 k1LhtAtGznQZ4Qw9tYVdvcsyb9v4Ui2my78qjFK2eLLNyRhqbFh/l6y7dAI381GiZDRa
 C4Nw==
X-Gm-Message-State: AOAM530cBWPZn7/QOnxkVafA/nwEzd/C4ZXWjmLfCuDzzrQiIXeHFx/v
 H3jMxcHKBtebaLsuazHDSpE+uw==
X-Google-Smtp-Source: ABdhPJwE97ajBq4XbB7MA2j4GjW5Zdm1JD/pIlevtg+JNehqxG7yZMbVnQQYKJW2cgh7nNAlFO7JGg==
X-Received: by 2002:a05:600c:cf:b0:380:f85a:1cd8 with SMTP id
 u15-20020a05600c00cf00b00380f85a1cd8mr1239350wmm.1.1645607764646; 
 Wed, 23 Feb 2022 01:16:04 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id m5sm2565403wrb.13.2022.02.23.01.16.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 01:16:04 -0800 (PST)
Date: Wed, 23 Feb 2022 09:16:01 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Rob Herring <robh+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: pwm: google,cros-ec: include generic
 pwm schema
Message-ID: <YhX7UZSDaqNyD1rV@google.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_011606_498976_724F6227 
X-CRM114-Status: GOOD (  10.83  )
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

T24gTW9uLCAxNCBGZWIgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gSW5jbHVk
ZSBnZW5lcmljIHB3bS55YW1sIHNjaGVtYSwgd2hpY2ggZW5mb3JjZXMgUFdNIG5vZGUgbmFtaW5n
LiAgS2VlcAo+IHRoZSBvbGQgbmFtZSBpbiBiaW5kaW5ncyBhcyBkZXByZWNhdGVkLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAY2Fu
b25pY2FsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21m
ZC9nb29nbGUsY3Jvcy1lYy55YW1sICAgIHwgNCArKysrCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxs
ZWUuam9uZXNAbGluYXJvLm9yZz4KCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9nb29n
bGUsY3Jvcy1lYy1wd20ueWFtbCAgICAgICAgICB8IDUgKysrKy0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KUHJpbmNpcGFsIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
