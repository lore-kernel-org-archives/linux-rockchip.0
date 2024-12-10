Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79ED3E77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 14:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHzH6ghdErxP0Uj1W3BWWADeCMpCBLRpnYvUnhZLeqY=; b=s2QASL5P2EKnzQ
	4St1lZ4GgDveyLngjlOTNHRp6MTjL5qlSj3HGm03JMxQh6kaFnpk35Pvh6fwrs2M3qImC82H/liZH
	qT0QihzBAj8BYyU7lIe8x/iW4SExF85FvGUAeWwAu1o1FY3TiU+o9OZclkjwsiHxCxs9NrIWLvVEW
	ILX0tt2mrFssy0ZcZ2pV+d3cOS4EqZxmaM/xqusi2o1TmFYSnylCRbqndf4y3Vfk9kAGlNL4Hg5nu
	y3cKtoOCbBShewG1p8TN+mZ/a8DiVPR8ZMnK1Cd+awcUmCQUiP3L31RjgrfjpZPQG7uWTevM2GTmU
	DgE6foVNWpR7FUHtaR7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1S7-0000000Bp1Q-2mvI;
	Tue, 10 Dec 2024 14:43:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1MB-0000000BnHU-3Ke8;
	Tue, 10 Dec 2024 14:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vm/SMvu/8EpKkDOC/meueBC9lfWEJCHJn3wNu3oS+nU=; b=apGYPtk9B8cEHvRnlKnZRfyPlB
	UjU0n9BxnezEUSJl9xr/rIS3CAWGyApMVmPm35fTQfK9Lg1qjH1CqrI3pEIUsgAH3IAqgLHXpIi+5
	1Rn2C4tjKDlVc/d7X34Zq4zZ6HCNJYmUb07z1nntcDroUOFxB3djTFTLeug2S0rRYOYXLX1VKG3d7
	wnlxrVKNe5R4q/9/UANNYjy5aP2n7mEi9uoUgwPSQFTqN5FNCUlgEBz+0dey58QWAUnSOtLtS+W6w
	sowpUyWKnenxm2NVdRvHK4tS7iOstRm1QAWChyc+OKiUkXA6I87nkF1VdHmwPKgZxU/V0Fy5rB84E
	//ZQ2gsg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tL1Lk-0006dG-TS; Tue, 10 Dec 2024 15:36:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Yan <andyshrk@163.com>
Cc: Daniel Semkowicz <dse@thaumatec.com>,
 Diederik de Haas <didi.debian@cknow.org>, andy.yan@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, quentin.schulz@cherry.de, rfoss@kernel.org,
 robh@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Tue, 10 Dec 2024 15:36:31 +0100
Message-ID: <3104907.xgJ6IN8ObU@diego>
In-Reply-To: <78e7b8e.b5ee.193b09ce46d.Coremail.andyshrk@163.com>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <jl5obi7rd4h6ywozeqruxq2vx62sx5yf4wwpksrq3prdleps2k@d3zbr5ttquvn>
 <78e7b8e.b5ee.193b09ce46d.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_063659_823486_9AC2F111 
X-CRM114-Status: GOOD (  20.72  )
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

SGkgQW5keSwKCkFtIERpZW5zdGFnLCAxMC4gRGV6ZW1iZXIgMjAyNCwgMTM6NDg6MTIgQ0VUIHNj
aHJpZWIgQW5keSBZYW46Cj4g5ZyoIDIwMjQtMTItMTAgMjA6MzI6MDPvvIwiRG1pdHJ5IEJhcnlz
aGtvdiIgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4g5YaZ6YGT77yaCj4gPk9uIFR1ZSwg
RGVjIDEwLCAyMDI0IGF0IDA5OjU0OjA5QU0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+ID4+IOWc
qCAyMDI0LTEyLTEwIDA5OjQ1OjEx77yMIkRtaXRyeSBCYXJ5c2hrb3YiIDxkbWl0cnkuYmFyeXNo
a292QGxpbmFyby5vcmc+IOWGmemBk++8mgo+ID4+ID5PbiBUdWUsIDEwIERlYyAyMDI0IGF0IDAz
OjIyLCBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gd3JvdGU6Cj4gPj4gPj4g5ZyoIDIwMjQt
MTItMTAgMDk6MDE6MzjvvIwiRG1pdHJ5IEJhcnlzaGtvdiIgPGRtaXRyeS5iYXJ5c2hrb3ZAbGlu
YXJvLm9yZz4g5YaZ6YGT77yaCj4gPj4gPj4gPk9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDA4OjUw
OjUxQU0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+ID4+ID4+ID4+IEF0IDIwMjQtMTItMTAgMDc6
MTI6MjYsICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPj4gPj4g
Pj4gPkFtIE1vbnRhZywgOS4gRGV6ZW1iZXIgMjAyNCwgMTc6MTE6MDMgQ0VUIHNjaHJpZWIgRGll
ZGVyaWsgZGUgSGFhczoKPiA+PiA+PiA+PiA+PiBPbiBNb24gRGVjIDksIDIwMjQgYXQgNDowNiBQ
TSBDRVQsIERhbmllbCBTZW1rb3dpY3ogd3JvdGU6Cj4gPj4gPj4gPj4gPj4gPiBPbiAwMy4xMi4y
NCAyMTo1NCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPj4gPj4gPj4gPlRoaXMgcmVhbGx5IHNv
dW5kcyBsaWtlIHNvbWV0aGluZyBpcyB3cm9uZyBvbiB0aGUgdm9wIHNpZGUuCj4gPj4gPj4gPj4g
PlRoZSBpbnRlcnJ1cHQgaXMgcGFydCBvZiB0aGUgdm9wLCB0aGUgZGl2aXNhYmxlIGJ5IDQgdGhp
bmdzIGxpa2VseSB0b28uCj4gPj4gPj4gPj4KPiA+PiA+PiA+PiBUaGlzIGlzIGEgaGFyZHdhcmUg
bGltaXRhdGlvbiBvbiB2b3Agc2lkZToKPiA+PiA+PiA+PiBUaGUgaG9yaXpvbnRhbCByZXNvbHV0
aW9uIG11c3QgYmUgNCBwaXhlbCBhbGlnbmVkLgo+ID4+ID4+ID4KPiA+PiA+PiA+VGhlbiBtb2Rl
X3ZhbGlkKCkgYW5kIGF0b21pY19jaGVjaygpIG11c3QgcmVqZWN0IG1vZGVzIHRoYXQgZG9uJ3Qg
Zml0Lgo+ID4+ID4+Cj4gPj4gPj4gV2Ugcm91bmQgZG93biB0byA0IHBpeGVsIGFsaWduZWQgaW4g
bW9kZV9maXh1cCBpbiBvdXIgYnNwIGtlcm5lbCwKPiA+PiA+Cj4gPj4gPldoYXQgaXMgbWVhbnQg
YnkgdGhlICJic3Aga2VybmVsIiBoZXJlPyBJIGRvbid0IHNlZSBpdCBiZWluZyBwcmVzZW50Cj4g
Pj4gCj4gPj4gYnNwIGtlcm5lbCBtZWFucyBkb3duc3RyZWFtIHZlbmRvciBrZXJuZWwuCj4gPj4g
Cj4gPj4gPmluIHRoZSBtYWlubGluZSBrZXJuZWwuIFNvLCBpZiB0aGUgbW9kZSBpcyB1bnN1cHBv
cnRlZCwgaXQgc2hvdWxkIGJlCj4gPj4gCj4gPj4gV2lsbCBpdCBiZSBhY2NlcHRhYmxlIHRvIGFk
ZCB0aGlzIHJvdW5kIGRvd24gaW4gdGhlIG1haW5saW5lIG1vZGVfZml4dXA/Cj4gPgo+ID5JIHRo
aW5rIHNvLgo+IAo+IFRoZW4gSSBjYW4gd3JpdGUgYSBwYXRjaCBmb3IgaXQuCgp0aGFua3MgYSBs
b3QgZm9yIGxvb2tpbmcgaW50byB0aGF0IDotKQoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
