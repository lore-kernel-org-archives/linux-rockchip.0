Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7692109C032
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 15:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnOlQEiASoQWVi/sygTghus2IRXYPiZwPigGTfVK56w=; b=ZLHFJfw2c3rJp7
	aWHtcImV1PVxPvq2upo5POvel2VLMjWWGbk8b0s1n2mzf4ftBrYyOgky5qstdJWM3rQF/lLEOmEQG
	nqsPeFRMxaa16sdVlkkoogN6617JwuUBHVjCe6IN5AQIB//F43ZpIC1XPH4UgDYsKZzdqwXoUoilu
	M3JdjwjeWjZctr1THYfFv+u/MMu7+JLjOozRTD/A5Nt8I5UN/Ag+i3jzn7KNz+oxB+JRBXtUwrnob
	x15QIoCinCR0MLIx6jAvFTbQjGO8AO1ocKdP05/nFSJs/JLU+oXoeHjEuTzIgzu6scg6JffxvKo6N
	lWPrusrgwgRgYprn89tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Q8O-00000003mv0-3Mr1;
	Wed, 25 Mar 2026 15:27:04 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Q8M-00000003muJ-28BX
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 15:27:03 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-1274204434bso820653c88.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 08:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774452421; x=1775057221; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=khgSvsFz4BGruQneZts97/YH28J+KXY7YhwPuOZLH0c=;
        b=l31IbuJo2P2KfXa6Ou+8vr+JAAIOIc5J4NJ+xPy0hS4askB+Pfm5uxvM0vE1pTQM+R
         U4hjJuKjuxxw005K0+5/gkgWXQQBE8fTmQfLn4nZ9m7tT+Pu1zxjKSBEX7+xRleQJ+s4
         N7QvOB0YnlnggXjHPHh+wwIrXDiAjTe3oxn874dzdnig7ynKxuudYXTw2OrMjUtBCKVU
         hp3tRVFhgoFwQbd8gGF8+I+VyZOr8B73xDVmMJGqXTX7rMU5LCPocpnfWT08wwuJPJ2/
         k6aTd1BuuLlUmo+OlIYEjN6ehoUezM3dM5xt0k9HMm2/zKZJaXntvIErUPSqahuEV50z
         t9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774452421; x=1775057221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=khgSvsFz4BGruQneZts97/YH28J+KXY7YhwPuOZLH0c=;
        b=Rr9PK707ETchMX3Mn7szysRJlVNe74GY6JpmHqS1MHfMXKF7RtDezkoLENAJz8Rueq
         iI3SZ7BxZM3qM58WgS9X8nsa9EMKRzavnQJ/6yHpPETQK3iQn7YHbpTy2Q0kIUK6gPF7
         ZPWMPZ1s9lBNBmYRIshI2mGxMBFNmHkNrHIoOwX8RyT35tT5DdKuipW9Blutd28wIVX+
         3MtcPw/Ma51J03IKYEmPBLUvAlqh9D9Id7DtrH0NFTpPuAkmZEp3ZAdyJAr/xJK/5XoI
         oI2/z8KlZ06gMlT1OMA54khpKnUxAeDLQt98QXPEcCmjRfO8NFUHKsLvFJKyr4ZSKQgv
         LxsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRkolqZkcGjcPBctegw0ZH/imHrCOA5f89lIruPizT+ZWdvPTymRxf3wbJVyLht21qRFOlPJCbO8+ZkLt8xQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYH/oqYhMbfm/gRH/wNTKyL8r5HT4iQimsY3VV4gH1ZCrbxLmL
	J+BYgoC6GiLY/rbeG55TP9WuT2NawcdncTlfKNUvG9HBcigjAH26bVVFdM7vDw==
X-Gm-Gg: ATEYQzx8wCBYv7FYaZWJyCV6+PdTHLfnWu1XxxxYKVBP5hVlk8VQcM0dbLZFGuKe//m
	+aGSxm6uf3ijzqQ2w2qPKzZskOtCTLpe4yAdq3YaZjQ7/++RGixC9Z8PGp/inoNlJ6H6wsf1c0T
	y+93lAxjGym121+dpHDV9yxqxNiQOGhi4doXsmJ54TVva1OiChqmuATc34zbb5tTqyAYRZSZTEv
	pEjhG5UlBlYFIyvSGfpldKVLuIUNmtFUiS6QLfRjzqtC5R8ZERCPeBCU61/JXTZjMgUME29UMGQ
	0uflHQ8Lx5vPWGmN8V1vDxbLgia8nyxGCEJeVBNJrj/bi/HPRJYR3NGkQXcpDGkVGcbKV7kft4Z
	UGUuAfcE7MXis55EDtdMMof1+a9AXGVI2JoDrbc/w4NrUOH/dZi56Iv6jmMZpSj/35tJ4vaZhjC
	s+zNC58mIocgmqYrqk8mXQOR3PRWaInkwPIX6OXeqorMUOf3LLDIV/Q7uMBY+/tFKG
X-Received: by 2002:a05:7022:220d:b0:128:cf41:d6e4 with SMTP id a92af1059eb24-12a8e1682e4mr3485083c88.21.1774452421364;
        Wed, 25 Mar 2026 08:27:01 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:b7b4:352d:eb23:66e5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12aa76243desm44594c88.9.2026.03.25.08.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 08:27:00 -0700 (PDT)
Date: Wed, 25 Mar 2026 08:26:57 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Grimmauld <grimmauld@grimmauld.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-ID: <acP9-AfUQ7zp3kMS@google.com>
References: <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
 <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <acNgUoWWMCi1oLU4@google.com>
 <DHBYL7Y262J2.263EOC2JNN4RK@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DHBYL7Y262J2.263EOC2JNN4RK@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_082702_547434_84472A11 
X-CRM114-Status: GOOD (  12.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 25, 2026 at 04:13:03PM +0100, Danilo Krummrich wrote:
> On Wed Mar 25, 2026 at 5:13 AM CET, Dmitry Torokhov wrote:
> > That means that you are kicking the majority devices (for now) into
> > deferral path. I do not think this is optimal.
> 
> That's not necessary, we'd only need to kick those into the deferral path that
> have PROBE_FORCE_SYNCHRONOUS, no?

Yes, it may limit the fallout, but as I explained in my other email
there seem to be a serious disconnect on what synchronous and
asynchronous probing mean.

I wonder, don't we get issues with phylib in other cases? Don't we ever
have a module resulting in creating a phy device triggering loading
another module on the same thread? Won't that result in a warning also?

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
