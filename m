Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C2A9C77B78
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 22:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V73Wj07hv30WH+fSxKSlu8DDz+8h07Dt1E0d2kKSmw4=; b=KnKciB/stri05f
	f41wjAgKtGiTVv4uAUzC7UJ/2/zsrHtwhQveeBe6jMUQ4BukJBFJFCQQEyHsGSfla+3mHymUjt5FX
	rONYbDQllY3dgZCKv88k1fBu++jxOX4CjgNLSVA4Gci7iq1lmi+hk3sTK1N9EiiT17qU8n1STc6jj
	dM/q13+cow35RZPz0+SrJjylfFRoOnhS45TY4uS7jwYimI5IDRBtQBPI3yc7ew/axAn7KJe0gsqjb
	vO9ZUVe2L2HjQZwCHfixkrdjyOhfjCIPMehP6WflRctyCY0/Qh80ycx53EL7gQPrJDq7aseeSY2+f
	Yg6jra/LPnTvGalFmiKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puKzM-005zc0-2U;
	Wed, 03 May 2023 22:30:20 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puKzH-005za0-1w;
	Wed, 03 May 2023 22:30:17 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-24e4e23f378so848980a91.3;
        Wed, 03 May 2023 15:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683153012; x=1685745012;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Mp6CzPotn9aMhYuP1SiSdnM3toCuetUTL6p1Pka30U=;
        b=bNRlnnTF+SjZJvfO0HArhda1ki6KEyIa7yIRZQPDhMmTqTNNooLEQemu27nE0HCTDC
         ehg0UFT/VFvJrzxIMMpqs/LfyiZTcvfm3F+XeRCHeLKiHGTslEamAcA/igyUj1RUpYqb
         jGTv1DRSnyHXSO+6BklV+H0tQUegWEpRcj9ZpU3IZeJyr0OTp0uWflXKxNLt/Dv3Fo9Q
         lyreFoA/HC5oPSx7g0RJgiSEs9GwL3CQmot20cPJQBMw9eDNFCnNWmZeSQ/ZfOgd+UUX
         wLIk2ukG1JzFJdW7nk5OX9lr2jX57mY836CjkAxfeHIEUZ2uly4MzKA0lNXFe8yznUDm
         6rKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683153012; x=1685745012;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Mp6CzPotn9aMhYuP1SiSdnM3toCuetUTL6p1Pka30U=;
        b=fvSppl+XYrlj0G5PSUThWBml7cvvVPPPY1HN1s6thpwAF8dGXwwtw68mPWWP4kJBoD
         6//Kampt7t+jvSUumc7Zj6rCa8rPNmB1d+/CtHJ8WFVkhV941ZdkfE/9P23IHcdzNV/i
         nrQkb7jk/o5cBHE9hTTREnfSOJx5B+rCMT7sXzmX51xwunXa6RTUzyGNbG9EGcxPwhve
         j2skdoFy96fDSKbDdoGyh4aLaLLTdRUyqREfQ7Fv5WEaiooR4TMmeYnG/yz5LztTcYMP
         6IUoK9ZIGVeM5zMAKmL8pf5loST4nEb+uF4RoOShGiLcvvuJ6L+7nkB4wEjLB1NOxRZ6
         er/Q==
X-Gm-Message-State: AC+VfDysi5oCru+/qjFl9X2wg4L6X2QRr2VvdXNry7f2vkjLPOJ1CxXt
	gOm9NAkDl06JQuRtPMMuIaY=
X-Google-Smtp-Source: ACHHUZ68cmsHxtB87iONW+SsuMsSJr4NkMfMrRrxl8kzW+7lj28j0Q7Ue/XhdACq9ZdVdGd7yUEu7w==
X-Received: by 2002:a17:90a:a891:b0:247:bdd3:a039 with SMTP id h17-20020a17090aa89100b00247bdd3a039mr172899pjq.8.1683153011868;
        Wed, 03 May 2023 15:30:11 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id jx12-20020a17090b46cc00b0024e0141353dsm1872551pjb.28.2023.05.03.15.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 15:30:11 -0700 (PDT)
Message-ID: <bae5336c-a26a-cabb-6b83-ee9cece18130@gmail.com>
Date: Wed, 3 May 2023 15:29:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>
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
 <d4b52074-d11c-4c7a-ad74-b2fce64c6d30@gmail.com>
 <CAL_JsqKRcMSijAdiP_BpyBGRuMhscZ12QFcLBAeZ+TcaQg7r4g@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <CAL_JsqKRcMSijAdiP_BpyBGRuMhscZ12QFcLBAeZ+TcaQg7r4g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_153015_665548_AA3866F4 
X-CRM114-Status: GOOD (  21.81  )
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

T24gNS8yLzIzIDE4OjA0LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUdWUsIE1heSAyLCAyMDIz
IGF0IDY6MDLigK9QTSBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+Cj4+IE9uIDUvMi8yMyAxMjo0MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+PiBPbiBUdWUs
IE1heSAyLCAyMDIzIGF0IDM6MTXigK9BTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiB3
cm90ZToKPj4+Pgo+Pj4+IE9uIFR1ZSwgQXByIDI1LCAyMDIzLCBhdCAxNzo1NywgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgQXByIDI1LCAyMDIzIGF0IDI6MjjigK9BTSBHZWVydCBV
eXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPj4+Pj4KPj4+Pj4+IERv
ZXMgeW91ciBzY3JpcHQgYWxzbyBjYXRlciBmb3IgLmR0cyBmaWxlcyBub3QgbWF0Y2hpbmcgYW55
IHBhdHRlcm4sCj4+Pj4+PiBidXQgaW5jbHVkaW5nIGEgLmR0c2kgZmlsZSB0aGF0IGRvZXMgbWF0
Y2ggYSBwYXR0ZXJuPwo+Pj4+Pgo+Pj4+PiBJIGFzc3VtZSBJIGJ1aWx0IGV2ZXJ5dGhpbmcgYWZ0
ZXIgbW92aW5nLCBidXQgbWF5YmUgbm90Li4uCj4+Pj4+Cj4+Pj4+IFRoYXQncyBhbGwganVzdCAi
ZGV0YWlscyIuIEZpcnN0LCB3ZSBuZWVkIGFncmVlbWVudCBvbiBhKSBtb3ZpbmcKPj4+Pj4gdGhp
bmdzIHRvIHN1YmRpcnMgYW5kIGIpIGRvaW5nIGl0IDEtYnktMSBvciBhbGwgYXQgb25jZS4gU28g
ZmFyIHdlJ3ZlCj4+Pj4+IGJlZW4gc3R1Y2sgb24gYSkgZm9yIGJlaW5nICd0b28gbXVjaCBjaHVy
bicuCj4+Pj4KPj4+PiBTb3JyeSBmb3IgbWlzc2luZyBtb3N0IG9mIHRoZSBkaXNjdXNzaW9uIGxh
c3Qgd2Vlay4gVGhlIHNjcmlwdCBzb3VuZHMKPj4+PiBmaW5lIHRvIG1lLCB0aGUgb25seSByZWFz
b24gSSBkaWRuJ3Qgd2FudCB0byBkbyB0aGlzIGluIHRoZSBwYXN0IGlzIHRoYXQKPj4+PiB3ZSBo
YWQgdGhlIHBsYW4gdG8gbW92ZSBwbGF0Zm9ybXMgb3V0IG9mIHRoZSBrZXJuZWwgdHJlZSB0byBh
biBleHRlcm5hbAo+Pj4+IHJlcG9zaXRvcnkgYW5kIEkgd2FudGVkIHRvIGRvIHRoaXMgcGxhdGZv
cm0gYXQgYSB0aW1lIGFuZCBhbHNvIG9ubHkgbW92ZQo+Pj4+IGVhY2ggb25lIG9uY2UuIEkgZG9u
J3QgdGhpbmsgdGhhdCBpcyBnb2luZyB0byBoYXBwZW4gYW55dGltZSBzb29uIG5vdywKPj4+PiBz
byBsZXQncyBqdXN0IGRvIHlvdXIgc2NyaXB0Lgo+Pj4+Cj4+Pj4gQ2FuIHlvdSBzZW5kIG1lIHRo
ZSBzY3JpcHQgYW5kL29yIGEgcHVsbCByZXF1ZXN0IG9mIHRoZSByZXN1bHRpbmcKPj4+PiB0cmVl
IGJhc2VkIG9uIG15IHNvYy9kdCBicmFuY2g/IEV2ZXJ5dGhpbmcgaXMgbWVyZ2VkIHVwc3RyZWFt
LAo+Pj4+IGFuZCBJIHRoaW5rIGdpdC1tZXJnZSB3b3VsZCBoYW5kbGUgdGhlIHJlbWFpbmluZyBt
ZXJnZXMgd2l0aCBhbnkKPj4+PiBvdGhlciBjaGFuZ2VzIGluIG1haW5saW5lLgo+Pj4KPj4+IEkn
dmUgZHVzdGVkIG9mZiBteSBzY3JpcHQgYW5kIG1hZGUgYSBicmFuY2hbMV0gd2l0aCB0aGUgcmVz
dWx0Lgo+Pj4gVGhlcmUncyBqdXN0IGEgY291cGxlIG9mIGZpeGVzIG5lZWRlZCBhZnRlciB0aGUg
c2NyaXB0IGlzIHJ1biAoc2VlIHRoZQo+Pj4gdG9wIGNvbW1pdCkuIFRoZSBjcm9zcyBhcmNoIGlu
Y2x1ZGVzIGFyZSBhbGwgZml4ZWQgdXAgYnkgdGhlIHNjcmlwdC4KPj4+IGR0YnNfaW5zdGFsbCBt
YWludGFpbnMgYSBmbGF0IGluc3RhbGwuIEkgY29tcGFyZWQgdGhlIG51bWJlciBvZiAuZHRicwo+
Pj4gYmVmb3JlIGFuZCBhZnRlciB0byBjaGVjayB0aGUgc2NyaXB0Lgo+Pj4KPj4+IEkgdGhpbmsg
dGhlIG9ubHkgaXNzdWUgcmVtYWluaW5nIGlzIGZpbmFsaXppbmcgdGhlIG1hcHBpbmcgb2YKPj4+
IHBsYXRmb3JtcyB0byBzdWJkaXJzLiBXaGF0IEkgaGF2ZSBjdXJyZW50bHkgaXMgYSBtaXh0dXJl
IG9mIFNvQwo+Pj4gZmFtaWxpZXMgYW5kIHZlbmRvcnMuIFRoZSBtb3N0IG5vdGFibGUgYXJlIGFs
bCB0aGUgRnJlZXNjYWxlL05YUAo+Pj4gcGxhdGZvcm1zLCBweGEsIHNvY2ZwZ2EsIGFuZCBzdG0z
Mi4gSXQncyBub3QgY29uc2lzdGVudCB3aXRoIGFybTY0Cj4+PiBlaXRoZXIuIE9uY2UgdGhhdCdz
IGZpbmFsaXplZCwgSSBzdGlsbCBuZWVkIHRvIGdvIHVwZGF0ZSBNQUlOVEFJTkVSUy4KPj4+Cj4+
PiBIZXJlJ3MgdGhlIGN1cnJlbnQgbWFwcGluZzoKPj4+Cj4+PiB2ZW5kb3JfbWFwID0gewo+Pj4g
ICAgICAgJ2FscGhhc2NhbGUnIDogJ2FscGhhc2NhbGUnLAo+Pj4gICAgICAgJ2FscGluZScgOiAn
YWxwaW5lJywKPj4+ICAgICAgICdhcnRwZWMnIDogJ2F4aXMnLAo+Pj4gICAgICAgJ2F4bScgOiAn
bHNpJywKPj4+ICAgICAgICdjeDknIDogJ2NueHQnLAo+Pj4gICAgICAgJ2VjeCcgOiAnY2FseGVk
YScsCj4+PiAgICAgICAnaGlnaGJhbmsnIDogJ2NhbHhlZGEnLAo+Pj4gICAgICAgJ2VwNycgOiAn
Y2lycnVzJywKPj4+ICAgICAgICdteHMnOiAnbXhzJywKPj4+ICAgICAgICdpbXgyMyc6ICdteHMn
LAo+Pj4gICAgICAgJ2lteDI4JzogJ214cycsCj4+PiAgICAgICAnc3VuJyA6ICdhbGx3aW5uZXIn
LAo+Pj4gICAgICAgJ2lteCc6ICdpbXgnLAo+Pj4gICAgICAgJ2U2JyA6ICdpbXgnLAo+Pj4gICAg
ICAgJ2U3JyA6ICdpbXgnLAo+Pj4gICAgICAgJ21iYTYnIDogJ2lteCcsCj4+PiAgICAgICAnbHMn
OiAnZnNsJywKPj4+ICAgICAgICd2Zic6ICdmc2wnLAo+Pj4gICAgICAgJ3Fjb20nOiAncWNvbScs
Cj4+PiAgICAgICAnYW0zJyA6ICd0aScsCj4+PiAgICAgICAnYW00JyA6ICd0aScsCj4+PiAgICAg
ICAnYW01JyA6ICd0aScsCj4+PiAgICAgICAnZHJhJyA6ICd0aScsCj4+PiAgICAgICAna2V5c3Rv
bmUnIDogJ3RpJywKPj4+ICAgICAgICdvbWFwJyA6ICd0aScsCj4+PiAgICAgICAnY29tcHVsYWIn
IDogJ3RpJywKPj4+ICAgICAgICdsb2dpY3BkJyA6ICd0aScsCj4+PiAgICAgICAnZWxwaWRhJyA6
ICd0aScsCj4+PiAgICAgICAnbW90b3JvbGEnIDogJ3RpJywKPj4+ICAgICAgICd0d2wnIDogJ3Rp
JywKPj4+ICAgICAgICdkYScgOiAndGknLAo+Pj4gICAgICAgJ2RtJyA6ICd0aScsCj4+PiAgICAg
ICAnbnNwaXJlJyA6ICduc3BpcmUnLAo+Pj4gICAgICAgJ2FybWFkYScgOiAnbWFydmVsbCcsCj4+
PiAgICAgICAnZG92ZScgOiAnbWFydmVsbCcsCj4+PiAgICAgICAna2lya3dvb2QnIDogJ21hcnZl
bGwnLAo+Pj4gICAgICAgJ29yaW9uJyA6ICdtYXJ2ZWxsJywKPj4+ICAgICAgICdtdmVidScgOiAn
bWFydmVsbCcsCj4+PiAgICAgICAnbW1wJyA6ICdtYXJ2ZWxsJywKPj4+ICAgICAgICdiZXJsaW4n
IDogJ2JlcmxpbicsCj4+PiAgICAgICAncHhhMicgOiAncHhhJywKPj4+ICAgICAgICdweGEzJyA6
ICdweGEnLAo+Pj4gICAgICAgJ3B4YScgOiAnbWFydmVsbCcsCj4+PiAgICAgICAnYXJtLScgOiAn
YXJtJywKPj4+ICAgICAgICdpbnRlZycgOiAnYXJtJywKPj4+ICAgICAgICdtcHMnIDogJ2FybScs
Cj4+PiAgICAgICAndmUnIDogJ2FybScsCj4+PiAgICAgICAnYXNwZWVkJyA6ICdhc3BlZWQnLAo+
Pj4gICAgICAgJ2FzdDInIDogJ2FzcGVlZCcsCj4+PiAgICAgICAnZmFjZWJvb2snIDogJ2FzcGVl
ZCcsCj4+PiAgICAgICAnaWJtJyA6ICdhc3BlZWQnLAo+Pj4gICAgICAgJ29wZW5ibWMnIDogJ2Fz
cGVlZCcsCj4+PiAgICAgICAnZW43JyA6ICdhaXJvaGEnLAo+Pj4gICAgICAgJ2F0OTEnIDogJ21p
Y3JvY2hpcCcsCj4+PiAgICAgICAnc2FtYScgOiAnbWljcm9jaGlwJywKPj4+ICAgICAgICdzYW05
JyA6ICdtaWNyb2NoaXAnLAo+Pj4gICAgICAgJ3VzYl8nIDogJ21pY3JvY2hpcCcsCj4+PiAgICAg
ICAndG55XycgOiAnbWljcm9jaGlwJywKPj4+ICAgICAgICdtcGExNjAwJyA6ICdtaWNyb2NoaXAn
LAo+Pj4gICAgICAgJ2FuaW1lb19pcCcgOiAnbWljcm9jaGlwJywKPj4+ICAgICAgICdha3MtY2R1
JyA6ICdtaWNyb2NoaXAnLAo+Pj4gICAgICAgJ2V0aGVybnV0NScgOiAnbWljcm9jaGlwJywKPj4+
ICAgICAgICdldmstcHJvMycgOiAnbWljcm9jaGlwJywKPj4+ICAgICAgICdwbTlnNDUnIDogJ21p
Y3JvY2hpcCcsCj4+PiAgICAgICAnZ2U4NicgOiAnbWljcm9jaGlwJywKPj4+ICAgICAgICdiY20n
IDogJ2JyY20nLAo+Pgo+PiBIb3cgYWJvdXQgd2UgdXNlICdicm9hZGNvbScgaGVyZSwgdG8gZm9s
bG93IHdoYXQgYXJtNjQgZG9lcz8gSSBjb3VsZAo+PiByZW5hbWUgYXJjaC9taXBzL2Jvb3QvZHRz
L2JyY20gdG8gYXJjaC9taXBzL2Jvb3QvZHRzL2Jyb2FkY29tIGZvcgo+PiBjb25zaXN0ZW5jeSwg
dG9vPwo+IAo+IE9rYXksIHRob3VnaCBpZiBzdGFydGluZyBjbGVhbiBJJ2Qgc29tZXdoYXQgcHJl
ZmVyIHRvIHVzZSB0aGUgdmVuZG9yCj4gcHJlZml4LiBJIGd1ZXNzIHNpbmNlIGFybSBhbmQgYXJt
NjQgc2hhcmUgZHRzaSBmaWxlcywgdGhleSBzaG91bGQKPiBtYXRjaC4KClNvdW5kcyBnb29kIHRv
IG1lLCBsZXQncyBnbyB3aXRoICJicmNtIiB0aGVuLgotLSAKRmxvcmlhbgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
