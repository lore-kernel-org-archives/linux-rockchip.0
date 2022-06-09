Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3645AC43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 14:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4z4wkp3iKfzUrhJvrcVfB4n7Ar9v1kNuc28E3jix0SQ=; b=ELsM7GICcLFYjT
	CQYA9j4E9KmyYPGSdyeccDdTiRfewRFFks3crwbbjGiDLvuIEPO9wOE3pifKa4KcFwmjirGE16hgF
	E9MMFduug7QpkenJ1qFoRPzAdJYd+JBHT1MQflOe16AufFyCwAMPW8AB1Uxje1C6/g+K6FRbEHGa8
	bMlbRoOiqyUgoWxkphLPuI3nTffrJdOGlUzMkxQtadBQWEzi5PCxjn12IIH1NWFTXaA1gBXVF4rBa
	SrvNw58APn6tOW5YlKlYorPO6BFQCQK/rFx5frurEUT3ZpngJ2SPwXRI9/pNCggvdE6UImFMSrqGx
	Rle/t113ihI671lfUN6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwp-002R4P-Ga; Thu, 09 Jun 2022 14:15:43 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwc-002Qxp-ME
	for linux-rockchip@lists.infradead.org; Thu, 09 Jun 2022 14:15:34 +0000
Received: by mail-ej1-x62e.google.com with SMTP id u12so47783871eja.8
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jun 2022 07:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xMZyHB+w1HZyBtjYMs8VhyGH58NpWoIROf4SCsJgVWE=;
        b=IHfLfPqINk7QaemV+fnV7fo1ZYEA9/I2MgUtE2RiNbc6CjqAc2dVvhHP6lyYYroDa9
         Btg7oV8h6m2pfWzlCHGvCcDTcw7pxjsTyjpbIYw6dPKrpXJHHisL2zCA2yuGtrk7QCIp
         px21nXKdE0RpOq3V6GbPTBVyPpt4hkWmU9JLFuVFSGu4IK7SLMQpP248PfFxY+wx6KLE
         ZR0cMC6Lic7+BaBSEH6kXcnedohAd5llgl5UciHgNnTKDqeOZZTEPFbg6qmJDqxPguLg
         VzROxqS2E9P1v+lvmA5yA8oQTUewsPFedXXNZ15QsBxmGxQmreKxQs5MjO7ij0JiBfTg
         8ywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xMZyHB+w1HZyBtjYMs8VhyGH58NpWoIROf4SCsJgVWE=;
        b=Euzl0UPDTWM3aujTE6qmToVgVR2Iy7+afFe09JGOrIP5sd8hDccT9c3TrtZAMzf/Dy
         ew/fCS054qjTYBXlkd3IukUH5dUrMN5JQxn8YBKluvZry7kawzV5RMb2pJv4t9v3BVn+
         F3sKjqSCgPKvT0D7H3xnGt87wuB2boOGrAASAE/ePoRIp6QFTVKn8onK/92WB9QtH8v7
         SGLqwp5JZmk9t7onv25bmC9a0Wcy+f0U1qUvoA5mTYoF1tufXAsskcCe7Z5VuV9mCyvk
         0A88GQerhM4xtELJ4r5JbCyAjbn5x89XW439Sgd8YKGVTvzcVuxqI21gXjve/xw/7PU9
         SeZw==
X-Gm-Message-State: AOAM533/fi4rJ2NPwwvxAbUmR7hCBcCgip6rlENHTk4LJDQ0T71qTdi+
	EQyfym3nY+rRsuXK4GvY1LrMsw==
X-Google-Smtp-Source: ABdhPJwsQpdC8zY3pVgw5zuU9Lvz3PaHrGxutuHe3kM9BTzGZe/6dDFTxGXvB8QTefO1W0gh7jjJeA==
X-Received: by 2002:a17:907:d24:b0:712:1142:88c7 with SMTP id gn36-20020a1709070d2400b00712114288c7mr1505148ejc.435.1654784126853;
        Thu, 09 Jun 2022 07:15:26 -0700 (PDT)
Received: from [192.168.0.198] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id rn13-20020a170906d92d00b006f3ef214df2sm10603243ejb.88.2022.06.09.07.15.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 07:15:26 -0700 (PDT)
Message-ID: <e0f7146d-3ccc-a194-bb1e-c3475ca8c29e@linaro.org>
Date: Thu, 9 Jun 2022 16:15:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 32/48] arm64: dts: rockchip: align gpio-key node names
 with dtschema
Content-Language: en-US
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
 <20220609114026.380682-3-krzysztof.kozlowski@linaro.org>
 <CAO_MupKxvaXRQvMyEUZMThBZ9033OeJec+BtBndjs5oZ3etTEQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAO_MupKxvaXRQvMyEUZMThBZ9033OeJec+BtBndjs5oZ3etTEQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_071530_818872_B626649A 
X-CRM114-Status: GOOD (  15.08  )
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

T24gMDkvMDYvMjAyMiAxNTo1NywgTWF5YSBNYXR1c3pjenlrIHdyb3RlOgo+IGN6dy4sIDkgY3pl
IDIwMjIgbyAxMzo1NiBLcnp5c3p0b2YgS296bG93c2tpCj4gPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4+Cj4+IFRoZSBub2RlIG5hbWVzIHNob3VsZCBiZSBn
ZW5lcmljIGFuZCBEVCBzY2hlbWEgZXhwZWN0cyBjZXJ0YWluIHBhdHRlcm4KPj4gKGUuZy4gd2l0
aCBrZXkvYnV0dG9uL3N3aXRjaCkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPj4gLS0tCj4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIuZHRzICAgfCAgMiArLQo+PiAgLi4uL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJvaWQtZ28yLmR0cyAgIHwgMzIgKysrKysrKysrLS0t
LS0tLS0tLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1uYW5vcGktcjJzLmR0cyAg
IHwgIDIgKy0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWV2Yi5kdHNp
ICB8ICAyICstCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWdlZWtib3guZHRzICAg
ICAgfCAgMiArLQo+PiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzNjgtb3Jpb24tcjY4LW1ldGEuZHRz
ICAgIHwgIDIgKy0KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgtcHg1LWV2Yi5kdHMg
ICAgICB8ICAyICstCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1yODgu
ZHRzICAgfCAgMiArLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0
cyAgICAgIHwgIDIgKy0KPj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1jaHJvbWVib29r
LmR0c2kgICB8ICAyICstCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWdydS1rZXZp
bi5kdHMgICAgfCAgMiArLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtc2Nh
cmxldC5kdHNpIHwgIDIgKy0KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta2hhZGFz
LWVkZ2UuZHRzaSB8ICAyICstCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9w
aS1yNHMuZHRzICAgfCAgNCArLS0KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFu
b3BpNC5kdHNpICAgICB8ICAyICstCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9y
YW5nZXBpLmR0cyAgICAgfCAgMiArLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lYm9vay1wcm8uZHRzIHwgIDQgKy0tCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXJvYy1wYy5kdHNpICAgICAgfCAgMiArLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrcHJvNjQuZHRzaSAgIHwgIDIgKy0KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktc2FwcGhpcmUuZHRzaSAgICB8ICAyICstCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY2LXBpbmVub3RlLmR0c2kgICAgfCAgMiArLQo+PiAgMjEgZmlsZXMgY2hhbmdlZCwgMzggaW5z
ZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzMDgtZXZiLmR0cwo+PiBpbmRleCA5YjRmODU1ZWE1ZDQuLjRiNTQxM2IxMmJm
YSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDgtZXZi
LmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIuZHRz
Cj4+IEBAIC03NSw3ICs3NSw3IEBAIGdwaW8ta2V5cyB7Cj4+ICAgICAgICAgICAgICAgICBwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAgICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZw
d3Jfa2V5PjsKPj4KPj4gLSAgICAgICAgICAgICAgIHBvd2VyIHsKPj4gKyAgICAgICAgICAgICAg
IHBvd2VyLWtleSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMCBS
S19QQTYgR1BJT19BQ1RJVkVfTE9XPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgbGludXgs
Y29kZSA9IDxLRVlfUE9XRVI+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJH
UElPIEtleSBQb3dlciI7Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyNi1vZHJvaWQtZ28yLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzI2LW9kcm9pZC1nbzIuZHRzCj4+IGluZGV4IGVhMDY5NWI1MWVjZC4uNzIzMjhkZDk5M2Vl
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJv
aWQtZ28yLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1v
ZHJvaWQtZ28yLmR0cwo+PiBAQCAtNzEsODIgKzcxLDgyIEBAIGdwaW8ta2V5cyB7Cj4+ICAgICAg
ICAgICAgICAgICAgKiB8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tfAo+PiAgICAgICAgICAgICAgICAgICovCj4+Cj4+IC0gICAgICAgICAgICAgICBzdzEg
ewo+PiArICAgICAgICAgICAgICAgc3dpdGNoLTEgewo+IFdvdWxkbid0IGl0IG1ha2UgbW9yZSBz
ZW5zZSB0byByZW5hbWUgdGhpcyBhbmQgYWxsIG90aGVyCj4gcmVuYW1lZCBub2RlcyBpbiB0aGlz
IGR0cyBpbnRvICJidXR0b24tZHBhZC11cCIgb3IgImJ1dHRvbi0xIiwKPiBhcyBvbiB0aGUgcGh5
c2ljYWwgZGV2aWNlIHRob3NlIGFyZSBidXR0b25zIGFuZCB0aGUgbmFtaW5nCj4gc2NoZW1lIG9m
ICJzdyIgKyBudW1iZXIgc2VlbXMgdG8gYmUgYSBjYXJyeW92ZXIgZnJvbQo+IGRvd25zdHJlYW0g
c291cmNlcy4KCkNhbiBiZSBidXR0b25zLiBJIGFzc3VtZWQgU1cgY29tZXMgZnJvbSBzb21lIGtp
bmQgb2Ygc3dpdGNoLgpJIGFzc3VtZSB5b3UgbWVhbiBvbmx5IHRoaXMgT2Ryb2lkIEdvMiBEVFMs
IGJlY2F1c2Ugc29tZSBvdGhlciBEVFNlcwoobGlrZSBFVkIgYWJvdmUpIGV4cGxpY2l0bHkgY2Fs
bCBpdCAiS2V5IFBvd2VyIi4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
