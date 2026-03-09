Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E08FCA17B
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 19:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLj3ovbRvZ5uX/7qqwPDi5Kjm0Qg47p12Tpxm1k23lo=; b=dOGREP9YW4Yxn+
	TE5E5t0vld2P7rEDxXFAcjtn+7qcz0fdm63tps8mDBnicc5bOaUpXaPc6v45pIWkJ5mvDttErtFnp
	NwYAoHbktknJy1pIvBiJ0vf0RwqiJMhdw8wZz2sKKtZVFjr7FFKBwvgFYr7KS+5GEV1aE5GtMf43B
	gt+m9lPNcz0QYOp44qys/nvQp1yIJ3PdzQDkTg9vD6T6o2gKJciIQ4+Oy9sGU1PmOPt8Ax60MmJRZ
	o5Y2MOqDsRq2o4IzUmvae8AcMtVIFxphnkUl7Cha3NmQ82TRqQiVF4WxDcUoXpMu5ESbrv2NfO+wj
	+pi95inpWemHQ73VaQJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzgTI-000000084UR-07fT;
	Mon, 09 Mar 2026 19:40:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzgTF-000000084TN-0inS;
	Mon, 09 Mar 2026 19:40:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TqSEwB6ftB6EChAdYtUSEYjrVcG+vsVX3U1TnmfLdZE=; b=D+Tb9Ckm3akoSkL/fOwXmDknrd
	NU3bx2vX9RW2gSfQNPT61jNCz2IYx6othdpqaycogPnwHqhkNtqjlR5tnB6Pn3+vvIm/0uZqY+5UI
	U3pVwNRRE7Lj2VKGlq+HiPCKSROJCC3pyBKqiaif5nSNODbcRcReIQFlFcMWU6TlLFiy1Gihl1Y8s
	9xXzTEl+VEH2gbI1pSMBFurZb/SvbaboxcCSuwVrxEITTTLIH6oLVv8SifuQiUm8iabS0dR7hPM3E
	+qcpGaluXDqKLy5jxYjIT/hbHW0ZU/MJCKcRmwaGUzDok8MR9+Rfm8lKItnVuMfJsTQ6BOnFVZNYk
	uGYvoKcg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Mon, 09 Mar 2026 20:40:40 +0100
Message-ID: <1996728.taCxCBeP46@phil>
In-Reply-To: <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
References: <20260216010219.2131484-1-festevam@gmail.com>
 <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_124053_291971_4D27DB2A 
X-CRM114-Status: GOOD (  11.67  )
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

SGkgRmFiaW8sCgpBbSBNb250YWcsIDkuIE3DpHJ6IDIwMjYsIDE1OjU3OjE3IE1pdHRlbGV1cm9w
w6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRmFiaW8gRXN0ZXZhbToKPiBPbiBTdW4sIEZlYiAx
NSwgMjAyNiBhdCAxMDowMuKAr1BNIEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4g
d3JvdGU6Cj4gPgo+ID4gRnJvbTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AbmFibGFkZXYuY29t
Pgo+ID4KPiA+IEFkZCB0aGUgUE1VIEdSRiBhbmQgSU9DIGNvbXBhdGlibGUgc3RyaW5ncyBmb3Ig
dGhlIFJWMTEwM0IgU29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQG5hYmxhZGV2LmNvbT4KPiA+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+Cj4gCj4gSSdtIHNvcnJ5IHRv
IGJvdGhlciB5b3UsIGJ1dCBjYW4geW91IHBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgYXJlCj4g
aGFwcHkgd2l0aCB0aGlzIHNlcmllcz8KCkF0IGxlYXN0IHRoZSB1YXJ0IGNvbXBhdGlibGUgInJv
Y2tjaGlwLHJ2MTEwM2ItdWFydCIgaXMgbm90IHlldCB2aXNpYmxlCmluIG5leHQgWzBdLiBMYXN0
IEkgcmVtZW1iZXIsIHlvdSB3ZXJlIGFza2VkIHRvIHJlLXNlbmQgdGhhdCBiaW5kaW5nCnNlcGFy
YXRlbHkuCgpTaW1pbGFybHksIHBsZWFzZSBhbHNvIGNyZWF0ZSBhIGJpbmRpbmcgcGF0Y2ggZm9y
IHRoZSB3YXRjaGRvZyBbMV0uCgoKSGVpa28KCgoKWzBdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvdHJlZS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3NucHMtZHctYXBiLXVhcnQueWFtbApb
MV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9s
aW51eC1uZXh0LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRj
aGRvZy9zbnBzLGR3LXdkdC55YW1sI24yMAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
