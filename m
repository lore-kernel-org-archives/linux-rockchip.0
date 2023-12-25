Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE40C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 09:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9T46pixp9Q2g0FgEa3KFp6Ys8AXp5pEeDo2EvZ+IvjE=; b=tvAsuDJwUznfPx
	mThhdqpdWqlzFiDOsdXpLTkCL7rBjkcsyINyeWUljF1baKACF93c9l8vT+YofKff3qDC12tx+ngW8
	OAVmZt0R+JVN3mTMbGbNNSdPCcSBsVqiyhYZwZ3WLUeepAsfhzNqLKPcEmGsrJyFeLaYXdinaE4xV
	lzyRv1rDZ0kBhnfTW0Ya0nfsyCPLQ7gIX9vivU/t5KxlNfP+kwqZukBxNoR740SJp5tJMIJtjBzBI
	bZOUs0z+WNay15VU2ULnqX6UH0MM/c9fCoJ1GkeUfbBjFVW9g5XMkHFwIWXKHbAvTVv+XUYwF4Aj8
	+GbMsYlkBZciXU2WEVzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHhIe-00ATNW-39;
	Mon, 25 Dec 2023 09:31:04 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHhIb-00ATMy-36
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 09:31:03 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5534abbc637so3904524a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 01:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703496658; x=1704101458; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wBrBMiTldbf54jBNETxS0Pz8X5EkxIAvmF/Iipubdto=;
        b=nmVQCMOxCuF3+dxmwUPobtTmVEliNnvoZZMOnhxcwLFTx6RUmzdtcvh/Wt81lq+761
         s43400K1i8a0z/Ri4vXBesjvA7gqzq24LEnWEwrWllSboh6sjaXeOTfhzd/h1lsw07A+
         F1AUFV0LFee2P0kmQuSLDSWxJB+V3zeBaKOD65MyPi17Kx47PThGUd0TT3fau/UTLjB0
         7Ul1z00wNRh54aO9Kt0fAjNu7IDok2dzTf/FlY2hE/Mwbs9m9ETANOBxEGjOV44BRhzL
         6fBk/dT+PfcCbAk6xTGXtpA4XL0XLuJN706kBaFnHT71EL3eaJ7CiVEBU2I0HjFd7jbt
         CERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703496658; x=1704101458;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wBrBMiTldbf54jBNETxS0Pz8X5EkxIAvmF/Iipubdto=;
        b=JG7V+H4O+lpDjU5L616/ChDyZxMdgQldSoJuyBM5W7Vzghv0OS76NYi0aeR56A3KC0
         wUglpaFt5maryQkM6KwWZ0jcCqhaAOAuxPQX4spKB6dhFpthot/liI2QRqKrkiFDsv4m
         s4H84b8173N0tKExgoVfAGgMWFGjSTHC7HoSgqrTks8nyyTpG1xBUP5W9AbFUsfmlXuq
         aYet6ibGZb8qLFdnZACakyMOGnrL42zTQhvqF00klriWVa0YlTsJWuUAmk6ilNq39afn
         6xaw+fq7Bj5jsqFq/YhPDb6d1IZ3uQcf05Sh1Rs8G01qRI6HuyqCvM2e4DM0I0cZEEfU
         0XZQ==
X-Gm-Message-State: AOJu0YzP7fw9EczDRl40BiiWsBT4V4xnZQZhFOAp4+y7F4MWHCnmaLJx
	6g7xP7+94lITNzDxe5r0a4VfsMws6ihLbg==
X-Google-Smtp-Source: AGHT+IFLMCLq1cSLUNVUU7oMG937MCMlEvxFfNBW8K82K69CUlLd9ZKh0v7cOlPzYx+UODhRgYIKhg==
X-Received: by 2002:a17:906:388e:b0:a1f:36e3:1280 with SMTP id q14-20020a170906388e00b00a1f36e31280mr2645406ejd.25.1703496658003;
        Mon, 25 Dec 2023 01:30:58 -0800 (PST)
Received: from [192.168.0.22] ([78.10.206.178])
        by smtp.gmail.com with ESMTPSA id az3-20020a170907904300b00a26ae3a93aesm3874190ejc.66.2023.12.25.01.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Dec 2023 01:30:57 -0800 (PST)
Message-ID: <82608b03-1f12-40eb-b36f-00b15cb13a4e@linaro.org>
Date: Mon, 25 Dec 2023 10:30:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: support poweroff on rock-5b
Content-Language: en-US
To: John Clark <inindev@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20231225090856.3890-1-inindev@gmail.com>
 <3f4b01cf-c334-4c17-ae3a-58b3591484e9@linaro.org>
 <46192bde-05da-a3cf-cf28-1cefaa4112d5@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <46192bde-05da-a3cf-cf28-1cefaa4112d5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_013102_027480_9FF826DD 
X-CRM114-Status: UNSURE (   7.71  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjUvMTIvMjAyMyAxMDoyNiwgSm9obiBDbGFyayB3cm90ZToKPiBPbiAxMi8yNS8yMyA0OjE5
4oCvQU0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDI1LzEyLzIwMjMgMTA6MDgs
IEpvaG4gQ2xhcmsgd3JvdGU6Cj4+PiBBbGxvdyB0aGUgcm9jay01YiB0byBwb3dlcm9mZiBpdHMg
cG1pYy4KPj4+Cj4+PiByZWxhdGVkOiBjNjk5ZmJmZGZkNTQ2MzBmYzUxYjk2ZGE1NzdmMDJlN2I3
NzJlYjM3Cj4+IFJlZmVyZW5jZSBjb21taXRzIGhvdyBjaGVja3BhdGNoIGFuZCBzdWJtaXR0aW5n
LXBhdGNoZXMgYXNrIC0gY29tbWl0IGZvbwo+PiAoImJhciIpIGFuZCBleHBsYWluIHdoYXQgaXMg
InJlbGF0ZWQiLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+Pgo+IFdoZW4gaXNz
dWluZyBhICJzaHV0ZG93biAtaCBub3ciIG9uIHRoZSByb2NrLTViIGl0IHJlYm9vdHMgaW5zdGVh
ZC7CoCAKPiBVc2luZyB0aGUgJ3N5c3RlbS1wb3dlci1jb250cm9sbGVyJyBhbGxvd3MgdGhlIHJr
ODA2IHRvIHBvd2VyIGRvd24gaW5zdGVhZC4KCkkgbWVhbnQsIGV4cGxhaW4gaW4gdGhlIGNvbW1p
dCBtc2cuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
