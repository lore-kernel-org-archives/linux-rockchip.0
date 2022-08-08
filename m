Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C9DC00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 06:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqKG6kOaXIQmNWcIDQtiTff3fjTBNqwB6J/2Ji+pw+k=; b=1+dSEycnlmfv1V
	VD3obi2I2N1fCx8PxxnYxraNXW8Y9LFHELfUck2j1yTPs+hax1jm+DmeSq+2i5Y7+JCtBWNgJ6zuL
	wfHv6QTdogqhYZ6kGK8KAYn8ATkpuzmsYH1ho/sEUtSt8z+VLHulLq68yak/Hat+J2lgggWIgmGPf
	LCyC6pcEJe1kyMfXt/4bGz+dx/DyG56xCaIa+I4PPvuBjBe2UkIkEzdzsC2RcNVBbhhtYA9N9dd9A
	iiPyTtL9fW35FLduRXhcjdJL8IW+pxy22rq0jGd5Un95tEm+vYJ0WMY7oNWQUYbaKwXi0UJyavI/K
	owjxKjJZlPTR6ioQ6rAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwN1-00Brtt-CC; Mon, 08 Aug 2022 06:36:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwMr-00Brn5-AX
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 06:36:02 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z25so11302255lfr.2
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Aug 2022 23:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=a7iWV34sdRjFcuLH46dzhG3J7+RLMWe00w1VFvqsozo=;
        b=U31XLI/sGdKcybMHnWpbUA9sgt2x6/SPGA7kAT6jedJmsyQT83egDMru1XmXLzbPWW
         3FWtq0Qu7I7p2nq7B+OARhmlGI82rIw1p+xraC2Vcn2uLyuflCfkkdd7rxCsAsvyl32w
         oO/HljGWbFHldubfTQZ/IMIRY/shdCq14qIRGPA5XJz3j0QbPtnJC4a4l9iPjZNHfMn8
         iXnyf67KsvSVQGOm1v3eZifUnjTH68M3kF0BTp96XGG8MduWb0RjJvJziuN6hr/K/saX
         KvXexNxoAJP/N3KzhfGdHjKvzgvSFRPM3B/pnxuvYsPVU00FGzGeDN7uI5UaPjfqp+sN
         DZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=a7iWV34sdRjFcuLH46dzhG3J7+RLMWe00w1VFvqsozo=;
        b=vMK4pKTn6WAGIL90Ggh3x/829cOpkozDuHBJ1qm1IGNSxVE5Mk76kLpui8cGPEqETo
         gJg4Ifp5o7NPuQ6ZNAnYIgM1yB3cNr6gbyXvOsq/L8dAFbJAR4Vt9j6ZQCJyg8AiBcn1
         FrZjVP5v86yK4NvSnhH7484ToBFOh7PnjbqMEoyhOcYU6TRnClQxwDyfsMhWX81m08pd
         bTsejHDB08bIIsEyRzyl72JZW6XSHyMvKtn6iVrcv5E1EDqTyThUsH/5JTXzOooe/UQi
         GWwLDnQ2rHtHxWNE0vNsT8SfLMigW5NSwH91URjqZl5oo0GHa3UFf0hGm+NR1qke7KC8
         DPWQ==
X-Gm-Message-State: ACgBeo1WpF0Im4zZtzuQq8hLBbE8Xe8/slfn/nYFqA++6lLWxL9ubrsT
	b3pQG833APPrzJ/4Gu4oNjNi4g==
X-Google-Smtp-Source: AA6agR5ii3yZqNKq4DRXiZbWY4ZF74R+facCrrSILNCCzDBkULKH8Ex1IDQprlCIFxqz6StWhmWl0g==
X-Received: by 2002:a05:6512:32c1:b0:48b:a2bc:d329 with SMTP id f1-20020a05651232c100b0048ba2bcd329mr2512513lfg.487.1659940557764;
        Sun, 07 Aug 2022 23:35:57 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id o24-20020ac25e38000000b0048cf0fef301sm186440lfg.301.2022.08.07.23.35.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 23:35:56 -0700 (PDT)
Message-ID: <6461a695-171a-b160-5406-b8ac31c5ba0e@linaro.org>
Date: Mon, 8 Aug 2022 09:35:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: megi@xff.cz, martijn@brixit.nl, ayufan@ayufan.eu,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_233601_369965_6F857583 
X-CRM114-Status: GOOD (  13.82  )
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

T24gMDYvMDgvMjAyMiAwMTo0NCwgVG9tIEZpdHpoZW5yeSB3cm90ZToKClRoYW5rIHlvdSBmb3Ig
eW91ciBwYXRjaC4gVGhlcmUgaXMgc29tZXRoaW5nIHRvIGRpc2N1c3MvaW1wcm92ZS4KCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXBy
by5kdHMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmY1NjA4
NDg3YWQ1OGYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiBAQCAtMCwwICsxLDM4NSBAQAo+ICsvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiArLyoKPiArICogQ29w
eXJpZ2h0IChjKSAyMDIwIE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMjEgS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KPiAr
ICovCj4gKwo+ICsvLyBQaW5lUGhvbmUgUHJvIGRhdGFzaGVldDogaHR0cHM6Ly9maWxlcy5waW5l
NjQub3JnL2RvYy9QaW5lUGhvbmVQcm8vUGluZXBob25lUHJvLVNjaGVtYXRpYy1WMS4wLTIwMjEx
MTI3LnBkZgo+ICsKPiArL2R0cy12MS87Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9n
cGlvLWtleXMuaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2xpbnV4LWV2ZW50LWNv
ZGVzLmg+Cj4gKyNpbmNsdWRlICJyazMzOTkuZHRzaSIKPiArI2luY2x1ZGUgInJrMzM5OS10LW9w
cC5kdHNpIgo+ICsKPiArLyB7Cj4gKwltb2RlbCA9ICJQaW5lNjQgUGluZVBob25lUHJvIjsKPiAr
CWNvbXBhdGlibGUgPSAicGluZTY0LHBpbmVwaG9uZS1wcm8iLCAicm9ja2NoaXAscmszMzk5IjsK
PiArCWNoYXNzaXMtdHlwZSA9ICJoYW5kc2V0IjsKPiArCj4gKwlhbGlhc2VzIHsKPiArICAgICAg
ICAgICAgICAgIG1tYzAgPSAmc2RpbzA7Cj4gKyAgICAgICAgICAgICAgICBtbWMxID0gJnNkbW1j
Owo+ICsgICAgICAgICAgICAgICAgbW1jMiA9ICZzZGhjaTsKPiArICAgICAgICB9Owo+ICsKPiAr
CWNob3NlbiB7Cj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxMTUyMDBuOCI7Cj4gKwl9Owo+
ICsKPiArCWdwaW8ta2V5LXBvd2VyIHsKCkp1c3QgZ3Bpby1rZXlzIGxpa2UgYWxsIHNvdXJjZXMg
YXJlIGRvaW5nLgoKPiArCQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7Cj4gKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnB3cmJ0bl9waW4+Owo+ICsKPiAr
CQlwb3dlciB7CgpTY2hlbWEgcmVxdWlyZXMgZ2VuZXJpYyBuYW1pbmcuIEVpdGhlciAia2V5IiBv
ciAia2V5LTAiIG9yICJrZXktcG93ZXIiCgo+ICsJCQlkZWJvdW5jZS1pbnRlcnZhbCA9IDwyMD47
Cj4gKwkJCS8vIFBlciAiUE1VIENvbnRyb2xlciIsIHBhZ2UgNC4KPiArCQkJZ3Bpb3MgPSA8Jmdw
aW8wIFJLX1BBNSBHUElPX0FDVElWRV9MT1c+Owo+ICsJCQlsYWJlbCA9ICJQb3dlciI7Cj4gKwkJ
CWxpbnV4LGNvZGUgPSA8S0VZX1BPV0VSPjsKPiArCQkJd2FrZXVwLXNvdXJjZTsKPiArCQl9Owo+
ICsJfTsKPiArCj4gKwkvKiBQb3dlciB0cmVlICovCj4gKwkvKiBSb290IHBvd2VyIHNvdXJjZSAq
Lwo+ICsJdmNjX3N5c2luOiB2Y2Mtc3lzaW4gewoKcmVndWxhdG9yLXZjYy1zeXNpbgoKaHR0cHM6
Ly9kZXZpY2V0cmVlLXNwZWNpZmljYXRpb24ucmVhZHRoZWRvY3MuaW8vZW4vbGF0ZXN0L2NoYXB0
ZXIyLWRldmljZXRyZWUtYmFzaWNzLmh0bWwjZ2VuZXJpYy1uYW1lcy1yZWNvbW1lbmRhdGlvbgoK
PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5hbWUg
PSAidmNjX3N5c2luIjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCXJlZ3VsYXRvci1i
b290LW9uOwo+ICsJfTsKPiArCj4gKwkvKiBNYWluIDMuM3Ygc3VwcGx5ICovCj4gKwl2Y2MzdjNf
c3lzOiB3aWZpX2JhdDogdmNjM3YzLXN5cyB7CgpyZWd1bGF0b3ItLi4uLi4KCj4gKwkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2M19z
eXMiOwo+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4g
KwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJdmluLXN1cHBseSA9IDwmdmNjX3N5c2luPjsK
PiArCX07Cj4gKwo+ICsJdmNjYTF2OF9zMzogdmNjMXY4LXMzIHsKCnJlZ3VsYXRvci0uLi4uLgoK
PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5hbWUg
PSAidmNjYTF2OF9zMyI7Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47
Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJdmluLXN1cHBs
eSA9IDwmdmNjM3YzX3N5cz47Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0
b3ItYm9vdC1vbjsKPiArCX07Cj4gK307Cj4gKwpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
