Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDFE5C0015E
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 12:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGx8FaOnrtgF3/yUL3KbSVA/Vt/msGB0knlQLTrdlos=; b=Ea8NM+xEEvj6eC
	tiFA1xHzjIO7lRNZdBQkJuuZiGTIMztKMMNd+fFZm1UKu9WdMOv3CbVcqqV+2c/V4XLpZBLjUaCjL
	Jqh8bz8/Hh1bobnFbvW+6S6PODWfAwpxoFxtYC46Hu0jr+wVxO9wLs/sbcGhUXTRzIbq9d6ES+FJW
	xDPHmZvCfF7m94tS4+LRYcai4VLN87MKKGRg7oh5p7ysBwmrUOjQ8MbaCL67wSVdPTXSTyJni1Rj8
	6Y2Xdmgkai4Ql8hywEa/GCMqHQOXcmqZI+2V6OC7AAJeXp23DBo7WK6V6MsMkwt1oa/sbv6zEfW7D
	kSNqTi5lc0o+CkFpAGeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIfT-00AUAJ-2g;
	Mon, 03 Jul 2023 12:28:35 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIfR-00AU7U-10
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Jul 2023 12:28:34 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-98e011f45ffso410352066b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Jul 2023 05:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688387309; x=1690979309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+6M152gdY/lBTJnlZGUQ74XMgASY/+UfhDS7moIYzgc=;
        b=ueP9DH+RCuR7d/Eb3Tl6FM81FNi5B+ZGthqHlULhWOQEW4GACtYosybTXU8F1WjCOm
         XMnSL6j4JyMNQZ285JysTI7LbK1xjsBVJCKcqwmlXZa7Rtgine/lxt/vTZv2cSY9NPO7
         1t/uVFiNDaadc4l4nESKqIPgL7jdS7Sb1IXwolrrAVwGNvQXIf9kFbaJLAAuJqVnCUgc
         x9WRMCL+zGDOajscVz5gVa8x5aeakL2SgKUU0VziTk7CMSeNliAQy+3e8lcJtK0TYY//
         Wng/lEgJnOHJP020f/CQQiytbwFCAdgZcNkZUgMmdTQDD2qAy94Vk5gWAVEk2Om+VD4I
         8VOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688387309; x=1690979309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+6M152gdY/lBTJnlZGUQ74XMgASY/+UfhDS7moIYzgc=;
        b=lIRl0T9vL5m1QI/05WcqHU67NsZrbNO3075gZ+GApd8hr+DBzv4vXJxTG4tPi8nW9q
         QnCR3tbeJpG3dpJI1ucOVs0RReFhBEuK2qEgo6eQVou6JhM1JzpG1HkGm0JcYfbkmCda
         yp1AJgKqELphJQikd1UgxMCzq/SzlAGz1CzM6PQnSPFOxIW09nxiQUKKemtPE0n5GkGk
         XBYiMChQna5bFy4xuSJN9qbEsoWJNrrcSSr3ASfpGWal3AC1yuavBWMJIRimKeY7VxIw
         fcMAqoRRtrOcJbFSpamPsyYW9pD1YYSC6RT13dXPak4w/w+ngSPK1SoNhJ4waA3IwO2w
         1Vcw==
X-Gm-Message-State: ABy/qLbjZSSmKxxo5pqj1bOwwd2tBf+z4zXkzk1Noz6gMJvFAVqyZWL8
	vDyYLB+7i8sfUqusH5B9lGOtrQ==
X-Google-Smtp-Source: ACHHUZ5z9X4wnEecRoQBccdRRk1O19p3dtkMCjmwrIO1xJ1bN3Oa+qfbZPRY1w6NaUL14nbysKhzZg==
X-Received: by 2002:a17:906:4a91:b0:98e:26ae:9b07 with SMTP id x17-20020a1709064a9100b0098e26ae9b07mr5185183eju.35.1688387309422;
        Mon, 03 Jul 2023 05:28:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x26-20020a1709064a9a00b009786ae9ed50sm11848089eju.194.2023.07.03.05.28.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 05:28:29 -0700 (PDT)
Message-ID: <9d0ce727-6473-e326-6b75-f8415fdb85b9@linaro.org>
Date: Mon, 3 Jul 2023 14:28:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 01/15] genirq/devres: Add error information printing
 for devm_request_threaded_irq()
Content-Language: en-US
To: Yangtao Li <frank.li@vivo.com>, Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: miquel.raynal@bootlin.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 amitk@kernel.org, rui.zhang@intel.com, mmayer@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, thara.gopinath@gmail.com,
 heiko@sntech.de, mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com,
 srinivas.pandruvada@linux.intel.com,
 DLG-Adam.Ward.opensource@dm.renesas.com, shangxiaojing@huawei.com,
 bchihi@baylibre.com, wenst@chromium.org, hayashi.kunihiko@socionext.com,
 niklas.soderlund+renesas@ragnatech.se, chi.minghao@zte.com.cn,
 johan+linaro@kernel.org, jernej.skrabec@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20230627101215.58798-1-frank.li@vivo.com>
 <20230627110025.vgtplc6nluiiuvoh@pengutronix.de> <87h6qpyzkd.ffs@tglx>
 <247a8166-f131-2d07-ec2b-479a4c19297f@vivo.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <247a8166-f131-2d07-ec2b-479a4c19297f@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_052833_394448_05A4A743 
X-CRM114-Status: GOOD (  23.01  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDMvMDcvMjAyMyAxMzo1NCwgWWFuZ3RhbyBMaSB3cm90ZToKPiBIaSBLcnp5c3p0b2YsCj4g
Cj4gT24gMjAyMy82LzMwIDE5OjExLCBUaG9tYXMgR2xlaXhuZXIgd3JvdGU6Cj4+IE9uIFR1ZSwg
SnVuIDI3IDIwMjMgYXQgMTM6MDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+Pj4gT24gVHVl
LCBKdW4gMjcsIDIwMjMgYXQgMDY6MTI6MDFQTSArMDgwMCwgWWFuZ3RhbyBMaSB3cm90ZToKPj4+
Cj4+PiBXaGlsZSBJIGFzc3VtZSBjaGFuZ2luZyB0byBkZXZfZXJyX3Byb2JlIGlzIGEgcmVzdWx0
IG9mIG15IGNvbmNlcm4gdGhhdAo+Pj4gbm8gZXJyb3Igc2hvdWxkIGJlIHByaW50ZWQgd2hlbiBy
Yz0tRVBST0JFREVGRVIsIG15IG90aGVyIGNvbmNlcm4gdGhhdAo+Pj4gYWRkaW5nIGFuIGVycm9y
IG1lc3NhZ2UgdG8gYSBnZW5lcmljIGFsbG9jYXRpb24gZnVuY3Rpb24gaXMgYSBiYWQgaWRlYQo+
Pj4gc3RpbGwgc3RhbmRzLgo+PiBJIGFncmVlIGluIGdlbmVyYWwsIGJ1dCBpZiB5b3UgYWN0dWFs
bHkgbG9vayBhdCB0aGUgY2FsbCBzaXRlcyBvZgo+PiBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJx
KCkgdGhlbiB0aGUgdmFzdCBtYWpvcml0eSBvZiB0aGVtIHByaW50IG1vcmUgb3IKPj4gbGVzcyBs
b3VzeSBlcnJvciBtZXNzYWdlcy4gQSBxdWljayBncmVwL3NlZC9hd2svc29ydC91bmlxIHJldmVh
bGVkCj4+Cj4+ICAgICAgIDUxOSBtZXNzYWdlcyB0b3RhbCAodGhlcmUgYXJlIHByb2JhYmx5IG1v
cmUpCj4+Cj4+ICAgICAgIDM1MiB1bmlxdWUgbWVzc2FnZXMKPj4KPj4gICAgICAgMzIzIHVuaXF1
ZSBtZXNzYWdlcyBhZnRlciBsb3dlciBjYXNpbmcKPj4KPj4gICAgICAgICAgIFRob3NlIDMyMyBh
cmUgbW9zdGx5IGp1c3QgdmFyaWFudHMgb2YgdGhlIHNhbWUgcGF0dGVybnMgd2l0aCBzbGlnaHQK
Pj4gICAgICAgICAgIG1vZGlmaWNhdGlvbnMgaW4gZm9ybWF0dGluZyBhbmQgaW5mb3JtYXRpb24g
cHJvdmlkZWQuCj4+Cj4+ICAgICAgIDE4NiBvZiB0aGVzZSBtZXNzYWdlcyBkbyBub3QgZGVsaXZl
ciBhbnkgdXNlZnVsIGluZm9ybWF0aW9uLAo+PiAgICAgICAgICAgZS5nLiAibm8gaXJxIiwgIgo+
Pgo+PiAgICAgICBUaGUgbW9zdCB1c2VmdWwgb25lIG9mIGFsbCBpczogImNvdWxkIHJlcXVlc3Qg
d2FrZXVwIGlycTogJWQiCj4+Cj4+IFNvIHRoZXJlIGlzIGNlcnRhaW5seSBhbiBhcmd1bWVudCB0
byBiZSBtYWRlIHRoYXQgdGhpcyBwYXJ0aWN1bGFyCj4+IGZ1bmN0aW9uIHNob3VsZCBwcmludCBh
IHdlbGwgZm9ybWF0dGVkIGFuZCBpbmZvcm1hdGl2ZSBlcnJvciBtZXNzYWdlLgo+Pgo+PiBJdCdz
IG5vdCBhIGdlbmVyYWwgYWxsb2NhdG9yIGxpa2Uga21hbGxvYygpLiBJdCdzIHNwZWNpYWxpemVk
IGFuZCBpbiB0aGUKPj4gdmFzdCBtYWpvcml0eSBvZiBjYXNlcyBmYWlsaW5nIHRvIHJlcXVlc3Qg
dGhlIGludGVycnVwdCBjYXVzZXMgdGhlCj4+IGRldmljZSBwcm9iZSB0byBmYWlsLiBTbyBoYXZp
bmcgcHJvcGVyIGFuZCBjb25zaXN0ZW50IGluZm9ybWF0aW9uIHdoeQo+PiB0aGUgZGV2aWNlIGNh
bm5vdCBiZSB1c2VkIF9pc18gdXNlZnVsLgo+Pgo+PiBZYW5ndGFvOiBUaGUgd2F5IGhvdyB0aGlz
IGlzIGF0dGVtcHRlZCBpcyBub3QgdXNlZnVsIGF0IGFsbC4KPj4KPj4gICAgICAxKSBUaGUgY2hh
bmdlbG9nIGlzIHdvcmQgc2FsYWQgYW5kIHByb3ZpZGVzIDAgcmF0aW9uYWxlCj4+Cj4+ICAgICAg
ICAgQWxzbyBzdWNoIHNlcmllcyByZXF1aXJlIGEgY292ZXIgbGV0dGVyLi4uCj4+Cj4+ICAgICAg
MikgVGhlIGRldl9lcnIoKSB3aGljaCBpcyBhZGRlZCBpcyBub3QgaW5mb3JtYXRpdmUgYXQgYWxs
IGFuZCBjYW5ub3QKPj4gICAgICAgICByZXBsYWNlIGFjdHVhbGx5IHVzZWZ1bCBlcnJvciBtZXNz
YWdlcy4gSXQncyBub3QgdGhhdCBoYXJkIHRvCj4+ICAgICAgICAgbWFrZSBpdCB1c2VmdWwuCj4+
Cj4+ICAgICAgMikgQWRkaW5nIHRoZSBwcmludGtzIHVuY29uZGl0aW9uYWxseSBmaXJzdCB3aWxs
IGVtaXQgdHdvIG1lc3NhZ2VzCj4+ICAgICAgICAgd2l0aCBkaWZmZXJlbnQgY29udGVudC4KPj4K
Pj4gICAgICAgICBUaGlzIGlzIG5vdCBob3cgc3VjaCBjaGFuZ2VzIGFyZSBkb25lLgo+Pgo+PiAg
ICAgICAgIFRoZSBwcm9wZXIgYXBwcm9hY2ggaXMgdG8gY3JlYXRlIGEgd3JhcHBlciBmdW5jdGlv
biB3aGljaCBlbWl0cwo+PiAgICAgICAgIHRoZSBlcnJvciBtZXNzYWdlOgo+Pgo+PiAgICAgICAg
IHdyYXBwZXIoLi4uLi4sIGNvbnN0IGNoYXIgKmluZm8pCj4+ICAgICAgICAgewo+PiAgICAgICAg
ICAgICAgcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSguLi4uKTsKPj4gICAgICAgICAg
ICAgIGlmIChyZXQgPCAwKSB7Cj4+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxl
ZCB0byByZXF1ZXN0ICVzaW50ZXJydXB0ICV1ICVzICVzOiAlZFxuLAo+PiAgICAgICAgICAgICAg
ICAgICAgICAgICB0aHJlYWRfZm4gPyAidGhyZWFkZWQgIiA6ICIiLAo+PiAgICAgICAgICAgICAg
ICAgICAgICAgICBpcnEsIGRldm5hbWUsIGluZm8gPyA6ICIiLCByZXQpOwo+PiAgICAgICAgICAg
ICAgfQo+PiAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4gICAgICAgICB9Cj4gCj4gCj4gSGVy
ZS4KPiAKPiBWMyB3YXMgbW9kaWZpZWQgYWNjb3JkaW5nIHRvIHRnbHgncyBzdWdnZXN0aW9uLCBp
ZiB0aGVyZSBpcyBhbnkgcHJvYmxlbSwgCj4gcGxlYXNlIHBvaW50IG91dC4KClRoZSBjb21tZW50
IHdhcyBhYm91dCByZXF1ZXN0X3RocmVhZF9pcnEsIG5vdCBhYm91dCBkZXZyZXMgYWxsb2MuIERv
bid0Cm1peCB0aGUgcGxhY2VzLiBSZWFsbHksIHNpbmNlIHdoZW4gZG8gd2UgcHJpbnQgYW55IGVy
cm9ycyBvbiBFTk9NRU0/CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
