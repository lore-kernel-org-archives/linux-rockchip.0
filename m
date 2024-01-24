Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C816CC47DDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 00:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqfe+GGsQlVxRmZWtVnnaSdJKSBZOHUZtNJfAWRm7Zo=; b=QshmlKGspIOd5c
	AOQQUJuqn3kDNgYiJuhCSxflwED+xx2coPjxg6qGQrPt0dpKFLwYdrZyWXJ2m4ytYQ4q82CU3970a
	upvDE9MnZRjn2MlOoFC83f756KxXa1K7mwlic9zalGX2z39Xj2YxvG35KNCDOBmJ3QNBHfrhM9vIc
	fKTZY56QFFwJ1y7XLMwYl+5s77rPho9JmL/kRF4/zgVAeXABDyhHGWndG1jb10BSBVpVqD9ygkcdL
	B7adjLAOAG3VnSrhkA39KhygeS6zyI+V37e5q+exvUTuu8hRWa5OczoWNBo0x8TG9yvnqrzNGcNKV
	e5+33MWgCCBzrgGeeVrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSQuz-000tZB-0f;
	Wed, 24 Jan 2024 00:15:01 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSQuv-000tY9-0b
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 00:14:59 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40eacb4bfa0so29285395e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 16:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706055293; x=1706660093; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S2nZ6S0mDBWrSLkiA4VI6JYuJMOmUsW/tHuIdM7KpMU=;
        b=Go/zdSrKbc2hnl5wJCBajHsZq6res9Br+NXACUPOMc9vkNoX6Wn/xRbtJ3XNdjzDON
         IxsgVEIyWGQ2CygvPRHdoOgzKvgr5m1tpt+BYkRjR8wGx4fuhJGgvmzX1xjaF+sweOcB
         XTrnLovOAVtcvU9OQR1eHidzXRenDZDcQpKcJmsJ+e8gmViRF3CvNwWvZU+87NLD0YNc
         U4aUIN4wJ+aGK0/9DSPm3peNfYKkoZTyeUXsz8kEp232lULiANRjm86zuQqNFCsFye7f
         YojbY7CAgNHEDYidE8uze5Xqld7unNW41PIcM15XSbwHNAn4Hfbr4l14w0I303OWNx12
         dWqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706055293; x=1706660093;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S2nZ6S0mDBWrSLkiA4VI6JYuJMOmUsW/tHuIdM7KpMU=;
        b=JtGEoqQ3HHPPcc492s8gd7va6zd9fdHamlNZLZa8TZIEcoll5DXI6ywBjGMYJfkwYG
         6jdLMGXSG6Vl46SeOcBFVpG/IH9UdMv7r9lNkWs/SXmefoG+b+WLZTg2dPnGCRbDwzhA
         HOiGs7SD0UttnRdcdlhVBE+NTLQ5DmitxlONdT/5DMcohfFDRUBOSBePprEi12AytHzq
         2nNVELqXmh5TbKYmAM/PPyeiV+JcpxYUa3vDh+FxgXt6us2NN61VLLQYtknXK3uJ+h+x
         honnntVGGSWYCc0wUG5vTtKjCyXWZP97ozrtUk7+ojrh+IoWN29JxsBuzOc9diLd8hii
         YJ+A==
X-Gm-Message-State: AOJu0YyaseIUNvsK2tpfW/jXxSZtZ2yDw5yCbsTvhaF5StZHRddX4hLo
	SbwRa8oLG+jnlmKtM6JgqCiJiSL4fohBDokQwz2YvobowXXIo2pSnPjDKZnxBn0=
X-Google-Smtp-Source: AGHT+IGI5YPKFXD5TjwdPMdVu/mGtQFGrCy1XYQV+KrG7wGiPJsSjO/sWkXGpoAK7E4UafYcO9yT7w==
X-Received: by 2002:a05:600c:314c:b0:40e:abdc:dad0 with SMTP id h12-20020a05600c314c00b0040eabdcdad0mr536489wmo.105.1706055292708;
        Tue, 23 Jan 2024 16:14:52 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id m11-20020a056000008b00b00338ca0ada22sm7436769wrx.111.2024.01.23.16.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 16:14:52 -0800 (PST)
Message-ID: <f7c7f8fe-cccc-4e67-aa4a-7758be0a912c@linaro.org>
Date: Wed, 24 Jan 2024 01:14:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
Content-Language: en-US
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240106222357.23835-1-alchark@gmail.com>
 <20240109192608.5981-1-alchark@gmail.com>
 <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org>
 <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
 <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
 <CABjd4Yz+tqaS38B9uRUZC2nz_VeZ-Db6BpF5oWL3ahmskfbTMA@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CABjd4Yz+tqaS38B9uRUZC2nz_VeZ-Db6BpF5oWL3ahmskfbTMA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_161457_247295_B4C3092A 
X-CRM114-Status: GOOD (  33.32  )
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

T24gMjMvMDEvMjAyNCAyMDo0NywgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gTW9uLCBKYW4g
MjIsIDIwMjQgYXQgNDowNOKAr0FNIERhbmllbCBMZXpjYW5vCj4gPGRhbmllbC5sZXpjYW5vQGxp
bmFyby5vcmc+IHdyb3RlOgo+Pgo+Pgo+PiBIaSBBbGV4ZXksCj4+Cj4+Cj4+IE9uIDIxLzAxLzIw
MjQgMjA6NTcsIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4gT24gRnJpLCBKYW4gMTksIDIwMjQg
YXQgODoyMeKAr1BNIERhbmllbCBMZXpjYW5vCj4+PiA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9y
Zz4gd3JvdGU6Cj4+PiBIZWxsbyBEYW5pZWwsCj4+Pgo+Pj4gVGhhbmtzIGEgbG90IGZvciB5b3Vy
IHJldmlldyBhbmQgY29tbWVudHMhIFBsZWFzZSBzZWUgc29tZSByZWZsZWN0aW9ucyBiZWxvdy4K
Pj4+Cj4+Pj4gT24gMDkvMDEvMjAyNCAyMDoxOSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+Pj4+
IEluY2x1ZGUgdGhlcm1hbCB6b25lcyBpbmZvcm1hdGlvbiBpbiBkZXZpY2UgdHJlZSBmb3Igcmsz
NTg4IHZhcmlhbnRzCj4+Pj4+IGFuZCBlbmFibGUgdGhlIGJ1aWx0LWluIHRoZXJtYWwgc2Vuc2lu
ZyBBREMgb24gUkFEWEEgUm9jayA1Qgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkg
Q2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiBDaGFuZ2VzIGluIHYy
Ogo+Pj4+PiAgICAgLSBEcm9wcGVkIHJlZHVuZGFudCBjb21tZW50cwo+Pj4+PiAgICAgLSBJbmNs
dWRlZCBhbGwgQ1BVIGNvcmVzIGluIGNvb2xpbmcgbWFwcwo+Pj4+PiAgICAgLSBTcGxpdCBjb29s
aW5nIG1hcHMgaW50byBtb3JlIGdyYW51bGFyIG9uZXMgdXRpbGl6aW5nIFRTQURDCj4+Pj4+ICAg
ICAgIGNoYW5uZWxzIDEtMyB3aGljaCBtZWFzdXJlIHRlbXBlcmF0dXJlIGJ5IHNlcGFyYXRlIENQ
VSBjbHVzdGVycwo+Pj4+PiAgICAgICBpbnN0ZWFkIG9mIGNoYW5uZWwgMCB3aGljaCBtZWFzdXJl
cyB0aGUgY2VudGVyIG9mIHRoZSBTb0MgZGllCj4+Pj4+IC0tLQo+Pj4+PiAgICAgLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyAgICAgIHwgICA0ICsKPj4+Pj4gICAgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpICAgICB8IDE1MSArKysrKysr
KysrKysrKysrKysKPj4+Pj4gICAgIDIgZmlsZXMgY2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKykK
Pj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMKPj4+Pj4gaW5kZXggYTVhMTA0MTMxNDAzLi5mOWQ1NDAwMDBkZTMgMTAwNjQ0Cj4+
Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRz
Cj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIu
ZHRzCj4+Pj4+IEBAIC03NzIsMyArNzcyLDcgQEAgJnVzYl9ob3N0MV9laGNpIHsKPj4+Pj4gICAg
ICZ1c2JfaG9zdDFfb2hjaSB7Cj4+Pj4+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+PiAg
ICAgfTsKPj4+Pj4gKwo+Pj4+PiArJnRzYWRjIHsKPj4+Pj4gKyAgICAgc3RhdHVzID0gIm9rYXki
Owo+Pj4+PiArfTsKPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0
c2kKPj4+Pj4gaW5kZXggOGFhMDQ5OWY5YjAzLi44ZDU0OTk4ZDBlY2MgMTAwNjQ0Cj4+Pj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4+Pj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4+Pj4+IEBAIC0xMCw2
ICsxMCw3IEBACj4+Pj4+ICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAs
cmszNTg4LWNydS5oPgo+Pj4+PiAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4K
Pj4+Pj4gICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9hdGEvYWhjaS5oPgo+Pj4+PiArI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL3RoZXJtYWwvdGhlcm1hbC5oPgo+Pj4+Pgo+Pj4+PiAgICAgLyB7Cj4+
Pj4+ICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgiOwo+Pj4+PiBAQCAtMjEx
Miw2ICsyMTEzLDE1NiBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAgewo+Pj4+PiAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+Pj4gICAgICAgICB9Owo+Pj4+Pgo+Pj4+PiAr
ICAgICB0aGVybWFsX3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPj4+Pj4gKyAgICAgICAgICAgICAv
KiBzZW5zb3IgbmVhciB0aGUgY2VudGVyIG9mIHRoZSB3aG9sZSBjaGlwICovCj4+Pj4+ICsgICAg
ICAgICAgICAgc29jX3RoZXJtYWw6IHNvYy10aGVybWFsIHsKPj4+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwyMD47Cj4+Pj4KPj4+PiBUaGVyZSBpcyBu
byBtaXRpZ2F0aW9uIHNldCBmb3IgdGhpcyB0aGVybWFsIHpvbmUuIEl0IGlzIHBvaW50bGVzcyB0
bwo+Pj4+IHNwZWNpZnkgYSBwYXNzaXZlIHBvbGxpbmcuCj4+Pgo+Pj4gSW5kZWVkLCBpdCBtYWtl
cyBzZW5zZSB0byBtZS4gVGhlcmUgc2VlbXMgdG8gYmUgYSBjYXRjaCB0aG91Z2ggaW4gdGhhdAo+
Pj4gdGhlIGRyaXZlciBjYWxscyB0aGUgZ2VuZXJpYyB0aGVybWFsX29mX3pvbmVfcmVnaXN0ZXIg
ZHVyaW5nIHRoZQo+Pj4gaW5pdGlhbCBwcm9iZSwgd2hpY2ggZXhwZWN0cyBib3RoIG9mIHRob3Nl
IHBvbGxpbmcgZGVsYXlzIHRvIGJlCj4+PiBwcmVzZW50IGluIHRoZSBkZXZpY2UgdHJlZSwgb3Ro
ZXJ3aXNlIGl0IHNpbXBseSByZWZ1c2VzIHRvIGFkZCB0aGUKPj4+IHJlc3BlY3RpdmUgdGhlcm1h
bCB6b25lLCBzZWUgZHJpdmVycy90aGVybWFsL3RoZXJtYWxfb2YuYzo1MDIKPj4KPj4gVXN1YWxs
eToKPj4KPj4gcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+PiBwb2xsaW5nLWRlbGF5ID0g
PDA+Owo+Pgo+PiBjZjoKPj4KPj4gZ2l0IGdyZXAgInBvbGxpbmctZGVsYXkgPSA8MD4iIGFyY2gv
YXJtNjQvYm9vdC9kdHMKPiAKPiBGb3Igc29tZSByZWFzb24gd2hlbiBJIGhhdmUgYm90aCBwb2xs
aW5nLWRlbGF5LXBhc3NpdmUgYW5kCj4gcG9sbGluZy1kZWxheSBzZXQgdG8gMCwgdGhlIGFjdGl2
ZSBjb29saW5nIG1hcCBJIGhhdmUgaW4gbXkgYm9hcmQgRFQKPiAodXNpbmcgYSBQV00gY29udHJv
bGxlZCBmYW4pIGJlaGF2ZXMgd2VpcmRseS4KCgoKPiBJIHVzZSB0aGUgZm9sbG93aW5nIGZyYWdt
ZW50IGluIG15IGJvYXJkIERUUzoKPiAKPiArJnBhY2thZ2VfdGhlcm1hbCB7Cj4gKyAgICAgICB0
cmlwcyB7Cj4gKyAgICAgICAgICAgICAgIHBhY2thZ2VfZmFuOiBwYWNrYWdlLWZhbiB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgdHlwZSA9ICJhY3RpdmUiOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgfTsKPiAr
Cj4gKyAgICAgICBjb29saW5nLW1hcHMgewo+ICsgICAgICAgICAgICAgICBtYXAtZmFuIHsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICB0cmlwID0gPCZwYWNrYWdlX2Zhbj47Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiBUSEVSTUFMX05PX0xJTUlUCj4g
VEhFUk1BTF9OT19MSU1JVD47Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICB9Owo+ICt9
Owo+IAo+IElmIEkgYWRkIHBvbGxpbmctZGVsYXkgPSA8MTAwMD47IGF0IHRoZSB0b3AsIHRoZSBm
YW4gc3BlZWRzIHVwIGFuZAo+IGRvd24gZHluYW1pY2FsbHkgYXMgdGhlIHBhY2thZ2UgdGVtcGVy
YXR1cmUgc3dpbmdzIGFyb3VuZCA1NUMuIElmIEkKPiByZW1vdmUgdGhhdCAoaGF2aW5nIHNldCBw
b2xsaW5nLWRlbGF5ID0gPDA+OyBpbiByazM1ODhzLmR0c2kpLCB0aGUgZmFuCj4gc3BlZWRzIHVw
IHRvIHRoZSBtaWRwb2ludCBjb29saW5nIHN0YXRlIG9uY2UgdGhlIHBhY2thZ2UgdGVtcGVyYXR1
cmUKPiBhcHByb2FjaGVzIDU1QywgYW5kIHRoZW4gaXQganVzdCBzdGF5cyB0aGVyZSBmb3JldmVy
OiBpdCBkb2Vzbid0IHNwZWVkCj4gdXAgYWJvdmUgdGhlIG1pZHBvaW50IGV2ZW4gYXMgdGhlIHRl
bXBlcmF0dXJlIGNsaW1icyBhYm92ZSA3MEMsIG5vcgo+IGRvZXMgaXQgc3BpbiBkb3duIGFzIGl0
IGZhbGxzIGJhY2sgdG8gYXJvdW5kIDQ1Qy4KPiAKPiBJcyB0aGF0IHRoZSBleHBlY3RlZCBiZWhh
dmlvciBmb3Igd2hlbiB0aGUgcG9sbGluZyBpcyBkaXNhYmxlZD8KCkkgZG9uJ3Qga25vdyB0aGUg
cmVzdCBvZiB0aGUgRFQgdGhpcyBmcmFnbWVudCB3YXMgYWRkZWQgdG8sIGJ1dCBJJ20gbm90IApz
dXJwcmlzZWQgdGhlcmUgaXMgbWlzYmVoYXZpb3IgYmVjYXVzZSB0aGUgY29uZmlndXJhdGlvbiBp
cyBub3QgY29ycmVjdCAKaW4gdGhpcyBjYXNlLgoKSWYgdGhlcmUgaXMgYSB0aGVybWFsIHpvbmUg
d2l0aCBhbiBhY3RpdmUgdHJpcCBhbmQgYW4gYXNzb2NpYXRlZCBjb29saW5nIApkZXZpY2UgbGlr
ZSBhIGZhbiwgdGhlbjoKCS0+IHBvbGxpbmctZGVsYXkgPSA8YV92YWx1ZT47CgktPiBwb2xsaW5n
LWRlbGF5LXBhc3NpdmUgPSA8MD47CgpJZiB0aGVyZSBpcyBhIHRoZXJtYWwgem9uZSB3aXRoIGEg
cGFzc2l2ZSBjb29saW5nIGRldmljZSBsaWtlIGNwdWZyZXEgCmNvb2xpbmcgZGV2aWNlLCB0aGVu
IDIgY2FzZXM6CgogIDEuIFRoZSBzZW5zb3Igc3VwcG9ydHMgaW50ZXJydXB0IHdoZW4gY3Jvc3Np
bmcgdGhlIHRyaXAgcG9pbnQKCS0+IHBvbGxpbmctZGVsYXkgPSA8MD47CgktPiBwb2xsaW5nLWRl
bGF5LXBhc3NpdmUgPSA8YV92YWx1ZT47CgogIDIuIFRoZSBzZW5zb3IgZG9lcyBub3Qgc3VwcG9y
dCBpbnRlcnJ1cHQgd2hlbiBjcm9zc2luZyB0aGUgdHJpcCBwb2ludAoJLT4gcG9sbGluZy1kZWxh
eSA9IDxhX3ZhbHVlPjsKCS0+IHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDxhbm90aGVyX3ZhbHVl
PjsKCldoeT8KCldoZW4gdGhlIGNvb2xpbmcgZGV2aWNlIGlzIGEgcGFzc2l2ZSBjb29saW5nIGRl
dmljZSwgdGhlbiB0aGUgbWl0aWdhdGlvbiAKaGFwcGVucyB3aXRoIGEgaGlnaGVyIHRlbXBlcmF0
dXJlIHNhbXBsaW5nIHJhdGUgaW4gb3JkZXIgdG8gY2hhbmdlIHRoZSAKc3RhdGUgb2YgdGhlIGNv
b2xpbmcgZGV2aWNlIGh1bmRyZWQgb2YgdGltZXMgcGVyIHNlY29uZC4gT24gYSBmYW4sIHRoZSAK
Y29vbGluZyBlZmZlY3QgaXMgdG9vIHNsb3cgZm9yIHRoYXQgc28gd2Uga2VlcCB0aGUgcG9sbGlu
ZyBmb3IgdGhhdC4KCgo+IEkgaGF2ZW4ndCB5ZXQgc3R1ZGllZCBpbiBkZXRhaWwgaWYgcGFzc2l2
ZSBjb29saW5nIGtpY2tzIGluIGNvcnJlY3RseQo+IHdpdGggcG9sbGluZyBkaXNhYmxlZCwgYnV0
IHRoaXMgYmVoYXZpb3Igd2l0aCBhY3RpdmUgY29vbGluZyBsZWZ0IG1lCj4gcXVpdGUgY29uZnVz
ZWQgLSBhbnkgcG9pbnRlcnMgd291bGQgYmUgbXVjaCBhcHByZWNpYXRlZC4KPiAKPiBUaGFua3Mg
YSBsb3QsCj4gQWxleGV5CgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90
d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
L2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
