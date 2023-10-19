Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82351CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 10:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfg+Z2f6AE7T3tw65uUoCgjn/3g/r/+zapPbT6CS3xo=; b=0TF5w2HZLgZ8BM
	v2GIYeT2mJsc6ZCMiRmcSSbv9EtHlJtKcIvq6jEDOGKdlh5TSjJ8YYICy4sbS5rTNrZhiv/6Q2m5n
	jzt+n24LDlj+pti8pMa5RzT4gZxfoCgLCrdinCOvFS+s0OwqInOgXVEUvyKH0M4G/uKD+DOgYF/nG
	8gRXG7Lq8BOPFKLxt1MYUkn+bhLRCT9IgLUtYfCjGHjBUTrvhrjBW570OzvzcEZhVPTG/EreN7E26
	5Vjdg18mx20UEfm35tDwFVfD7j6W5+M3pIGjIKLlxVS+EM3zZOzDS2ViTCQ3IzDXAYKAbAy3w6oPz
	pUnFYuR7oSQ3u+L+AnTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtQHu-00Gwvg-2H;
	Thu, 19 Oct 2023 10:29:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtQHr-00GwuM-2P;
	Thu, 19 Oct 2023 10:29:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0AEAECE2AD1;
	Thu, 19 Oct 2023 10:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3197FC433C8;
	Thu, 19 Oct 2023 10:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697711390;
	bh=yqtfTXin7HKdqdcd8Cdk8vhzxiHzQgV3bZzfYAgIZDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iXzj+37hOTHesLIU0vdPIKRzAbhnzkSeiB99HJjfqqjx//t7aQxRMjK/KovjwYceR
	 A31TmG7RV77PXJ9wPx1m3lpMKoeYUeJVgHJiJ55TrcUj7SMjkYmsvjBYp/jB8f2nel
	 HggyhUgNmzufjA9ORfsGrG6rW7MVe2JtVoo3+2O027Ff2v7+eva3oOzV+fU/m3WKgy
	 vb3ADHqVViGDFDc5lB4G8bQIRlpCfGmup5g1AIQHiYAh7cHC4Krj2KFl7nVBZpO9Ez
	 FGbP67j5ou2K846SN5+DWY2DgIbXrE9VRJUpTsRHmnjB41boFHbvOmrGQKbkpZDPCi
	 PVddKvtzgs89A==
Date: Thu, 19 Oct 2023 11:29:45 +0100
From: Lee Jones <lee@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Message-ID: <20231019102945.GA2424087@google.com>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010174138.1888396-2-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_032955_983035_F51F0BA7 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCAxMCBPY3QgMjAyMywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cgo+IEZyb206IE9uZHJl
aiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IAo+IERlcHJlY2F0ZSBzdXBwb3J0IGZvciB0aGlzIHBy
b3BlcnR5IGluIGZhdm9yIG9mIHN0YW5kYXJkCj4gc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIgb25l
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IC0tLQo+
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA1Lnlh
bWwgfCAzICsrKwo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tj
aGlwLHJrODA4LnlhbWwgfCAzICsrKwo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwgfCAzICsrKwo+ICBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAzICsrKwo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE4LnlhbWwgfCAzICsr
Kwo+ICA1IGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCkkgZG9uJ3Qgc2VlIGFueXRo
aW5nIHdyb25nIHdpdGggaXQuCgpJdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBEVCBBY2sgdGhv
dWdoLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
