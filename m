Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8E4E9B369
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 11:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1HhP/HRfcYI1NFK6/+wRMq7dPX0TGsTlsFATMereFU=; b=nwNpdZtWiNez3P
	L15XGGjG9zHfAlIP5L/tLUD7gI6bBYZGAefR0gV8Al3QNFFFixzYrgZnqo6tBprxavKmz0L886Zdq
	MgZkdJ/CxysMnUKCRlL4s/ZHNWlapkFleVgjRE5/BsA1NPdGFOrC0Y/VXSXT1JA5VXNKfyRRnfOPz
	/yv5iNewkOkhwLelN6MICOXfLb0SBjx8GLOwBQQAOSwu5gfQjSNNPP/J4j6cfTKH3SWPek4ADd57W
	JhYQYhsm3kYe5fOlZz+bMmGrZnJ+xo1ezpzrL4bk+6y8zgp67bWI5MdrPczfk5FJLcaMdi70NE0Bx
	6qQ327TuFIbC6rJDn0nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx18N-0000000CmR8-3HSx;
	Mon, 02 Mar 2026 11:08:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx18L-0000000CmQS-0bAv;
	Mon, 02 Mar 2026 11:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WJ6Fp+6ND9bT9YLc0KTOaJB8aEFzkS2JdOdry7EMlC0=; b=Ksmu/junNI891rI+Ldwlu8ZOJY
	USTaEE9SRmuxDtB7tw1boBq1aKDP9VOpYkyP1KF8JJ8W0bsTfqSl+oFOoYEeT7netLIqrKUViXeOg
	s/WIYF7opi46e4TX8s0ltxDLp42GZL1CIygKM1hHpk2ksDaxM3hjdpjDRH/zQkuuOwB1QBmNKF2V3
	xuh33WUrtEjXPVYQ7V014Qpx1ssy/hUE3qPNvnjNSsWrSMJZnw/x1gvTr8+rjaQ0+vMcJGncIGLKp
	fms8+QIHeP7QE3LBFcXiCgZ1Jxnq0YwXUaZnhZ/FOO8gtFWVz68oy1alLKIHf/iWkFq2GHrTkvQhv
	Zcc/KD4Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, david@ixit.cz
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Martin Filla <freebsd@sysctl.cz>, David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix PCIe v3 pinctrl for BPI-R2-Pro
Date: Mon, 02 Mar 2026 12:08:14 +0100
Message-ID: <3404271.44csPzL39Z@phil>
In-Reply-To: <20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz>
References: <20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_030817_179580_A8F9342B 
X-CRM114-Status: GOOD (  14.93  )
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

SGkgRGF2aWQsCgpBbSBTb25udGFnLCAxLiBNw6RyeiAyMDI2LCAxNjo1NDo0MSBNaXR0ZWxldXJv
cMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIERhdmlkIEhlaWRlbGJlcmcgdmlhIEI0IFJlbGF5
Ogo+IEZyb206IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4gCj4gQWRkIG1pc3Np
bmcgcGluY3RybCBmb3IgUEQ0IChQSTZDIFBDSWUgY2xvY2sgZW5hYmxlLAo+IFBDSUVfQ0xLRU5f
SF9HUElPMF9ENCkgYW5kIHNldCBvdXRwdXQgaGlnaC4KPiAKPiBUaGlzIGRvZXMgZml4IGZyZWV6
ZSBhdCBpbml0aWFsaXphdGlvbiBkdWUgcGluY3RybCBiZWluZyBpbiBpbnB1dAo+IHN0YXRlLgo+
IAo+IFJlcG9ydGVkLWJ5OiBNYXJ0aW4gRmlsbGEgPGZyZWVic2RAc3lzY3RsLmN6PiAjIHJlcG9y
dGVkIGJ5IHByaXZhdGUgbWVzc2FnZQo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhlaWRlbGJlcmcg
PGRhdmlkQGl4aXQuY3o+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LWJwaS1yMi1wcm8uZHRzIHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1icGktcjItcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LWJwaS1yMi1wcm8uZHRzCj4gaW5kZXggNGQzZWJlNTBiOTBiYS4uYjRjOGFiZTM3ZDFmMyAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJv
LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWJwaS1yMi1w
cm8uZHRzCj4gQEAgLTEyMSw2ICsxMjEsOCBAQCB2Y2MzdjNfcGk2Y18wNTogcmVndWxhdG9yLXZj
YzN2My1waTZjLTA1IHsKPiAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsK
PiAgCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gIAkJZ3Bpb3MgPSA8JmdwaW8wIFJLX1BENCBHUElP
X0FDVElWRV9ISUdIPjsKPiArCQlwaW5jdHJsLTAgPSA8JnBpNmNwY2llX2VuYWJsZV9oPjsKPiAr
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwoKcGxlYXNlIG1vZGVsIGhhcmR3YXJlIG5vdCBo
b3cgeW91IHdhbnQgdG8gdXNlIGl0LgoKVGhlIHBpNmMgaW4gdGhlIHBpbi1uYW1lIHN1Z2dlc3Rz
LCB0aGF0IHRoaXMgaXMgYSBEaW9kZXMgY2xvY2stZ2VuZXJhdG9yCnRoYXQgY3JlYXRlcyB0aGUg
MTAwTUh6IGZyZXF1ZW5jeSBmb3IgUENJZSBbMF0gLgoKUGxlYXNlIHNlZSBbMV0gZm9yIG9uZSBw
b3NzaWJsZSB2YXJpYW50IHRvIG1vZGVsIHRoaXMuCgoKSGVpa28KClswXSBodHRwczovL3d3dy5k
aW9kZXMuY29tL3BhcnQvdmlldy9QSTZDRzMzNjAyQyBvciBzb21lIHZhcmlhbnQgb2YgaXQKWzFd
IGh0dHA6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMjEwMDgwMzAzLjY4MDQwMy0xLWhlaWtv
QHNudGVjaC5kZQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
