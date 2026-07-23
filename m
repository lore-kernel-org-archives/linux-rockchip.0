Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB35AC531CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 12:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW5VSH/J+DltUG+5NI1+wP0V1tHUl/I8d/27Mz5mbnM=; b=HmkVfYPzmcORWh
	fe7rNh2ASiugDEWzkY6MPDhx0dpN17sLnmE/1qd00B3dpWs7Gq631FjJwocggmNDipmRLQIxBbFXD
	efq4C4v6aShKnwqmejW4PTsjE0KjFOBw8MvIzkFqC0txbmE9eK9F/I8D2KIxfr+bZclkWMwJBAOSS
	90PX5whyWfqQCr2zhoBEQ1JHnA6yU5DYNgawjgwugGw6vwmbcBZeeTpbve9/Xiy+X8dwzvh5TfTZ+
	5s4tLrQ41HzmpmnCYjcCf6dUwUN1pxShIHaTb5ofyFPS7VfC18fc45SmvOOuknM/iew9+ukDg7afq
	V2Q8b7qL8cFmSZk9/yrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmsH5-0000000ECx4-2vMr;
	Thu, 23 Jul 2026 12:11:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmsH2-0000000ECwM-4B0P;
	Thu, 23 Jul 2026 12:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784808693;
	bh=eAQv8n4LKSI7IE8oTDl69Kvwj8o4JmZgxArnJbuS3IE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Nrer3eAHekVF0EkiS1q4CVQMuZPVDJXsFWQlFxXSQAJCcki9IcvnVUQ5GZec1L3zi
	 TKvb/wwisc6cTlVeb6t2dGC6QdBtXYRcqOk+nHnIn1rH5VbHJ49s3A/uU7Ozm5GeB3
	 e8mRHOvOaqXacoMXQUmIw2Nno9Y3Gc7T8QS1SeAhxawFIyycOX9gscN8Ckl71ugFZ6
	 iBOVFk0dxDvAlQjXmFPqQO1Dk+tvnaEisThvJBu/GO2Ht+9hOFx/aFsb+hcCMy7oAj
	 MQtGbdPBXz/qr6pg/0+/Hi94CGMYdmfOAnEa6D2hGoahDKtdREUAFenQOJeREt0X2Z
	 5Qk6PjtwScyJg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CBFF917E0114;
	Thu, 23 Jul 2026 14:11:32 +0200 (CEST)
Message-ID: <e3b83c7a-bca8-43ab-bd52-12ab47f40cbe@collabora.com>
Date: Thu, 23 Jul 2026 15:11:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] phy: rockchip: samsung-hdptx: Drop TMDS rate setup
 workaround
To: Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
 <40179247-12ac-4768-abd9-37f34e2c8b2b@rock-chips.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <40179247-12ac-4768-abd9-37f34e2c8b2b@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_051137_207276_7919DE48 
X-CRM114-Status: GOOD (  10.01  )
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

SGkgQW5keSwKCk9uIDcvMjMvMjYgMjo1MSBQTSwgQW5keSBZYW4gd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4gT24gNi8xMi8yNiAwNzo0NSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiBTaW5jZSBj
b21taXQgYmE5YzJmZTE4YzE3ICgiZHJtL3JvY2tjaGlwOiBkd19oZG1pX3FwOiBTd2l0Y2ggdG8K
Pj4gcGh5X2NvbmZpZ3VyZSgpIikgdGhlIFRNRFMgcmF0ZSBzZXR1cCBkb2Vzbid0IHJlbHkgYW55
bW9yZSBvbiB0aGUKPj4gdW5jb252ZW50aW9uYWwgdXNhZ2Ugb2YgdGhlIGJ1cyB3aWR0aCwgaW5z
dGVhZCBpdCBpcyBtYW5hZ2VkIGV4Y2x1c2l2ZWx5Cj4+IHRocm91Z2ggdGhlIEhETUkgUEhZIGNv
bmZpZ3VyYXRpb24gQVBJLgo+Pgo+PiBEcm9wIHRoZSBub3cgb2Jzb2xldGUgd29ya2Fyb3VuZCB0
byByZXRyaWV2ZSB0aGUgVE1EUyBjaGFyYWN0ZXIgcmF0ZSB2aWEKPj4gcGh5X2dldF9idXNfd2lk
dGgoKSBkdXJpbmcgcG93ZXJfb24oKS4KPj4KPj4gV2hpbGUgYXQgaXQsIGdldCByaWQgb2YgdGhl
IGV4dHJhIGNhbGwgdG8gcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1dCgpIGJ5Cj4+IG1vdmluZyB0
aGUgc3RhdGVtZW50IGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uLgo+Pgo+PiBUZXN0ZWQtYnk6
IFRob21hcyBOaWVkZXJwcsO8bSA8ZHViaXRvQG9ubGluZS5kZT4KPj4gVGVzdGVkLWJ5OiBTaW1v
biBXcmlnaHQgPHNpbW9uQHN5bXBsZS5uej4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAKPiAgICBSZXZpZXdl
ZC1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgoKRG1pdHJ5IHN1Z2dlc3Rl
ZCBtb3ZpbmcgdGhlIGNvZGUgY2xlYW51cCBhcm91bmQgcmtfaGRwdHhfcGh5X2NvbnN1bWVyX3B1
dCgpIGludG8KYSBzZXBhcmF0ZSBjb21taXQsIHNvIEknbGwgaGFuZGxlIGl0IGluIHY1LCB3aGlj
aCBJJ2xsIHNlbmQgbGF0ZXIgdG9kYXkuICBTaW5jZQp0aGlzIGhhcyBubyBmdW5jdGlvbmFsIGlt
cGxpY2F0aW9ucywgSSdsbCByZXRhaW4geW91ciBSLWIgZm9yIHRoZSB1cGRhdGVkIHBhdGNoLgoK
VGhhbmtzIGZvciByZXZpZXdpbmcgdGhlIHNlcmllcyEKCkNyaXN0aWFuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
