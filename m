Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B819C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 15:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMHque+CEG6mr4HWnR7tSpAXgEJHLVYh5ZmDI3otbWw=; b=XczOvIAJLfbDOx
	ns7ucxY1qElbisAMPyK5vgJff8pWo4F4ysOIllUqs4oJPi0Q7R50v2kLozIAEew8rruXhskojHbzH
	LCmmExMkZykSnonErf5VeLHvqQT8m/ZQPKpKcff/n4e0K2/y7fYPra6oOhtwvKxqllKzehmYi3tv+
	aw8pxYvNbGkOpZwZGdplWveFzWj1m/crwd33HQr3k/tBtnFolx0UCjlHP2wgvZ3374MGhacmnyS+z
	7PupzDcwlO/iqA+6kVSVfGFSLQgvy8pnIEMw11JRjWtpeDREWH0288Occ3nLnX68tmAZOq7096Tzu
	/96kXavJ9epNSSTaLaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDSwB-002fGS-1K; Fri, 28 Jan 2022 15:13:19 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDSw8-002fFR-HC
 for linux-rockchip@lists.infradead.org; Fri, 28 Jan 2022 15:13:18 +0000
Received: by mail-wr1-x430.google.com with SMTP id c23so11484919wrb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jan 2022 07:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=AUwJFbkTUdnlBk2iiUiCsMF/VYfJTKSHUYAJSm9ePFA=;
 b=m/G2yCpBhl3MgvFX0eCqxTH2UX/2jTTlzDb9a9d99JkomGhjqBJCg2rFda7/6wywEu
 kbUESx3fj8prq771TTeIbSjXjKBRhuKJYt8kKGZSBwT0xJ81NcxpBQ19kpXgDNNoR7qK
 hUhNE66MeEuQLOvTxeuGaXksymzOMjAZ9XKxDSybd8ZdkXSBeCEavf13SUnbrMEB2dlB
 Td3bDENJ0Cl//PHpNAJlb8GS3+1uyYDH3UFAZkGHVUQcCsTrgJqYKIRMoDV9hr2g2dTf
 9FjgJHgRtfblCYDx7YEPcHgrDc84bq2aSxOADkaxfiMq0l5kjvSj7GANDwapEcThRP8F
 UGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=AUwJFbkTUdnlBk2iiUiCsMF/VYfJTKSHUYAJSm9ePFA=;
 b=RR5MvfhQgDP0DtQvdMEHsYFipe65pNx4Us6uanJTJWg2E2ZLSvE21yBPKqCl5jyMX9
 SE1iIEwXcPpAg4EMZw764ZjGFr15oE9HNgy/GLiFKOoobInc3cMb3RAEsokfRFEdc2F0
 kwvvMKBtmUAtmz4yVWZ0fm2ZawRBuLHi0yqbqid7gC8csmeYWyNYqmvcIsCTcw3m0GI1
 t14NzRK73YqEN2umvDOZF8dckFu/DFFdr1idYMaQZ+iZtcumjX1J4zTz/n3pHSPIFDPX
 XsgnRHFkpxyxpKcaXUyesZaMALDKtbd+N8XKAFaMBftlMVkW9rws7Xl1LT4bIyap9pbX
 3M+g==
X-Gm-Message-State: AOAM530jbpeAozkxCF8+SuSw8fZl2whHjgExclKxtzhLHTBQHsud6qsq
 Wb/l2XaNAk8l4xqx63NeJPGcXQ==
X-Google-Smtp-Source: ABdhPJyYERh4YgS4Bbw9OaouOmH93frvS5/RF382UnIWRRnGqAeIjfNe8mDbXZOwE2Th4HzRUqZVMA==
X-Received: by 2002:a05:6000:16c2:: with SMTP id
 h2mr7667083wrf.614.1643382794348; 
 Fri, 28 Jan 2022 07:13:14 -0800 (PST)
Received: from ?IPV6:2a01:e34:ed2f:f020:f39:b962:8b8e:9851?
 ([2a01:e34:ed2f:f020:f39:b962:8b8e:9851])
 by smtp.googlemail.com with ESMTPSA id d4sm6066910wri.39.2022.01.28.07.13.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Jan 2022 07:13:13 -0800 (PST)
Message-ID: <55780cda-f963-9168-f439-5a51da3b4907@linaro.org>
Date: Fri, 28 Jan 2022 16:13:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, rjw@rjwysocki.net
Cc: robh@kernel.org, lukasz.luba@arm.com, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
 <48865702.Mx8J7aE1p6@diego>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <48865702.Mx8J7aE1p6@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_071316_654365_01B85979 
X-CRM114-Status: GOOD (  22.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkhpIEhlaWtvLAoKdGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzCgpPbiAyOC8wMS8yMDIyIDExOjE5
LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywgMjUuIEphbnVhciAyMDIyLCAx
ODoxODowOSBDRVQgc2NocmllYiBEYW5pZWwgTGV6Y2FubzoKPj4gVGhlIERUUE0gZnJhbWV3b3Jr
IGRvZXMgc3VwcG9ydCBub3cgdGhlIGhpZXJhcmNoeSBkZXNjcmlwdGlvbi4KPj4KPj4gVGhlIHBs
YXRmb3JtIHNwZWNpZmljIGNvZGUgY2FuIGNhbGwgdGhlIGhpZXJhcmNoeSBjcmVhdGlvbiBmdW5j
dGlvbgo+PiB3aXRoIGFuIGFycmF5IG9mIHN0cnVjdCBkdHBtX25vZGUgcG9pbnRpbmcgdG8gdGhl
aXIgcGFyZW50Lgo+Pgo+PiBUaGlzIHBhdGNoIHByb3ZpZGVzIGEgZGVzY3JpcHRpb24gb2YgdGhl
IGJpZyAvIExpdHRsZSBDUFVzIGFuZCB0aGUKPj4gR1BVIGFuZCB0aWUgdGhlbSB0b2dldGhlciB1
bmRlciBhIHZpcnR1YWwgJ3BhY2thZ2UnIG5hbWUuIE9ubHkgcmszMzk5IGlzCj4+IGRlc2NyaWJl
ZCBub3cuCj4+Cj4+IFRoZSBkZXNjcmlwdGlvbiBjb3VsZCBiZSBleHRlbmRlZCBpbiB0aGUgZnV0
dXJlIHdpdGggdGhlIG1lbW9yeQo+PiBjb250cm9sbGVyIHdpdGggZGV2ZnJlcS4KPj4KPj4gVGhl
IGRlc2NyaXB0aW9uIGlzIGFsd2F5cyBhIG1vZHVsZSBhbmQgaXQgZGVzY3JpYmVzIHRoZSBzb2Z0
Cj4+IGRlcGVuZGVuY2llcy4gVGhlIHVzZXJzcGFjZSBoYXMgdG8gbG9hZCB0aGUgc29mdGRlcHMg
bW9kdWxlIGluIHRoZQo+PiByaWdodCBvcmRlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+CgpbIC4uLiBdCgo+PiArc3RhdGlj
IHN0cnVjdCBkdHBtX25vZGUgX19pbml0ZGF0YSByazMzOTlfaGllcmFyY2h5W10gPSB7Cj4gCj4g
VGhlIGRyaXZlciBpcyB0cmlzdGF0ZSBzbyBidWlsZGFibGUgYXMgbW9kdWxlIGJ1dCB1c2VzIF9f
aW5pdGRhdGEuCj4gQXMgaXQgZGVwZW5kcyBvbiBwYW5mcm9zdCAod2hpY2ggYWxzbyBjYW4gYmUg
YSBtb2R1bGUpIHlvdQo+IHByb2JhYmx5IHdhbnQgYSAiX19pbml0ZGF0YV9vcl9tb2R1bGUiIGhl
cmUgLgoKV2VsbCwgYWN0dWFsbHkgdGhlIGRlcGVuZGVuY3kgaXMgd3JvbmcuCgpJdCBzaG91bGQg
YmU6CgoJZGVwZW5kcyBvbiBEVFBNICYmIG0KCkl0IHdpbGwgYmUgY29tcGlsZWQgYWx3YXlzIGFz
IGEgbW9kdWxlLgoKUmVmZXJyaW5nIHRvIHRoZSBEb2N1bWVudGF0aW9uL2tlcm5lbC1oYWNraW5n
L2hhY2tpbmcucnN0CgoiQWZ0ZXIgYm9vdCwgdGhlIGtlcm5lbCBmcmVlcyB1cCBhIHNwZWNpYWwg
c2VjdGlvbjsgZnVuY3Rpb25zIG1hcmtlZCB3aXRoCmBgX19pbml0YGAgYW5kIGRhdGEgc3RydWN0
dXJlcyBtYXJrZWQgd2l0aCBgYF9faW5pdGRhdGFgYCBhcmUgZHJvcHBlZAphZnRlciBib290IGlz
IGNvbXBsZXRlOiBzaW1pbGFybHkgbW9kdWxlcyBkaXNjYXJkIHRoaXMgbWVtb3J5IGFmdGVyCmlu
aXRpYWxpemF0aW9uLiIKClNvIGFmdGVyIHRoZSBtb2R1bGUgaXMgbG9hZGVkIGFuZCB0aGUgaGll
cmFyY2h5IGlzIGNyZWF0ZWQsIG5vdGhpbmcgd2lsbCAKc3RheSBpbiBtZW1vcnkgKGV4Y2VwdCB0
aGUgZnV0dXJlIG1vZHVsZSBleGl0IGZ1bmN0aW9uKQoKCj4+ICsJWzBdeyAubmFtZSA9ICJyazMz
OTkiLAo+PiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVfVklSVFVBTCB9LAo+PiArCVsxXXsgLm5h
bWUgPSAicGFja2FnZSIsCj4+ICsJICAgICAudHlwZSA9IERUUE1fTk9ERV9WSVJUVUFMLAo+PiAr
CSAgICAgLnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzBdIH0sCj4+ICsJWzJdeyAubmFtZSA9
ICIvY3B1cy9jcHVAMCIsCj4+ICsJICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKwkgICAg
IC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9LAo+PiArCVszXXsgLm5hbWUgPSAiL2Nw
dXMvY3B1QDEiLAo+PiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+ICsJICAgICAucGFy
ZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwKPj4gKwlbNF17IC5uYW1lID0gIi9jcHVzL2Nw
dUAyIiwKPj4gKwkgICAgIC50eXBlID0gRFRQTV9OT0RFX0RULAo+PiArCSAgICAgLnBhcmVudCA9
ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4+ICsJWzVdeyAubmFtZSA9ICIvY3B1cy9jcHVAMyIs
Cj4+ICsJICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKwkgICAgIC5wYXJlbnQgPSAmcmsz
Mzk5X2hpZXJhcmNoeVsxXSB9LAo+PiArCVs2XXsgLm5hbWUgPSAiL2NwdXMvY3B1QDEwMCIsCj4+
ICsJICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5
X2hpZXJhcmNoeVsxXSB9LAo+PiArCVs3XXsgLm5hbWUgPSAiL2NwdXMvY3B1QDEwMSIsCj4+ICsJ
ICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hp
ZXJhcmNoeVsxXSB9LAo+PiArCVs4XXsgLm5hbWUgPSAiL2dwdUBmZjlhMDAwMCIsCj4+ICsJICAg
ICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJh
cmNoeVsxXSB9LAo+PiArCVs5XXsgfSwKPiAKPiBobW0sIGRvIHdlIHdhbnQgYSAiLyogc2VudGlu
ZWwgKi8iIGluc2lkZSB0aGUgZW1wdHkgbGFzdCBlbnRyeT8KPiBJIHRoaW5rIHRoYXQgaXMgcHJl
dHR5IGNvbW1vbiB0byBkZW5vdGUgdGhlICJ0aGlzIG9uZSBpcyB0aGUgbGFzdCBlbnRyeSIKPiBv
ZiBhIGR5bmFtaWMgbGlzdCA7LSkKClN1cmUKCj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgc3RydWN0
IG9mX2RldmljZV9pZCBfX2luaXRkYXRhIHJvY2tjaGlwX2R0cG1fbWF0Y2hfdGFibGVbXSA9IHsK
Pj4gKyAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkiLCAuZGF0YSA9IHJr
MzM5OV9oaWVyYXJjaHkgfSwKPj4gKyAgICAgICAge30sCj4+ICt9Owo+PiArCj4+ICtzdGF0aWMg
aW50IF9faW5pdCByb2NrY2hpcF9kdHBtX2luaXQodm9pZCkKPj4gK3sKPj4gKwlyZXR1cm4gZHRw
bV9jcmVhdGVfaGllcmFyY2h5KHJvY2tjaGlwX2R0cG1fbWF0Y2hfdGFibGUpOwo+PiArfQo+PiAr
bW9kdWxlX2luaXQocm9ja2NoaXBfZHRwbV9pbml0KTsKPiAKPiBKdXN0IGZvciBteSB1bmRlcnN0
YW5kaW5nIHdoYXQgaGFwcGVucyBvbiBkcml2ZXIgdW5sb2FkPwoKQVRNIGl0IGlzIG5vdCBwb3Nz
aWJsZSB0byB1bmxvYWQgaXQuCgpBIHNlY29uZCBzZXJpZXMgd2l0aCB0aGUgaGllcmFyY2h5IGRl
c3RydWN0aW9uIHdpbGwgZm9sbG93IG9uY2UgdGhpcyAKc2VyaWVzIGlzIG1lcmdlZC4gVGhlIG1v
ZHVsZSB1bmxvYWRpbmcgd2lsbCBiZSBhZGRlZCBoZXJlLgoKCi0tIAo8aHR0cDovL3d3dy5saW5h
cm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4g
RmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
