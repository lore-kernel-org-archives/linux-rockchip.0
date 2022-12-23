Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3584C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 10:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OKF/m9TnQxR4k74E9R4sYw7oU+WtTYD2Sst7crp+Sc=; b=3jfabjOyXithiY
	b3DpTod9tJIu94HZ+Js0MJj7tW737Y0OwvCpLZvQJDXo6uE0WuO4JC6nn7HZYU6p45WQTRPbpThM6
	wwdzMh+ma6Sj/wXJlavW4oz+CKW8vfbpGtRE6lKY1zjxmOwC9IHeg+EEKPyTMkQFF4N55l+a1foH6
	CqhfFBnEctacMukES6qYiynrAo3Mm/8GWBknV/VOBIRyQ17bIZwAig6yS6ox1tQoa24kpK6LJFYKS
	n0LSpR63FqMYUdTbp3hm8mbbdrjtF+UE64+x0foPTqcWbgcALuntBPbEYmuEUFVpsCsDqsOhJH2nH
	UkRFznfDUt8dFi8dQKVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fjx-006jxh-JY; Fri, 23 Dec 2022 10:57:25 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8fjg-006je4-7U; Fri, 23 Dec 2022 10:57:09 +0000
Received: by mail-qk1-x731.google.com with SMTP id f28so2212135qkh.10;
        Fri, 23 Dec 2022 02:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WW+LCcAtlGnRQKKQ3bVeCpYjp1F+jYu+AIxRn9diqUs=;
        b=MMOaugASq3E4MFvLrio0/ZW1VXQCotOLhNNAUOPPmGgVnRfnS8C4yF8PmSsxDhKLny
         H7LrIAdIBSfPESmusfMvHeWuaEF9VK+k7w5BFX4NhpxQJ/s/O9AkXuK56+tdIJ1UmOjr
         e95LjXVsPaOUviXdvosRdXvXC96/lR41+XPdv+qoyuAGqoCbrw4lKIxW+JsI+U8QxHwm
         RdfyDN8OuGp/YJumggdpg9EvwpSmDNhYJcn+i3uDL2Ma99y5/d7PS/+RmwFJcLNQd6F5
         pN8Jy9evlPN3T+MMZ1OTJ8MXKCkY3Syii6nrulUnX4sESX1wu6g5cHBYS4q86AiAw2od
         mQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WW+LCcAtlGnRQKKQ3bVeCpYjp1F+jYu+AIxRn9diqUs=;
        b=UT6FbRRmO2Ybol3KM98asRZBRv8hBmP+LSDz1NOA08lL9Z9++CrTjhp4VGWaakgK3V
         0wwQ9HUr0TZSUD7p4aCAm5rhbGHXWRQp6PGNVmXSeR2eBDPP07ETt22fswCYARA/hBVa
         xwq5yAf/XqTY7/oQosm+IAF56zzS3Ap5i/vgb3eRE9KPPkRwhJNmJgt7sCSx4PbcgdEz
         ZaEBrVNXsJHt/TQjJwSRoZGKL3ga8NhQ2qWPFk2RA5mIjogggi266UkvCkbzfRP7jJWL
         N8n0jMOFnCSBBRqxwwQf0VpXQcGTUEoaYMgygQOPj2QIzGIHrplXNPjcukhVESwjYBo8
         fbVg==
X-Gm-Message-State: AFqh2kqIuD4l4tpMQw3QDH+j4ia3v9IrM2ekPcu1VDImJ++wghz7CBqj
	SHg6ZXGfCuHlkHZhTJresIndgPANrMcRLAnk6BVXG7XI+KxYTndCR5M=
X-Google-Smtp-Source: AMrXdXs3OQEmrbpBSV9ypraWiPlBrwwNdX2kuAZfYaCPRX7BNnG+oSFP9+O8PP+2MoKDXqmAbzfgt4zhO6vH0kOCrSM=
X-Received: by 2002:a05:620a:8cf:b0:702:219a:130d with SMTP id
 z15-20020a05620a08cf00b00702219a130dmr411267qkz.407.1671793022215; Fri, 23
 Dec 2022 02:57:02 -0800 (PST)
MIME-Version: 1.0
References: <Y6UdvrhLjS0/8Oic@VM-66-53-centos> <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
 <CAMmci2UkBVaBgYMF8JaZkL==b9-0AB90VPGK7SNdNV5w5Zyzhg@mail.gmail.com> <62e62d16-aa18-4487-db98-d767f1f9d438@linaro.org>
In-Reply-To: <62e62d16-aa18-4487-db98-d767f1f9d438@linaro.org>
From: ty <zonyitoo@gmail.com>
Date: Fri, 23 Dec 2022 18:56:50 +0800
Message-ID: <CAMmci2UPxbu_nMJyqz5q_3Efw-gHawEbzBPkMyW7cGqMf0f-SA@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_025708_325579_43D0A783 
X-CRM114-Status: GOOD (  11.20  )
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

R290IGl0LiAyLzMgYW5kIDMvMyB3aWxsIGhhdmUgdGhlIEFja2VkLUJ5IGxpbmUgaW4gdGhlIG5l
eHQgUEFUQ0ggdmVyc2lvbi4KCk1heSBJIGFzayB3aGV0aGVyIHRoZXJlIGFyZSBhbnkgY2hhbmdl
cyByZXF1aXJlZCBpbiBbUEFUQ0ggdjkgMS8zXT8KCktyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4g5LqOMjAyMuW5tDEy5pyIMjPml6XlkajkupQgMTg6
MTjlhpnpgZPvvJoKPgo+IE9uIDIzLzEyLzIwMjIgMTA6NDIsIHR5IHdyb3RlOgo+ID4gSGksIEty
enlzenRvZiwKPiA+Cj4gPiBTb3JyeSwgd2UgZG8gbm90IGtub3cgdGhlIHByb2Nlc3MsIHRoaXMg
aXMgb3VyIGZpcnN0IGNvbnRyaWJ1dGlvbiB0bwo+ID4gdGhlIExpbnV4IEtlcm5lbC4gVGhlcmUg
aXMgbm8gY2hhbmdlIHNpbmNlIHRoZSBsYXN0IHJldmlldyBvZiB0aGlzCj4gPiBmaWxlLgo+Cj4g
U28gSSBsaW5rZWQgeW91IHRoZSBwcm9jZXNzIGFuZCBleHBsYWluIGl0Lgo+Cj4KPiBCZXN0IHJl
Z2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
