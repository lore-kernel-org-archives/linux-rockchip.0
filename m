Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6751FC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:42:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1435461A1E
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:42:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1435461A1E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EkiXiKCUMYZ0nN32ygEUamkBftxi1YaQsiwLYzl0cUM=; b=PvtBnbKJzpgfdGW4solsLNk4S
	K5YmS3VyVdgwfUJ+//RdkB0WcB1Iockys8dgtxaxGb6UQ5MExJ5YU93Lh0RzGpnXb0x83lLLMDobb
	MJh1yMruf9Gd9sa4IwZCHhrY1oKYacI1nODMa3L8/MpeRTSBGa3GOip9or/LVqpG0739ZL/IBfpvt
	39P+tbLxxXhtYCeWeJxYu0nARfkKFa01k6K1QfQtHCV8sEyNhTrjFwV4cVxv2B7VC3MIVvO4ec1HV
	BQswl69c2Ak5K6L/l5QvfQWhDf8pt16NRy6B1ttpCkdKWJnXPhTbJSANPxfhQx01WSz3cLPwbsE5I
	r9an4a+IA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPiyn-003BxM-26; Fri, 26 Mar 2021 09:42:09 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPiyU-003BnX-IB; Fri, 26 Mar 2021 09:41:53 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 l12-20020a9d6a8c0000b0290238e0f9f0d8so4657007otq.8; 
 Fri, 26 Mar 2021 02:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Aqjc4e4P+BYL3ptPbOMRtOfrYGx7wKOgBenNti1wSGk=;
 b=HRYgMfgZrN2RHxZvf3CIN/Auu/ev7Vlxga78g+PvATDM3d3gfec2gnyuyS1L8FzFfk
 7JrEZDpiaFc1ENVCYPTfObyOeBlhawYOd2S/NEwekSZJKp+IvC3CsOw/IEYeyRHeOoUT
 O0ax5A3pw/07lzm/aegmiaa2Ojl5jm7b8QimRnGSh/gnnLOfCxN8wJlPkFGqBEJKoQAG
 x2TpyyAVRuI0j46ygm0/6kskpPkpVDiySl84Q7+yy25Gbczk/zL7w9SFQkMGFjXc631J
 wcHskpkOqSU/VIrV5XweOG8h4fmqPckIInLNT8x05dZxc1O2xv67VWKpeACM4+73GEWt
 7dKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Aqjc4e4P+BYL3ptPbOMRtOfrYGx7wKOgBenNti1wSGk=;
 b=I3Ukb7StTbzh3WFx9OvhJpq+2pJyARwlG3oWXw+0B2YVgq5tOszVafurwa7FyXXY1O
 y9bBlo2XDgKYvUi/tdaSH55fZ8VVxOsJHzfMCOuxP7nXsSlvgUq5rjDfyeGckrxcNEH7
 LvS53oK1xGI+UJv3W33SkMPXGIV7e/OBkLfdbQcPFQISAGGOF3pmnF9qwvvYewZ8WxWM
 hdR+Vyub5xH4gEwYI+qCFP4vRztcpJVQoRAkRVT82v1eRlm2ElGJQcse2m+f6i/DOrzw
 1I4SACUxgj3R6VvApLk1j8IlwsVWUlUbjMxDbUcz8UZrPH+gVBL1U8X38d6KE7lVFOBf
 IiJA==
X-Gm-Message-State: AOAM532DfPVguryEHcHzCkCyg/Dvv/TUh6MJtyPHzDAseSuLqMDWclP2
 8hrBHDKodUwCE/pmOl2d4hjBmlJ1au1FkmCzQquj0Dscl7oORw==
X-Google-Smtp-Source: ABdhPJw+hcU2eD3grVXPcFvEeWAOWTPAIj3y/l9tcWkeR4X29gZwIsJ16uGYOC8Akvhep9knlWfKLmxCAgq9pJe+46A=
X-Received: by 2002:a05:6830:10d3:: with SMTP id
 z19mr11157103oto.362.1616751709324; 
 Fri, 26 Mar 2021 02:41:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091712.12478-1-zhangqing@rock-chips.com>
In-Reply-To: <20210326091712.12478-1-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:41:37 +0100
Message-ID: <CAFqH_51868Omo6bC5MCgbsTjAXqhYTbgn86MwZjN3_gX6SfhgA@mail.gmail.com>
Subject: Re: [PATCH v5 05/11] arm64: dts: rockchip: Fix power-controller node
 names for rk3328
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, 
 finley.xiao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_094151_233199_BA634F63 
X-CRM114-Status: GOOD (  13.69  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TWlzc2F0Z2UgZGUgRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+IGRlbCBk
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE3Ogo+Cj4gVXNlIG1vcmUgZ2VuZXJp
YyBuYW1lcyAoYXMgcmVjb21tZW5kZWQgaW4gdGhlIGRldmljZSB0cmVlIHNwZWNpZmljYXRpb24K
PiBvciB0aGUgYmluZGluZyBkb2N1bWVudGF0aW9uKQo+Cj4gU2lnbmVkLW9mZi1ieTogRWxhaW5l
IFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kgfCA2ICsrKy0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4gaW5kZXggMDYzZWQwYWRiZWM0Li4wODRh
Y2ZkNTk3YWYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
MjguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kK
PiBAQCAtMzAzLDEzICszMDMsMTMgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBkX2hldmNAUkszMzI4X1BEX0hFVkMgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMzMjhfUERfSEVWQyB7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8UkszMzI4X1BEX0hFVkM+Owo+
ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGRf
dmlkZW9AUkszMzI4X1BEX1ZJREVPIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1k
b21haW5AUkszMzI4X1BEX1ZJREVPIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDxSSzMzMjhfUERfVklERU8+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4g
LSAgICAgICAgICAgICAgICAgICAgICAgcGRfdnB1QFJLMzMyOF9QRF9WUFUgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMzMjhfUERfVlBVIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDxSSzMzMjhfUERfVlBVPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfVlBVPiwgPCZjcnUgSENM
S19WUFU+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gLS0KPiAyLjE3LjEKPgo+Cj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
