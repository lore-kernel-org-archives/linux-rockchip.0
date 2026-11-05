Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EA9606A339
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 17:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C2LFWKmn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tHruNfnO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0oHnAMHuKV8kook0q2C9u0YZdhyD3PVj+N0C0m9Uc7o=; b=C2LFWKmnhteVaqwm2m7O2S+n84
	zFzpaxEHUl4CvqYbnjqFJqJW3JqN/5MwT3BxJecpBDOeBg6+88CYZ3GN/LG0SVlQQwmFWkjcR9Qji
	CjM8fuSu5qtDJj73AwRs5706IXX0CXQO7t0NjdE8wZ5JPuLznu2BB94b9XLfr8SLbtMXVNab1ulm1
	n8lckKLcXpjHgrJdUQsQsyDEqQL4iZ9C2MtBW90GaGkyAvUQiEjWCRQ4yY8rgnZcN123DgahVLu/c
	2kQ3bouZ8HnzrSvpLUehTS4oFUhE9MA2VxIOeG8frs6M0flhbUkgyAw8fD4x+5yexlwu9E731GH4Y
	nfRacTIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP1SI-00000009yjT-1hfw;
	Thu, 05 Nov 2026 17:40:54 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP1SF-00000009yhV-1t5D
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 17:40:53 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-48e1d0e5dafso593015f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 09:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793900449; x=1794505249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eAner/Tbdm+vBmCGePnRT0nbgyxjtQ03gRdPce+YEP4=;
        b=tHruNfnObJmInNXfCHq5QW84paPg9LRuIVVywkgdvpaQmvClpz9taDlefbBkoczFye
         2DOm6l447jeGXCPVut3JBAhYg13OjgvwElQ3u+G+72h8SZ90UPUPWqdXCUkjdjhAo33B
         oZYgUP7e9NAEba6bxUzZcIpkop4e1X1k3f1mBKzBaU8KWj6ADYhzvKvsfr0Uv4nuCzd3
         TxddskRjvSsJaD8MxC7VxLmsnTKRULQJ4TrktaboDT7HX55WNBP9EymiB8HnftXWSz40
         XKgkeiMeLlwWEogarl1CJTm4mtbGyzbc8xueZpbh+unJlQE6C+Pbgfd1guvf0FYHSQ4G
         9gNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793900449; x=1794505249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eAner/Tbdm+vBmCGePnRT0nbgyxjtQ03gRdPce+YEP4=;
        b=dxnMnRnSWr0Cs9Wt9GejUBUYMa14yZ+OL7X/fxo4pvs6kHfafqjaP+uKYJ3tEm6VDh
         n+yR3xte1gqo1JkMDJGMqv9HT4xpXsThbx4OIGZ2ZE820wnwX4+XNy5whDgg+sX7HmLj
         3jucsvOFciY3B+KT6xEcxVVBnh9lFZPG8nhu5l/cy/+6kCUPbgyp0dKSzE5vpXY63Sui
         jwe6AL8wQiWYOkLrS9g8p7fmy8wKeDnXY9zSAjVz14x88SVxRCUc0eBFu8KSBYcUUCwe
         iaTVfKekPH3wKKblWjtKvi2VDshkj5H5CC9l6mmzqLvSOiSzAfsMgPSvpOczK6jf+r5k
         Uwsw==
X-Forwarded-Encrypted: i=1; AKwUvBzGfayFFYTdUinNpDchFWdVFFybm3f+rIeks9tEqVIx/lvKTtOrFLfjT3/36VXr/pSJmwkNYBlU0o+OJJck2A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Fdz2W8QanBhexf6sqz7cjxEwPv9Dym1FxcMtZPr2PaqxvK2KA
	8UA28QlGlS/SJTB00Cwfpr7GNuDhq9GOGAyUP2sS+KdPJmLkvOkIGVnQ
X-Gm-Gg: AYBFou0wwoIfZdnbNz3tgJ6glKU4OXdUIPOnA8BRPcieFla7MSPrKMEFbCpGNgOX/rm
	BnXVX5rII1TilTRcEIyU5ZeLX1+9me5xYuWYHBn26IjHF6nJZbQUtzqapAc1HXQxH9QemVYhpCb
	HjZpUnzUkmyKadNRUG/Hts/8c8xRM9qOc8PYE0yp7MwLGTgu9NlJn/80bcrog5O78HV59nc0+W9
	XSbMlygdkSorhbqXeZXgxwEuHO3kfCGx8yreYZ2jPbzwDZlrUutA2/ELY57v4kerI49C4irLzP/
	T+PQzwK+MYbpgV3o+WgGDKqpPAx+vcCATyVLPCX3Zse+6E6gdo+QDGRag1O71YjjH/w5ut5Vl+i
	2N2w0hB4OvgqMAVN7N0UArPHi2Z8QlDjZh8ZSCUiZQX1mMZpzPkEPolrkP5N+6/HQN7tGgd3nns
	HhLuJL/qiIJaO1pvzGMV/7aRpjBnUR7jWPT3aptgKaM3t57DqVFMk35QexznKCuRdQS+MFdw9Ab
	7etOLN4WmfT2S24VALt0CZJJVezMhxCyTOFGWYRZlu6enJNf7c9lTXQyL6oJaVZSky6IpMbyByx
	3Q5JuAkJs5OeSmRmOraCF28eP4vyQvzzLHlPiWzp5K2WkQuTgbRTmgLHdpZcUONKdXPggp1tfwy
	tIHtlMYeIYWjOBtD6n5LDiFZYjFmov+z7M+CqtG2HNdd0ug==
X-Received: by 2002:a05:600c:5289:b0:4a2:18c4:61a5 with SMTP id 5b1f17b1804b1-4b55cf2fcc6mr61403365e9.6.1793900449296;
        Thu, 05 Nov 2026 09:40:49 -0800 (PST)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56e2ae73csm81216185e9.1.2026.11.05.09.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 09:40:47 -0800 (PST)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: krzk@kernel.org
Cc: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	iav@iav.lv,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: PCI: rockchip,rk3399-pcie: Add PERST# inactive delay properties
Date: Thu,  5 Nov 2026 17:40:42 +0000
Message-ID: <20261105174042.2307139-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261105-exuberant-finch-of-domination-3fbd6c@quoll>
References: <20261104215848.2087944-1-ehbello@gmail.com> <20261104215848.2087944-2-ehbello@gmail.com> <20261105-exuberant-finch-of-domination-3fbd6c@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_094051_501200_B5E17936 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 05, 2026, Krzysztof Kozlowski wrote:
> Vendor driver does not matter, it is antipattern. Do not mention it here
> as reason to do such change.
>
> No need to repeat the diff.

Understood, both go in the next version.

> us or ms?

ms. The 0 case is badly worded: the driver never holds PERST# for less
than 100 us, whatever the value, and 0 just ends up at that floor. I will
describe the floor instead of giving 0 a meaning of its own.

> What is the nature of this timing? 100 ms is a lot. Are you sure you are
> not describing RC delay (we have bindings for that already)

The 100 ms is not something the board needs. It is the driver's current
wait, T_PVPERL from the CEM spec, applied on every board. Because PERST#
is already asserted when that wait starts, it is also the width of the
reset pulse.

On my board (ROCK Pi 4C) the slot supply is regulator-always-on, so power
has been stable for seconds before probe and there is nothing left to
settle. The problem goes the other way: the JMB585 behind it stops
answering configuration reads when it is held in reset that long. A wait
of 0 to 15 ms enumerated 17 times out of 17, 20 ms once out of 3, and
100 ms never in 5. So the board needs a shorter value, not a longer one.
I do not know why this endpoint behaves this way.

Which binding did you have in mind for the RC delay? If an existing one
fits, I would rather use it.

I also plan to drop rockchip,s2r-perst-inactive-ms, since it describes
an OS power state rather than the hardware.

Thanks,
Enrique

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
