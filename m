Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0EFDC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 12:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZzi23l/rFKSUFXocz/5TkbXzbnT5y6Iv98WYZKx+Sc=; b=Mq6y5OuVd4mF1x
	0rkXQjlrSwGFlF28qeItT53bw9NWrA4C1cNIy654o6CToPMtAK9aR9yKLK4vN0rdTZdzbao6BIJ3x
	PmoGIcp7Tai/XSH+/AWe++LSxa3D+8dZXrcHNGzBimGQ6KXZHv24X4HJINKlmBoiX4UYIxKX51442
	/BiGHSsKZ7BmzRpWCBV875w8TRypYw9NsiQpBnDAThLJdAdoHZ7EaAnVXvg9diaskV2/F4wYyvy2s
	3UfL13zoyZVIrSgk4j1Aj5C4y1stnnPihtKoygMo5ZeJrHNg4VmgoTBuRMODWdv0y5G5MN+pLcetX
	WScZMJvvcWQLBVOWRCAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNDbK-000lFL-JM; Thu, 24 Feb 2022 12:52:06 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNDbG-000lBf-9N
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 12:52:04 +0000
Received: by mail-wm1-x334.google.com with SMTP id
 n13-20020a05600c3b8d00b0037bff8a24ebso3408060wms.4
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 04:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1y26t3z5KmogzVzaRXh0xZ8+wk/glRrMhjsYhZ6NNpI=;
 b=l2A1dmVsQ69rlhJLpwmjB2fa5bCE62/fs+1myFe5KswaVzqgXHDHZY7BxwuN52LfTn
 ymTtWt2+ah81VG9+r5VUl5lNt2WVOVR6Tq11NsK8KqEpv9JqtUt2MDK5I/tWDCl9RnPj
 vdgtWMbOrNX+Mmjry8sGIgAq5kCtZ+cnHNaZTQXMvjzd5SYbmelX7LpVgIgWahuqvk4D
 RHlYhGzcC/oZ/IaL80XYnes0EJhMDujLWZPB1eKIAS4TjUxGK9P8pOwIMdElCbMzRA0k
 ZFCpcCz0AgM4QtJKVREFOeObRlFPS6X3vG+EaQs7fne0jrOwx6In2PQ01gHTP9i4ro4X
 /FrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1y26t3z5KmogzVzaRXh0xZ8+wk/glRrMhjsYhZ6NNpI=;
 b=eryxEKEVj3ZK5IJmyhTS5iPhCFWN83izbMCv4mnzsydt+bAKxpP6Gl4OZpPZ2XVJNy
 5LWVlRzz2LxOZkdycgcufSKZ3072ZH+TSpaiywGpiB5owFc8S+IoGnH5bneMeNaOxA1Z
 xlj73/ptNkz1NT5hfxb7uhGFn7AKnyiKjdf6C3kSfbCeSdG9y00tak1lCbR+RUBot7TV
 sxEnbEelbMvIP+DAWOLzZXKXi22jP71sUysEKx20Tdm2w44txIyNBUdJpXpbqdk8Mm5T
 4ovHyTqcBw+fezwR4hOubnES4kDosozsZu+SQ02Do7BMUIBnbjcdiRvC5nkKZxn0EtXi
 9g6g==
X-Gm-Message-State: AOAM532zcyoViWm36birKCQG+VW7D376iTrk4AzPLAU6JNr+VwLQskS9
 6vYth08jqnMjeVjdkB91YtHeuQ==
X-Google-Smtp-Source: ABdhPJxx0eBVNp8nFphGUFZsIuvZMVUId0v9AZP4IrgzocOtHXpv/ScIaresc8g3bEGwUO/d7+aBPg==
X-Received: by 2002:a05:600c:4f83:b0:37c:d057:3efe with SMTP id
 n3-20020a05600c4f8300b0037cd0573efemr11320753wmq.143.1645707120272; 
 Thu, 24 Feb 2022 04:52:00 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id c6sm2538733wmb.25.2022.02.24.04.51.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 04:51:59 -0800 (PST)
Date: Thu, 24 Feb 2022 12:51:57 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Rob Herring <robh+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
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
Message-ID: <Yhd/bXqehm98C/Jo@google.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
 <Yhd9CjAbI7MJu56L@orome>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yhd9CjAbI7MJu56L@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_045202_364671_6E5293B1 
X-CRM114-Status: GOOD (  12.76  )
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

T24gVGh1LCAyNCBGZWIgMjAyMiwgVGhpZXJyeSBSZWRpbmcgd3JvdGU6Cgo+IE9uIE1vbiwgRmVi
IDE0LCAyMDIyIGF0IDA5OjE5OjEzQU0gKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
Cj4gPiBJbmNsdWRlIGdlbmVyaWMgcHdtLnlhbWwgc2NoZW1hLCB3aGljaCBlbmZvcmNlcyBQV00g
bm9kZSBuYW1pbmcuICBLZWVwCj4gPiB0aGUgb2xkIG5hbWUgaW4gYmluZGluZ3MgYXMgZGVwcmVj
YXRlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6
dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29tPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9nb29nbGUsY3Jvcy1lYy55YW1sICAgIHwgNCArKysrCj4g
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2dvb2dsZSxjcm9zLWVjLXB3bS55YW1sICAg
ICAgICAgIHwgNSArKysrLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gQXBwbGllZCwgdGhhbmtzLgoKU3VwZXIsIHRoYW5rcyBULgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpQcmluY2lwYWwgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9w
ZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
