Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75E70C44524
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 05:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKCJmfO0lxWzEW8XGG2Yndo+chrxon+tIrx0pQWicVo=; b=lHGU8PAVt6cr2N
	aKLI1VmIptL+eCJFnuzx279HaQ5MpJULP0nkYQftgKcZ561kIXnlsrJeOnkfZp/Cns0LmMs8pVMFl
	xFT8HfwsQZRhzu0elSKrnH3pWJfbEgevDKkduoZNbrFvmaZcOBwhcW3VaA9MzyF3SpNbU+FS8RnD3
	2eBituRBKH5nU5dtNc6gbfgtHtDQs8wKi+jlCrwLaAbPAlIXRdO4fhyZGXVj10O+Hy1HPVGxAKfnZ
	BKiEZ5NRf1DFVjCngPDF+Eo1/izXgEyr2wYiVkldUjuWjfExCvBkOzCGFMDggAnupsCp++wuiMUD3
	xQ8R5EAEJdzmxMMEGFAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmm4U-0000000DU5B-1b2B;
	Thu, 23 Jul 2026 05:34:14 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmm4R-0000000DU4W-2i9L
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 05:34:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-69e08ad526cso316884a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 22:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1784784849; x=1785389649; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z9Xvw9T6eAQSk6Ziei+kwmi6b3zyorGLKbWsnxvpWlc=;
        b=hS+/4OoyR+X+Nj98bDjby88mscWRHyR1M7OjWCFT8FUwfJASJKzKf2gGmZOySJrPR6
         gjCJ/03Lhe48bCIYXMmFdgF5w40byyZ0ggJuaJK5Mh5Iw/TXeOqiwBA7mlt828JDoe1h
         F2rTSzS70ALT8ovj6ovQybA4Ne+4cVTWMz2E1QutKQlruehLCp0jsFdiDFfQ30NLW1IE
         XCOZjDyWqugtrOUutNxozBn7p8U8YND4H/AQZkSCAEzJJYezI+aHHJoIECGxbcfySiCQ
         lqobcHHm3KkaANx/kKEK7WFuqhbMqbWuvaCRj/ovqB1RSYJnVzkZ2RUV++q2L2CSPpjw
         XGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784784849; x=1785389649;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z9Xvw9T6eAQSk6Ziei+kwmi6b3zyorGLKbWsnxvpWlc=;
        b=noXSflf+qmSdSMdSDoIcLchm5v10AsPIsJ8NzTs7aWfudtMA5uXDD9bsXdLox+2YRM
         XOiADCgXSCTjEhsQxFgZoOYWZUZZZCu+5fdPB31Dz7lQ3ItQj9zG93iL0HIo69GtYC/s
         2Dhu0008A0+XWczCrDnBX6kaVXMfYHO/o7JKvctyZmTrcccbpegcHUzE4qckGBVPf+g3
         eQJsgjHhwUkKtuuKDrkzuFHEETxqfpXKPcYYnaAWZymQBrU6uQcaNtB4nVyz6JSGUjbo
         FVmG7qbLWsbudqWWPYvWtvfqEPeOS4KtHNQRq3wmIKJxI4p5H+LyeQm/MQTUxx7UEJqA
         0qAw==
X-Forwarded-Encrypted: i=1; AHgh+RprmdHkkLHEBQtFSUKQmMIgzCn7bhF9e2JGrK5OWr74N0O2VnLjdDxGbvgNlZ9B7Nb64kArbUmvowTEbDQ1Sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YysEXdYWTDNGseMnvA2Yp/0/2xf/oIqId+IJbtVwJ7UVArBZNFg
	UfHD9gSJIX/pbMj6KOUWNhjPZMIy7sHcLSTRTS9LJjW/Rxh/8ucrRqDbmIJ1kWf6eA==
X-Gm-Gg: AR+sD10H7VH2OaDO5jG2eJ6sxCN+BRVXU+9yRAeCziJu3w9Yc610UumQRKy93lLTh5j
	kbroFvJWBoaFIsCppgKmEZBPeC9OW3AtPC1dga+34WMn+nQ+2ExQEdFMbahecAPROlNOQkpvYTr
	2smtH8bkM4eWrSf2Wb3xa2lbqJ9afY3aYk6nzJbP4jRdfW0f5Q+dPmwvZjmstxgI4qrlAhfcysW
	CWFiAOj4AWaOik7mbHbfwgnakgtqRierVF5aMS2vOtxF7G/k1l36WnnS0kD7XfIU+KTJbJoLjzh
	HPNGWsrQYUsULzpazHPEjVdg2GswEzGW5im7CejpNTi1o3EAqdd38+MyophkR2XVvro2my/ATcn
	zOjYJoC8x3i8HJDXwq44SmAlmjC88uiKv8mztN8lyqCFUtQDaWcEzyu3k3scWDQwCve7vh53kNK
	sm8hdRCkz3muJZZV+grUWIXeoIYiJTCrSu2HSkD79FbhGyf8/nP8DAUHkqBgvd+tDzG4SAqtHm9
	q3iwnRNFBFuKCaFUOIW7ea4imppYTRtWGSjIQvZ03lr6vyDrtPAxg==
X-Received: by 2002:a05:6402:4555:b0:698:99be:29d6 with SMTP id 4fb4d7f45d1cf-69f6c4ef29dmr358015a12.29.1784784848988;
        Wed, 22 Jul 2026 22:34:08 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:30b7:a679:c7a7:7d05? (2a02-a466-4d7a-0-30b7-a679-c7a7-7d05.fixed6.kpn.net. [2a02:a466:4d7a:0:30b7:a679:c7a7:7d05])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69f345b1b18sm1838609a12.2.2026.07.22.22.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 22:34:07 -0700 (PDT)
Message-ID: <6cc68287-ee87-4db6-8f40-531ec2d92fb2@pardini.net>
Date: Thu, 23 Jul 2026 07:34:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK
 output gates
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Daniele Briguglio <hello@superkali.me>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260624123914.1767374-1-hello@superkali.me>
 <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_223411_768397_5EC599B8 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 28/06/2026 21:13, Heiko Stuebner wrote:
> 
> On Wed, 24 Jun 2026 14:39:14 +0200, Daniele Briguglio wrote:
>> No in-tree board references these gates yet. Boards drive the codec
>> MCLK through the parent I2S*_8CH_MCLKOUT, and now that the gates are
>> managed clocks, clk_disable_unused() turns them off at boot. On a board
>> that relied on firmware leaving the output enabled, that cuts the MCLK
>> and analog audio stops working.
>>
>> Mark the four gates CLK_IGNORE_UNUSED so an unreferenced gate keeps the
>> state firmware left. A board that wants the kernel to own the gate can
>> reference I2S*_8CH_MCLKOUT_TO_IO from DT instead.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] clk: rockchip: rk3588: don't disable unused I2S MCLK output gates
>        commit: 946352b2f88fd2378f0341312e47dff1e8dc2fac
> 

Hi Heiko, Stephen,

sorry to pester, but do you think it's possible to include this in the 
next -fixes for Linus?
It's been in mmind v7.2-clk/fixes for a few weeks now, but I haven't 
seen it in -rc4.

Thanks,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
