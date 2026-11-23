Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFE0606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sd3epVzN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=APnHaJyW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7sMls++86oSRolXh9IF8Y5GIIyFaq239vMVkOoBya00=; b=sd3epVzNPVIsFwusplZNzJuJVG
	8QSNy6qlksWKwwa6hStfL+X+KhZQHqod8/SeLj3TxPMJgVE1uFDROu5L9so0Io8BEeZo4WaijiHku
	LtgWU9u2utAFdffxK7/Fm2DtQDGfkldTezm1E1t4CrzLUWWKBySnDPIDQS9NuCsQ9SrM1+4u6Q+hA
	HlQq26fYYz4kfgK9KIat8WGn8LmWlVr6hqxJuxb5vQS2X3E+5zNg6io6JsKEItG05/c2w+zr0q+hn
	b4FJrhScW0Hso1+RYIp4LoU8eb5UMLgEsIspEBFT5bQm/PTv9LjLx7ZnYITy+883lStQq6pdQatgP
	h/HF3JEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVlM-00000003vl7-2RZe;
	Mon, 23 Nov 2026 15:15:24 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVlK-00000003vki-1f5H
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:15:23 +0000
Received: by mail-pj2-x06.google.com with SMTP id d9443c01a7336-2f0a42f6d3aso3187965ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 07:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795446921; x=1796051721; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=CnlaXsnqBBeCleb2qSsHaDLf/DmVepUOVtOJ829eUng=;
        b=APnHaJyW9QY6htUtqOi7tOXOqGvX+KXvzHo5usdGKn3oi+bfMgduxKHCzafSdP9Ydk
         8128TRMZPQ85kX2316IB6LlKNyqy7pdlHPJg12Y2u3EeHG9WSZzZCVU9kzYIcGuiyo3o
         /V8DeLATpbFvkrNJ2dW7uhcpyoMzf0h4NuTrwtSE7RkmcgqcpZw27qShXPTk9968TIog
         K37Jl8Yo0rR1ithLIzbiVK7nJ0ySXGFXmqSnPhEyY112MSJUkPMDSg8JgJEp89ggd1H4
         cR2cuDz2Z8n3VxDbkrco3Nv2wir6Q8UbRHnNnQgAwHXreFKU7ClBdsGMyHV4xOgYwKub
         nNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795446921; x=1796051721;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CnlaXsnqBBeCleb2qSsHaDLf/DmVepUOVtOJ829eUng=;
        b=wCOtoCQysu2jzkksyg8no1hLpxb2xZN41cWdDwN7xzM2b9ybnByHjRwquskISfwM7h
         h6Pc+BMH4DqZwfG5QUfeZA4Tc2P0uU0px4z7CfXPnJv0z1rAdR9rrxE00ljqeuC1hvTN
         2A++ekv8e0/+qo0ztAUCRrdimV5gqqfQIWHBCkfGEydr02pNVdiHs1AZowT4nFzA7quG
         ZN177Sh4l3VmffHssrq7ldqfohzsLPy+HOOdlYXWcZE0CyyB3I0rmXfSYPXnulSvvzmb
         /EXMz3j8gj9VW4w5iiXaM/wzSbwfPI4vvWcRi1cuMfAb1lzUZsfdjKV+IFsw0JbwlYzf
         E7cw==
X-Forwarded-Encrypted: i=1; AL+hErHNNPNiOmbxQS/cRkaX5VY3qknz9M8IrXOs/kEWq1ymSUJDojhTUJM76GuqS1Uuu+rvcW1mwMdEn4iL+01n2A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ko03Qz8LcRPo1Sj9+1ZLGV3/tUgW5jWcrnX2GrqtAZiV4rISG
	ox0cuUWgACE5YRHrTNGHWjMu5VEvtBU1YBT9g4eZ2SJT18y6SSjC7YRS1l2cbtGvV8Cx6MKm
X-Gm-Gg: AZFdTZdhKbc6XZjjYOwwm59D8JfOAnqJNROf4mz990FckHrKT1fLxMBWSE7JqjVBivf
	NrU5GMZ7WhMcbTqakDzIcjJSYCjXOHb/4TynvUm+WNVNpPZGvnKeMRRd4Sh91gS4AeaTIhdtMzJ
	sxB24aRyfBi/IzkupbXnfWn/sQY9ys3u9aEC4CkSVG3RbY6RuUITCDt60wiBB/VNNQBvo6uCPft
	YrzxrioAF745ml/2df+iB145fSbnjEuHP4ZQeHXKlJBk6WQ/UnLTKyusthd8tHkz8b+m3NcjPTg
	aGlBi4YswpgfrFNPjIxblCWwT9aly28wabDtUnZtKPlepxiSUD9Qr5vCeoNuhZc1mDQ6k2sjU32
	AH40zHCsm13gv1IVQfUJM4AW/dES6q/d8zH12n8rjW5YO7q3nYzg0yRWKtTAjnV3plUWD5dKTnJ
	So9b7lxRN0wKNRpCy1/x1FkMaKe6WG9vgTTC6OZ4jGBtYznjLUGhDMRJYYbpD0EYYu5w1cuOsVF
	hY68zqdHn5+mCnZkns/bBj0XemJdJJ8VW6mi0R34KU7o+4pu/wDLuqxpTybaz/LtL2FurSnp3Rb
	LK7y0lSpE2QUwyYJ/1qIymfVu2te9PDmSeit65/TkPoHnJGONcVginRGTmAEiZgJy28Lkqw=
X-Received: by 2002:a17:902:e847:b0:2ef:e28e:8f17 with SMTP id d9443c01a7336-2f03f1dfb9emr106612855ad.49.1795446921225;
        Mon, 23 Nov 2026 07:15:21 -0800 (PST)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2f03ed3b3c1sm57050995ad.0.2026.11.23.07.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2026 07:15:20 -0800 (PST)
Date: Mon, 23 Nov 2026 23:15:15 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-rockchip@lists.infradead.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_net-next=5D_net=3A_pcs=3A_xpcs-rk=3A_u?=
 =?US-ASCII?Q?se_cleanup=2Eh_for_platform=5Fdevice_reference?=
User-Agent: K-9 Mail for Android
In-Reply-To: <814be8ca-6fe4-401a-af4e-206f1b67be74@lunn.ch>
References: <20261123123052.578956-2-coiaprant@gmail.com> <814be8ca-6fe4-401a-af4e-206f1b67be74@lunn.ch>
Message-ID: <CF84A604-EB2D-44D6-BADF-53D85C975EB1@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_071522_435844_61889F7B 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 23, 2026 11:11:00 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Mon, Nov 23, 2026 at 08:30:53PM +0800, Coia Prant wrote:
>> Use the __free(platform_device_put) cleanup action to manage the
>> platform_device reference obtained from of_find_device_by_node().
>> 
>> This removes the need for explicit put_device() calls on every failure
>> path and at the end of the successful path, simplifying the function
>> and reducing the chance of reference leaks or double puts.
>> 
>> Signed-off-by: Coia Prant <coiaprant@gmail.com>
>
>https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html
>
>Low level cleanup constructs (such as __free()) can be used when
>building APIs and helpers, especially scoped iterators. However,
>direct use of __free() within networking core and drivers is
>discouraged.
>
>    Andrew
>
>---
>pw-bot: cr

Understood, thanks for the pointer. I have no plan to change this and will
keep the explicit put_device() calls as-is. Dropping this patch.

- Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
