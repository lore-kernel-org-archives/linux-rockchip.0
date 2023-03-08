Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14863C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 17:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gINSNx6p8KWG51c6k73Fuafm5ZUMk+nxwa5T2uY4OrA=; b=M6yBvagFCbEZHj
	xFj1/y5sjZbUruzO7tP+FD7P9Db2LH+0Cj1TX9pB/ENIQcGqYfGavywNh6yfw3kRpH7HBtQOhN6a/
	f/T/7EiHBa1tzdGwcA4yrodD5uAeSxlkE5c1V5v9flpIv1U/JBD8vMthHpYgocUFajx7X2J4SCD+m
	LGKa1kXy2eWzomoXKQZXwcJnXDXBuuHyq/5+2azsjXOhVTPNVZi38kMISO4MZFVJGQjvgeO/uug49
	N1ZNkXyfAcV7mFpRxCImxGca92Vzb8c5YRjHFXf8mRhtCrNxKq9Bnq25M5C2BGyGkz8Lihpx7pGPo
	ZRecJKharXgOFrdg1+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZxk4-006CrC-16; Wed, 08 Mar 2023 17:38:20 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZxk1-006Cq1-MW
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 17:38:19 +0000
Received: by mail-ed1-x52d.google.com with SMTP id u9so68975019edd.2
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Mar 2023 09:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678297095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tgxVVauKSX/U0bXbgIYmNNiutoT4dF4ii6OJzRsRR5g=;
        b=LKOGfmcDc/Oi00y16H3E0LAnFCWwTtOkvxW58X5/dBkLhVKi1AfNpqzdgB0qZOKFxb
         zi43G5bvUy1MtJSWaK4d9n5rLBmEUyFLavRN2yZLp3f/yyHdHvtofvih2+k5CRbSYaVw
         LBr9iL5yJUBalFXCnsofumNgH7mhSQHMecZpBvggWG40GkK8pW/Qv4Q1IG1duQeiCvQd
         En0EXMllspN69GqJaOIrrcGXOcZvRvUbqDfkMSDy+GBeWYZYQPn5DYNe7+1rfhX9A7Cp
         DKsXM7v8Or3wUyGNBpCifYtWJsDMXShQ7w0oUEkn68ZcSE20rFgjIOotwSCxMY5ndzxS
         /eVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678297095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tgxVVauKSX/U0bXbgIYmNNiutoT4dF4ii6OJzRsRR5g=;
        b=oXnsLfKGJ/b55ei02AQr9ZlW9B5VNPw/qX5tf45F0MQBhZtPxDiA4kt6OTFQHlO+cY
         +KjS8mN5ro5VAtlnHo+Vurslgjggz1cqgcnk2y5v2r/H/RBEYw4KeWpLaq00ByYqOgL1
         oaeRrWqmX64A2cAVGyiANuDih7mzLuztsPj3ZDBgihKv86f3Dk8Fxlel+G4QBwef1NZS
         NunMJeaer5qhM8aLB8th8sHru71R+62z8PH05l81O7xioImPM44Ww4gFxmsE1Ee1+nx6
         /DIDOTg4it7beLTSDNe6mO7ROQqDwvYsgu7dQPOtskrt+A/Gxgdjbbx8ec1qAhaR2kqf
         BEkA==
X-Gm-Message-State: AO0yUKWcOrB6qM/K7BNvuNK6LtJwfU+kQpPExWkqZ3kyDkhrNPS1XKPC
	wdXPvEPm0t87bHJwws5bijDNxw==
X-Google-Smtp-Source: AK7set+MSguNLw31jMo/5DJC83u4ZFA9ITKY02ZD9u91ZIUPerVI8NeHyxpVSZtjEOGeLeSIdbh8JQ==
X-Received: by 2002:a17:907:a581:b0:913:f170:c0e with SMTP id vs1-20020a170907a58100b00913f1700c0emr9688379ejc.20.1678297095561;
        Wed, 08 Mar 2023 09:38:15 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id bt5-20020a170906b14500b008cca31606a8sm7810251ejb.51.2023.03.08.09.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 09:38:15 -0800 (PST)
Message-ID: <976f0b41-c302-f2f2-eb6c-959c62ba3b72@linaro.org>
Date: Wed, 8 Mar 2023 18:38:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Content-Language: en-US
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>, Michael Riesch
 <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Tianling Shen <cnsztl@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
 <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
 <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_093817_759539_0D813AA1 
X-CRM114-Status: GOOD (  14.61  )
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

T24gMDgvMDMvMjAyMyAxNzowOSwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gT24gV2VkLCBN
YXIgOCwgMjAyMyBhdCAzOjMx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+IDxrcnp5c3p0b2Yu
a296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4gaW5kZXggMzVmNzRlZGEz
MGFlLi4wODEzYWQyMmRjNzYgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4gQEAgLTIwMSw2ICsyMDEsMTEg
QEAgcHJvcGVydGllczoKPj4+ICAgICAgICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXI0
cy1lbnRlcnByaXNlCj4+PiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQo+Pj4K
Pj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBGcmllbmRseUVsZWMgTmFub1BpIFI1UyBib2FyZAo+
Pj4gKwo+Pgo+PiBEb2VzIG5vdCBsb29rIGxpa2Ugb3JkZXJlZCBhbHBoYWJldGljYWxseS4gQXJl
IHlvdSBzdXJlIHRoaXMgaXMgY29ycmVjdAo+PiBwbGFjZSBmb3IgaXQ/Cj4gCj4gSG1tLCBzdHJp
Y3RseSBzcGVha2luZywgIkZyaWVuZGx5RWxlYyBOYW5vUGkgUjVTIGJvYXJkIiBzaG91bGQgZ28g
aW4KPiBiZXR3ZWVuIG9mICJGcmllbmRseUVsZWMgTmFub1BpIFIyUyIgYW5kICJGcmllbmRseUVs
ZWMgTmFub1BpNCBzZXJpZXMKPiBib2FyZHMiIGlmIHdlIHdhbnQgaXQgaW4gYWxwaGFiZXRpY2Fs
IG9yZGVyLCBub3QgYWZ0ZXIgIkZyaWVuZGx5RWxlYwo+IE5hbm9QaTQgc2VyaWVzIGJvYXJkcyIg
bGlrZSBpbiB0aGlzIHBhdGNoLiBCdXQgaXQgZG9lc24ndCBsb29rIG5pY2UKPiAoYmVjYXVzZSBS
NVMgd2lsbCBnbyBiZWZvcmUgUjRTKS4KPiAKPiBUaGVyZSBpcyBhbHJlYWR5IHNpbWlsYXIgb3Jk
ZXJpbmcgKGFscGhhYmV0aWNhbC9jaHJvbm9sb2dpY2FsIGZvcgo+IG1vZGVsKSBmb3IgUmFkeGEg
Um9jayBQaSAtICJSYWR4YSBST0NLIFBpIFMiLCAiUmFkeGEgUm9jazIgU3F1YXJlIiwKPiAiUmFk
eGEgUk9DSzMgTW9kZWwgQSIsICJSYWR4YSBST0NLIDUgTW9kZWwgQSIuCj4gCj4gSG93ZXZlciBp
ZiB5b3Ugd2FudCBtZSB0byBzb3J0IGl0IHN0cmljdGx5IGFscGhhYmV0aWNhbGx5LCBJIGNhbiBz
ZW5kIGEgdjIuCgpObywgaXQncyBmaW5lLCBJIGFsc28gZ290IGEgYml0IG1pc2xlYWQgYnkgUjJT
IChJIHRob3VnaHQgaXQgaXMgUlMyKS4KCkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
