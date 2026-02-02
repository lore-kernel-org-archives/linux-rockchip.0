Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF606E65298
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 01:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdTlJ56g034InTUCQhwI4mupLyKlXyxdJQGn+cL4jDI=; b=Ype/QChUwLaHI4
	c+9GenHnz8sEQBT0xROqi+l1MJw/KUMs7+xCrJt5aOtsC1jk9eJiCxgqGP0M4r8vwZOULHknEwe5O
	U1yBOrEhXEHxQpbypc55xTT9tRM6Cn2ei/rjFdHw6rNZ7No7xYio+XWxj+4+WumfZ+6502YRJv7fW
	gwc+xnTwCgoVAWz+notZK4PItYERNucR6AlQhhvLD+MdWtpvaCErkHdA/+BQUdetM3DfiOaZWoBio
	3+FTxP3sjxw346N5LimrTSjXqXLPMg8m5xh+G/YSby9RyiAUCD/WJkALNhS0TbrOyv8iA4pno/at0
	9+gmeIIxIbEpncW6td9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmioa-00000004Ik9-1Jg5;
	Mon, 02 Feb 2026 01:33:20 +0000
Received: from mail-m24125.xmail.ntesmail.com ([45.195.24.125])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmioW-00000004Ijc-36wM;
	Mon, 02 Feb 2026 01:33:19 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 32baf1fcb;
	Mon, 2 Feb 2026 09:33:02 +0800 (GMT+08:00)
Message-ID: <c7d2c401-068c-456f-a641-71d9aec9a4cd@rock-chips.com>
Date: Mon, 2 Feb 2026 09:33:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 00/18] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
 jani.nikula@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <6571983.R56niFO833@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <6571983.R56niFO833@diego>
X-HM-Tid: 0a9c1bfb576803a3kunm5c7836bd5d1df6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpLGFYaShpPGBpIGU1OT0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=KJRnNBIV/6A1cPIx6R+QeecYKPdcQaVXPI9zSXurB2PQuRHbCF1u3Yw+TzPWeVSFCkEdJGtjimeudD/Z6PL00I+5Z0uRt4EpwXdIHIewgGCVt7qgU/oUuAuQEp4smDrYdLlvtySYHY3PnK5GDx13Xcrtyi0y1KhKlDrw3nk26JE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3vJEwBZpP35hbXCKhhIcCEaHgMGxx7jXQ1r49X/tjUs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_173317_310688_41CCCAEF 
X-CRM114-Status: GOOD (  20.81  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAxLzIwLzIwMjYgMTI6MDYgQU0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
IEhpIERhbW9uLAo+IAo+IEFtIE1pdHR3b2NoLCAxNy4gRGV6ZW1iZXIgMjAyNSwgMTA6MzM6MDMg
TWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+PiBQQVRD
SCAxIGlzIHRvIGVuc3VyZSB0aGUgbGFzdCBicmlkZ2UgZGVjbGFyZXMgT1BfRURJRCBvciBPUF9N
T0RFUyBvciBib3RoLgo+PiBQQVRDSCAyIGlzIGEgc21hbGwgZm9ybWF0IG9wdGltaXphdGlvbiBm
b3Igc3RydWN0IGFuYWxvZ2lkX2RwX2RldmljZS4KPj4gUEFUQ0ggMyBpcyB0byBwZXJmb3JtIG1v
ZGUgc2V0dGluZyBpbiAmZHJtX2JyaWRnZV9mdW5jcy5hdG9taWNfZW5hYmxlLgo+PiBQQVRDSCA0
IGlzIHRvIGFkZCBhIG5ldyBwYXJhbWV0ZXIgdG8gc3RvcmUgdGhlIHBvaW50IG9mIG5leHQgYnJp
ZGdlLgo+PiBQQVRDSCA1IGlzIHRvIG1ha2UgbGVnYWN5IGJyaWRnZSBkcml2ZXIgbW9yZSB1bml2
ZXJzYWwuCj4+IFBBVENIIDYtMTEgYXJlIHByZXBhcmF0aW9ucyBmb3IgYXBwbHkgZHJtX2JyaWRn
ZV9jb25uZWN0b3IgaGVscGVyLgo+PiBQQVRDSCAxMiBpcyB0byBhcHBseSB0aGUgZHJtX2JyaWRn
ZV9jb25uZWN0b3IgaGVscGVyLgo+PiBQQVRDSCAxMy0xNSBhcmUgdG8gbW92ZSB0aGUgcGFuZWwv
YnJpZGdlIHBhcnNpbmcgdG8gdGhlIEFuYWxvZ2l4IHNpZGUuCj4+IFBBVENIIDE2IGlzIHRvIGF0
dGFjaCB0aGUgbmV4dCBicmlkZ2Ugb24gQW5hbG9naXggc2lkZSB1bmlmb3JtbHkuCj4+IFBBVENI
IDE3LTE4IGFyZSB0byBhcHBseSB0aGUgcGFuZWxfYnJpZGdlIGhlbHBlci4KPiAKPiBPbiB0b3Ag
b2YgYWxsIHRoZSByZWNlbnQgYnJpZGdlLXJlbGF0ZWQgY29tbWl0cywgdGhpcyBzZXJpZXMgc3Rp
bGwgd29ya3MKPiBvbiBteSByazM1ODgtZURQIGJvYXJkIC0gd2hlbiB0aGUgZGlzcGxheSBpcyBw
bHVnZ2VkIGluIG9uIGJvb3QuCj4gCj4gQXMgdGhhdCBpcyB0aGUgY3VycmVudCBzdGF0ZSB3ZSBh
bHNvIGhhZCBiZWZvcmUsIHRoaXMgc2VyaWVzOgo+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gb24gcmszNTg4Cj4gCj4gCj4gPT09PT09Cj4gISEhIFRoZSBmb2xs
b3dpbmcgc2hvdWxkIG5vdCBob2xkIHVwIHRoaXMgc2VyaWVzIHRob3VnaCwgYmVjYXVzZSB0aGUK
PiBhbmFsb2dpeC1kcCBub3QgaGFuZGxpbmcgaG90cGx1ZywgaXMgYWxzbyB0aGUgY3VycmVudCBz
dGF0ZSBhbHJlYWR5ISEhCj4gPT09PT09Cj4gCj4gSG93ZXZlciwgYWN0dWFsbHkgaG90cGx1Z2dp
bmcgdGhlIGRldmljZSBkb2VzIG5vdCBzZWVtIHRvIHdvcmsuCj4gCj4gV2l0aCB0aGUgaHBkLWdw
aW8gaW5zaWRlIGEgZHAtY29ubmVjdG9yIG5vZGUuCj4gCj4gCj4gKDEpIFdoZW4gYm9vdGluZyBj
b25uZWN0ZWQgYW5kIHVucGx1Z2dpbmcgdGhlIGRpc3BsYXkgSSBnZXQ6Cj4gCj4gWyAgIDQyLjcy
NTg4OF0gcm9ja2NoaXAtZHAgZmRlYzAwMDAuZWRwOiBSeCBNYXggTGluayBSYXRlIGlzIGFibm9y
bWFsIDowICEKPiBbICAgNDIuNzMzMzI1XSByb2NrY2hpcC1kcCBmZGVjMDAwMC5lZHA6IFJ4IE1h
eCBMYW5lIGNvdW50IGlzIGFibm9ybWFsIDowICEKPiBbICAgNDIuNzY0ODUzXSByb2NrY2hpcC1k
cCBmZGVjMDAwMC5lZHA6IExUIGxpbmsgc3RhcnQgZmFpbGVkIQo+IFsgICA0Mi43NzExMDVdIHJv
Y2tjaGlwLWRwIGZkZWMwMDAwLmVkcDogZURQIGxpbmsgdHJhaW5pbmcgZmFpbGVkICgtMTEwKQo+
IFsgICA0Mi43NzgzMjldIHJvY2tjaGlwLWRwIGZkZWMwMDAwLmVkcDogdW5hYmxlIHRvIGRvIGxp
bmsgdHJhaW4sIHJldD0tMTEwCj4gWyAgIDQyLjc4NTc0N10gW2RybTphbmFsb2dpeF9kcF9icmlk
Z2VfYXRvbWljX2VuYWJsZV0gKkVSUk9SKiBkcCBjb21taXQgZXJyb3IsIHJldCA9IC0xMTAKPiAo
IC4uLiByZXBlYXN0cyBhIGJ1bmNoIG9mIHRpbWVzIC4uLiApCj4gWyAgIDQzLjI4NDg5N10gcm9j
a2NoaXAtZHAgZmRlYzAwMDAuZWRwOiBmYWlsZWQgdG8gc2V0IGJyaWRnZSwgcmV0cnk6IDQKPiBb
ICAgNDMuMjkyMDQ1XSByb2NrY2hpcC1kcCBmZGVjMDAwMC5lZHA6IHRvbyBtYW55IHRpbWVzIHJl
dHJ5IHNldCBicmlkZ2UsIGdpdmUgaXQgdXAKPiAKPiBwbHVnZ2luZyB0aGUgZURQIGJhY2sgaW4g
cmVlbmFibGVzIHRoZSBkaXNwbGF5IHN1Y2Nlc3NmdWxseSB0aG91Z2guCj4gCj4gKDIpIEJvb3Rp
bmcgd2l0aCB0aGUgZGlzcGxheSB1bnBsdWdnZWQKPiAKPiBTYW1lIG1lc3NhZ2VzIGFzIGFib3Zl
LCBidXQgcGx1Z2dpbmcgdGhlIGRpc3BsYXkgaW4gZm9yIHRoZSBmaXJzdCB0aW1lCj4gZG9lcyBu
b3QgY3JlYXRlIGFuIG91dHB1dC4KPiAKPiBJJ2xsIHRyeSB0byBkaWcgbW9yZSwgYnV0IGlmIHlv
dSBoYXZlIGFuIGlkZWEsIHdoYXQgSSBzaG91bGQgbG9vayBhdCwgSSdkLAo+IGJlIHJlYWxseSBn
cmF0ZWZ1bC4KPiAKClNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseS4gSSd2ZSBiZWVuIGhlYXZpbHkg
b2NjdXBpZWQgd2l0aCB0aGUgZG93bnN0cmVhbSAKd29yayByZWNlbnRseS4KCkkgY2FuIHJlcHJv
ZHVjZSB0aGUgc2FtZSBpc3N1ZSBvbiBteSBSSzM1NzYgSU9URVNUIGJvYXJkLCB3aGljaCBpcyAK
ZXF1aXBwZWQgd2l0aCBhIHN0YW5kYXJkIERQIHJlY2VwdGFjbGUgZm9yIGVEUCBpbnRlcmZhY2Uu
CgooQlRXOiBUaGUgUkszNTc2IEFuYWxvZ2l4IERQIGZ1bmN0aW9ucyBwcm9wZXJseSB3aXRoIGEg
c2V0IG9mIHRhcmdldGVkIApjaGFuZ2VzLCBhbmQgSSBwbGFuIHRvIHVwc3RyZWFtIHRoZXNlIG1v
ZGlmaWNhdGlvbnMgbGF0ZXIuIDotKSkKClJlZ2FyZGluZyB0aGUgZURQIEhQRCBleGNlcHRpb24s
IHNldmVyYWwgZnVuY3Rpb25hbCBwYXRjaGVzIGZvciBIUEQgCmhhbmRsaW5nIGhhdmUgbm90IHll
dCBiZWVuIHN5bmNlZCB0byB0aGUgdXBzdHJlYW0uIEkgd2lsbCB2ZXJpZnkgdGhlc2UgCmNoYW5n
ZXMgYW5kIHN1Ym1pdCB0aGVtIHdoZW4gdGltZSBwZXJtaXRzLgoKQmVzdCByZWdhcmRzLApEYW1v
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
