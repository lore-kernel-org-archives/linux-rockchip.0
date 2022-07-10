Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7121C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jul 2022 15:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwjytugLkfQOfc9zUgqk7sEieLcGvaF7YJpwzk6zrHY=; b=nzhFTOlbZUrOYX
	w2bJnX24u8SRtcUbavd1dT0U7nMRhnfYvwc/Ypv/arDWlhnywqe09xlyCthRkKGU7wCVQCVXWMKC3
	7rnU9zUW55L2X8akZXyZcNTYTicktA9W2Mez2PlMkuXd/OIKT5+0bjC1Zy0c5Yri1RUNKCAExdZwT
	zmvOkalc8nJSCEHoVjBUUwXDsarOv0hFgxuCxQqBxvYBmEnz4IlZGWnuMRuaSZ7kIJabcsHEg9tz4
	FzuiB3a+DyXTdydsYnIXa0QDk4SFCDmTz5XJvvAniHsXHxusVJTjIjBWpEJwBUCNHo+v9E9af+DjP
	4TrdOBo58wuFlbQOZtKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAYcB-00CCKB-QR; Sun, 10 Jul 2022 15:12:55 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAYc8-00CCHw-Ul
	for linux-rockchip@lists.infradead.org; Sun, 10 Jul 2022 15:12:54 +0000
Received: by mail-lj1-x22a.google.com with SMTP id o12so1023413ljc.3
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Jul 2022 08:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NrSFqXui8IuFWW18AV7BX9JJnZg6RCMbeeOF3ySerrE=;
        b=QMoJgDgrWpoHgt8V935Yj0tZ7gW3LZdDygouB/iufA4mk/EYDXJyLplXfyn9C8aN3A
         uIDA0Tu/wnZF2BfBFlpKqh4VyroAYuQZqBcdpiZdNqmtc1Z5K0m7VaZCj9hr+NPEj35l
         BPUIU1LpogI7MI0Z2g9xvpzLPWDCfvUhqRZswOndvhygeYTuQ8N329fsjMyYoMlPMYqw
         F5KZ/a6Qya+85rPNA5stUj9xKIurX7xzNqVFP9yMbwrQYxAP3NoSkTUTKHqlfCKkzx6r
         PnWE30Qp6vO43T+WD+r3zVXt+y24fZZfpGbNtPSRRMTbGF8XcgFbk+cwU5SF+8I8uRG7
         8q0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NrSFqXui8IuFWW18AV7BX9JJnZg6RCMbeeOF3ySerrE=;
        b=Un+AsGH302U+9yK+Nt6q6ha52xrs4APu9ZecuFYDX+ytpJOPMcnQcdloFSwoUo5Jev
         uegq0Il10NBDgkzzMF3m5UFzTmyPYPVfrDMoPUfsoSSxB1t/WJS2zodPwxWx6G9LDEO3
         Ow8Sj41xJYDOqFk0Hztu+SWIhD8ck2dGoKwg3INIWbaVKLHFQLIAnmk5k+DXmF2OGk6g
         x6GR0LU/2G97WfcSHVcmg9GHOLyOIn2pjKF2GsGW8PkzPR7YV3zUQ7wbWnw6Li2EXlux
         imT2Jhx4yH1YyJwFiWDG/86AMoeR+2Dr1gQupMKggnh4OPKAwLO5t8Gxb2Xd5n4/mIMw
         6Zlg==
X-Gm-Message-State: AJIora+kp612+F5L1hgTN3Jk3DWXiZ4fmBzothBrPes2UYbyxv1WQX1s
	nPIjbYlSh2M5eI0XcudbpoLIQg==
X-Google-Smtp-Source: AGRyM1u4TGEfXbOJWoo2B3uuptUDQWrvhmxrihGijpLpTSzFLDT2nPpmDzKjXMxyCnypzScxX8fVbA==
X-Received: by 2002:a2e:83c7:0:b0:25b:c007:29e0 with SMTP id s7-20020a2e83c7000000b0025bc00729e0mr7525140ljh.378.1657465969512;
        Sun, 10 Jul 2022 08:12:49 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cac-200.bb.online.no. [88.92.172.200])
        by smtp.gmail.com with ESMTPSA id y18-20020a199152000000b00486d8a63c07sm976213lfj.121.2022.07.10.08.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jul 2022 08:12:49 -0700 (PDT)
Message-ID: <f6ab024a-582f-45b0-7d26-94a85858c761@linaro.org>
Date: Sun, 10 Jul 2022 17:12:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, john@metanate.com, heiko@sntech.de,
 p.zabel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 didi.debian@cknow.org, herbert@gondor.apana.org.au, sboyd@kernel.org,
 mturquette@baylibre.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220706090412.806101-1-clabbe@baylibre.com>
 <20220706090412.806101-26-clabbe@baylibre.com>
 <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
 <YsWcGDwPCX+/95i3@Red> <3e47b853-bb82-8766-8884-3da931c038a2@linaro.org>
 <YsabXrOyAsCkUUVN@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsabXrOyAsCkUUVN@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_081253_049203_35DB36B3 
X-CRM114-Status: GOOD (  13.62  )
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

T24gMDcvMDcvMjAyMiAxMDozNywgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgV2VkLCBKdWwg
MDYsIDIwMjIgYXQgMDU6MjU6MjFQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSBhIMOpY3Jp
dCA6Cj4+IE9uIDA2LzA3LzIwMjIgMTY6MjgsIExBQkJFIENvcmVudGluIHdyb3RlOgo+Pj4gTGUg
V2VkLCBKdWwgMDYsIDIwMjIgYXQgMDc6Mjk6MDRBTSAtMDYwMCwgUm9iIEhlcnJpbmcgYSDDqWNy
aXQgOgo+Pj4+IE9uIFdlZCwgMDYgSnVsIDIwMjIgMDk6MDQ6MDQgKzAwMDAsIENvcmVudGluIExh
YmJlIHdyb3RlOgo+Pj4+PiBUaGUgbGF0ZXN0IGFkZGl0aW9uIHRvIHRoZSByb2NrY2hpcCBjcnlw
dG8gZHJpdmVyIG5lZWQgdG8gdXBkYXRlIHRoZQo+Pj4+PiBkcml2ZXIgYmluZGluZ3MuCj4+Pj4+
Cj4+Pj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENvcmVudGluIExhYmJlIDxjbGFi
YmVAYmF5bGlicmUuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gIC4uLi9jcnlwdG8vcm9ja2NoaXAscmsz
Mjg4LWNyeXB0by55YW1sICAgICAgICB8IDg1ICsrKysrKysrKysrKysrKysrLS0KPj4+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+
Cj4+Pj4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIERUX0NIRUNLRVJfRkxBR1M9
LW0gZHRfYmluZGluZ19jaGVjaycKPj4+PiBvbiB5b3VyIHBhdGNoIChEVF9DSEVDS0VSX0ZMQUdT
IGlzIG5ldyBpbiB2NS4xMyk6Cj4+Pj4KPj4+PiB5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6Cj4+
Pj4KPj4+PiBkdHNjaGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOgo+Pj4+IC9idWlsZHMvcm9iaGVy
cmluZy9saW51eC1kdC1yZXZpZXcvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ny
eXB0by9yb2NrY2hpcCxyazMyODgtY3J5cHRvLnlhbWw6IGFsbE9mOjA6dGhlbjpwcm9wZXJ0aWVz
OmNsb2NrLW5hbWVzOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3QgYmUgZml4
ZWQ6Cj4+Pj4gCVt7J2NvbnN0JzogJ2FjbGsnfSwgeydjb25zdCc6ICdoY2xrJ30sIHsnY29uc3Qn
OiAnc2Nsayd9LCB7J2NvbnN0JzogJ2FwYl9wY2xrJ31dIGlzIHRvbyBsb25nCj4+Pj4gCVt7J2Nv
bnN0JzogJ2FjbGsnfSwgeydjb25zdCc6ICdoY2xrJ30sIHsnY29uc3QnOiAnc2Nsayd9LCB7J2Nv
bnN0JzogJ2FwYl9wY2xrJ31dIGlzIHRvbyBzaG9ydAo+Pj4+IAlGYWxzZSBzY2hlbWEgZG9lcyBu
b3QgYWxsb3cgNAo+Pj4+IAkxIHdhcyBleHBlY3RlZAo+Pj4+IAk0IGlzIGdyZWF0ZXIgdGhhbiB0
aGUgbWF4aW11bSBvZiAyCj4+Pj4gCTQgaXMgZ3JlYXRlciB0aGFuIHRoZSBtYXhpbXVtIG9mIDMK
Pj4+Cj4+PiBIZWxsbwo+Pj4KPj4+IEkgdXBncmFkZWQgdG8gZHQtc2NoZW1hIDIwMjIuMDcgYW5k
IGZhaWwgdG8gcmVwcm9kdWNlIGFsbCBlcnJvcnMuCj4+Cj4+IFZpc2libGUgb24gb2xkZXIgZHRz
Y2hlbWEgKDIwMjIuNi5kZXYxMCtnY2Q2NGY3NWZlMDkxKSwgdmlzaWJsZSBvbgo+PiBuZXdlc3Qg
KDIwMjIuNykuCj4+Cj4+IEV4YWN0bHkgdGhlIHNhbWUgZXJyb3IuCj4+Cj4gCj4gSGVsbG8KPiAK
PiBJIGFtIHNvcnJ5LCBJIGZpbmFsbHkgc3VjY2VzZnVsbHkgcmVwcm9kdWNlZCBpdC4KPiBKdXN0
IGRvaW5nIHdoYXQgdGhlIGhpbnRzIGdpdmVzIChyZW1vdmluZyBtYXgvbWluLWl0ZW1zKSBmcm9t
ICJzdGF0aWMiIGxpc3QgZml4IHRoZSBpc3N1ZS4KCk5vdCBzdXJlIHdoYXQgZG8geW91IG1lYW4g
YnkgInN0YXRpYyBsaXN0Ii4gSSB0aGluayB5b3Ugc2hvdWxkIGRyb3AKbWluL21heEl0ZW1zIGZy
b20gY2xvY2stbmFtZXMvcmVzZXQtbmFtZXMgaW4gYWxsT2Y6aWY6dGhlbiBzZWN0aW9ucy4KCj4g
RG9lcyBJIG5lZWQgdG8gcmVtb3ZlIHlvdXIgUmV2aWV3ZWQtYnkgPwoKTGV0J3MgZHJvcCwgc28g
aXQgd2lsbCBiZSBiYWNrIHRvIG15IHRvLXJldmlldyBxdWV1ZS4KCkJlc3QgcmVnYXJkcywKS3J6
eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
