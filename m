Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0300CCC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 15:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9skLKIAm+4AFoLNqlqFPWeERQYmoRSWDEnL+sLl18JA=; b=M4HmY+7ljmeKyF
	JqQUwCxTFSPO98HHR283J7CayJpEyCNDWAM0vgukQ7F11chB8qidhwTVWHn5Rrd5W9cjES+8/NrB6
	ZgFTcLcV3qhTnmUlhpE+2r/k/JzdQOkCF334dzNN22O2LUb4qUOFMZ3bm1sFwLJ90wkudW5WRZc3U
	gdUG7k3NGkL0cmPdaomNBICrXgMn2DppJ5TE5cpiPM+VN/GfIq6AP0AJk4sH166DIfKd6ZV95KtuR
	fcA4ay7pcygw6+pLIjHVZbNo9A2v+zLGbDPUHn6hw856ixSvc71YKkIx9Ed6EwaeDXF4THNpO4WD6
	HDpa7ra3lyIwhnFOAUnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNlX-00000000ctG-3lqw;
	Thu, 15 Oct 2026 15:53:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNlU-00000000cs9-3JNI;
	Thu, 15 Oct 2026 15:53:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3FC2A601EF;
	Thu, 15 Oct 2026 15:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EBF71F000C4;
	Thu, 15 Oct 2026 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792079588;
	bh=HVw7Nmm0VW1a3sl5XHyrI6+aoyrs2z1eR25B+WaHeQs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=cM9FQrU6LiVZexQnyD/RSRu/KEyxBDWORjo59+NoyN8ppIcaspjtF4wM9B/Qim4KS
	 8RDAfqeWp/ny0IWEr/T8IFYtrtW79Z8LLJYRYp2mjBlSvN8keOUMRFcIedplYrLCzE
	 ULc3tQSh/G85xDz8ysCHEx1NSL7eUJKCcUKMMANfIre0SU6o6RJglPA9eRAM8hdjQ/
	 m1EJzFZmHyz1gL5iSll/M8IOBIlunQKplebkdLxWMU7SU6EUfFpJFWY9hauO6cXrVL
	 h1FMql5Lz5fALhNwjqpOJA/54uJNApzN3Rogs2h6lUF39hk+VT0zPeGPgj+M1t8ZfN
	 camhYwBdkU0jg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quchaosheng <quchaosheng000406@163.com>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 mfd@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260923083001.606935-1-quchaosheng000406@163.com>
References: <20260923083001.606935-1-quchaosheng000406@163.com>
Subject: Re: (subset) [PATCH v5] dt-bindings: mfd: rockchip,rk805: Convert
 pinctrl to DT schema
Message-Id: <179207958534.2076854.17430709456309504242.b4-ty@b4>
Date: Thu, 15 Oct 2026 16:53:05 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
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

T24gV2VkLCAyMyBTZXAgMjAyNiAxNjozMDowMSArMDgwMCwgUXVjaGFvc2hlbmcgd3JvdGU6Cj4g
cGluY3RybC1yazgwNS50eHQgZGVzY3JpYmVzIHRoZSBwaW5tdXggY29udHJvbGxlciB0aGF0IGlz
IHBhcnQgb2YgdGhlCj4gUm9ja2NoaXAgUks4MDUgUE1JQy4gVGhlIFBNSUMgaXRzZWxmIGlzIGFs
cmVhZHkgZGVzY3JpYmVkIGJ5Cj4gcm9ja2NoaXAscms4MDUueWFtbCwgc28gdGhlIHBpbm11eCBw
YXJ0IGJlbG9uZ3MgdGhlcmUgYXMgd2VsbDogdGhlCj4gcGluY3RybCBub2RlIGlzIGEgY2hpbGQg
b2YgdGhlIFBNSUMgbm9kZSwgbm90IGEgc2VwYXJhdGUgZGV2aWNlLgo+IAo+IEZvbGQgdGhlIHBp
bm11eCBkZXNjcmlwdGlvbiBpbnRvIHJvY2tjaGlwLHJrODA1LnlhbWwgYW5kIGRyb3AgdGhlCj4g
c3RhbmRhbG9uZSB0ZXh0IGJpbmRpbmcuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsx
LzFdIGR0LWJpbmRpbmdzOiBtZmQ6IHJvY2tjaGlwLHJrODA1OiBDb252ZXJ0IHBpbmN0cmwgdG8g
RFQgc2NoZW1hCiAgICAgIGNvbW1pdDogYzJmODI4OGE1OGUyMmZlZWViOWM0NDRiYmFmZjE3OWIw
MDU4ZTQ1OQoKLS0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
