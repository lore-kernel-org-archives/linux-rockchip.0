Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B9BC44515
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71p3qK76E2bFBbuYfOsm4MayEqeo7Zq0Vul5fizA7DA=; b=cOD7PQLyzQ8mw9
	UEdEB0Eb4hU4KL54uRFKxvnCGtLRIbDNlxvGLJ3urWLxKV1L694whFFAZAepysm8bgBN9aZjj5MwR
	icJr9LflbkZLHPHpd2Y3qDuqEFvwrdxFb/vzL07lfTcNL4CDrcpmJfxccSs3C+0h5bLG1Lj2UZNRs
	Zv7NTqITmAqPR4jk7HMdTvPe++vNXes+8rFUrITCgXk8IWgXMKelZj6Y4FT180hj/Rc72sQ/cNL/0
	ApAiKU/q97/L8k1BxePCgne7RvMIsJSCKegW+B+9aJ4ptr3ed9pygG337cp/iafXIwPTXZvg7+xy/
	vIQFA9m1OEUHrmpIT3QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQi1-00000000N3F-2zBG;
	Thu, 16 Jul 2026 18:21:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQhz-00000000N2U-2mlr;
	Thu, 16 Jul 2026 18:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sTarYRorlM/Rn7cCaR7+b+Qezl3OqBStgUiS/lo6A0M=; b=E5KGQvMIP4P9mjc4QniEKE/KJE
	L4EZstBq76YnlxNHjH0Nzcd/Bvfv7K4sgAcnnxQyZ7zVvDkPNdYU+t1FhJ5eUW1w18iKN5JGgQ3TK
	NJsRrtlsb14w0O+f9kb9L2wUbSbuVh1vb13Y95nWCIOrnSFlDh8mrRMU10VUlTjQL6C3RozK4q8cz
	Q8whSV2xEAu0SWxOA6gnYaND+efwyuLPsfgSME7owvyoIrsL3/YQaiPxLYs38FhPOcHxHeobkm660
	XlXVely8/20/eOtM3ipCEjT0r4xC8LKwsu/yDXGbSeSXps0Jx7SH1zcxaQQX0l6zdN8jPqH5up7YD
	yT4iKGnA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Thu, 16 Jul 2026 20:21:15 +0200
Message-ID: <25132193.ouqheUzb2q@phil>
In-Reply-To: <20260714054653.266842-2-hrushirajg23@gmail.com>
References: <20260714054653.266842-1-hrushirajg23@gmail.com>
 <20260714054653.266842-2-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112119_701813_688D6340 
X-CRM114-Status: GOOD (  12.81  )
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

QW0gRGllbnN0YWcsIDE0LiBKdWxpIDIwMjYsIDA3OjQ2OjUyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgSHJ1c2hpcmFqIEdhbmRoaToKPiBBZGQgZGV2aWNlIHRyZWUgYmlu
ZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgVmljaGFyYWsgVmFhbWFuMiwKPiBhIHNpbmdsZS1i
b2FyZCBjb21wdXRlciBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTg4IFNvQy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBIcnVzaGlyYWogR2FuZGhpIDxocnVzaGlyYWpnMjNAZ21haWwuY29tPgoKSW4g
djIgWzBdIHRoaXMgZ290IGFuCkFja2VkLWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBt
aWNyb2NoaXAuY29tPgoKUGxlYXNlIG1ha2Ugc3VyZSB0byBjYXJ5IG92ZXIgc3VjaCB0YWdzIGlu
dG8gbGF0ZXIgcmV2aXNpb25zLgpCNCBjYXVnaHQgdGhpcywgc28gYWxsIGdvb2QgZm9yIHRoaXMs
IGJ1dCBwbGVhc2Uga2VlcCB0aGlzCmluIG1pbmQgZm9yIHRoZSBmdXR1cmUuCgoKSGVpa28KClsw
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA2MjgtcmV0aW5hbC11bmdyZWFzZWQt
NGM2ZDQ1ZTM1OTZhQHNwdWQvCgoKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+IGluZGV4IGIwMjNkNGNjOTg0Mi4uYjVhNDNmZDVlNTQ2
IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAo+IEBAIC0xMzExLDYgKzEzMTEsMTEgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgICAgIC0gY29uc3Q6IHZpY2hhcmFrLGF4b24KPiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tj
aGlwLHJrMzU4OAo+ICAKPiArICAgICAgLSBkZXNjcmlwdGlvbjogVmljaGFyYWsgVmFhbWFuMgo+
ICsgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDogdmljaGFyYWssdmFhbWFuMgo+
ICsgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4Cj4gKwo+ICAgICAgICAtIGRlc2Ny
aXB0aW9uOiBXb2xmVmlzaW9uIFBGNSBtYWluYm9hcmQKPiAgICAgICAgICBpdGVtczoKPiAgICAg
ICAgICAgIC0gY29uc3Q6IHdvbGZ2aXNpb24scmszNTY4LXBmNQo+IAoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
