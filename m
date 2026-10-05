Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C416BCA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9iuHNt7Ih0AWDeT64hoS2jWpmkRvX0DUcbSIUHzzBg=; b=BC435noPs0aESp
	8XIttAqHzjWl6uLHOXTqUKDOTZJpmOga7jX6YkL718j4E+AEf+d7ykXnY0FG+2b0ESJ0HaxZXU12o
	aoOF7xEMG2kU/umPOSjiNYy0oM57iyPGtuMyInTb40jk86joExflUzY4Xj4AHxo8TC3yJVI0G4050
	nBN5wWraswF7M32617foxjqcpeE0sBLLZbWInoPQt0ingG8DhchxXKLfRDBebOeyQXq298X7qF9bN
	6UYomKYOFoPd3VCchr8pRniBoUEEKhbW1yjQdK27nNBRxEk9/R1mcosdGEbdod4o/S8pXWqUg5XvM
	u9ZR4cinIDDGvTJfwLIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqnF-0000000HEEZ-0hi2;
	Mon, 05 Oct 2026 22:04:21 +0000
Received: from mail-ed2-x07.google.com ([2a00:1450:4864:33::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqnB-0000000HECt-3a4b
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:04:19 +0000
Received: by mail-ed2-x07.google.com with SMTP id 4fb4d7f45d1cf-6aca84f7c74so1373027a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:04:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791237854; cv=none;
        d=google.com; s=arc-20260327;
        b=hkTMVi6T1noFsVpsUlTFD7JN60baWlnTBGdGwEKnFoTpWBmOIsYZ5Oi1V2FObIz/Ej
         OTA6OaRuPle6gZ51xXae3bwcm8TStrGQbpiidybkjvOiHfQ8qnY8w+pewyb9hxnAAq5T
         4Q7O2wmToDCzIBi/DIDra1GWlQpWTnzaggDlBAIBQP2kj/Rl7MSEMINaUsP8621Tx6se
         ZPDGq48pexs9PgjGZH/XZzrLyCBCtY9NbuxC91tpF5K1v61dCh+P3ryUFhgVzfhDvNRd
         aY5AWJAG8rdiXFOSKfL+zvbuixWrjUUHqeZ4ickz9y07jUFhHwWmFn31Az/QnEHFmz4b
         X5Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        fh=k5J2VdPzx5EQDukPJtHSUabcJiHJvBzyn04NZyjKG88=;
        b=P6Ksf64NfGWBo0T4TEih11BjKRTo584LWaN9/Z1LGsuBQxRrL+bsbyogXM6Lppwx70
         teoPMUUSZJ2cf+iijzxDC3mepyAI1lHQehYUQU31KYGGD0G3rEsEZ9KxhhXr8RgbVMAx
         Edlht6wg697IWhy36HxZcSjhWWrz/FtZwTArtx/+mUKP9HHqZQOUJSfQmSSv8coiqqHd
         KoEVgdBAt/YFthyvXwegfQtlo1I32LWCn64p6ujJ+6CVmCbYRA3CQr4toaC2SMfyQDB2
         BmKILKzybWjMgnoDUZq6AvJhCuFvjX6vStNlGHpnTjA+/iPczR9CxhuqZm0Brq8G+aT5
         nVmg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791237854; x=1791842654; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        b=hPhAu0fqpP81LCNgCEa3GiD2e1AqfDw0dJH/Mrba+OzCVgUMeAQ5FaGIvCq10WpUz2
         WC9t3wkIwXMUhLcCd8DQaK2cL9++tAdwNVARPzlxcqgtRo9oiABKmXb8Duyi2oTOAIrj
         CVcQaV8D7z9nVSemouWOlYU/scx1hqDxVJ7T3Dq+yaWa9HAFPYIg6DI0OqD/GuZ4Fo2D
         DgpXTFj0f7hpw7gUf4BjpD7A+KkYGPiQfTLp5QEIQ8oo2GBk5h+RTSpwCrizD0U+E3l1
         bowttj59kB1teS5eqNcwUsUVqpC8Ds+Daj6v7266w8qDAHpZHpBC09F0vvWH19xgGZCo
         UdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791237854; x=1791842654;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        b=Jd+mTOgR8K+xNJjk3VCsHeKkIwqLx9YTxsE3IrkjaCR+lfinD6772wb1ctTX9H6khV
         Ayp8DB1j4TkeOhHkfaquEZTd6zUitJAJlECwic4lqa3Gt3PTId6F4U65tVqu8/J3Wh7b
         DrjRcq6r45+fYTyaDEghH/rG+B3ReyAPdEt36jQNnTK2rgATngawsbEAB6xLCwAeQzV7
         hsRjOxdGSwi3NPVjb4MytLT6mt6xhTPhGKV4N1xjMG6E48uv0B8ZVMxVfOuq+E6IKsE7
         YDixCJTO7CZCwqK7QtnAeZTQuk4b2oczKrYNzeajGAJ8KJgc9k5Py4eljIUzrFsDKrkt
         LXwQ==
X-Forwarded-Encrypted: i=1; AKwUvBxjQKBPXw/gbh6R2uXzhBxiHRfupX3X9bARzt3y3dtNxLGZBmTNYdZxcfewXClEXyofKA2XyMSF3qZwiX+izA==@lists.infradead.org
X-Gm-Message-State: AFuF++k2z9XYmzSg6rpWdVW4fNCfv5TN5kEGJva9afLn9IDUeyFdf9FV
	AdegsF8+vFi3mU1U/Mya//SFSswxCFTrb/9pQwSyZIDZGU2Q1Kcg4MkD/4puJTZMeMJSuCeDHcg
	brXGC1XyXcMCaufJ36QOXVMwfLrM9U48=
X-Gm-Gg: AYBFou2DvkNwJFj9JcX0va+jHl5CjksiuU6WLlqcwxN8UBcLc/q52IjcEIe4//zDR/0
	FMpEU7j2dRTifLAIlpa/nqnvUdsmnKFSYgVS68rhkOs7yFzIpPdOC7FdqVHALyGKg3reHAmdg2a
	eaN9zMoVlz+PY+CL5fsXySaQyiYareAxQhV5f9OSjLsuVOuomTxeTc3gZzzEvm+egccdw00KYwj
	znZ63ed6DSZOMicCP6bIcMhUqIRD3Z2qluQFqMEhCyn7NqhJisQPxYJiBM8Pc5etjykmcNOE80Q
	qHV0prgyHg8t4SWoRhsbEC8NAD7U1Nbhxt206FYTw5ndd91Ye4YIH75P+Q==
X-Received: by 2002:a17:907:3e29:b0:c2e:19b1:dfe2 with SMTP id
 a640c23a62f3a-c2e4ad3b1cemr1046003766b.23.1791237854529; Mon, 05 Oct 2026
 15:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org> <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
 <20261005144432.580daa2f@kernel.org>
In-Reply-To: <20261005144432.580daa2f@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 06:04:02 +0800
X-Gm-Features: AclHuK8_KLwVxsmgUNUhSrq19BEwBKrpkwc4LlinlPX0y7uVYSSqgvZVvQtFu6E
Message-ID: <CALj3r0jNFss4RqdPjJ+NJ=yPRm7zZA0N83T2XxqLuFwoH6iN7g@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_150417_911808_93F4E47F 
X-CRM114-Status: UNSURE (   7.78  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNTo0NOWGmemBk++8mgo+Cj4gV2VsbCwgdGhlIHBhdGNoIHNlcmllcyBpcyBhbHJlYWR5IGdl
dHRpbmcgc3R1Y2sgYmVjYXVzZSBvZgo+IGNyb3NzLXN1YnN5c3RlbSBhY2tzLiBEbyB3aGF0IHlv
dSB3aWxsLCBJIGhhdmUgNzAwKyBwYXRjaGVzCj4gdG8gbG9vayBhdCByaWdodCBub3cgOi8KCkhp
IEpha3ViLAoKVW5kZXJzdG9vZC4gSSdsbCBzcGxpdCBpdCBhcyBWaW5vZCBzdWdnZXN0ZWQ6IFBI
WSBiaW5kaW5nK2RyaXZlciB0bwpsaW51eC1waHksIERUUyB0byBsaW51eC1yb2NrY2hpcCwgYW5k
IHJlcG9zdCB0aGUgcmVtYWluaW5nIG5ldC1uZXh0CnBhdGNoZXMgc2VwYXJhdGVseS4KCk9uZSBy
ZXF1ZXN0OiBjb3VsZCB5b3UgcHJpb3JpdGl6ZSBwaWNraW5nIHRoZSBzdG1tYWMgbGlmZXRpbWUg
Zml4CihwYXRjaCAwMSkgaWYgcG9zc2libGU/IEkgd2lsbCBzZW5kIGl0IHNlcGFyYXRlbHkuCgpT
b3JyeSBmb3IgdGhlIG5vaXNlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
