Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E1EC54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 12:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziw87ERgb/0xLjE8GSb5Q8CLPW5CRnhPXN9AUhH0r6Q=; b=avKai3YG1SMXBo
	efOOxj+Q6pPWgyJe76C6Z0fEaBK9pG3AusNGfaPF6jz1v0reDbRJec1Odoq5HZCGPGjQsU8Hx/LPC
	PqgzaqlBFdnpx8VuTk9FQ+1GkIntpEfT0tm/cYy9ypTL7aql5tca9qJEfyhXpxtuB0VZDMYBaXkdd
	8SljPY0ZVCE96qbNpnpzh0mtUhT/PD4b2qe1W0R41cZ0MKldYnJftIhp/4BT3NBX5OSn1eALS/PLM
	Vr6Kd4jC54xbTWn88/5rvnANHQz3F4tqTLnX4Zr1E/ys1XToFJ4WUYbPvFkRf07y9LXylJ1HByNM7
	m5T9UI0K1IfuXo3Z12NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLVY-00FPvv-M5; Thu, 22 Sep 2022 12:40:48 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLVO-00FPsv-UW
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 12:40:40 +0000
Received: by mail-lj1-x22d.google.com with SMTP id z20so10853714ljq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Sep 2022 05:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=X48sd6dwxZB1SHayzPjumz0owiqRGtUb8ur+bpMGAg8=;
        b=WXKZhJOk8u61LgkuMC0We/AD6NplRu0uaHwhluHODR4xHt/Xqpu1uwP2yulqPUmM+q
         DwBuSZLRc6mdzwwf1pl3AgSTDqXGCVPAzeSmhpCDpGOVNeiXidNycACuhfuCcbi3mlDu
         5iMEs+raPOawyUlBHPvG/tbVY6OEp9mWgKUT3r3+wiMIaG9GqoAcxSgvCGKcb2nm2NW8
         ZWOOU9i3fqiqx4+eUN7Koz/brBZ6UE+4L518JsdF/s0pdM6AXs+lD9ZyLNP5w27Nj3N+
         Sh6rVpHqwdTiVBuvXyBju7H/rQvXU7tHtaFkq4uItxwHHOl8QxHl0R9aWa905NfF6niD
         ZDZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=X48sd6dwxZB1SHayzPjumz0owiqRGtUb8ur+bpMGAg8=;
        b=YJRWfy9YqXSTGFjwIYaVfMtoNZQzhJE92N9EcO6iqEg1phydYJ49noTjbtsnZemfb9
         1rSViJg8/VkdBg3VNa+4pxVtxTKtHt7AfPgCPhZCV9GjY552Go7RXeILki3+6E7rAWjA
         PJhB/gbhxWBAm9TkNJRbMBHmEjxBskFqz6EH+qN6xus6pNn4VYhE8VJYId3Z6sc7JNF2
         SRldRL1mGokKbBP3zPds9gFVZB2QvpexARknXbmiUOv8kX3P8uUzs0aIxOszZq818zmo
         a9U/E6gQX5g56BcXa+rHb12k4WTmfLfLkHHwtp/0KwpeeqT1s+F9PprMr1v9BmAZIA7B
         3Fag==
X-Gm-Message-State: ACrzQf2xrQ/aLizWqfLIuoU4RGZtgetTm2BK3MF9txIk0lYop0b/2K1i
	lSCAQoKcM4znrEqioFw84BEN9Q==
X-Google-Smtp-Source: AMsMyM5GU5VnXjFq1PwcBumh0Recos9Z+6aWQqFn881YTtujDAgRbzky9brsJOY7DLZHz+/aqrolgg==
X-Received: by 2002:a2e:9547:0:b0:26b:fb41:f60a with SMTP id t7-20020a2e9547000000b0026bfb41f60amr1040224ljh.295.1663850435003;
        Thu, 22 Sep 2022 05:40:35 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm921127lfg.190.2022.09.22.05.40.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:40:34 -0700 (PDT)
Message-ID: <6e6c1ef6-b15e-ea50-a627-9dc56aa4b806@linaro.org>
Date: Thu, 22 Sep 2022 14:40:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_dt-bindings=3a_arm=3a_rockchip=3a_a?=
 =?UTF-8?Q?dd_Theobroma_Systems_PX30-=c2=b5Q7_=28Ringneck=29_with_Haikou?=
Content-Language: en-US
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 dmitry.torokhov@gmail.com, klaus.goger@theobroma-systems.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-4-foss+kernel@0leil.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922101211.3215888-4-foss+kernel@0leil.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054038_988719_18A7F213 
X-CRM114-Status: GOOD (  12.51  )
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

T24gMjIvMDkvMjAyMiAxMjoxMiwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gRnJvbTogUXVlbnRp
biBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPiAKPiBBZGQg
ZW50cnkgZm9yIHRoZSBUaGVvYnJvbWEgU3lzdGVtcyBQWDMwLcK1UTcgKFJpbmduZWNrKSB3aXRo
IEhhaWtvdQo+IGRldmtpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBRdWVudGluIFNjaHVseiA8cXVl
bnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA1ICsrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gaW5kZXggNzgxMWJhNjQxNDlj
Li5mMmFhNWRkYjc2ZDIgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gQEAgLTY1OCw2ICs2NTgsMTEgQEAgcHJvcGVy
dGllczoKPiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOC1ldmIKPiAgICAgICAg
ICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOAo+ICAKPiArICAgICAgLSBkZXNjcmlwdGlvbjog
VGhlb2Jyb21hIFN5c3RlbXMgUFgzMC3CtVE3IHdpdGggSGFpa291IGJhc2Vib2FyZAo+ICsgICAg
ICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDogdHNkLHB4MzAtcmluZ25lY2staGFpa291
Cj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxweDMwCgpUaGlzIHNob3VsZCBiZSBzb21l
d2hlcmUgYXJvdW5kIG90aGVyIHB4MzAgc3lzdGVtcy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
