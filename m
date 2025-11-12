Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28210CD3436
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 17:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/4/sfO5OvJVpSuLF+fqRi1k2wF21bIpFcqtB9+gH8I=; b=abl66/Apr+QA9u
	ErzZPeP49uMW48uZVgm70Sy3lW78STS0omEE0L+VXiF5ruoarwqJE94cSSWepsYbuZxVJc7H0otcG
	sSHUX2GAEBY2DBdhl6yDHXQCAg1v9ncUdQnGrFKJh6ZpWDGC/JlD4OwVhtb8NedH/mXcqyKbnH40z
	gcNHZ0EpOUtY/xs9Te3KmZZzYhKzbC85/PZxkj3jQwvIhZkAHI7vMS+N6V8jZIJDBvbTDZBd34Z5W
	SXb+Tt7YRE20izB5/Jc3mvpa6r16yY8oYI/Do7uPcaS36lbM7/v/guaVugFQHrD+s/7VLB60yOdl4
	W1Jc5Vs4bjZ0omcu+acw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJF0L-00000009H4K-1Df5;
	Wed, 12 Nov 2025 17:51:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJF0I-00000009H3l-1zNi;
	Wed, 12 Nov 2025 17:51:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 145EF44231;
	Wed, 12 Nov 2025 17:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D3DC4CEF8;
	Wed, 12 Nov 2025 17:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762969893;
	bh=T7knzhZ/hAoWyK2lUxIZdB+Ka4TMwRh1ujkOMO4Lf04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rO6Mud0EMKXzwiNc2bQlzO+QiF4pc3XFFext9cJ/t5Wa69rSTMlzvwp4mvrpz5ern
	 1/w711HXbiu7bl1ydAB5DUdFcwgQ1lJWeN5IpVji2dEdgRtnIF2lrTd0he6MlSGbV+
	 Zu6LUatZFmxfv4DqArs0FAoWQnazXwpImSlLMqQBPAtLcvSFfO6Qh9Ae3bcMYyPItL
	 aHx51+xOY/Tg8XTyidCaat1h3AuReI9ji7hHyBaIaStsRhn2b+K5jgPh7En09xzheM
	 0NaPZ/ftBPYlEZu+UPAyMN6G+DftPSkldBOvdcp8DKUWQSRJl+tUyr3vPq+x1twkib
	 lhmGS0PYRvO5Q==
Date: Wed, 12 Nov 2025 23:21:07 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <diederik@cknow-tech.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Frank Li <Frank.li@nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Hans Zhang <hans.zhang@cixtech.com>, linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@pengutronix.de, 
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 1/4] PCI: dwc: Advertise L1 PM Substates only if driver
 requests it
Message-ID: <22srj63j7fzmsebwxwjnnxnpmdn2iwxo36gkrl36gdm7ge2xif@dmrdbfgu3hn3>
References: <20251111221621.2208606-1-helgaas@kernel.org>
 <20251111221621.2208606-2-helgaas@kernel.org>
 <aRRDzKFVTFTIuvvh@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRRDzKFVTFTIuvvh@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_095134_579836_969AA3E3 
X-CRM114-Status: GOOD (  16.38  )
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

T24gV2VkLCBOb3YgMTIsIDIwMjUgYXQgMDk6MjI6MzZBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIE5vdiAxMSwgMjAyNSBhdCAwNDoxNjowOFBNIC0wNjAwLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
ZXNpZ253YXJlLWhvc3QuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLWhvc3QuYwo+ID4gQEAgLTEwNjAsNiArMTA2MCw4IEBAIGludCBkd19wY2ll
X3NldHVwX3JjKHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ICAJCVBDSV9DT01NQU5EX01BU1RF
UiB8IFBDSV9DT01NQU5EX1NFUlI7Cj4gPiAgCWR3X3BjaWVfd3JpdGVsX2RiaShwY2ksIFBDSV9D
T01NQU5ELCB2YWwpOwo+ID4gIAo+ID4gKwlkd19wY2llX2NvbmZpZ19sMXNzKHBjaSk7Cj4gCj4g
VGhlIG5hbWUgZHdfcGNpZV9jb25maWdfbDFzcygpIHNvdW5kcyBsaWtlIHdlIGFyZSBlbmFibGlu
ZyBsMXNzLgo+IAo+IEkga25vdyBuYW1pbmcgaXMgaGFyZC4KPiAKPiBQZXJoYXBzIGR3X3BjaWVf
ZGlzYWJsZV91bnN1cHBvcnRlZF9sMXNzKCkgPwo+IAo+IE9yIHNvbWV0aGluZyBzaW1pbGFyLgo+
IAo+IAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+
ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPiBAQCAtMTA2
Nyw2ICsxMDY3LDggQEAgc3RhdGljIGludCBxY29tX3BjaWVfaW5pdF8yXzdfMChzdHJ1Y3QgcWNv
bV9wY2llICpwY2llKQo+ID4gIAl2YWwgJj0gflJFUV9OT1RfRU5UUl9MMTsKPiA+ICAJd3JpdGVs
KHZhbCwgcGNpZS0+cGFyZiArIFBBUkZfUE1fQ1RSTCk7Cj4gPiAgCj4gPiArCXBjaS0+bDFzc19z
dXBwb3J0ID0gdHJ1ZTsKPiA+ICsKPiA+ICAJdmFsID0gcmVhZGwocGNpZS0+cGFyZiArIFBBUkZf
QVhJX01TVFJfV1JfQUREUl9IQUxUX1YyKTsKPiA+ICAJdmFsIHw9IEVOOwo+ID4gIAl3cml0ZWwo
dmFsLCBwY2llLT5wYXJmICsgUEFSRl9BWElfTVNUUl9XUl9BRERSX0hBTFRfVjIpOwo+IAo+IFdo
aWxlIGl0IHNlZW1zIGxpa2Ugb3BzXzJfN18wIGlzIHRoZSBvbmx5IHR5cGUgdGhhdCBleHBsaWNp
dGx5IGRvZXMgYQo+IHJlZ2lzdGVyIHdyaXRlIHRvIGVuYWJsZSBMMXNzLCBvdGhlciB2ZXJzaW9u
cyBtaWdodCBoYXZlIHRoZSByZWdpc3Rlcgo+IGFzIGVuYWJsZWQgYnkgZGVmYXVsdCwgc28gaXQg
d291bGQgYmUgbmljZSBpZiBNYW5pIGNvdWxkIGNvbmZpcm0gZXhhY3RseQo+IHdoaWNoIHZlcnNp
b25zIHRoYXQgc2hvdWxkIHNldCBsMXNzX3N1cHBvcnQgPSB0cnVlLgo+IAoKWWVzLCBvbiB0aGUg
cmVzdCBvZiB0aGUgcGxhdGZvcm1zLCB0aGlzIGJpdCBpcyBzdXBwb3NlZCB0byBiZSBlbmFibGVk
IGJ5CmRlZmF1bHQuIEFGQUlLLCBhbGwgUWNvbSBwbGF0Zm9ybXMgc2hvdWxkIHN1cHBvcnQgTDFT
UywgYXRsZWFzdCB0aGUKbm9uLUlQUS9BUFEgb25lcy4KCldlIHNob3VsZCBzZXQgaXQgZm9yIGJl
bG93IGNmZ3M6CgpjZmdfZndfbWFuYWdlZApjZmdfc2M4MjgweHAKY2ZnXzFfMzRfMApjZmdfMV85
XzAKY2ZnXzJfN18wCgpJIGV4Y2x1ZGVkIG1zbTg5OTYgZHVlIHRvIG9uZSByZWNlbnQgYnVnIHJl
cG9ydC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
