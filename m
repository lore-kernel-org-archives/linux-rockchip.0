Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C377C636D6
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Feb 2023 19:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xvL6VFfBqskNB3F5LUPro1zEBeKo1OOZXj33mz16dc=; b=B5qyRPAfZVKYjd
	mRvENLaBiIN1SRgcyf/6knq21AORQp3tOIBlfGoVlpyBmQPkJEXEn1oTIhm46CBzP8B+I5919RFnH
	zzqTJpjxLPaprUFxIvqAuikYvuPxO/1tg8MJEvyEYIuVmFNpuDhgnCFLXbCTHW3RLhkSp1M0fVF37
	i0EBj1X0+UKb9UIDMnHNiOuDMFwurupKFRBmxL16Z/j75PEnM0ke3ApkHq3/YgJKv+tJZgudfq5Ts
	mEwySDKkqG4f0KYJ6nDU8xUwuFvlYvTMxg7k9EqstwZEJkgZggShsGgnYlcAfGxT6EAJrOXC9H3HT
	7ApggRbDt/9Tl2a2hB+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUuik-00DpYl-S7; Wed, 22 Feb 2023 19:24:06 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUuiZ-00DpUS-Er; Wed, 22 Feb 2023 19:23:56 +0000
Received: by mail-pl1-x635.google.com with SMTP id h14so10165660plf.10;
        Wed, 22 Feb 2023 11:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVtjYpIHV+F/G/ingVBx6jIgdgl5yssi4YLW8OGrNiA=;
        b=Wt+l673/i3AK1CpL3q4jfsYpc3ydKtCRNrHD2smWCOsHsu5pupRfRz7HJMK0U+Tb3K
         lgzkSxW+pHPeUSZlRTAP4UV0FNjS0LpoGlhh8rBgyxvEq650mnRvew+w1SywqPvYVWXL
         m8qpqJ8IWXwYn/v8dwPT//KDjwHBkWsCrrSwT9KkwLM+Pa6FhS5r2feCF990izO8ETx6
         nN0+w9BqZGQk6jwSyl6Op+beVOSH0Xvu687zcHwKxZBt+cEktTmiaZu8G5K6ICbeG5xf
         7AVFCKwyQfMy/Gzt0oRFK2PVrPrJTZRqG73OkzzU6wfl1M9udY5yVoQsh3HhJzIG+tWG
         vMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jVtjYpIHV+F/G/ingVBx6jIgdgl5yssi4YLW8OGrNiA=;
        b=1qddzG6i1RnyB41eKnYHGV0/yjZ6dRgNu+QbHW6wcNQxi4d49pTelLUDHOEZAVBKD3
         Br5wmWMHasxM33s1ogs8JoL/3V3OjS+8LF6wD+ygYGgaQsN9vKMpSNxMR/MnrwkBwqZ+
         MgKYbHf8SyyzgqMT1T8Ztdgt3i0bz2t+rzTgqt0SDPWJx4uCFAmUjpjj8RuoU/cjFg84
         P7uue+NVs4toVNTLmeh7vl0n0aXci5CkPbupEhImYHOdi47UPZhWkPjXuqE5u6B9EeUT
         uYa4qtQi+9qHw7KOtPLDz0CYIbVBWnle4Xj8G62C33uKMep4Cs5nu+RkoDc2UOGLLeV/
         DyhQ==
X-Gm-Message-State: AO0yUKUVQQRE7DaQ3xhHP4ld5keQsaX9mkkPSbejYkst1HRh95iLPbAt
	4MdXtT0OLKc+ar/DnOVvfGY=
X-Google-Smtp-Source: AK7set++t4HMlPjsHBal6OrZkgceAwcAsao9C0R9qlSCKk167SCs4r8F+dflc7N1eroggJ4F5U/TGw==
X-Received: by 2002:a17:90b:224b:b0:234:6a1:635d with SMTP id hk11-20020a17090b224b00b0023406a1635dmr12313564pjb.49.1677093833790;
        Wed, 22 Feb 2023 11:23:53 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id y15-20020a17090ad70f00b00233e7f0e7dfsm4771111pju.4.2023.02.22.11.23.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 11:23:53 -0800 (PST)
Message-ID: <e07d4ef6-881a-bac7-9895-5ec50bcb585d@gmail.com>
Date: Wed, 22 Feb 2023 11:23:40 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 04/16] thermal/hwmon: Do not set no_hwmon before
 calling thermal_add_hwmon_sysfs()
Content-Language: en-US
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rafael@kernel.org
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Heiko Stuebner <heiko@sntech.de>, Baolin Wang
 <baolin.wang@linux.alibaba.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Stefan Wahren <stefan.wahren@i2se.com>, Mark Brown <broonie@kernel.org>,
 Balsam CHIHI <bchihi@baylibre.com>, ye xingchen <ye.xingchen@zte.com.cn>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:RENESAS R-CAR THERMAL DRIVERS"
 <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20230221180710.2781027-1-daniel.lezcano@linaro.org>
 <20230221180710.2781027-5-daniel.lezcano@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230221180710.2781027-5-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_112355_515973_DE55AD1E 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

T24gMi8yMS8yMyAxMDowNiwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gVGhlIHRoZXJtYWwtPnR6
cC0+bm9faHdtb24gcGFyYW1ldGVyIGlzIG9ubHkgdXNlZCB3aGVuIGNhbGxpbmcKPiB0aGVybWFs
X3pvbmVfZGV2aWNlX3JlZ2lzdGVyKCkuCj4gCj4gU2V0dGluZyBpdCB0byAnZmFsc2UnIGJlZm9y
ZSBjYWxsaW5nIHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKCkgaGFzIG5vCj4gZWZmZWN0Lgo+IAo+
IFJlbW92ZSB0aGUgY2FsbCBhbmQgYWdhaW4gcHJldmVudCB0aGUgZHJpdmVycyB0byBhY2Nlc3Mg
dGhlIHRoZXJtYWwKPiBpbnRlcm5hbHMuCj4gCj4gUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJs
dW5kIDxuaWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPiAjUi1DYXIKPiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KCkFj
a2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gI0Jyb2FkY29t
Ci0tIApGbG9yaWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
