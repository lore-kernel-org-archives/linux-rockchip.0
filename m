Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA8AD2F322
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 15:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tJHz0e8RkpmNzmjXJVwCY1IZsK5yfK5n23DIehyBck=; b=PPlqCGg8A63oZd
	995xVJE4DVjg+XKQyqPb90xXuY4Eq0bLMrkNRsu0zgibSZ5moJz6xdSZ7fogEYkX6NMWmx5FKpKZQ
	9si5hXFMv3O6RFRryxyA1PIyuibYKQrDUEQ1JyIanGeCWK6SqG8id8eAsXAiCQ3bS/DHIuYyEXdJJ
	CIWTsO101+qVFGZWb36yXT2X7ALcd4gwO6MqYPGcB5G7oioiCwauLhiPhTG68DdGmSCVEB57D0xWA
	psaULu2MnyntXzKkGly5TBqNqq0Sg+0s8x8dFzW6jc+k/hCkG1macNMrsT1rGvmv0Q2CWf3ODolfh
	by2GrirwtaLrtv6QUnlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg2I-00000007Kfs-1mmt;
	Tue, 13 Jan 2026 15:10:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg2C-00000007Kb8-2fhJ;
	Tue, 13 Jan 2026 15:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mnRht3IuRpXB/t6mxr+8aeJFsEXCRTBrHR1LlDQvTzs=; b=stjm2QZEah/44e/BsqdHnjJALy
	eo6LraZtdL7QxuywzI8928LeN8eUfJBViod7nDBus3Es9IFwydIZC1WOBEPriPXdliyR0TVyo+1bZ
	LhV1ZCzLT1IHLpkPnBVBtFj7ZnwcJOOyGLqg6n25Y6KFPtWbU4WGS7Unsx/22dBfxYZwn5FVVgoCY
	9GTVYmjAOrXM579C2B87z+0U4OIRiZPy9mypyCzrrJN7hIfHkrTrhN9qjZFw0F0l/v9wtTH6PgBLI
	scQkPYp9rgPKaQ1HG+8D0IZNQCdB4NpZVazl3cyd2b+1UhPbF7Nxiu3Oe2PRBoR8vJgs6o5aT1vY9
	LYylkIMA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfg1y-0027pj-EN; Tue, 13 Jan 2026 16:10:03 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andi Shyti <andi@smida.it>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Qianfeng Rong <rongqianfeng@vivo.com>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Khalil Blaiech <kblaiech@nvidia.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Andi Shyti <andi.shyti@kernel.org>, Qii Wang <qii.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Linus Walleij <linusw@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v1 5/7] i2c: rk3x: Use HZ_PER_GHZ constant instead of plain number
Date: Tue, 13 Jan 2026 16:10:01 +0100
Message-ID: <2063916.2IRrRt1zHL@diego>
In-Reply-To: <20260112134900.4142954-6-andriy.shevchenko@linux.intel.com>
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
 <20260112134900.4142954-6-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_071016_706437_18129899 
X-CRM114-Status: UNSURE (   7.37  )
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

QW0gTW9udGFnLCAxMi4gSmFudWFyIDIwMjYsIDE0OjQ2OjEzIE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgQW5keSBTaGV2Y2hlbmtvOgo+IFVzZSBkZWZpbmVkIGNvbnN0YW50
IHRvIGF2b2lkIHRoZSBwb3NzaWJsZSBtaXN0YWtlcyBhbmQgdG8gcHJvdmlkZQo+IGFuIGFkZGl0
aW9uYWwgaW5mb3JtYXRpb24gb24gdGhlIHVuaXRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHkg
U2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
