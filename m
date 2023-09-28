Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9046E732D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 13:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iz472e3cpROwfP/NO/DT3WU28mJn4r2Nbat5YMwJYWA=; b=4YEBW5Uv7rEpWU
	gJCNK7+WFkaI+Hqcv82VL18jux5YPkCH2hHSZyQi3H9BGfy2p6yFIqFDhu28rtPINzXaR6nh+7gjx
	r9mksVgEWAxKsEMpKYb0c1EdFx+A6Uo4xqfqxpCwujfbR3texXX2hXMo95NPgOpZ0GUXDSze6Nzi/
	et0OnH7LRG5sDSjeklF+fONwVb2EAArza9B565KRkFRFZOsB7XymU846JYcoD3Gi2iI2nDHx56dpW
	kTKMVgWJi3mBL3xbigJrogIu7dlA93ITBQ3Iv8I9hyxg7Q6W39BcCnWvn3pdb5y56LPYlMHVD4pC7
	zbVTfvu66sg+zgBAbYlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrSh-004Yya-1m;
	Thu, 28 Sep 2023 13:53:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrSc-004YtY-0O;
	Thu, 28 Sep 2023 13:53:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7A175CE1F13;
	Thu, 28 Sep 2023 13:53:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 749F9C433C7;
	Thu, 28 Sep 2023 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695909222;
	bh=iSo3Vv83opeDiMziiEr9meXPXAR2jmotAhidSIfYl6w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PqnkxzaG+HrT5zGQTiwMcCeLp7HVQWUgvpP+JNa+GImZP+vSiQ6/YdVZCnkWr6pdo
	 CkKk9dcvct1QPopVq/V5gAFiOfjnLLr+kDpu+cM9gejtIaC1TG8ssKutPr1OdqCD7M
	 4OgBzFnnrKWOpgZ39TOvPRlMuaAxENgP5Tk4l1iLqXx3iTAM90j7LGZhHqwEc+oYHa
	 OaGLotqMvA6Wa+TbZnIRno5Tx2OXdaMhHwNlT2+eO/Zrtovq7KisCD0uv5VC9qBNSg
	 fr399/rR8vboIG6uNxQ/35Giy7c6fNGdpJbV4QBgPztLYVXDFWLiTXk8/aTrm0llZH
	 SCcckzyFs6aag==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Patrick Rudolph <patrick.rudolph@9elements.com>, 
 Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 - Keerthy <j-keerthy@ti.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230925212729.1976117-1-robh@kernel.org>
References: <20230925212729.1976117-1-robh@kernel.org>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: Add missing
 unevaluatedProperties on child node schemas
Message-Id: <169590921918.1613753.10940861151886567899.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 14:53:39 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_065346_433624_B563F997 
X-CRM114-Status: UNSURE (   7.88  )
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

T24gTW9uLCAyNSBTZXAgMjAyMyAxNjoyNzoyNCAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4g
SnVzdCBhcyB1bmV2YWx1YXRlZFByb3BlcnRpZXMgb3IgYWRkaXRpb25hbFByb3BlcnRpZXMgYXJl
IHJlcXVpcmVkIGF0Cj4gdGhlIHRvcCBsZXZlbCBvZiBzY2hlbWFzLCB0aGV5IHNob3VsZCAoYW5k
IHdpbGwpIGFsc28gYmUgcmVxdWlyZWQgZm9yCj4gY2hpbGQgbm9kZSBzY2hlbWFzLiBUaGF0IGVu
c3VyZXMgb25seSBkb2N1bWVudGVkIHByb3BlcnRpZXMgYXJlCj4gcHJlc2VudCBmb3IgYW55IG5v
ZGUuCj4gCj4gQWRkIHVuZXZhbHVhdGVkUHJvcGVydGllcyBhcyBuZWVkZWQsIGFuZCB0aGVuIGFk
ZCBhbnkgbWlzc2luZyBwcm9wZXJ0aWVzCj4gZmxhZ2dlZCBieSB0aGUgYWRkaXRpb24uCj4gCj4g
Wy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCBtaXNz
aW5nIHVuZXZhbHVhdGVkUHJvcGVydGllcyBvbiBjaGlsZCBub2RlIHNjaGVtYXMKICAgICAgY29t
bWl0OiBjN2QxMjYzYmU5Mzk2NTgyZjg2MDI0ZGMzM2YzMzZkOTc0NDk2YjgzCgotLQpMZWUgSm9u
ZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
