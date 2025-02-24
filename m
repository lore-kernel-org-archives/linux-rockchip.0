Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64000C021A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 20:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcvARnmq2sMlyIWUJ5P9LR2a3t2Q/IT+DsNRjged2Sc=; b=RBtkB8thZVGMys
	EuGpEHEhu0qQS0OyqoJAc2ClKSrWC16MgjWbhcnrZh3zz/MeNdiPULKtJneXTdXIoAQQcLOuW7nOK
	hI/qZ+yDR9tFN1Dc1NsJn8HMIdYBV4mgiIjV8cjSgNH792w0oLmLhWkG9q5F9+speDQ7PDViHh7j3
	LHQrcmWOG2rV6mz3Z1CFVoxRqjmxzfXuZmrH9/SZnkzPJ2oo9EPs3zyd5/yZcU4YrSf5q6Qyek5NO
	6HMS+1ldKnjgzEYELT9P4+6D9qlFijPnGIcLNNtVLOs19cHtvIGu5oOOeyozPrWwsLbkXtAq/JvpS
	Rt1clK2zXWUQ+/37xvpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmej3-0000000F2T6-3GMA;
	Mon, 24 Feb 2025 20:06:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmegA-0000000F23R-1WFy;
	Mon, 24 Feb 2025 20:03:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A15046112C;
	Mon, 24 Feb 2025 20:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FD12C4CED6;
	Mon, 24 Feb 2025 20:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740427429;
	bh=q+d7nm16qN8obUZdl22kTIu5V70Mi/RYYzCCy6bqBeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qreTVj6NyKUm6lrRKJbd3QXAxIqqOAJWW8G16C5zFxWhZCQDN1BM6OAGYPLK8+CyZ
	 1FRGrGG5N7qqtX5xzjmsQYb8/ojIngs7HVgz2F6fXoXPi0coG24ncjg578qVp1tL6V
	 CTsoZeST5a0x5h1xMyu0fuWWkWEkOVvIpp9G9PaHC2W3yNb8M4ibhsIUNMKB5dojV4
	 kmpAIrzQk1gIPOzxo1dJ7Pkv4QD1dpfdlV/bNRrqNEEHL5Kd+g3HFabCw85n+SVN0q
	 sIX/kHXEUh1r4I/KgO/yF9HVqbfplwRbkd+TsnyVKxb+IupTJ0hZjpXP1SlA2uRG7l
	 pefph794JXEvA==
Date: Mon, 24 Feb 2025 14:03:47 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 1/6] dt-bindings: display: rockchip: Add schema for
 RK3588 DPTX Controller
Message-ID: <20250224200347.GA4011821-robh@kernel.org>
References: <20250223113036.74252-1-andyshrk@163.com>
 <20250223113036.74252-2-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223113036.74252-2-andyshrk@163.com>
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
Cc: neil.armstrong@linaro.org, heiko@sntech.de, devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, sebastian.reichel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBGZWIgMjMsIDIwMjUgYXQgMDc6MzA6MjRQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoZSBSb2Nr
Y2hpcCBSSzM1ODggU29DIGludGVncmF0ZXMgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgRFBUWAo+
IGNvbnRyb2xsZXIuIEFuZCB0aGlzIERQVFggY29udHJvbGxlciBuZWVkIHNoYXJlIGEgVVNCRFAg
UEhZIHdpdGgKPiB0aGUgVVNCIDMuMCBPVEcgY29udHJvbGxlciBkdXJpbmcgb3BlcmF0aW9uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiAK
PiAtLS0KPiAKPiAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsZHctZHAueWFtbCAgICAg
IHwgMTUwICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTUwIGluc2VydGlv
bnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWRwLnlhbWwKPiAKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9j
a2NoaXAsZHctZHAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWRwLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMC4uYjQ4YWY4YzNlNjhiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tj
aGlwLGR3LWRwLnlhbWwKPiBAQCAtMCwwICsxLDE1MCBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0t
LQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAsZHctZHAueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21l
dGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+ICt0aXRsZTogUm9ja2NoaXAgRFcgRGlzcGxheVBv
cnQgVHJhbnNtaXR0ZXIKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gQW5keSBZYW4gPGFuZHku
eWFuQHJvY2stY2hpcHMuY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgUm9ja2No
aXAgUkszNTg4IFNvQyBpbnRlZ3JhdGVzIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIERQVFggY29u
dHJvbGxlcgo+ICsgIHdoaWNoIGlzIGNvbXBsaWFudCB3aXRoIHRoZSBEaXNwbGF5UG9ydCBTcGVj
aWZpY2F0aW9uIFZlcnNpb24gMS40IHdpdGggdGhlCj4gKyAgZm9sbG93aW5nIGZlYXR1cmVzOgo+
ICsKPiArICAqIERpc3BsYXlQb3J0IDEuNGEKPiArICAqIE1haW4gTGluazogMS8yLzQgbGFuZXMK
PiArICAqIE1haW4gTGluayBTdXBwb3J0IDEuNjJHYnBzLCAyLjdHYnBzLCA1LjRHYnBzIGFuZCA4
LjFHYnBzCj4gKyAgKiBBVVggY2hhbm5lbCAxTWJwcwo+ICsgICogU2luZ2xlIFN0cmVhbSBUcmFu
c3BvcnQoU1NUKQo+ICsgICogTXVsdGlzdHJlYW0gVHJhbnNwb3J0IChNU1QpCj4gKyAgKu+BrlR5
cGUtQyBzdXBwb3J0IChhbHRlcm5hdGUgbW9kZSkKCj8/PyAgIF4KCk90aGVyd2lzZSwKClJldmll
d2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
