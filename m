Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414E1D2CE01
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 16:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5u2K9mOOkYFe+3TXbj7BdLBwVE8krGbVe6EEqDAU94=; b=G87EBWZGEIGaIx
	PcCF+Isu9oxWIMrkuIp931AK7/Wkb1F4fC+JdsE9nredEgVEPPyreIpjC0N5Y1O7bUwnY5BLrxAe5
	OiK+n+Asz3zGTtbOEGuF2QRK2vPRwOG2I8+i4o67DttrjZrZwaIQDNcYDec2TKT5eR2j/FgNSuXru
	d84UWz+w9Nxl5gY9hM9s0+i/yBRi45PLkyCHPF22JHcxmcdypLvaxoMARDL/FeEwsel+1Q/O5IJBu
	+81aDw67uZcTlkjaAm9PvNO5C5f76mVNDPkWBxUj8nwqvxPjgcle8eKnJPbRniY1WuAt//PAz695C
	n5wMcVZIIsu7+Lzymlgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3I3l-0000000BX7o-3xCU;
	Tue, 22 Oct 2024 16:48:41 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3HlJ-0000000BSwo-3Abs
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 16:29:39 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2fb56cb61baso46182631fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2024 09:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729614575; x=1730219375; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mYYtlzBEl7gtJfr4NTGhzUN/UYER+MKPfZjJSoq7AH8=;
        b=qKCB0qf113VylVde5nH4Hv1odR/CQfTtJewA5LTKtv1yVw/pgHbb3iOF8+RB1vw3hj
         2xqBtxfuqLWlYVkUXV5gMMx0Nh74+kXfSGJPTViClhtjFtAC9jpiAvAR2WNu4OpFXplD
         KI/92zrsXwoG1OpQvmznciL47mdNYmi0zeCkHi3KeNYXYv3WWKdXB6BD/YzNOC22qezR
         BeBLNIvuZO3wY5/nwx+qPmiYoMBOTFTxGnROWZh0POjRbzV9JmGRpT3zM0V83CqVt+KC
         jsVJSInvpFGL1FWtcjra2Ih/ZGT9ehQN2j0ND6KLRAKxK7lJ9AjWtFPBMl2Ilms0kfct
         0m1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729614575; x=1730219375;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mYYtlzBEl7gtJfr4NTGhzUN/UYER+MKPfZjJSoq7AH8=;
        b=mdMp7wfk3d1sWqfMYl/5766j9B8wYjuvDcw2ptsgQABrbG/8GYoqIGSojn2i5Rl9lZ
         kX+GIk/zprv136ApSn/9GZy8tAUyDlYDD/xyG0ocUvQyQB0wxsDEnSc3ZyJJLoCKnTa5
         j0S9s8xUQUPe//mm9IWyXRZusD8LSSTh1ZVfTVI9/YMG6KU7tM30YPGmZ4dwKEn2MW/d
         z6BoDU/BBagCk1eKkAlkhwGTlW5218eXAyn8KZLmLzLabRHtWjcQmz2XiBBqLdg7p7NU
         mtkJ7OE5IX0z7EiYANUhKYC8AUQehH6gGdrxqxR2ggP/4mgsdLXE3SPufw9eEwrnSeoM
         ql4w==
X-Forwarded-Encrypted: i=1; AJvYcCUFnmr4aMz90bpc8SknKHUvctwKZkrXIPqvIXWLbYuNxPAFU2Nk6FIOpbSWuWIMPbRQAHS0lspcdXb0/qtQuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzzk3WDKsrHCAfVCh5nElZoxkEeZvrI8x4aHgnzrDpdMbMgpobk
	ZitTIRp4+H8FhNI8t38ryx3krhH1sPwyXhCa6qVONyd4YTAWVoR9pvyc8hE7yzY=
X-Google-Smtp-Source: AGHT+IHvOz3k1e6wuWl1d7INxXkLe7qNKVh7hpSRfRhY+VPPl9RorpJ0zP30B82VIJSuu4vBsY26Dg==
X-Received: by 2002:a05:6512:3e25:b0:53a:d1a:be09 with SMTP id 2adb3069b0e04-53b13a23f4emr1805356e87.37.1729614575349;
        Tue, 22 Oct 2024 09:29:35 -0700 (PDT)
Received: from [192.168.210.26] (83.11.13.124.ipv4.supernova.orange.pl. [83.11.13.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a91370e91sm357269366b.123.2024.10.22.09.29.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2024 09:29:34 -0700 (PDT)
Message-ID: <2a27ed62-305d-4d41-a43f-02f58bc22e2d@linaro.org>
Date: Tue, 22 Oct 2024 18:29:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH v2 0/5] Enable HDMI0 on several RK3588 based boards
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_092937_830763_292C7C86 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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

VyBkbml1IDE5LjEwLjIwMjQgb8KgMTI6MTIsIENyaXN0aWFuIENpb2NhbHRlYSBwaXN6ZToKPiBT
aW5jZSB0aGUgaW5pdGlhbCBzdXBwb3J0IGZvciB0aGUgUkszNTg4IEhETUkgVFggQ29udHJvbGxl
ciBbMV0gaGFzIGJlZW4KPiBtZXJnZWQgYXMgb2YgbmV4dC0yMDI0MTAxOCwgbGV0J3MgZW5hYmxl
IHRoZSBIRE1JMCBvdXRwdXQgcG9ydCBmb3IgdGhlCj4gZm9sbG93aW5nIGJvYXJkczogUmFkeGEg
Uk9DSyA1QSAmIDVCLCBSb2NrY2hpcCBSSzM1ODggRVZCMSBWMTAsIFh1bmxvbmcKPiBPcmFuZ2Ug
UGkgNSsuCgpJIGNvcGllZCBjaGFuZ2VzIHRvIEZyaWVuZGx5RUxFQyBOYW5vUEMtVDYgRFQgYW5k
IGJvb3RlZCA2LjEyLXJjMyB3aXRoIAp5b3VyIGNoYW5nZXMgb24gTFRTIHZhcmlhbnQgb2YgdGhl
IGJvYXJkLgoKV2l0aCBteSBTQkMgbW9uaXRvciBpdCBjb21wbGFpbmVkIGFib3V0IHJlc29sdXRp
b24gKDEwLjUiIDEzNjZ4NzY4cHgpOgoKcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBb
ZHJtXSAqRVJST1IqIHZwMCBDbHVzdGVyMC13aW4wIAphY3R1YWxfd1sxMzY2XSBub3QgNCBwaXhl
bCBhbGlnbmVkCgpBbmQgbW9uaXRvciB0b2xkIG1lICJubyBzaWduYWwiLgoKL3N5cy9kZXZpY2Vz
L3BsYXRmb3JtL2Rpc3BsYXktc3Vic3lzdGVtL2RybS9jYXJkMS9jYXJkMS1IRE1JLUEtMS9tb2Rl
cyAKbGlzdHMgYWxsIHJlc29sdXRpb25zIGF2YWlsYWJsZS4KCldvdWxkIGJlIG5pY2UgdG8gc2Vl
IHN5c3RlbSBnb2luZyB0byBuZXh0IEVESUQgcmVzb2x1dGlvbiBpbiBzdWNoIGNhc2UuIAoxMjgw
eDcyMHB4IGlzIDRweCBhbGlnbmVkLgoKCldpdGggbXkgMzQiIDM0NDB4MTQ0MHB4IG1vbml0b3Ig
aXQgc2hvd24gc29tZSBvdXRwdXQgb25jZS4gSW4gcmVzb2x1dGlvbiAKY2xvc2UgdG8gb3JpZ2lu
YWwgb25lIGJ1dCAxNjo5IGluc3RlYWQgb2YgMjE6OSBvbmUuIEFueXdheSBtb25pdG9yIApiZWhh
dmVkIGluICJJIGRvIG5vdCBsaWtlIHRoYXQgc2lnbmFsIiB3YXkgLSBzdGFydGVkIGJsaW5raW5n
LCBoYWQgCnByb2JsZW1zIHdpdGggZGlzcGxheWluZyBldmVuIGZyb20gbXkgZGVza3RvcCBhZnRl
ci4KCgpJIGdvdCBhIGZlZWxpbmcgdGhhdCAxOTIweDEwODBweCBtb25pdG9yIGxhbmRlZCBvbiBt
eSAibmVlZCB0byBidXkiIGxpc3QuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
