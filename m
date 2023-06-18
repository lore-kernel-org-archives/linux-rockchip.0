Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A609EB64D7
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jun 2023 11:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6Qk5YH26whSJwurunXFR0MxZE/uJ0G9wbzrXAn1hEY=; b=Ns1nv676loBVhc
	zRNbMySK1wxmq40XxSEQNle1YnyS8jmeM3VXd+H6H7xIGGXz/xwGLREbaecKnCOf0fTfQhNMTscvM
	rqUlrVwavMIMrFWbZSni2O4z9Pepz9YisH3/3EXecPaLHE4jgucTE8kvjY5y3kqeYlpiIchGIcLvw
	dlnCaGgfzWURz4QbxQ5eLi0/bEzRMSDoYm9XTvEnvf1jbTL2rcIZFKGUAX/7YJOMNrvRycOuGDXm9
	gnBkUxAMR2Emo1BhIrsGTTjBduL+cuXxBFvPyv/KNvsIRvhPPo66dhUpAA4fhj/vjUYIZsv5qD/ut
	VCD+T9I1cHq5cywj3Ahg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAqnG-005oyM-1W;
	Sun, 18 Jun 2023 11:42:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAqnD-005oxd-0w;
	Sun, 18 Jun 2023 11:42:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E36AD60B00;
	Sun, 18 Jun 2023 11:42:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5992EC433C0;
	Sun, 18 Jun 2023 11:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687088520;
	bh=BFmIrutDYG4LB/6zb/Nq9wLMZ8zxH9TishG/byWakZw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nyXluhSZyi5w0ELiAjionCSz2q0Fhr8mg7NxOyVCVHZZJXdVx5o4MujlqZ0mYCPhp
	 uM2gXLUbGjewDDyVrJ2tAQUKyLMJ3DRhfsGLZee7v0CtSdnnPGKvBxQuOmmCtfu00S
	 mfCQqO6ImWwDP8tGQ2g95k4cfnUYmRTOtf0OZFskNQlkqV5x9L64K67DNWHoHWbQrI
	 CzSZWfJbVa1fEJX9tT3ltI450mR1nsaHWwaXAiDeoU77n9y7ut4cqokJw9xWxPrpNd
	 +gMW+f6euw7tgL6tHFjklmCL0diW9XhwYxz/0+C97kB8SIojtktp7Z9Pw4ibvmcnvU
	 hcR5HfR+C6evQ==
Message-ID: <d0d12af5-4dd6-b153-f1fc-123721bfd929@kernel.org>
Date: Sun, 18 Jun 2023 20:41:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 5/5] arm64: dts: rockchip: rk3588: add SATA support
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-6-sebastian.reichel@collabora.com>
 <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org> <4844617.31r3eYUQgx@diego>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <4844617.31r3eYUQgx@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_044203_370448_1FF6D01E 
X-CRM114-Status: GOOD (  12.64  )
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

T24gNi8xOC8yMyAxNzoxMywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGFtaWVuLAo+IAo+
IEFtIFNvbm50YWcsIDE4LiBKdW5pIDIwMjMsIDA1OjEwOjU4IENFU1Qgc2NocmllYiBEYW1pZW4g
TGUgTW9hbDoKPj4gT24gNi8xMy8yMyAwMjoxMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4+
PiBBZGQgYWxsIHRocmVlIFNBVEEgSVAgYmxvY2tzIHRvIHRoZSBSSzM1ODggRFQuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxh
Ym9yYS5jb20+Cj4+Cj4+IFRoaXMgcGF0Y2ggZG9lcyBub3QgYXBwbHkgdG8gbGliYXRhIGZvci02
LjUgYnJhbmNoLiBXaGF0IGlzIGl0IGJhc2VkIG9uID8KPiAKPiBJIGd1ZXNzIHByb2JhYmx5IGVp
dGhlciBtYWlubGluZSBvciBteSBkdHMtYnJhbmNoIFswXSAuCj4gCj4gTW9zdCBvZiB0aGUgdGlt
ZSB3ZSBoYXZlIHNlcmllcyBkb2luZyBkcml2ZXIgY2hhbmdlcyArIGRldmljZXRyZWUgY2hhbmdl
cwo+IHdoZXJlIHN1YnN5c3RlbSBtYWludGFpbmVycyBwaWNrIHRoZSBkcml2ZXIgKyBiaW5kaW5n
IHBhdGNoZXMgCj4gKDEtMyBpbiB0aGlzIGNhc2UpIGFuZCBhZnRlciB0aGF0IEkgcGljayB0aGUg
ZGV2aWNldHJlZSBjaGFuZ2VzICg0LTUgaGVyZSkuCgpPSy4gSSB3aWxsIHF1ZXVlIDEtMyBvbmx5
IHRoZW4uIFBsZWFzZSBwaWNrdXAgNCAmIDUuClRoYW5rcyAhCgo+IAo+IAo+IEhlaWtvCj4gCj4g
Cj4gWzBdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21t
aW5kL2xpbnV4LXJvY2tjaGlwLmdpdC9sb2cvP2g9djYuNS1hcm1zb2MvZHRzNjQKPiAKPiAKCi0t
IApEYW1pZW4gTGUgTW9hbApXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
