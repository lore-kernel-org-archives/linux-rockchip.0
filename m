Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 656BCCCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 13:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siQH6xAoKTBgEIbNmcfGfRfoB/cSg28h1GrYXqgAzic=; b=vFxdt799ebASlf
	994lU/wKN5U5Or/Vp8YCzm2OemJRePsY+fK3p7gwo4T1LgGS/3MuiD9rh+rDgll5EcOL+uHpwikxH
	QjvFAyCoSpdnzQlvIlf/oxl6kbmVZdQDuLvY0ErUI1zAlrBzmaTn/WjUueRUpLZwc0SQYCnM8PaJF
	OFnB+al7tolOOTpU7kYjE8EQa9N6N7XGpvhCtzKXThrHAeEqleaS/hBabzgGDqqXG++Er2nuQvNiT
	df6APxaA5apD850xHZlXmgKFl1OVO2KtbVLlhp3zx8etpv9MHZjoyZ8RBS3P2yp+8uIVrq0Dbr70Y
	eMMqIfnlIOTImQW3moow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBCjF-0000000HCn6-41zK;
	Tue, 21 Oct 2025 13:48:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBCjD-0000000HCm3-2dLE;
	Tue, 21 Oct 2025 13:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OV5vokNxg0blL37suXlq+pnS8+wa1U1T+EP+IjunwO8=; b=viqO8nEJsR2dnoqQ3yy40W5YJl
	fQPaH0avx6D9pZGte/+v0/qL88fiddfjMlSb0jOSR7NWLOZN3bNbz6pCf8aQ0WtGZsjS7xZXyzM6m
	KW9/Bmo/RnhsGKdt66tsjrpRAKydOktAk7DKIE5DY97anYkYfFNWvSzuSR6WnfD7/9l5F1ggMizIr
	ZvVrihP0tbG2nYws3v67xbCL6tbBz09N7tqeNT/kRvPWEUR8t/mxWAiyJ8N9oI6Putl9eqPX4Dzul
	RTXonT1BVGLVeRRzGccpX270sSAKcQC/hPhu/uiHrNxlY1r//Tg9o8OvdycNSs9/ZNmmow3g9mTOd
	J9SrNpjg==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBCjB-0003ae-81; Tue, 21 Oct 2025 15:48:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 zhangqing@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 finley.xiao@rock-chips.com
Subject: Re: [PATCH v4 4/7] dt-bindings: clock: Add support for rockchip pvtpll
Date: Tue, 21 Oct 2025 15:48:40 +0200
Message-ID: <2168478.KlZ2vcFHjT@phil>
In-Reply-To: <20251021065232.2201500-5-zhangqing@rock-chips.com>
References: <20251021065232.2201500-1-zhangqing@rock-chips.com>
 <20251021065232.2201500-5-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_064843_707534_109473E9 
X-CRM114-Status: GOOD (  10.67  )
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

SGkgRWxhaW5lLAoKQW0gRGllbnN0YWcsIDIxLiBPa3RvYmVyIDIwMjUsIDA4OjUyOjI5IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWxhaW5lIFpoYW5nOgoKPiArICByb2Nr
Y2hpcCxjcnU6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9w
aGFuZGxlCj4gKyAgICBkZXNjcmlwdGlvbjogfAo+ICsgICAgICBQaGFuZGxlIHRvIHRoZSBtYWlu
IENsb2NrIGFuZCBSZXNldCBVbml0IChDUlUpIGNvbnRyb2xsZXIuCj4gKyAgICAgIFJlcXVpcmVk
IGZvciBQVlRQTExzIHRoYXQgbmVlZCB0byBpbnRlcmFjdCB3aXRoIHRoZSBtYWluIENSVQo+ICsg
ICAgICBmb3IgY2xvY2sgbWFuYWdlbWVudCBvcGVyYXRpb25zLgo+ICsKCkkgZG9uJ3QgdGhpbmsg
d2Ugd2FudCBhIHdob2xlIHN5c2NvbiBleHBvc2luZyB0aGUgd2hvbGUgQ1JVIHVuaXQgdG8gdGhl
Cndob2xlIHdvcmxkLCBzZWUgY29tbWVudHMgaW4gdGhlIHB2dHBsbCBkcml2ZXIgcGF0Y2guCgpU
aGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
