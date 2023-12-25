Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD116C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ew4r5WKEgH+fCSTgXcXUy8s0Ey3I3lylUCY/SeFsFkQ=; b=AUuh1DUAkjNC+a5C1jtSl8L1U3
	Mcs7uaXBIVnhIDti65l11de1eOLDsIXjEF7XT3dm8LxNp0YFxMMMtKnTmK8IgaLwcVnFAilGsCN0E
	VfzfgKeFHuxSTcVSlTBupXgxxq0RU9APjwM518xpjuuXgXflkbL6AuTHfDWC6e5Roe0tt6RLxQLsG
	oVhkRi+aVPZhn+Gkf8SOspP70cYiLSRiC2pVuePEOYmQz9ztg9xBD4VlTOjZcRLnAIFz4JbpCyxFm
	2U2wFNk1PB32qQd86dm/so6aqJPxGNks/fPhhcNZCv6JbMdrsK++41s6vRijEN6MZBQPpGDDyQaYO
	Fqs7F4mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHhET-00AT0S-0k;
	Mon, 25 Dec 2023 09:26:45 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHhEQ-00ASz7-30
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 09:26:44 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-67f911e9ac4so28918646d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 01:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703496397; x=1704101197; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7NpFruTiGbnFruXfm+dgCcDCSu3ixjCso/mC7xe91WQ=;
        b=jRIjukR5kL13bjwSUSd1xEXPOHqxMUIxBMb2CzXoqO1nV4uatihcrZLTCFRzzIlKRE
         y3pl9DR7dnw/3q7GAUjZbmsQjf+zaBR8EmEeuJnwvSx8BcD/nTTUZutIPZ0hw87O8hKH
         SdC0tbb6XdnvDtzhYflDIl04NnnK/ZXnszaR0jrIEss2OrYbRJIUi9bHHwnqIjNsAv2i
         rPqDzCa54CdK5wqQF0nYrs9NXZDypb6MzUI+ydZb6wDqophpTLZRS5gSaMQEWN7ZdtSJ
         IfMJtR5noexbBHJXhQhgVY5UGBtZZqlbPWw/zZ5IDQM/h9EB2IBbhYFBaBSprDVPr1Ii
         oJSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703496397; x=1704101197;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7NpFruTiGbnFruXfm+dgCcDCSu3ixjCso/mC7xe91WQ=;
        b=Y9cBgYXSG2WYDdVQkhruqBxO+ogwjJH4uH97+PKqrT79Dk3JS18qOOYo/eYmAR0q2M
         n2m2Cl53/JePVCfFqT26fNtbff8uN4K40LxMw4CSAJfH3L771nOy4ia0hW1193EzerlQ
         22/heQvxs930T8UAIYmrqBp5+WG+WeuhnnaN6f53qEa7e7zxcesezqrlg5pb6FAAmATV
         9R9+Yw5tAZLXT+Qn5NKUnKyEuJMEMMxCzFZhqTvZkuhUVPZVQ17YpB95ZSX+lg+2mCgJ
         3Aqu+RuGhzxe+j+8dZ73UKg+m1+sL+LgcbJ8ukh6VdE7HRpZGIW1xMxi4MwKD6Uul6bZ
         Hddg==
X-Gm-Message-State: AOJu0YzprjpFX9FrFjvarLLzjmJog7k0kbznuRIYbUZMshbbl9hPZFiJ
	7kOhPRHD7Z46Dv56f4JhlqzIHpa3Obk=
X-Google-Smtp-Source: AGHT+IHCHqTXtfUDBLu5SrDwI8phwiwI9Ksb7F9NfZ0tDTlwQ8bvz8yHPQ1hmexq7byr5I002xJ9fg==
X-Received: by 2002:a05:6214:18f2:b0:67f:ac7b:1691 with SMTP id ep18-20020a05621418f200b0067fac7b1691mr4954327qvb.91.1703496397405;
        Mon, 25 Dec 2023 01:26:37 -0800 (PST)
Received: from [192.168.20.212] (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id ec17-20020ad44e71000000b0067f90426698sm3024294qvb.23.2023.12.25.01.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Dec 2023 01:26:37 -0800 (PST)
Message-ID: <46192bde-05da-a3cf-cf28-1cefaa4112d5@gmail.com>
Date: Mon, 25 Dec 2023 04:26:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: support poweroff on rock-5b
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20231225090856.3890-1-inindev@gmail.com>
 <3f4b01cf-c334-4c17-ae3a-58b3591484e9@linaro.org>
From: John Clark <inindev@gmail.com>
In-Reply-To: <3f4b01cf-c334-4c17-ae3a-58b3591484e9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_012642_970886_7F98CA11 
X-CRM114-Status: UNSURE (   9.17  )
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

T24gMTIvMjUvMjMgNDoxOeKAr0FNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI1
LzEyLzIwMjMgMTA6MDgsIEpvaG4gQ2xhcmsgd3JvdGU6Cj4+IEFsbG93IHRoZSByb2NrLTViIHRv
IHBvd2Vyb2ZmIGl0cyBwbWljLgo+Pgo+PiByZWxhdGVkOiBjNjk5ZmJmZGZkNTQ2MzBmYzUxYjk2
ZGE1NzdmMDJlN2I3NzJlYjM3Cj4gUmVmZXJlbmNlIGNvbW1pdHMgaG93IGNoZWNrcGF0Y2ggYW5k
IHN1Ym1pdHRpbmctcGF0Y2hlcyBhc2sgLSBjb21taXQgZm9vCj4gKCJiYXIiKSBhbmQgZXhwbGFp
biB3aGF0IGlzICJyZWxhdGVkIi4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgpXaGVu
IGlzc3VpbmcgYSAic2h1dGRvd24gLWggbm93IiBvbiB0aGUgcm9jay01YiBpdCByZWJvb3RzIGlu
c3RlYWQuwqAgClVzaW5nIHRoZSAnc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXInIGFsbG93cyB0aGUg
cms4MDYgdG8gcG93ZXIgZG93biBpbnN0ZWFkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
