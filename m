Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5531EECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 11:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmRyKVkTlwpWtPJeMZk1qVjQ6ktDuRlj4yv9w2N0YK4=; b=2jChwWI4rDE0WN
	1OXGKBVAPSAw+ySU066e6yk0SFR0wAdHJKdYAZVZnKdL3OTpiYccA5dKUNQ7riq7DxcEzxYFEa99a
	IyvhyX7IWT1iyQsjOD+9WbMAWL1a8g9sooq+WRRUlsxkN7KjF+XtQDsqB2irOsoqpWbOCYqRpo4X7
	x3kzF81Ki3VHXD0sWAliF9yTBfj6XpKOnbm21hf0YbeR6rJnKGlysaLRXu8OAIRGuRwbTzDh3aNdG
	4+sCnV2/4hBteCAUUr9s94IWvnnqyvhdbAT2s0pcJnWaB529tx0o8gEfwCqCYy27gVBDa1bqAG0lW
	5n98OuN9bU6+f0sQHQug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFJE-002XBQ-Ih; Thu, 08 Sep 2022 11:03:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFJ1-002X4W-FH; Thu, 08 Sep 2022 11:02:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E23756199C;
	Thu,  8 Sep 2022 11:02:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 306E7C433D6;
	Thu,  8 Sep 2022 11:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662634966;
	bh=iNASgoNSy1xhUIG434EmNtPD+/r4/y4HDceKBOThb+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L63njUKp0whTAXjnrrs3lpAaSiZLiucoFweTPv9bfMTJJrJflc1D4tKT/vEiLIjFT
	 ogJ74kluGrRnNWg/UntyYojWVGgN5SZJ1TtSoHoohMMjkb0stYnnOpjQQUaP9IAVp/
	 OgvTN91Lqu7CRinAmYkd6KaWeiomE4fo1cmB+fLaAYSpw1uZSOXaTQhIUj+GwAgERu
	 cKCUzGRoTlDBy2BT9iM2DEhVqUu3MeI5MhSjK0XA4jt9F24PohviISKG5gNaN5pKTc
	 xsY5lcyS8aKOvAOnmNGqC5i841VFUJptLv+xYFX9bkDDShL69OIOJX7eqOWtSwS269
	 ka993s8weSLVw==
Date: Thu, 8 Sep 2022 12:02:40 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv3 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <YxnL0DuCxGrwY8LD@google.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
 <20220906143825.199089-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906143825.199089-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_040247_560325_456E1610 
X-CRM114-Status: UNSURE (   9.92  )
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

T24gVHVlLCAwNiBTZXAgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IERvY3VtZW50
IHJrMzU4OCBjb21wYXRpYmxlIGZvciBRb1MgcmVnaXN0ZXJzLgo+IAo+IEFja2VkLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29u
LnlhbWwgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpBcHBsaWVkLCB0
aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
