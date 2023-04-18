Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF809C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGFXvOMTrwKWD//dldJ5go7eKOPerfeXUynRfT9MNn8=; b=QYT02yDJfAzcOG
	bECyw/hrc3s9NbS2ZzDRihYZj9Zh/8UW5Apqj5RAdTV3jaNhEZBiU8pe+gDK29am5brdHZinN0d79
	C1ZmL/Z/3pHdQ4TSHBZYdm9sOBGqY+VMQjek/YMF74sb7bVmBaCoAG6OvFSqjlebSkI31ELJQ/G0r
	C3Sry7nA00XyavYnUuM4rR1EiVC7LG1hrVUJRoLtc/+rwzHrYDzYIg75WON8xUxeATRuikYAhoNKv
	a8i5L/zOWKr8xz7hXEEV9/Gqv2ll19XW5C76DaKnYsrVbGqnAB6FLwWQ2TXcpmduFx+i31HJ30Htj
	2NfiJA9TqdAoSXXjCNfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pofz5-001AEU-1C;
	Tue, 18 Apr 2023 07:42:39 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pofz2-001ACI-1J;
	Tue, 18 Apr 2023 07:42:37 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2a8aea0c7dcso17158241fa.2;
        Tue, 18 Apr 2023 00:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681803752; x=1684395752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtqIqMNC7LuOrbOTCfwMXdHzZ9s4D5MfzU5PnZ8V9ZU=;
        b=Qnj0pAaqHUlLnkjL7ZdgJvOGu3CJF1kbQ/d70sYVORX+UNXbanHAYgp8JzTcAlnnNr
         6/Mw2vQx972XFVFHqG8PUgOw2oDwJDsfwMSjaFXP2vHT6C4AptLmtP/7QTJEGPsfMqZM
         D2rBU3hr9hkl/lr4U2xKelMMJhUVyARrmxJdFNKoGkMG/T59lI0XJ686UVN0i11shX4W
         6ctvxMeIpYDY6XnW6/hsBCpF6oCkLf2i/ZD5+zlImUb/qjdJFl8mC+IFxJYkBAy8OSJA
         lTUx2HFDW9eFbNQG4Bhc5vGNRHK1dITWCOtE91LgMtjhE87kfX5JZ2ruhn7IHddddmlq
         AXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681803752; x=1684395752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtqIqMNC7LuOrbOTCfwMXdHzZ9s4D5MfzU5PnZ8V9ZU=;
        b=E1RpLEO5FlItmN1PlKo0HAlYV4ixLxVg7/xgVzSTZsWKQKqhx8jaUtxpscMX9ecZyW
         kHrFzs7XIjtTP8iXd9Bh9eaZAxt8qY6JSuq0e/1E79ozoGtTfjo3RafvMcmDebW8eDN0
         fK050aD7YNYixdGCrmHl55eXiZHwjtW3YY+XI9SznwJj5/1Nrjq0y1kvQpVSJU91r9Ya
         h/NuuS6hwWTXe0NGQExOgmo+HqWyFxeTXWyEuocEgQqmOEz6lNFNkMRipYy2a5rWHzwF
         wGthMGsb477m/FzoK/L/icwtRJnp4e0PUCpo2KpQmAgGJgGVHs++rCqwGwB+VuYzaATa
         oNfg==
X-Gm-Message-State: AAQBX9fmdtjsXckf8BI6f25F8wD/iVxRTJFGC6Z1nQkmsjZkZKPiWudZ
	6UWJv4t/S9k3hr0QcVf8xoKocUgsIUqbWzj7yg0=
X-Google-Smtp-Source: AKy350YxPhK/T8mwd1xKJXt0SNqsHzgZFnLvwyzVRMnlbOkfb9QeMhsrLcDTLq3RzGU41Rm6Jqh/SMCqNO4Cot792Fc=
X-Received: by 2002:ac2:47e7:0:b0:4ec:7967:9e93 with SMTP id
 b7-20020ac247e7000000b004ec79679e93mr2946555lfp.0.1681803751913; Tue, 18 Apr
 2023 00:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230405123813.2272919-1-pbrobinson@gmail.com> <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
In-Reply-To: <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 18 Apr 2023 08:42:20 +0100
Message-ID: <CALeDE9N_DFdsxNf5UJL265fBTeEO=NPmUPb-YnDqiLMCWkPrOA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
To: Heiko Stuebner <heiko@sntech.de>
Cc: Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>, 
	Caleb Connolly <kc@postmarketos.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, linux-rockchip@lists.infradead.org, 
	Ondrej Jirman <megi@xff.cz>, linux-arm-kernel@lists.infradead.org, 
	Jarrah Gosbell <kernel@undef.tools>, =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004236_459686_567748AE 
X-CRM114-Status: GOOD (  10.76  )
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

T24gTW9uLCBBcHIgMTcsIDIwMjMgYXQgMTE6NDPigK9QTSBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPgo+IE9uIFdlZCwgNSBBcHIgMjAyMyAxMzozODoxMyArMDEwMCwg
UGV0ZXIgUm9iaW5zb24gd3JvdGU6Cj4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5j
ej4KPiA+Cj4gPiBUaGVzZSBhcmUgaW1wbGVtZW50ZWQgdmlhIHJlZ3VsYXIgQURDLCBzbyByZWd1
bGFyIHBvbGxpbmcgaXMgbmVlZGVkLAo+ID4gZm9yIHRoZXNlIGtleXMgdG8gd29yay4KPiA+Cj4g
Pgo+Cj4gQXBwbGllZCwgdGhhbmtzIQo+Cj4gWzEvMV0gYXJtNjQ6IGR0czogcmszMzk5LXBpbmVw
aG9uZS1wcm86IEFkZCBzdXBwb3J0IGZvciB2b2x1bWUga2V5cwo+ICAgICAgIGNvbW1pdDogZDMx
NTBlZDUzNTgwNTQwMzI5MWI5NWZkODRiMDBiMGI1ZWY0MTA5Ngo+Cj4gV2l0aCBWb2x1bWUgRG93
biBpbmNyZWFzZWQgdG8gNjAwbVYgYXMgc3VnZ2VzdGVkIGJ5IE9uZHJlagoKVGhhbmtzIGZvbGtz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
