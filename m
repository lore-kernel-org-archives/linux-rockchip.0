Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14454C7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 10:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbLuQGg24HVB2r+O55bi8ZCKGqOvqmbNyxzvlhbpEC8=; b=sQpTN4qNYepgVZ
	Se4nHLiT4VwC/Vlr/JjmiLkfa3+XkfUSNZoG+SWYdM/Fxdn5JEgLXH3tAXwJUinUrxEGbpvLc4uUx
	3visY6QfEivd+J2Y0LqvfcmyWlW+XrX74MypQFYK/5BI3e+wnBsnuu69Kllhs8J8lVYI+rXMS+AtE
	uRUFv5qG25iSLXogFj2bx2Ij11RdzTOMzZSSIv0g4BjzzuFFCrk1gSiuE+Oq5amTfXyIXf7HIf0TK
	X2KMEhVpysIKC5cK38z3T5A4k4iyXJ2sfw1mKvhNNG1P3zXI6NSDgrSUxnj2YSxXwP/3uos+5iraQ
	8CvfKFe1VphCaggGw+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9w4-004DMj-1V;
	Wed, 03 May 2023 10:42:12 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9vx-004DEX-2j
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 10:42:09 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f3331f928cso30983065e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 May 2023 03:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683110522; x=1685702522;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BDk/+beT2Vi+sTgcaduCKGPnBsodi2tO/SNsvbOgP+Y=;
        b=uiHf7zU5OUclCL+nTNOzI51TiwU3XSMeDr4dH1jtzuJPzyrZsj2smb8gGZc0fqnV7x
         aHL1ofrmje1EDO+5gE0g6qKZ4EuW1aNNu5hqEHzlOnNFJg3dDUsEcnArL7QMqULeZ8QQ
         E78qfLE8YanRXWvr8VWZpJQWQZOP2OfsmOtFdKslaSwhg/W729dCGq8oA9CpVleD+Sf3
         qiwZnpKbCFJljnSJxR0hduidKNBpkgr+9ArXsLE1YdQrUZ5g0UtoCp+WQoSG9oLApN1q
         lpLnom5qusxbymkaYi2fPjD77aDN/15+0Ca22+r2BlmDKzsK4Ofi9VnpgXo/JmVv3006
         rcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683110522; x=1685702522;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDk/+beT2Vi+sTgcaduCKGPnBsodi2tO/SNsvbOgP+Y=;
        b=N9ec9Wgq1AoeQnUlX9cZSFdmz3zQ7qmNWd9sTEok4XgUxXNi57L/uMCcsEDJXsHaHW
         94gPvYQeG163PMyjpSH4oBs1xlUVNpT8LMORef35xAp6BkL8ixCkLg3flqcWQk8B1sax
         qA+UUAfo3gvUrslrwKULyLS9vmPkxtTHHT01AFNyFX8NLN0icJaLKHDygE8Bix3bDY+b
         +vbl89FxvKJH/nr6Wn5ztdBN2vizSjJZnFNb1ZwCIgjChygNi9eUHdLMW3mIzWObLxyz
         EBdgaxNpzPxxdEql5GqzYqkYKeK/Bx+SOE2Jd3F3uzhak97azK2VHN/FC/WtJckh6EdC
         7AEA==
X-Gm-Message-State: AC+VfDwXiD+9/qOGBN5Ru3czOSr+rCtZSGLieykYWqQ+MXCVcw4RH4uQ
	AwmkMo2gdNz5z+YStqsQ52HuMg==
X-Google-Smtp-Source: ACHHUZ4+w/861P1TP8XCtb+nKXdXmZXNl4DkJQUk42yYWgf1yqlqtWDrqllYUzBQocFIkyK2KHDH1w==
X-Received: by 2002:a7b:c391:0:b0:3f1:9391:46c with SMTP id s17-20020a7bc391000000b003f19391046cmr14791096wmj.30.1683110522481;
        Wed, 03 May 2023 03:42:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:68:e58d:3e87:f8c2? ([2a01:e0a:982:cbb0:68:e58d:3e87:f8c2])
        by smtp.gmail.com with ESMTPSA id u19-20020a7bc053000000b003f09d7b6e20sm1512696wmc.2.2023.05.03.03.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 03:42:02 -0700 (PDT)
Message-ID: <10572b4a-c3dc-6a28-bb21-c8a95444886e@linaro.org>
Date: Wed, 3 May 2023 12:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-US
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Olof Johansson <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <AEB0917D-37B0-428B-8FF5-90125BBA7D18@gmail.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <AEB0917D-37B0-428B-8FF5-90125BBA7D18@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_034205_931348_571296B0 
X-CRM114-Status: GOOD (  23.50  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDMvMDUvMjAyMyAwMDowMSwgQ2hyaXN0aWFuIEhld2l0dCB3cm90ZToKPiAKPiAKPj4gT24g
MiBNYXkgMjAyMywgYXQgODo0MCBwbSwgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4g
d3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgTWF5IDIsIDIwMjMgYXQgMzoxNeKAr0FNIEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+IHdyb3RlOgo+Pj4KPj4+IE9uIFR1ZSwgQXByIDI1LCAyMDIzLCBh
dCAxNzo1NywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+Pj4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQg
MjoyOOKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3Rl
Ogo+Pj4+Cj4+Pj4+IERvZXMgeW91ciBzY3JpcHQgYWxzbyBjYXRlciBmb3IgLmR0cyBmaWxlcyBu
b3QgbWF0Y2hpbmcgYW55IHBhdHRlcm4sCj4+Pj4+IGJ1dCBpbmNsdWRpbmcgYSAuZHRzaSBmaWxl
IHRoYXQgZG9lcyBtYXRjaCBhIHBhdHRlcm4/Cj4+Pj4KPj4+PiBJIGFzc3VtZSBJIGJ1aWx0IGV2
ZXJ5dGhpbmcgYWZ0ZXIgbW92aW5nLCBidXQgbWF5YmUgbm90Li4uCj4+Pj4KPj4+PiBUaGF0J3Mg
YWxsIGp1c3QgImRldGFpbHMiLiBGaXJzdCwgd2UgbmVlZCBhZ3JlZW1lbnQgb24gYSkgbW92aW5n
Cj4+Pj4gdGhpbmdzIHRvIHN1YmRpcnMgYW5kIGIpIGRvaW5nIGl0IDEtYnktMSBvciBhbGwgYXQg
b25jZS4gU28gZmFyIHdlJ3ZlCj4+Pj4gYmVlbiBzdHVjayBvbiBhKSBmb3IgYmVpbmcgJ3RvbyBt
dWNoIGNodXJuJy4KPj4+Cj4+PiBTb3JyeSBmb3IgbWlzc2luZyBtb3N0IG9mIHRoZSBkaXNjdXNz
aW9uIGxhc3Qgd2Vlay4gVGhlIHNjcmlwdCBzb3VuZHMKPj4+IGZpbmUgdG8gbWUsIHRoZSBvbmx5
IHJlYXNvbiBJIGRpZG4ndCB3YW50IHRvIGRvIHRoaXMgaW4gdGhlIHBhc3QgaXMgdGhhdAo+Pj4g
d2UgaGFkIHRoZSBwbGFuIHRvIG1vdmUgcGxhdGZvcm1zIG91dCBvZiB0aGUga2VybmVsIHRyZWUg
dG8gYW4gZXh0ZXJuYWwKPj4+IHJlcG9zaXRvcnkgYW5kIEkgd2FudGVkIHRvIGRvIHRoaXMgcGxh
dGZvcm0gYXQgYSB0aW1lIGFuZCBhbHNvIG9ubHkgbW92ZQo+Pj4gZWFjaCBvbmUgb25jZS4gSSBk
b24ndCB0aGluayB0aGF0IGlzIGdvaW5nIHRvIGhhcHBlbiBhbnl0aW1lIHNvb24gbm93LAo+Pj4g
c28gbGV0J3MganVzdCBkbyB5b3VyIHNjcmlwdC4KPj4+Cj4+PiBDYW4geW91IHNlbmQgbWUgdGhl
IHNjcmlwdCBhbmQvb3IgYSBwdWxsIHJlcXVlc3Qgb2YgdGhlIHJlc3VsdGluZwo+Pj4gdHJlZSBi
YXNlZCBvbiBteSBzb2MvZHQgYnJhbmNoPyBFdmVyeXRoaW5nIGlzIG1lcmdlZCB1cHN0cmVhbSwK
Pj4+IGFuZCBJIHRoaW5rIGdpdC1tZXJnZSB3b3VsZCBoYW5kbGUgdGhlIHJlbWFpbmluZyBtZXJn
ZXMgd2l0aCBhbnkKPj4+IG90aGVyIGNoYW5nZXMgaW4gbWFpbmxpbmUuCj4+Cj4+IEkndmUgZHVz
dGVkIG9mZiBteSBzY3JpcHQgYW5kIG1hZGUgYSBicmFuY2hbMV0gd2l0aCB0aGUgcmVzdWx0Lgo+
PiBUaGVyZSdzIGp1c3QgYSBjb3VwbGUgb2YgZml4ZXMgbmVlZGVkIGFmdGVyIHRoZSBzY3JpcHQg
aXMgcnVuIChzZWUgdGhlCj4+IHRvcCBjb21taXQpLiBUaGUgY3Jvc3MgYXJjaCBpbmNsdWRlcyBh
cmUgYWxsIGZpeGVkIHVwIGJ5IHRoZSBzY3JpcHQuCj4+IGR0YnNfaW5zdGFsbCBtYWludGFpbnMg
YSBmbGF0IGluc3RhbGwuIEkgY29tcGFyZWQgdGhlIG51bWJlciBvZiAuZHRicwo+PiBiZWZvcmUg
YW5kIGFmdGVyIHRvIGNoZWNrIHRoZSBzY3JpcHQuCj4+Cj4+IEkgdGhpbmsgdGhlIG9ubHkgaXNz
dWUgcmVtYWluaW5nIGlzIGZpbmFsaXppbmcgdGhlIG1hcHBpbmcgb2YKPj4gcGxhdGZvcm1zIHRv
IHN1YmRpcnMuIFdoYXQgSSBoYXZlIGN1cnJlbnRseSBpcyBhIG1peHR1cmUgb2YgU29DCj4+IGZh
bWlsaWVzIGFuZCB2ZW5kb3JzLiBUaGUgbW9zdCBub3RhYmxlIGFyZSBhbGwgdGhlIEZyZWVzY2Fs
ZS9OWFAKPj4gcGxhdGZvcm1zLCBweGEsIHNvY2ZwZ2EsIGFuZCBzdG0zMi4gSXQncyBub3QgY29u
c2lzdGVudCB3aXRoIGFybTY0Cj4+IGVpdGhlci4gT25jZSB0aGF0J3MgZmluYWxpemVkLCBJIHN0
aWxsIG5lZWQgdG8gZ28gdXBkYXRlIE1BSU5UQUlORVJTLgo+Pgo+PiBIZXJlJ3MgdGhlIGN1cnJl
bnQgbWFwcGluZzoKPj4KPj4gdmVuZG9yX21hcCA9IHsKPj4gICAgICdhbHBoYXNjYWxlJyA6ICdh
bHBoYXNjYWxlJywKPj4gICAgICdhbHBpbmUnIDogJ2FscGluZScsCj4+ICAgICAnYXJ0cGVjJyA6
ICdheGlzJywKPj4gICAgICdheG0nIDogJ2xzaScsCj4+ICAgICAnY3g5JyA6ICdjbnh0JywKPj4g
ICAgICdlY3gnIDogJ2NhbHhlZGEnLAo+PiAgICAgJ2hpZ2hiYW5rJyA6ICdjYWx4ZWRhJywKPj4g
ICAgICdlcDcnIDogJ2NpcnJ1cycsCj4+ICAgICAnbXhzJzogJ214cycsCj4+ICAgICAnaW14MjMn
OiAnbXhzJywKPj4gICAgICdpbXgyOCc6ICdteHMnLAo+PiAgICAgJ3N1bicgOiAnYWxsd2lubmVy
JywKPj4gICAgICdpbXgnOiAnaW14JywKPj4gICAgICdlNicgOiAnaW14JywKPj4gICAgICdlNycg
OiAnaW14JywKPj4gICAgICdtYmE2JyA6ICdpbXgnLAo+PiAgICAgJ2xzJzogJ2ZzbCcsCj4+ICAg
ICAndmYnOiAnZnNsJywKPj4gICAgICdxY29tJzogJ3Fjb20nLAo+PiAgICAgJ2FtMycgOiAndGkn
LAo+PiAgICAgJ2FtNCcgOiAndGknLAo+PiAgICAgJ2FtNScgOiAndGknLAo+PiAgICAgJ2RyYScg
OiAndGknLAo+PiAgICAgJ2tleXN0b25lJyA6ICd0aScsCj4+ICAgICAnb21hcCcgOiAndGknLAo+
PiAgICAgJ2NvbXB1bGFiJyA6ICd0aScsCj4+ICAgICAnbG9naWNwZCcgOiAndGknLAo+PiAgICAg
J2VscGlkYScgOiAndGknLAo+PiAgICAgJ21vdG9yb2xhJyA6ICd0aScsCj4+ICAgICAndHdsJyA6
ICd0aScsCj4+ICAgICAnZGEnIDogJ3RpJywKPj4gICAgICdkbScgOiAndGknLAo+PiAgICAgJ25z
cGlyZScgOiAnbnNwaXJlJywKPj4gICAgICdhcm1hZGEnIDogJ21hcnZlbGwnLAo+PiAgICAgJ2Rv
dmUnIDogJ21hcnZlbGwnLAo+PiAgICAgJ2tpcmt3b29kJyA6ICdtYXJ2ZWxsJywKPj4gICAgICdv
cmlvbicgOiAnbWFydmVsbCcsCj4+ICAgICAnbXZlYnUnIDogJ21hcnZlbGwnLAo+PiAgICAgJ21t
cCcgOiAnbWFydmVsbCcsCj4+ICAgICAnYmVybGluJyA6ICdiZXJsaW4nLAo+PiAgICAgJ3B4YTIn
IDogJ3B4YScsCj4+ICAgICAncHhhMycgOiAncHhhJywKPj4gICAgICdweGEnIDogJ21hcnZlbGwn
LAo+PiAgICAgJ2FybS0nIDogJ2FybScsCj4+ICAgICAnaW50ZWcnIDogJ2FybScsCj4+ICAgICAn
bXBzJyA6ICdhcm0nLAo+PiAgICAgJ3ZlJyA6ICdhcm0nLAo+PiAgICAgJ2FzcGVlZCcgOiAnYXNw
ZWVkJywKPj4gICAgICdhc3QyJyA6ICdhc3BlZWQnLAo+PiAgICAgJ2ZhY2Vib29rJyA6ICdhc3Bl
ZWQnLAo+PiAgICAgJ2libScgOiAnYXNwZWVkJywKPj4gICAgICdvcGVuYm1jJyA6ICdhc3BlZWQn
LAo+PiAgICAgJ2VuNycgOiAnYWlyb2hhJywKPj4gICAgICdhdDkxJyA6ICdtaWNyb2NoaXAnLAo+
PiAgICAgJ3NhbWEnIDogJ21pY3JvY2hpcCcsCj4+ICAgICAnc2FtOScgOiAnbWljcm9jaGlwJywK
Pj4gICAgICd1c2JfJyA6ICdtaWNyb2NoaXAnLAo+PiAgICAgJ3RueV8nIDogJ21pY3JvY2hpcCcs
Cj4+ICAgICAnbXBhMTYwMCcgOiAnbWljcm9jaGlwJywKPj4gICAgICdhbmltZW9faXAnIDogJ21p
Y3JvY2hpcCcsCj4+ICAgICAnYWtzLWNkdScgOiAnbWljcm9jaGlwJywKPj4gICAgICdldGhlcm51
dDUnIDogJ21pY3JvY2hpcCcsCj4+ICAgICAnZXZrLXBybzMnIDogJ21pY3JvY2hpcCcsCj4+ICAg
ICAncG05ZzQ1JyA6ICdtaWNyb2NoaXAnLAo+PiAgICAgJ2dlODYnIDogJ21pY3JvY2hpcCcsCj4+
ICAgICAnYmNtJyA6ICdicmNtJywKPj4gICAgICdleHlub3MnIDogJ3NhbXN1bmcnLAo+PiAgICAg
J3MzYycgOiAnc2Ftc3VuZycsCj4+ICAgICAnczVwJyA6ICdzYW1zdW5nJywKPj4gICAgICdnZW1p
bmknIDogJ2dlbWluaScsCj4+ICAgICAnaGkzJyA6ICdoaXNpbGljb24nLAo+PiAgICAgJ2hpcCcg
OiAnaGlzaWxpY29uJywKPj4gICAgICdoaXNpJyA6ICdoaXNpbGljb24nLAo+PiAgICAgJ3NkNScg
OiAnaGlzaWxpY29uJywKPj4gICAgICdocGUnIDogJ2hwZScsCj4+ICAgICAnaW50ZWwnOiAnaW50
ZWwnLAo+PiAgICAgJ210JyA6ICdtZWRpYXRlaycsCj4+ICAgICAnbWVzb24nIDogJ21lc29uJywK
PiAKPiDigJhtZXNvbuKAmSA6IOKAmGFtbG9naWPigJksCj4gCj4gXiB0byBtYXRjaCB0aGUgU29D
IHZlbmRvciBuYW1lIChhbmQgYXJtNjQpCgpBY2sgd2UncmUgdHJ5aW5nIHRvIGdldCByaWQgb2Yg
bWVzb24sIHNvIGl0IHdvdWxkIGJlIHRpbWUuCgpOZWlsCgo+IAo+IENocmlzdGlhbgo+IAo+PiAg
ICAgJ21veGEnIDogJ21veGEnLAo+PiAgICAgJ21zdGFyJyA6ICdtc3RhcicsCj4+ICAgICAnbnV2
bycgOiAnbnV2b3RvbicsCj4+ICAgICAnbHBjJyA6ICdscGMnLAo+PiAgICAgJ2xhbjk2JyA6ICdt
aWNyb2NoaXAnLAo+PiAgICAgJ293bCcgOiAnYWN0aW9ucycsCj4+ICAgICAnb3g4JyA6ICdveHNl
bWknLAo+PiAgICAgJ3JkYScgOiAncmRhJywKPj4gICAgICdydGQnIDogJ3JlYWx0ZWsnLAo+PiAg
ICAgJ3I3JyA6ICdyZW5lc2FzJywKPj4gICAgICdyOCcgOiAncmVuZXNhcycsCj4+ICAgICAncjkn
IDogJ3JlbmVzYXMnLAo+PiAgICAgJ2VtZXYyJyA6ICdyZW5lc2FzJywKPj4gICAgICdzaDczYScg
OiAncmVuZXNhcycsCj4+ICAgICAnZ3ItJyA6ICdyZW5lc2FzJywKPj4gICAgICdpd2cnIDogJ3Jl
bmVzYXMnLAo+PiAgICAgJ3JrJyA6ICdyb2NrY2hpcCcsCj4+ICAgICAncnYxMScgOiAncm9ja2No
aXAnLAo+PiAgICAgJ3JvY2tjaGlwJyA6ICdyb2NrY2hpcCcsCj4+ICAgICAnc29jZnBnYScgOiAn
c29jZnBnYScsCj4+ICAgICAnc3RtJyA6ICdzdG0zMicsCj4+ICAgICAnc3RpJyA6ICdzdGknLAo+
PiAgICAgJ3N0LXBpbicgOiAnc3RpJywKPj4gICAgICdzdGUnIDogJ3N0LWVyaWNzc29uJywKPj4g
ICAgICdzcGVhcicgOiAnc3BlYXInLAo+PiAgICAgJ2F4cCcgOiAnYWxsd2lubmVyJywKPj4gICAg
ICd0ZWdyYScgOiAnbnZpZGlhJywKPj4gICAgICdtaWxiZWF1dCcgOiAnc29jaW9uZXh0JywKPj4g
ICAgICd1bmlwaCcgOiAnc29jaW9uZXh0JywKPj4gICAgICd2dDg1MDAnIDogJ3Z0ODUwMCcsCj4+
ICAgICAnd204JyA6ICd2dDg1MDAnLAo+PiAgICAgJ3hlbicgOiAneGVuJywKPj4gICAgICd6eCcg
OiAnenRlJywKPj4gICAgICd6eW5xJyA6ICd4aWxpbngnLAo+PiB9Cj4+Cj4+IFJvYgo+Pgo+PiBb
MV0gZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3JvYmgvbGlu
dXguZ2l0IGFybS1kdHMtbW92ZS12Mgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBsaW51eC1hbWxvZ2ljIG1haWxpbmcgbGlzdAo+PiBsaW51
eC1hbWxvZ2ljQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hbWxvZ2ljCj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
