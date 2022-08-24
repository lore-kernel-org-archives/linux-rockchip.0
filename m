Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 234D1C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 12:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvzB1QoZ4cp4s3kT/jConybhWKQNLvlXH4182jByi14=; b=qdbsAVlUBL30H4
	7tBC6fBJWRVCb60JeD+96aqOdfVKkWS/Zb8tLYrr7IwMR5siaEaYtQxNsT/a/rm+mKlIJSAUhAVia
	tYMICBt9NTSAxWspq+lIQxp79WL7ZgYvc72g7N1ORBXSZXmHnRA6QkllG9B99ErLSCiACA6IqWTQt
	rueTLgiSG+CIyT2w3scejc0VLwwFpXvxbahIDBmaOpGRapr+uiUGO59kf0ccP4ke0bb6x+4pU1dS/
	+7R+cOFUNWLcVK09Dnbf5z8gPgNxFF79QLw/nS3BKrx7+vA5MhnquNXwM8dSSxKqK7BwbUqsoLMJZ
	tceLsDh2XPdUnZELO4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQplx-00Cupr-HL; Wed, 24 Aug 2022 12:46:17 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQplk-00CujP-QP
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 12:46:06 +0000
Received: by mail-lj1-x229.google.com with SMTP id q18so15313856ljg.12
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 05:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=dXFjQXYaPJ46EayRA2wpurWIqnj56CjvFObMeKjmkMA=;
        b=LQSTB1N12x2Sd3b2rKnPafmKwxLt4CtyJO+j53ZUc5VvbmvBgZ5T1CGB0F9vhxDvwS
         P4Uzq6IyaFB1KD5CCPo9wbXrH9I4obs/OjzdnxwJE5zqoiWpWZy0kdD/qOv1JOnvB2og
         vM1Un4TmYPQDUMflDuHUdhUTBGCtSY3LNjh7j+LfZIJAgoz0gUF6rsIP997c7q2IBJgk
         QLT5wVv6zX7Gp1dy6M35VphqrgGSqGpCZrIFv1GcBNLsI6M/uoKmmU+or2Qp3aMs7Ev4
         eMYU6IgB3flwrJa53zCPo7ZsrEoAcG5tMn517Fjb9QLIo6P6xKhH5FCIEDD9SjyfdG2I
         Tvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=dXFjQXYaPJ46EayRA2wpurWIqnj56CjvFObMeKjmkMA=;
        b=zmdKDL5frRAcc0JX+Os9wRf0ISKn4nobldBBiyvbWChCA51DrFM1LaiC0AGucSwUSb
         FUNkUVMoIpfPlk8UAzjORAxDSeAK1LCN07shlfbtzTqq7qfaE9bFdPBADVnP6l37MtPO
         pn5wHHgj5mlur1b8qrBABeSKeauG2CBTclZWWGzQ6ER3xnBnhDzfH9uSeInH+NSsGcPj
         rfaI+sQ+qHVxGPHsdkDR4RJMvf0zJW4yQvHwF6ANUhfSngUfBz2cqfTGts3d6YFeCYK0
         ICaYKY2LIJBFF82fntfRgdSTgUysxWi11RNSmkojUnER7l7WVMLl7GOyNFG6MUfqnNu6
         a82A==
X-Gm-Message-State: ACgBeo18QEQq2UkN3KT1i85YIv9PuFwsXsdo0Z7VPgByaEswss4vi7qZ
	Xq7cLYKFqQgzbQGSLrUG95dQpw==
X-Google-Smtp-Source: AA6agR5Pq9pAbrdBD5aMavgVhWFd6VwsZKTDZor8XxxZmc6LSAMOC7EWj20VfflsO7ik7OkpNMvffQ==
X-Received: by 2002:a2e:a801:0:b0:261:91a3:bc44 with SMTP id l1-20020a2ea801000000b0026191a3bc44mr7980077ljq.497.1661345161950;
        Wed, 24 Aug 2022 05:46:01 -0700 (PDT)
Received: from [10.243.4.185] (213-212-21-103.static.ip-only.net. [213.212.21.103])
        by smtp.gmail.com with ESMTPSA id o3-20020ac24e83000000b00492d7a7b4e3sm2226191lfr.4.2022.08.24.05.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:46:01 -0700 (PDT)
Message-ID: <cb52fd9d-6b34-b0f7-ec00-0f821ca51d3c@linaro.org>
Date: Wed, 24 Aug 2022 15:46:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Stephen Chen <stephen@radxa.com>,
 Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
References: <20220824080903.3696847-1-jagan@amarulasolutions.com>
 <20220824080903.3696847-2-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824080903.3696847-2-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_054604_866923_B7CB9514 
X-CRM114-Status: GOOD (  18.86  )
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

T24gMjQvMDgvMjAyMiAxMTowOSwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgc3VwcG9ydCBmb3Ig
UmFkeGEgUk9DSyA0QysgU0JDLgo+IAo+IDRDKyByZXBsYWNlZCBEUCB3aXRoIEhETUkgYW5kIHVw
ZGF0ZWQgRlBDIGNvbm5lY3RvcnMKPiBmb3IgTUlQSSBEU0kvQ1NJIGNvbXBhcmVkIHRvIDRDIHJl
dmlzaW9uLgo+IAo+IEFsc28sIGFuIG9mZmljaWFsIG5hbWluZyBjb252ZW50aW9uwqBmcm9tIFJh
ZHhhIG1lbnRpb24KPiB0byByZW1vdmUgUGkgZnJvbSBib2FyZCBuYW1lLCBzbyB0aGlzIDRDKyBp
cyBuYW1lZCBhcwo+IFJhZHhhIFJPQ0sgNEMrIG5vdCBSYWR4YSBST0NLIFBpIDRDKy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBTdGVwaGVuIENoZW4gPHN0ZXBoZW5AcmFkeGEuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IE1hbm9qIFNhaSA8YWJiYXJhanUubWFub2pzYWlAYW1hcnVsYXNvbHV0aW9ucy5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+
Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8
ICAgMSArCj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay00Yy1wbHVzLmR0cyB8
IDY0MSArKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA2NDIgaW5zZXJ0aW9u
cygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9jay00Yy1wbHVzLmR0cwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtl
ZmlsZQo+IGluZGV4IGVmNzlhNjcyODA0YS4uZjkyNjM3ZWI2ZjkwIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gQEAgLTQ2LDYgKzQ2LDcgQEAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1wdW1hLWhhaWtvdS5kdGIKPiAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2MtcGMuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazMzOTktcm9jLXBjLW1lenphbmluZS5kdGIKPiAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2MtcGMtcGx1cy5kdGIKPiArZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2NrLTRjLXBsdXMuZHRiCj4gIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jay1waS00YS5kdGIKPiAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2NrLXBpLTRhLXBsdXMuZHRiCj4gIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jay1waS00Yi5kdGIKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay00Yy1wbHVzLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stNGMtcGx1cy5kdHMKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Y5OTk3YzAxMWQyCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXJvY2stNGMtcGx1cy5kdHMKPiBAQCAtMCwwICsxLDY0MSBAQAo+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAy
MDE5IEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZAo+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMTkgUmFkeGEgTGltaXRlZAo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjIgQW1hcnVsYSBT
b2x1dGlvbnMoSW5kaWEpCj4gKyAqLwo+ICsKPiArL2R0cy12MS87Cj4gKyNpbmNsdWRlICJyazMz
OTkuZHRzaSIKPiArI2luY2x1ZGUgInJrMzM5OS1vcHAuZHRzaSIKPiArCj4gKy8gewo+ICsJbW9k
ZWwgPSAiUmFkeGEgUk9DSyA0QysiOwo+ICsJY29tcGF0aWJsZSA9ICJyYWR4YSxyb2NrLTRjLXBs
dXMiLCAicm9ja2NoaXAscmszMzk5IjsKPiArCj4gKwlhbGlhc2VzIHsKPiArCQltbWMwID0gJnNk
bW1jOwo+ICsJfTsKPiArCj4gKwljaG9zZW4gewo+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6
MTUwMDAwMG44IjsKPiArCX07Cj4gKwo+ICsJc2Rpb19wd3JzZXE6IHNkaW8tcHdyc2VxIHsKPiAr
CQljb21wYXRpYmxlID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKPiArCQljbG9ja3MgPSA8JnJrODA5
IDE+Owo+ICsJCWNsb2NrLW5hbWVzID0gImV4dF9jbG9jayI7Cj4gKwkJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JndpZmlfZW5hYmxlX2g+Owo+ICsJCXJlc2V0
LWdwaW9zID0gPCZncGlvMCBSS19QQjIgR1BJT19BQ1RJVkVfTE9XPjsKPiArCX07Cj4gKwo+ICsJ
Y2xraW5fZ21hYzogZXh0ZXJuYWwtZ21hYy1jbG9jayB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2st
b3V0cHV0LW5hbWVzID0gImNsa2luX2dtYWMiOwo+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiAr
CX07Cj4gKwo+ICsJdmNjNXYwX3N5czogdmNjLXN5cyB7CgpVc2UgY29uc2lzdGVudCBwcmVmaXhl
cyBvciBzdWZmaXhlcywgc28gdmNjLXN5cy1yZWd1bGF0b3IuCgooLi4uKQoKPiArCXZkZF9ncHU6
IHN5cjgyOEA0MSB7CgpOb2RlIG5hbWVzIHNob3VsZCBiZSBnZW5lcmljLgpodHRwczovL2Rldmlj
ZXRyZWUtc3BlY2lmaWNhdGlvbi5yZWFkdGhlZG9jcy5pby9lbi9sYXRlc3QvY2hhcHRlcjItZGV2
aWNldHJlZS1iYXNpY3MuaHRtbCNnZW5lcmljLW5hbWVzLXJlY29tbWVuZGF0aW9uCgoKQmVzdCBy
ZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
