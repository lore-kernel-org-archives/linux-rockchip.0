Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E44CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 06:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OCjfUWDWlvHpbcUp23PuXnOwBJTs75BLJN/QPn/Jnk=; b=SAauHSDihvrwwF
	3k1muqzsHbLdW+GA5/SxBGD9hVc/nb5OvgrPPLTSsdRrvvI0ez5QsW/ajk514giHTC+5RhxlgGhse
	sqTlBZaVqDiY4akRtAP92Goj2z+L+kAqwN8i42d9v5H4bGpuDWukzujuIqqEKcSJe42c8jrNTyeZi
	y2uByyZnHUSYodBPItJMZEw0hnESl2OK0aJ+q8OR464D8dQkFz3W3Oc2mAKEJUnwPzRBi38IUd4Cw
	5oc7OMs3mvGBcM1z2U7R4cu5vsv2dytVjmCUHR+3NDoQVWzvGwJUGXNUbVnFpqNV6QDjAIT0fD0oR
	/BYUv8Be7kyuw3+iDV2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAMs6-0000000AkPL-2UBk;
	Sun, 19 Oct 2025 06:26:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAMs3-0000000AkOZ-0M5r;
	Sun, 19 Oct 2025 06:26:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B778440A2;
	Sun, 19 Oct 2025 06:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FAF1C4CEE7;
	Sun, 19 Oct 2025 06:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760855166;
	bh=5drm76qRadzN/MiXV5TorM1Em9uwpzEm1NGdBnBhsDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eM9Qk7Q3wQJHKvcthQ9pRHExHxk301B5waian5gtkujs13tIF+kUatzBWZ59lJCYp
	 ePALQuqjiQkRyskr6+l7Ul0zg8ES+WBlKzL4QnVNmvUa2etVdUlXBAE9Y/+pF5OzUK
	 t9esr8xOZ0DYIIgr9RvEljsv7/ZipO7S9uMqnU6bb5+fyl1/SKjHhlZuMm3Av6LU5J
	 bcwyGm5PqBa+W5FKLKKlQlbydhSO5vObxEe3uSUo3JV0caLW+5J6rp5r8Pu58qL14l
	 8VwpCEmAZRFqhT6q+qhRTpzAg2+i/ZIyIf/K4+LsjwDMQhFO91oixGAmdmHsUu7B8A
	 Ve/I8yH4+DdZg==
Date: Sun, 19 Oct 2025 11:55:45 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] PCI: dw-rockchip: Simplify regulator setup with
 devm_regulator_get_enable_optional()
Message-ID: <4fqtxx5isbvyypgjzjczm4mxqhawsmcalap5bvkohgpeqxnyar@uy5bo2yb4lwy>
References: <20250905112736.6401-1-linux.amoon@gmail.com>
 <CANAwSgSYvTJ=8hv_BrrF1v7u3hq5AB_BSfT7wj0-LQF87dQMUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSYvTJ=8hv_BrrF1v7u3hq5AB_BSfT7wj0-LQF87dQMUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_232623_182587_9727E125 
X-CRM114-Status: GOOD (  18.00  )
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

T24gU2F0LCBPY3QgMTgsIDIwMjUgYXQgMTE6MjE6NDlBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBBbGwsCj4gCj4gT24gRnJpLCA1IFNlcHQgMjAyNSBhdCAxNjo1NywgQW5hbmQgTW9v
biA8bGludXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBSZXBsYWNlIG1hbnVhbCBn
ZXQvZW5hYmxlIGxvZ2ljIHdpdGggZGV2bV9yZWd1bGF0b3JfZ2V0X2VuYWJsZV9vcHRpb25hbCgp
Cj4gPiB0byByZWR1Y2UgYm9pbGVycGxhdGUgYW5kIGltcHJvdmUgZXJyb3IgaGFuZGxpbmcuIFRo
aXMgZGV2bSBoZWxwZXIgZW5zdXJlcwo+ID4gdGhlIHJlZ3VsYXRvciBpcyBlbmFibGVkIGR1cmlu
ZyBwcm9iZSBhbmQgYXV0b21hdGljYWxseSBkaXNhYmxlZCBvbiBkcml2ZXIKPiA+IHJlbW92YWwu
IERyb3BwaW5nIHRoZSB2cGNpZTN2MyBzdHJ1Y3QgbWVtYmVyIGVsaW1pbmF0ZXMgcmVkdW5kYW50
IHN0YXRlCj4gPiB0cmFja2luZywgcmVzdWx0aW5nIGluIGNsZWFuZXIgYW5kIG1vcmUgbWFpbnRh
aW5hYmxlIGNvZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1v
b25AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jIHwgMjMgKysrKystLS0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+ID4KPiBJZiB3ZSBjb21waWxl
IHRoZSBrZXJuZWwgd2l0aCBwaHkgYW5kIHJlZ3VsYXRvciBhcyBtb2R1bGVzLAo+IEkgb2JzZXJ2
ZSB0aGlzIG1lc3NhZ2UuCj4gCj4gWyAgIDI1LjQ3Mzk2MF1bICAgVDU1XSBwbGF0Zm9ybSAzYzA4
MDAwMDAucGNpZTogZGVmZXJyZWQgcHJvYmUKPiBwZW5kaW5nOiBwbGF0Zm9ybTogc3VwcGxpZXIg
cmVndWxhdG9yLXZjYzN2My1wY2llIG5vdCByZWFkeQo+IFsgICAyNS40NzQwNzFdWyAgIFQ1NV0g
cGxhdGZvcm0gZmUwYTAwMDAuaGRtaTogZGVmZXJyZWQgcHJvYmUgcGVuZGluZzoKPiBwbGF0Zm9y
bTogd2FpdCBmb3Igc3VwcGxpZXIgL2kyY0BmZGQ0MDAwMC9wbWljQDIwL3JlZ3VsYXRvcnMvTERP
X1JFRzkKPiBbICAgMjUuNDc0MTI0XVsgICBUNTVdIHBsYXRmb3JtIHJlZ3VsYXRvci12Y2M1djAt
dXNiLW90ZzogZGVmZXJyZWQKPiBwcm9iZSBwZW5kaW5nOiByZWctZml4ZWQtdm9sdGFnZTogY2Fu
J3QgZ2V0IEdQSU8KPiBbICAgMjUuNDc0MTcxXVsgICBUNTVdIHBsYXRmb3JtIGZkYzIwMDAwLnN5
c2Nvbjppby1kb21haW5zOiBkZWZlcnJlZAo+IHByb2JlIHBlbmRpbmc6IHBsYXRmb3JtOiB3YWl0
IGZvciBzdXBwbGllcgo+IC9pMmNAZmRkNDAwMDAvcG1pY0AyMC9yZWd1bGF0b3JzL1NXSVRDSF9S
RUcxCj4gWyAgIDI1LjQ3NDIxOF1bICAgVDU1XSBwbGF0Zm9ybSBjcHVmcmVxLWR0OiBkZWZlcnJl
ZCBwcm9iZSBwZW5kaW5nOgo+IChyZWFzb24gdW5rbm93bikKPiBbICAgMjUuNDc0MjY0XVsgICBU
NTVdIHBsYXRmb3JtIHJlZ3VsYXRvci12Y2MzdjMtcGNpZTogZGVmZXJyZWQgcHJvYmUKPiBwZW5k
aW5nOiByZWctZml4ZWQtdm9sdGFnZTogY2FuJ3QgZ2V0IEdQSU8KPiBbICAgMjUuNDc0MzQzXVsg
ICBUNTVdIHJvY2tjaGlwLXBtLWRvbWFpbgo+IGZkZDkwMDAwLnBvd2VyLW1hbmFnZW1lbnQ6cG93
ZXItY29udHJvbGxlcjogVGltZWQgb3V0LiBGb3JjaW5nCj4gc3luY19zdGF0ZSgpCj4gWyAgIDM3
Ljc0NDk2OF1bIFQyNDE1XSBwc2k6IGluY29uc2lzdGVudCB0YXNrIHN0YXRlIQo+IHRhc2s9MjI4
MDoodWRldi13b3JrZXIpIGNwdT0xIHBzaV9mbGFncz00IGNsZWFyPTAgc2V0PTQKPiBbICAgMzcu
ODQ5NzI1XVsgICBUNTBdIGZhbjUzNTU1LXJlZ3VsYXRvciAzLTAwMWM6IEZBTjUzNTU1IE9wdGlv
blsxMl0KPiBSZXZbMTVdIERldGVjdGVkIQo+IFsgICAzNy45OTAwMDhdWyBUMjIxNl0gU0NTSSBz
dWJzeXN0ZW0gaW5pdGlhbGl6ZWQKPiAKClRoaXMgaXMgYSBkZWZlcnJlZCBwcm9iZSBsb2cgYW5k
IG5vdCByZWxhdGVkIHRvIHRoaXMgcGF0Y2ggb3IgdGhlIFBDSWUKY29udHJvbGxlciBkcml2ZXIu
IFRoZSBjb250cm9sbGVyIGRyaXZlcnMgc2hvdWxkIHN0aWxsIGJlIGZ1bmN0aW9uYWwgb25jZSB0
aGUKZGVwZW5kZW50IEdQSU8gZHJpdmVyIGlzIHByb2JlZC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
